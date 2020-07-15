---
title: Manage Microsoft Defender ATP using Intune
description: Learn how to manage Microsoft Defender ATP with Intune
keywords: post-migration, manage, operations, maintenance, utilization, intune, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage Microsoft Defender Advanced Threat Protection with Intune

We recommend using Intune to manage threat protection features for the devices (also referred to as endpoints) within your organization. This article lists various tasks you can perform using Intune together with resources to learn more.

|Task  |Resources to learn more  |
|---------|---------|
|Manage your organization's devices using Intune     |[Protect devices with Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/device-protect)         |
|Integrate Microsoft Defender ATP with Microsoft Intune as a Mobile Threat Defense solution <br/>(for Android devices and devices running Windows 10 or later)   |[Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection)         |
|Use Conditional Access to control the devices and apps that can connect to your email and company resources |[Configure Conditional Access in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-conditional-access) |
|Configure your Microsoft Defender Antivirus settings using the Policy configuration service provider ([Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider)) |[Policy CSP - Microsoft Defender ATP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-defender) <br/><br/>[Device restrictions: Microsoft Defender Antivirus](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus)  | 
|If necessary, specify exclusions for Microsoft Defender Antivirus <br/><br/>*Generally, you shouldn't need to apply exclusions. Microsoft Defender Antivirus includes a number of automatic exclusions based on known OS behaviors and typical management files, such as those used in enterprise management, database management, and other enterprise scenarios and situations.* |Windows 10 devices: [Device restrictions: Microsoft Defender Antivirus Exclusions](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions) <br/><br/>Windows Server 2016 and 2019: [Configure Microsoft Defender Antivirus exclusions on Windows Server](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-server-exclusions-microsoft-defender-antivirus) <br/><br/>[Virus scanning recommendations for Enterprise computers that are running currently supported versions of Windows](https://support.microsoft.com/help/822158/virus-scanning-recommendations-for-enterprise-computers)|
|Configure your attack surface reduction rules and exploit protection (formerly Microsoft Defender Exploit Guard)  <br/><br/>*TIP: Configure your attack surface reduction rules in [audit mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/audit-windows-defender) at first (for at least one week and up to two months). You can monitor status using Power BI ([get our template](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Attack%20Surface%20Reduction%20rules)), and then set those rules to active mode when you're ready.*   |[Attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)<br/><br/>[Enable exploit protection using Intune](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/enable-exploit-protection#intune)<br/><br/>[Endpoint protection: Microsoft Defender Exploit Guard](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-exploit-guard)   |
 