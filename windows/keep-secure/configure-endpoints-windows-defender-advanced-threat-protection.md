---
title: Configure Windows Defender ATP endpoints
description: Configure endpoints so that they are onboarded to the service.
keywords: configure endpoints, client onboarding, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Configure Windows Defender ATP endpoints

**Applies to:**

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

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
