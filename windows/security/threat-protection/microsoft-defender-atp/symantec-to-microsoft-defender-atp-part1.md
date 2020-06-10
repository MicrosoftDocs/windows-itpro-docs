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

Part 1 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#the-migration-process-at-a-high-level) includes the following steps:
1. [Get Microsoft Defender ATP](#get-microsoft-defender-atp).
2. [Grant access to the Microsoft Defender Security Center](#grant-access-to-the-microsoft-defender-security-center).
3. [Configure device proxy and internet connectivity settings](#configure-device-proxy-and-internet-connectivity-settings) 

## Get Microsoft Defender ATP

To get started, you must have Microsoft Defender ATP with licenses assigned and provisioned per the following steps:

1. Buy or try Microsoft Defender ATP today. [Visit Microsoft Defender ATP to start a free trial or request a quote](https://aka.ms/mdatp). 

2. Verify that your licenses are properly provisioned. See [Check license state](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#check-license-state).

3. As a global administrator or security administrator, set up your dedicated cloud instance of Microsoft Defender ATP. See [Microsoft Defender ATP setup: Tenant configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#tenant-configuration).

4. If endpoints in your organization use a proxy to access the internet, see [Microsoft Defender ATP setup: Network configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#network-configuration).

## Grant access to the Microsoft Defender Security Center

The Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)), also referred to as the Microsoft Defender ATP portal, is where you can access the features and capabilities of Microsoft Defender ATP. [Get an overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use).

Permissions to the Microsoft Defender Security Center can be granted by using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan the roles and permissions for your security administrators and security operators. See [Role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment#role-based-access-control).

2. Set up and configure RBAC. You can choose from one of several different methods. We recommend using [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune), especially if your organization is using Windows 10, macOS, iOS, and Android devices. See [setting up RBAC using Intune](https://docs.microsoft.com/mem/intune/fundamentals/role-based-access-control).

    Depending on your organization's needs, you can use a different method, such as one of the following:
    - [Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration)
    - [Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm)
    - [Windows Admin Center](https://docs.microsoft.com/windows-server/manage/windows-admin-center/overview)

3. After your roles are defined and RBAC is set up, grant access to the Microsoft Defender Security Center. See [Manage portal access using RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac).

## Configure device proxy and internet connectivity settings

For MDATP (EDR):
Windows:
Windows 10, Windows Server 1803 and Windows Server 2019:
Configure machine proxy and Internet connectivity settings
https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet

Windows 7 SP1, Windows Server 2008 R2 SP1, Windows 8.1, Windows Server 2012 R2, and Windows Server 2016:
Configure proxy and Internet connectivity settings 
https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-downlevel#configure-proxy-and-internet-connectivity-settings 
Enable access to Microsoft Defender ATP service URLs in the proxy server
https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet#enable-access-to-microsoft-defender-atp-service-urls-in-the-proxy-server 

macOS:
Network connections -- Microsoft Defender Advanced Threat Protection for Mac
https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#network-connections

	Linux:
EDR Endpoints:
https://winatp-gw-cus.microsoft.com/
https://winatp-gw-eus.microsoft.com/
https://winatp-gw-weu.microsoft.com/
https://winatp-gw-neu.microsoft.com/
https://winatp-gw-ukw.microsoft.com/
https://winatp-gw-uks.microsoft.com/
https://us4-v20.events.data.microsoft.com/
https://us5-v20.events.data.microsoft.com/
https://eu-v20.events.data.microsoft.com/
https://us-v20.events.data.microsoft.com/
https://au-v20.events.data.microsoft.com/
https://uk-v20.events.data.microsoft.com/
https://de-v20.events.data.microsoft.com/
https://v20.events.data.microsoft.com/

For MDAV/SCEP:
Windows:
Allow connections to the Windows Defender Antivirus cloud service (Proxy and/or Firewall)
https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-network-connections-windows-defender-antivirus#allow-connections-to-the-windows-defender-antivirus-cloud-service  
Important changes to Microsoft Active Protection Service (MAPS) endpoint 
https://techcommunity.microsoft.com/t5/configuration-manager-archive/important-changes-to-microsoft-active-protection-service-maps/ba-p/274006 
macOS:
Network connections -- Microsoft Defender Advanced Threat Protection for Mac
https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#network-connections

Linux:
AV Endpoints
https://cdn.x.cp.wd.microsoft.com/
https://eu-cdn.x.cp.wd.microsoft.com/
https://wu-cdn.x.cp.wd.microsoft.com/
https://x.cp.wd.microsoft.com/api/


## Next step

- [Migrate from Symantec - Part 2: Configure settings and exclusions](symantec-to-microsoft-defender-atp-part2.md)

## Related articles

[Microsoft Defender ATP deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases)


