//
// This file is a part of AGF-UERANSIM open source project.
// Copyright (c) 2021 ALİ GÜNGÖR.
//
// The software and all associated files are licensed under GPL-3.0
// and subject to the terms and conditions defined in LICENSE file.
//

#include "task.hpp"

#include <asn/ngap/ASN_NGAP_QosFlowSetupRequestItem.h>
#include <gnb/mr/task.hpp>
#include <gtp/encode.hpp>
#include <gtp/message.hpp>
#include <utils/common.hpp>
#include <utils/constants.hpp>
#include <utils/libc_error.hpp>

#include <regex>
#include <string>

namespace nr::gnb
{

// add agfUdpServer initial
GtpTask::GtpTask(TaskBase *base)
    : m_base{base}, m_udpServer{}, agfUdpServer{}, m_ueContexts{},
      m_rateLimiter(std::make_unique<RateLimiter>()), m_pduSessions{}, m_sessionTree{}
{
    m_logger = m_base->logBase->makeUniqueLogger("gtp");
}

void GtpTask::onStart()
{
    try
    {
        m_udpServer = new udp::UdpServerTask(m_base->config->gtpIp, cons::GtpPort, this);
        m_udpServer->start();
    }
    catch (const LibError &e)
    {
        m_logger->err("GTP/UDP task could not be created. %s", e.what());
    }
    // add agfUdpServer initial
    // need to add IP and port
    try
    {
        agfUdpServer = new udp::UdpServerTask(std::string(cons::GnbIp), cons::LocalAgentPort, this);
        agfUdpServer->start();
    }
    catch (const LibError &e)
    {
        m_logger->err("agfUdpServer could not be created. %s", e.what());
    }
}

void GtpTask::onQuit()
{
    m_udpServer->quit();
    delete m_udpServer;

    agfUdpServer->quit();
    delete agfUdpServer;

    m_ueContexts.clear();
}

void GtpTask::onLoop()
{
    NtsMessage *msg = take();
    if (!msg)
        return;

    switch (msg->msgType)
    {
    case NtsMessageType::GNB_NGAP_TO_GTP: {
        auto *w = dynamic_cast<NwGnbNgapToGtp *>(msg);
        switch (w->present)
        {
        case NwGnbNgapToGtp::UE_CONTEXT_UPDATE: {
            handleUeContextUpdate(*w->update);
            break;
        }
        case NwGnbNgapToGtp::SESSION_CREATE: {
            handleSessionCreate(w->resource);
            break;
        }
        }
        break;
    }
    case NtsMessageType::GNB_MR_TO_GTP: {
        auto *w = dynamic_cast<NwGnbMrToGtp *>(msg);
        switch (w->present)
        {
        case NwGnbMrToGtp::UPLINK_DELIVERY: {
            // m_logger->debug(w->data.toHexString());
            if (isUeInfo(w->data.toHexString())){
                m_logger->debug("data is ueinfo");

                uint64_t sessionInd = MakeSessionResInd(w->ueId, w->pduSessionId);
                if (!m_pduSessions.count(sessionInd)) {
                    m_logger->err("ueinfo update failed! pud session not found");
                    return;
                }
                auto &session = m_pduSessions[sessionInd];

                OctetString msg = generateUeinfo(std::move(w->data),session->ueId,session->psi,
                                        utils::OctetStringToIp(session->upTunnel.address).c_str(),session->upTunnel.teid,
                                        utils::OctetStringToIp(session->downTunnel.address).c_str(),session->downTunnel.teid);
                //m_logger->debug(msg.toHexString());
                agfUdpServer->send(InetAddress(utils::IpToOctetString(std::string(cons::OnosIp)), cons::OnosAgentPort), msg);
                m_logger->debug("save UE info");

            } else {
                // m_logger->debug("data is data");
                handleUplinkData(w->ueId, w->pduSessionId, std::move(w->data));
            }
            break;
        }
        }
        break;
    }
    case NtsMessageType::UDP_SERVER_RECEIVE:
        handleUdpReceive(*dynamic_cast<udp::NwUdpServerReceive *>(msg));
        break;
    default:
        m_logger->unhandledNts(msg);
        break;
    }

    delete msg;
}

void GtpTask::handleUeContextUpdate(const GtpUeContextUpdate &msg)
{
    if (!m_ueContexts.count(msg.ueId))
        m_ueContexts[msg.ueId] = std::make_unique<GtpUeContext>(msg.ueId);

    auto &ue = m_ueContexts[msg.ueId];
    ue->ueAmbr = msg.ueAmbr;

    updateAmbrForUe(ue->ueId);
}

void GtpTask::handleSessionCreate(PduSessionResource *session)
{
    if (!m_ueContexts.count(session->ueId))
    {
        m_logger->err("PDU session resource could not be created, UE context with ID[%d] not found", session->ueId);
        return;
    }

    uint64_t sessionInd = MakeSessionResInd(session->ueId, session->psi);
    m_pduSessions[sessionInd] = std::unique_ptr<PduSessionResource>(session);

    m_sessionTree.insert(sessionInd, session->downTunnel.teid);

    updateAmbrForUe(session->ueId);
    updateAmbrForSession(sessionInd);
}

void GtpTask::handleUplinkData(int ueId, int psi, OctetString &&pdu)
{
    const uint8_t *data = pdu.data();

    // ignore non IPv4 packets
    if ((data[0] >> 4 & 0xF) != 4)
        return;

    uint64_t sessionInd = MakeSessionResInd(ueId, psi);

    if (!m_pduSessions.count(sessionInd))
    {
        m_logger->err("Uplink data failure, PDU session not found. UE: %d PSI: %d", ueId, psi);
        return;
    }

    auto &pduSession = m_pduSessions[sessionInd];

    if (m_rateLimiter->allowUplinkPacket(sessionInd, static_cast<int64_t>(pdu.length())))
    {
        gtp::GtpMessage gtp{};
        gtp.payload = std::move(pdu);
        gtp.msgType = gtp::GtpMessage::MT_G_PDU;
        gtp.teid = pduSession->upTunnel.teid;

        auto ul = std::make_unique<gtp::UlPduSessionInformation>();
        // TODO: currently using first QSI
        ul->qfi = static_cast<int>(pduSession->qosFlows->list.array[0]->qosFlowIdentifier);

        auto cont = new gtp::PduSessionContainerExtHeader();
        cont->pduSessionInformation = std::move(ul);
        gtp.extHeaders.push_back(std::unique_ptr<gtp::GtpExtHeader>(cont));

        OctetString gtpPdu;
        if (!gtp::EncodeGtpMessage(gtp, gtpPdu))
            m_logger->err("Uplink data failure, GTP encoding failed");
        else
            m_udpServer->send(InetAddress(pduSession->upTunnel.address, cons::GtpPort), gtpPdu);
    }
}

void GtpTask::handleUdpReceive(const udp::NwUdpServerReceive &msg)
{
    OctetView buffer{msg.packet};
    auto *gtp = gtp::DecodeGtpMessage(buffer);

    auto sessionInd = m_sessionTree.findByDownTeid(gtp->teid);
    if (sessionInd == 0)
    {
        m_logger->err("TEID %d not found on GTP-U Downlink", gtp->teid);
        delete gtp;
        return;
    }

    if (gtp->msgType != gtp::GtpMessage::MT_G_PDU)
    {
        m_logger->err("Unhandled GTP-U message type: %d", gtp->msgType);
        delete gtp;
        return;
    }

    if (m_rateLimiter->allowDownlinkPacket(sessionInd, gtp->payload.length()))
    {
        auto *w = new NwGnbGtpToMr(NwGnbGtpToMr::DATA_PDU_DELIVERY);
        w->ueId = GetUeId(sessionInd);
        w->pduSessionId = GetPsi(sessionInd);
        w->data = std::move(gtp->payload);
        m_base->mrTask->push(w);
    }

    delete gtp;
}

void GtpTask::updateAmbrForUe(int ueId)
{
    if (!m_ueContexts.count(ueId))
        return;

    auto &ue = m_ueContexts[ueId];
    m_rateLimiter->updateUeUplinkLimit(ueId, ue->ueAmbr.ulAmbr);
    m_rateLimiter->updateUeDownlinkLimit(ueId, ue->ueAmbr.dlAmbr);
}

void GtpTask::updateAmbrForSession(uint64_t pduSession)
{
    if (!m_pduSessions.count(pduSession))
        return;

    auto &sess = m_pduSessions[pduSession];
    m_rateLimiter->updateSessionUplinkLimit(pduSession, sess->sessionAmbr.ulAmbr);
    m_rateLimiter->updateSessionDownlinkLimit(pduSession, sess->sessionAmbr.dlAmbr);
}

OctetString GtpTask::generateOctet(int type, std::string name, int id, int psi, std::string ulIp, int ulTeid, std::string dlIp, int dlTeid)
{
    OctetString msg;
    msg.appendOctet('{');
    msg.appendOctet('t');
    msg.appendOctet('y');
    msg.appendOctet('p');
    msg.appendOctet('e');
    msg.appendOctet(':');
    for(char& c : std::to_string(type)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('n');
    msg.appendOctet('a');
    msg.appendOctet('m');
    msg.appendOctet('e');
    msg.appendOctet(':');
    for(char& c : name) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('i');
    msg.appendOctet('d');
    msg.appendOctet(':');
    for(char& c : std::to_string(id)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('p');
    msg.appendOctet('s');
    msg.appendOctet('i');
    msg.appendOctet(':');
    for(char& c : std::to_string(psi)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('u');
    msg.appendOctet('l');
    msg.appendOctet('I');
    msg.appendOctet('p');
    msg.appendOctet(':');
    for(char& c : ulIp) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('u');
    msg.appendOctet('l');
    msg.appendOctet('T');
    msg.appendOctet('e');
    msg.appendOctet('i');
    msg.appendOctet('d');
    msg.appendOctet(':');
    for(char& c : std::to_string(ulTeid)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('d');
    msg.appendOctet('l');
    msg.appendOctet('I');
    msg.appendOctet('p');
    msg.appendOctet(':');
    for(char& c : dlIp) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('d');
    msg.appendOctet('l');
    msg.appendOctet('T');
    msg.appendOctet('e');
    msg.appendOctet('i');
    msg.appendOctet('d');
    msg.appendOctet(':');
    for(char& c : std::to_string(dlTeid)) {
        msg.appendOctet(c);
    }
    msg.appendOctet('}');
    return msg;
}

// msg == {type:TYPE,name:NAME,ueIp:UEIP
OctetString GtpTask::generateUeinfo(OctetString msg, int id, int psi, std::string ulIp, int ulTeid, std::string dlIp, int dlTeid){
    msg.appendOctet(',');
    msg.appendOctet('i');
    msg.appendOctet('d');
    msg.appendOctet(':');
    for(char& c : std::to_string(id)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('p');
    msg.appendOctet('s');
    msg.appendOctet('i');
    msg.appendOctet(':');
    for(char& c : std::to_string(psi)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('u');
    msg.appendOctet('l');
    msg.appendOctet('I');
    msg.appendOctet('p');
    msg.appendOctet(':');
    for(char& c : ulIp) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('u');
    msg.appendOctet('l');
    msg.appendOctet('T');
    msg.appendOctet('e');
    msg.appendOctet('i');
    msg.appendOctet('d');
    msg.appendOctet(':');
    for(char& c : std::to_string(ulTeid)) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('d');
    msg.appendOctet('l');
    msg.appendOctet('I');
    msg.appendOctet('p');
    msg.appendOctet(':');
    for(char& c : dlIp) {
        msg.appendOctet(c);
    }
    msg.appendOctet(',');
    msg.appendOctet('d');
    msg.appendOctet('l');
    msg.appendOctet('T');
    msg.appendOctet('e');
    msg.appendOctet('i');
    msg.appendOctet('d');
    msg.appendOctet(':');
    for(char& c : std::to_string(dlTeid)) {
        msg.appendOctet(c);
    }
    msg.appendOctet('}');
    return msg;
}

bool GtpTask::isUeInfo(std::string data) {
    // {type:TYPE,name:NAME,ueIp:UEIP
    // ^7B747970653A\S+2C6E616D653A\S+2C756549703A\S+2E\S+2E\S+2E\S+7D$
    std::regex reg("^7B747970653A\\S+2C6E616D653A\\S+2C756549703A\\S+2E\\S+2E\\S+2E\\S+$");
    std::smatch m;
    return std::regex_match(data, m, reg);
}

} // namespace nr::gnb
