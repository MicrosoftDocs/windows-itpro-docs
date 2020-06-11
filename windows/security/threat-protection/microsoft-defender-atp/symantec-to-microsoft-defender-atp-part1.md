---
title: Part 1 - Get Microsoft Defender ATP started
description: Part 1 of "Make the switch from Symantec to Microsoft Defender ATP"
keywords: migration, windows defender advanced threat protection, atp, edr
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

# Migrate from Symantec - Part 1: Get Microsoft Defender ATP started

| [Overview](symantec-to-microsoft-defender-atp-migration.md)  | Part 1 <br/>*You are here!* | [Part 2](symantec-to-microsoft-defender-atp-part2.md) | [Part 3](symantec-to-microsoft-defender-atp-part3.md) | [Post migration<br/>management](microsoft-defender-atp-post-migration-management.md) |
|--|--|--|--|--|

Welcome to Part 1 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level). This migration phase includes the following steps:
1. [Get Microsoft Defender ATP](#get-microsoft-defender-atp).
2. [Grant access to the Microsoft Defender Security Center](#grant-access-to-the-microsoft-defender-security-center).
3. [Configure device proxy and internet connectivity settings](#configure-device-proxy-and-internet-connectivity-settings) 

## Get Microsoft Defender ATP

To get started, you must have Microsoft Defender ATP, with licenses assigned and provisioned.

1. Buy or try Microsoft Defender ATP today. [Visit Microsoft Defender ATP to start a free trial or request a quote](https://aka.ms/mdatp). 

2. Verify that your licenses are properly provisioned. [Check your license state](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#check-license-state).

3. As a global administrator or security administrator, set up your dedicated cloud instance of Microsoft Defender ATP. See [Microsoft Defender ATP setup: Tenant configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#tenant-configuration).

4. If endpoints (such as devices) in your organization use a proxy to access the internet, see [Microsoft Defender ATP setup: Network configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#network-configuration).
 
At this point, you are ready to grant access to those who'll use the Microsoft Defender Security Center, which is sometimes referred to as the Microsoft Defender ATP portal. 

## Grant access to the Microsoft Defender Security Center

The Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) is where you access and configure features and capabilities of Microsoft Defender ATP. [Get an overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use).

Permissions to the Microsoft Defender Security Center can be granted by using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan the roles and permissions for your security administrators and security operators. See [Role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment#role-based-access-control).

2. Set up and configure RBAC. You can choose from one of several different methods. We recommend using [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune), especially if your organization is using Windows 10, macOS, iOS, and Android devices. See [setting up RBAC using Intune](https://docs.microsoft.com/mem/intune/fundamentals/role-based-access-control).

    Although we recommend using Intune, you can use a different method to suit your organization's needs. Other methods include the following:
    - [Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration)
    - [Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm)
    - [Windows Admin Center](https://docs.microsoft.com/windows-server/manage/windows-admin-center/overview)

3. Grant access to the Microsoft Defender Security Center. [Manage portal access using RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac).

## Configure device proxy and internet connectivity settings

To enable communication between your devices and Microsoft Defender ATP, configure proxy and internet settings. These settings should be configured for certain capabilities in Microsoft Defender ATP and for certain operating systems, as listed in the following table:

| Features/Capabilities  | Operating System | Resources to learn more |
|--|--|--|
|Endpoint detection and response (EDR) | Windows 10 <br/>Windows Server 1803 or later <br/>Windows Server 2019 |[Configure machine proxy and Internet connectivity settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet) |
|EDR |Windows 7 SP1 <br/>Windows Server 2008 R2 SP1 <br/>Windows 8.1 <br/>Windows Server 2012 R2<br/>Windows Server 2016 |[Configure proxy and Internet connectivity settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-downlevel#configure-proxy-and-internet-connectivity-settings) |
|EDR  |macOS <br/>10.15 (Catalina) <br/>10.14 (Mojave) <br/>10.13 (High Sierra)  |[Microsoft Defender ATP for Mac: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#network-connections) |
|EDR |Linux |[Microsoft Defender ATP for Linux: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#network-connections) |
|Microsoft Defender Antivirus (Microsoft Defender AV) |Windows |[Configure and validate Microsoft Defender Antivirus network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-network-connections-microsoft-defender-antivirus)<br/> |
|Antivirus |macOS |[Microsoft Defender ATP for Mac: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#network-connections) |
|Antivirus |Linux |[Microsoft Defender ATP for Linux: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#network-connections) 


## Next step

- [Migrate from Symantec - Part 2: Configure settings and exclusions](symantec-to-microsoft-defender-atp-part2.md)

## Related articles

[Microsoft Defender ATP deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases)


