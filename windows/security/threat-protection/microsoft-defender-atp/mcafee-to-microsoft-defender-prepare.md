---
title: McAfee to Microsoft Defender ATP - Prepare
description: This is phase 1, Prepare, for migrating from McAfee to Microsoft Defender ATP.
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
ms.collection: 
- M365-security-compliance 
- m365solution-mcafeemigrate
ms.topic: article
ms.date: 09/03/2020
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
---

# Migrate from McAfee - Phase 1: Prepare for your migration

|![Phase 1: Prepare](images/prepare.png)<br/>Phase 1: Prepare |[![Phase 2: Set up](images/setup.png)](mcafee-to-microsoft-defender-setup.md)<br/>[Phase 2: Set up](mcafee-to-microsoft-defender-setup.md) |[![Phase 3: Onboard](images/onboard.png)](mcafee-to-microsoft-defender-onboard.md)<br/>[Phase 3: Onboard](mcafee-to-microsoft-defender-onboard.md) |
|--|--|--|
|*You are here!*| | |


**Welcome to the Prepare phase of [migrating from McAfee Endpoint Security (McAfee) to Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](mcafee-to-microsoft-defender-migration.md#the-migration-process)**. 

This migration phase includes the following steps:
1. [Get and deploy updates across your organization's devices](#get-and-deploy-updates-across-your-organizations-devices)
2. [Get Microsoft Defender ATP](#get-microsoft-defender-atp).
3. [Grant access to the Microsoft Defender Security Center](#grant-access-to-the-microsoft-defender-security-center).
4. [Configure device proxy and internet connectivity settings](#configure-device-proxy-and-internet-connectivity-settings).

## Get and deploy updates across your organization's devices

As a best practice, keep your organization's devices and endpoints up to date. Make sure your McAfee Endpoint Security (McAfee) solution is up to date, and that the operating systems and apps your organization is also have the latest updates. Doing this now can help prevent problems later as you migrate to Microsoft Defender ATP and Microsoft Defender Antivirus.

### Make sure your McAfee solution is up to date

Keep McAfee up to date, and make sure that your organization's devices have the latest security updates. Need help? Here are some McAfee resources:

- [McAfee Enterprise Product Documentation: How Endpoint Security Works](https://docs.mcafee.com/bundle/endpoint-security-10.7.x-common-product-guide-windows/page/GUID-1207FF39-D1D2-481F-BBD9-E4079112A8DD.html)

- [McAfee Knowledge Center Technical Article: Windows Security Center intermittently incorrectly reports that Endpoint Security is disabled when running on Windows 10](https://kc.mcafee.com/corporate/index?page=content&id=KB91830) 

- [McAfee Knowledge Center Technical Article: Windows Security Center reports Endpoint Security is disabled when Endpoint Security is running](https://kc.mcafee.com/corporate/index?page=content&id=KB91428)

- Your McAfee support ServicePortal ([http://mysupport.mcafee.com](http://mysupport.mcafee.com))

### Make sure your organization's devices are up to date

Need help updating your organization's devices? See the following resources:

|OS | Resource |
|:--|:--|
|Windows |[Microsoft Update](https://www.update.microsoft.com) |
|macOS | [How to update the software on your Mac](https://support.apple.com/HT201541)|
|iOS |[Update your iPhone, iPad, or iPod touch](https://support.apple.com/HT204204)|
|Android |[Check & update your Android version](https://support.google.com/android/answer/7680439) |
|Linux | [Linux 101: Updating Your System](https://www.linux.com/training-tutorials/linux-101-updating-your-system) |

## Get Microsoft Defender ATP

Now that you've updated your organization's devices, the next step is to get Microsoft Defender ATP, assign licenses, and make sure the service is provisioned.

1. Buy or try Microsoft Defender ATP today. [Visit Microsoft Defender ATP to start a free trial or request a quote](https://aka.ms/mdatp). 

2. Verify that your licenses are properly provisioned. [Check your license state](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#check-license-state).

3. As a global administrator or security administrator, set up your dedicated cloud instance of Microsoft Defender ATP. See [Microsoft Defender ATP setup: Tenant configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#tenant-configuration).

4. If endpoints (such as devices) in your organization use a proxy to access the internet, see [Microsoft Defender ATP setup: Network configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#network-configuration).
 
At this point, you are ready to grant access to your security administrators and security operators who will use the Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)). 

> [!NOTE]
> The Microsoft Defender Security Center is sometimes referred to as the Microsoft Defender ATP portal. 

## Grant access to the Microsoft Defender Security Center

The Microsoft Defender Security Center ([https://aka.ms/MDATPportal](https://aka.ms/MDATPportal)) is where you access and configure features and capabilities of Microsoft Defender ATP. To learn more, see [Overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use).

Permissions to the Microsoft Defender Security Center can be granted by using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan the roles and permissions for your security administrators and security operators. See [Role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment#role-based-access-control).

2. Set up and configure RBAC. We recommend using [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) to configure RBAC, especially if your organization is using a combination of Windows 10, macOS, iOS, and Android devices. See [setting up RBAC using Intune](https://docs.microsoft.com/mem/intune/fundamentals/role-based-access-control).

    If your organization requires a method other than Intune, choose one of the following options:
    - [Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration)
    - [Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm)
    - [Windows Admin Center](https://docs.microsoft.com/windows-server/manage/windows-admin-center/overview)

3. Grant access to the Microsoft Defender Security Center. (Need help? See [Manage portal access using RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)).

## Configure device proxy and internet connectivity settings

To enable communication between your devices and Microsoft Defender ATP, configure proxy and internet settings. The following table includes links to resources you can use to configure your proxy and internet settings for various operating systems and capabilities:

|Capabilities  | Operating System | Resources |
|--|--|--|
|[Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) (EDR) |- [Windows 10](https://docs.microsoft.com/windows/release-information) <br/>- [Windows Server 2019](https://docs.microsoft.com/windows/release-information/status-windows-10-1809-and-windows-server-2019)<br/>- [Windows Server 1803 or later](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1803)  |[Configure machine proxy and internet connectivity settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-proxy-internet) |
|EDR |- [Windows Server 2016](https://docs.microsoft.com/windows/release-information/status-windows-10-1607-and-windows-server-2016) <br/>- [Windows Server 2012 R2](https://docs.microsoft.com/windows/release-information/status-windows-8.1-and-windows-server-2012-r2)<br/>- [Windows Server 2008 R2 SP1](https://docs.microsoft.com/windows/release-information/status-windows-7-and-windows-server-2008-r2-sp1)<br/>- [Windows 8.1](https://docs.microsoft.com/windows/release-information/status-windows-8.1-and-windows-server-2012-r2)<br/>- [Windows 7 SP1](https://docs.microsoft.com/windows/release-information/status-windows-7-and-windows-server-2008-r2-sp1) |[Configure proxy and internet connectivity settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-downlevel#configure-proxy-and-internet-connectivity-settings) |
|EDR  |macOS: <br/>- 10.15 (Catalina)<br/>- 10.14 (Mojave) <br/>- 10.13 (High Sierra)  |[Microsoft Defender ATP for Mac: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#network-connections) |
|[Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) |- [Windows 10](https://docs.microsoft.com/windows/release-information) <br/>- [Windows Server 2019](https://docs.microsoft.com/windows/release-information/status-windows-10-1809-and-windows-server-2019)<br/>- [Windows Server 1803 or later](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1803) <br/>- [Windows Server 2016](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-2016) |[Configure and validate Microsoft Defender Antivirus network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-network-connections-microsoft-defender-antivirus)<br/> |
|Antivirus |macOS: <br/>- 10.15 (Catalina)<br/>- 10.14 (Mojave) <br/>- 10.13 (High Sierra) |[Microsoft Defender ATP for Mac: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac#network-connections) |
|Antivirus |Linux: <br/>- RHEL 7.2+<br/>- CentOS Linux 7.2+<br/>- Ubuntu 16 LTS, or higher LTS<br/>- SLES 12+<br/>- Debian 9+<br/>- Oracle Linux 7.2 |[Microsoft Defender ATP for Linux: Network connections](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-linux#network-connections) 

## Next step

**Congratulations**! You have completed the **Prepare** phase of [migrating from McAfee to Microsoft Defender ATP](mcafee-to-microsoft-defender-migration.md#the-migration-process)!

- [Proceed to set up Microsoft Defender ATP](mcafee-to-microsoft-defender-setup.md).
