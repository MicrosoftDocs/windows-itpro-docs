---
title: Part 1 - Migrating from Symantec to Microsoft Defender ATP
description: Make the switch from Symantec to Microsoft Defender ATP
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

# Migrate from Symantec to Microsoft Defender Advanced Threat Protection - Part 1


|Phase |Steps |
|--|--|
|Part 1: Get Microsoft Defender ATP started |[Step 1: Get Microsoft Defender ATP](#step-1-get-microsoft-defender-atp)<br/><br/>[Step 2: Grant access to the Microsoft Defender Security Center](#step-2-grant-access-to-the-microsoft-defender-security-center)<br/><br/>[Step 3: Configure device proxy and internet connectivity settings](#step-3-configure-device-proxy-and-internet-connectivity-settings) |
| Part 2: Configure settings and exclusions for Microsoft Defender ATP and Symantec Endpoint Protection |[Step 4: Set Microsoft Defender ATP to passive mode](#step-4-set-microsoft-defender-atp-to-passive-mode)<br/><br/>[Step 5: Re-enable Microsoft Defender Antivirus](#step-5-re-enable-microsoft-defender-antivirus) <br/><br/>[Step 6: Add Microsoft Defender ATP EDR to the exclusion list for Symantec](#step-6-add-microsoft-defender-atp-edr-to-the-exclusion-list-for-symantec)<br/><br/>[Step 7: Add Symantec to your Microsoft Defender ATP EDR exclusion list](#step-7-add-symantec-to-your-microsoft-defender-atp-edr-exclusion-list) |
| Part 3: Finish making the switch to Microsoft Defender ATP | [Step 8: Set up your device groups, device collections, and organizational units](#step-8-set-up-your-device-groups-device-collections-and-organizational-units) <br/><br/>[Step 9: Deploy Microsoft Defender ATP and uninstall Symantec](#step-9-deploy-microsoft-defender-atp-and-uninstall-symantec) <br/><br/>[Step 10: Onboard devices to Microsoft Defender ATP](#step-10-onboard-devices-to-microsoft-defender-atp) |


## Step 1: Get Microsoft Defender ATP

To get started, you must have Microsoft Defender ATP with licenses assigned and provisioned per the following steps:

1. Buy or try Microsoft Defender ATP today. [Visit Microsoft Defender ATP to start a free trial or request a quote](https://aka.ms/mdatp). 

2. Verify that your licenses are properly provisioned. See [Check license state](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#check-license-state).

3. As a global administrator or security administrator, set up your dedicated cloud instance of Microsoft Defender ATP. See [Microsoft Defender ATP setup: Tenant configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#tenant-configuration).

4. If endpoints in your organization use a proxy to access the internet, see [Microsoft Defender ATP setup: Network configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#network-configuration).

## Step 2: Grant access to the Microsoft Defender Security Center

The Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)), also referred to as the Microsoft Defender ATP portal, is where you can access the features and capabilities of Microsoft Defender ATP. [Get an overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use).

Permissions to the Microsoft Defender Security Center can be granted by using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan the roles and permissions for your security administrators and security operators. See [Role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment#role-based-access-control).

2. Set up and configure RBAC. You can choose from one of several different methods. We recommend using [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune), especially if your organization is using Windows 10, macOS, iOS, and Android devices. See [setting up RBAC using Intune](https://docs.microsoft.com/mem/intune/fundamentals/role-based-access-control).

    Depending on your organization's needs, you can use a different method, such as one of the following:
    
    - [Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration)
    
    - [Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm)
    
    - [Windows Admin Center](https://docs.microsoft.com/windows-server/manage/windows-admin-center/overview)

3. After your roles are defined and RBAC is set up, grant access to the Microsoft Defender Security Center. See [Manage portal access using RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac).

## Step 3: Configure device proxy and internet connectivity settings

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


## Related articles

[Microsoft Defender ATP deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases)


