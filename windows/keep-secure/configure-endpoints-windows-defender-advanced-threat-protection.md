---
title: Configure Windows Defender ATP endpoints
description: Use Group Policy or SCCM to deploy the configuration package or do manual registry changes on endpoints so that they are onboarded to the service.
keywords: configure endpoints, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints, sccm, system center configuration manager
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Configure Windows Defender ATP endpoints

**Applies to:**

- Windows 10 Insider Preview Build 14332 or later
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Endpoints in your organization must be configured so that the Windows Defender ATP service can get telemetry from them. There are various methods and deployment tools that you can use to configure the endpoints in your organization. 

Windows Defender ATP supports the following deployment tools and methods:

- Group Policy
- System Center Configuration Manager
- Mobile Device Management (including Microsoft Intune)
- Local script

## In this section
Topic | Description
:---|:---
[Configure endpoints using Group Policy](configure-endpoints-gp-windows-defender-advanced-threat-protection.md) | Use Group Policy to deploy the configuration package on endpoints.
[Configure endpoints using System Center Configuration Manager](configure-endpoints-sccm-windows-defender-advanced-threat-protection.md) | You can use either use System Center Configuration Manager (current branch) version 1606 or System Center Configuration Manager(current branch) version 1602 or earlier to deploy the configuration package on endpoints.
[Configure endpoints using Mobile Device Management tools](configure-endpoints-mdm-windows-defender-advanced-threat-protection.md) | Use Mobile Device Managment tools or Microsoft Intune to deploy the configuration package on endpoints.
[Configure endpoints using a local script](configure-endpoints-script-windows-defender-advanced-threat-protection.md) | Learn how to use the local script to deploy the configuration package on endpoints.
