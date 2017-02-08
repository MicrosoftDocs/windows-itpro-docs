---
title: Update Compliance Architecture (Windows 10)
description: Update Compliance workflow
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
---

# Update Compliance Architecture
 
The Update Compliance data flow consists of five steps:

>The following data flow requires that Windows telemetry is enabled, and your Commercial ID is assigned on Windows 10 devices.

**(1)** User computers send telemetry data to a secure Microsoft data center using the Microsoft Data Management Service.<BR>
**(2)** Telemetry data is analyzed by the Update Compliance Data Service.<BR>
**(3)** Telemetry data is pushed from the Update Compliance Data Service to your OMS workspace.<BR>
**(4)** Telemetry data is available in the Update Compliance solution.<BR>
**(5)** You can monitor and troubleshoot update deployment progress using the Update Compliance solution.<BR>

The following diagram illustrates this process:

![Update Compliance architecture](images/uc-01.png)

