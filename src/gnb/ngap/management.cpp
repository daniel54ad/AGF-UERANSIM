//
// This file is a part of AGF-UERANSIM open source project.
// Copyright (c) 2021 ALİ GÜNGÖR.
//
// The software and all associated files are licensed under GPL-3.0
// and subject to the terms and conditions defined in LICENSE file.
//

#include "task.hpp"
#include <utils/common.hpp>

namespace nr::gnb
{

NgapAmfContext *NgapTask::findAmfContext(int ctxId)
{
    NgapAmfContext *ctx = nullptr;
    if (m_amfCtx.count(ctxId))
        ctx = m_amfCtx[ctxId];
    if (ctx == nullptr)
        m_logger->err("AMF context not found with id: %d", ctxId);
    return ctx;
}

void NgapTask::createAmfContext(const GnbAmfConfig &conf)
{
    auto *ctx = new NgapAmfContext();
    ctx->ctxId = utils::NextId();
    ctx->state = EAmfState::NOT_CONNECTED;
    ctx->address = conf.address;
    ctx->port = conf.port;
    m_amfCtx[ctx->ctxId] = ctx;
}

void NgapTask::createUeContext(int ueId)
{
    auto *ctx = new NgapUeContext(ueId);
    ctx->amfUeNgapId = -1;
    ctx->ranUeNgapId = ++m_ueNgapIdCounter;

    m_ueCtx[ctx->ctxId] = ctx;

    // Select an AMF for the UE (if any)
    for (auto &amf : m_amfCtx)
    {
        // todo: an arbitrary AMF is selected for now
        ctx->associatedAmfId = amf.second->ctxId;
        break;
    }
}

NgapUeContext *NgapTask::findUeContext(int ctxId)
{
    NgapUeContext *ctx = nullptr;
    if (m_ueCtx.count(ctxId))
        ctx = m_ueCtx[ctxId];
    if (ctx == nullptr)
        m_logger->err("UE context not found with id: %d", ctxId);
    return ctx;
}

NgapUeContext *NgapTask::findUeByRanId(long ranUeNgapId)
{
    if (ranUeNgapId <= 0)
        return nullptr;
    // TODO: optimize
    for (auto &ue : m_ueCtx)
        if (ue.second->ranUeNgapId == ranUeNgapId)
            return ue.second;
    return nullptr;
}

NgapUeContext *NgapTask::findUeByAmfId(long amfUeNgapId)
{
    if (amfUeNgapId <= 0)
        return nullptr;
    // TODO: optimize
    for (auto &ue : m_ueCtx)
        if (ue.second->amfUeNgapId == amfUeNgapId)
            return ue.second;
    return nullptr;
}

NgapUeContext *NgapTask::findUeByNgapIdPair(int amfCtxId, const NgapIdPair &idPair)
{
    auto &amfId = idPair.amfUeNgapId;
    auto &ranId = idPair.ranUeNgapId;

    if (!amfId.has_value() && !ranId.has_value())
    {
        sendErrorIndication(amfCtxId, NgapCause::Protocol_abstract_syntax_error_falsely_constructed_message);
        return nullptr;
    }

    if (!amfId.has_value())
    {
        auto ue = findUeByRanId(ranId.value());
        if (ue == nullptr)
        {
            sendErrorIndication(amfCtxId, NgapCause::RadioNetwork_unknown_local_UE_NGAP_ID);
            return nullptr;
        }

        return ue;
    }

    if (!ranId.has_value())
    {
        auto ue = findUeByAmfId(amfId.value());
        if (ue == nullptr)
        {
            sendErrorIndication(amfCtxId, NgapCause::RadioNetwork_inconsistent_remote_UE_NGAP_ID);
            return nullptr;
        }

        return ue;
    }

    auto ue = findUeByRanId(ranId.value());
    if (ue == nullptr)
    {
        sendErrorIndication(amfCtxId, NgapCause::RadioNetwork_unknown_local_UE_NGAP_ID);
        return nullptr;
    }

    if (ue->amfUeNgapId == -1)
        ue->amfUeNgapId = amfId.value();
    else if (ue->amfUeNgapId != amfId.value())
    {
        sendErrorIndication(amfCtxId, NgapCause::RadioNetwork_inconsistent_remote_UE_NGAP_ID);
        return nullptr;
    }

    return ue;
}

NgapAmfContext *NgapTask::selectNewAmfForReAllocation(int initiatedAmfId, int amfSetId)
{
    // TODO an arbitrary AMF is selected for now
    return findAmfContext(initiatedAmfId);
}

void NgapTask::deleteUeContext(int ueId)
{
    auto *ue = m_ueCtx[ueId];
    if (ue)
    {
        delete ue;
        m_ueCtx.erase(ueId);
    }
}

void NgapTask::deleteAmfContext(int amfId)
{
    auto *amf = m_amfCtx[amfId];
    if (amf)
    {
        delete amf;
        m_amfCtx.erase(amfId);
    }
}

} // namespace nr::gnb