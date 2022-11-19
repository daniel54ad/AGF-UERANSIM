//
// This file is a part of UERANSIM open source project.
// Copyright (c) 2021 ALİ GÜNGÖR.
//
// The software and all associated files are licensed under GPL-3.0
// and subject to the terms and conditions defined in LICENSE file.
//

#pragma once

#include <cstdint>

struct cons
{
    // Version information
    static constexpr const uint8_t Major = 3;
    static constexpr const uint8_t Minor = 1;
    static constexpr const uint8_t Patch = 0;
    static constexpr const char *Project = "UERANSIM";
    static constexpr const char *Tag = "v3.1.0";
    static constexpr const char *Name = "UERANSIM v3.1.0";
    static constexpr const char *Owner = "ALİ GÜNGÖR";

    // Some IP value
    // gNB local WAN IP
    static constexpr const char *GnbIp = "192.168.30.2";
    // UE local control IP (WAN)
    static constexpr const char *UeModuleIp = "192.168.30.2";
    static constexpr const char *AgentIp = "127.0.0.1";

    // Some port values
    // controller communication port
    static constexpr const uint16_t OnosAgentPort = 55555;
    static constexpr const uint16_t LocalAgentPort = 44444;
    static constexpr const uint16_t GtpPort = 2152;
    static constexpr const uint16_t PortalPort = 4997;

    // TUN interface
    static constexpr const char *TunNamePrefix = "uesimtun";

    // Constraints
    static constexpr const int MinNodeName = 3;
    static constexpr const int MaxNodeName = 1024;

    // Others
    static constexpr const char *CMD_SERVER_IP = "127.0.0.1";
    static constexpr const char *PROC_TABLE_DIR = "/tmp/UERANSIM.proc-table/";
    static constexpr const char *PROCESS_DIR = "/proc/";
    static constexpr const char DIR_SEPARATOR = '/';
};
