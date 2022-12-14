//
// This file is a part of AGF-UERANSIM open source project.
// Copyright (c) 2021 ALİ GÜNGÖR.
//
// The software and all associated files are licensed under GPL-3.0
// and subject to the terms and conditions defined in LICENSE file.
//

#pragma once

#include "types.hpp"

#include <app/cli_cmd.hpp>
#include <app/monitor.hpp>
#include <memory>
#include <string>
#include <utils/logger.hpp>
#include <utils/network.hpp>
#include <utils/nts.hpp>

namespace nr::gnb
{

class GNodeB
{
  private:
    TaskBase *taskBase;

  public:
    GNodeB(GnbConfig *config, app::INodeListener *nodeListener);
    virtual ~GNodeB();

  public:
    void start();
    void pushCommand(std::unique_ptr<app::GnbCliCommand> cmd, const InetAddress &address, NtsTask *callbackTask);
};

} // namespace nr::gnb