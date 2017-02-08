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

The following diagram summarizes the general flow of data between your devices and Update Compliance.

After enabling Windows telemetry on your Windows 10 devices and ensuring that they are assigned your Commercial ID.

(1) user computers send computer, application and driver telemetry data to a secure Microsoft data center through the Microsoft Data Management Service.

(2) After you configure Update Compliance, telemetry data is analyzed by the Update Compliance Service.

(3) and pushed to your OMS workspace.

(4) You can then use the Update Compliance solution.

(5) to view Update compliance, track update deployment progress and troubleshoot matters that need your attention. 

