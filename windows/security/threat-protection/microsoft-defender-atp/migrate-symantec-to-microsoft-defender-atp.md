---
title: Migrate from Symantec to Microsoft Defender ATP
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

# Migrate from Symantec to Microsoft Defender Advanced Threat Protection

If you are thinking about switching from Symantec Endpoint Protection to [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) (Microsoft Defender ATP), you're in the right place. Use this article as a guide to plan and execute your migration.  

## What all is included in Microsoft Defender ATP?

If you are new to Microsoft Defender ATP, you might be wondering what all is included. Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Microsoft Defender ATP includes all the following features and capabilities:

- [Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt), which helps identify, assess, adn remediate endpoint weaknesses.

- [Attack surface reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction) rules that help protect your organization's devices and applications from cyberthreats and attacks.

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)  to block threats and malware.

- [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) to detect, investigate, and respond to intrusion attempts and active breaches.  

- [Advanced hunting](advanced-hunting-overview.md) to locate indicators and entities of known or potential threats.

- [Behavioral blocking and containment](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) to help identify and stop threats, based on their behaviors and process trees even when the threat has started execution.

- [Automated investigation and remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) to examine alerts and take immediate remediation action to resolve breaches.

- [Threat hunting service (Microsoft Threat Experts)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts) to provide security operations teams with expert level monitoring and analysis, and to help ensure that critical threats aren't missed.

[Learn more about Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection).

## The migration process at a high level

The process of switching from Symantec to Microsoft Defender ATP can be divided into three phases or parts, as listed in the following table. 

|Phase |Steps |
|--|--|
|Part 1: Get Microsoft Defender ATP started |[Step 1: Get Microsoft Defender ATP](#step-1-get-microsoft-defender-atp)<br/><br/>[Step 2: Grant access to the Microsoft Defender Security Center](#step-2-grant-access-to-the-microsoft-defender-security-center)<br/><br/>[Step 3: Configure device proxy and internet connectivity settings](#step-3-configure-device-proxy-and-internet-connectivity-settings) |
| Part 2: Configure settings and exclusions for Microsoft Defender ATP and Symantec Endpoint Protection |[Step 4: Set Microsoft Defender ATP to passive mode](#step-4-set-microsoft-defender-atp-to-passive-mode)<br/><br/>[Step 5: Re-enable Microsoft Defender Antivirus](#step-5-re-enable-microsoft-defender-antivirus) <br/><br/>[Step 6: Add Microsoft Defender ATP EDR to the exclusion list for Symantec](#step-6-add-microsoft-defender-atp-edr-to-the-exclusion-list-for-symantec)<br/><br/>[Step 7: Add Symantec to your Microsoft Defender ATP EDR exclusion list](#step-7-add-symantec-to-your-microsoft-defender-atp-edr-exclusion-list) |
| Part 3: Finish making the switch to Microsoft Defender ATP | [Step 8: Set up your device groups, device collections, and organizational units](#step-8-set-up-your-device-groups-device-collections-and-organizational-units) <br/><br/>[Step 9: Deploy Microsoft Defender ATP and uninstall Symantec](#step-9-deploy-microsoft-defender-atp-and-uninstall-symantec) <br/><br/>[Step 10: Onboard devices to Microsoft Defender ATP](#step-10-onboard-devices-to-microsoft-defender-atp) |

After you have Microsoft Defender ATP set up and deployed, you can manage the various features and capabilities.

## Step 1: Get Microsoft Defender ATP

To get started, you must have Microsoft Defender ATP with licenses assigned and provisioned per the following steps:

1. Buy or try Microsoft Defender ATP today. [Visit Microsoft Defender ATP to start a free trial or request a quote](https://aka.ms/mdatp). 

2. Verify that your licenses are properly provisioned. See [Check license state](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#check-license-state).

3. As a global administrator or security administrator, set up your dedicated cloud instance of Microsoft Defender ATP. See [Microsoft Defender ATP setup: Tenant configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#tenant-configuration).

4. If endpoints in your organization use a proxy to access the internet, see [Microsoft Defender ATP setup: Network configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment#network-configuration).

## Step 2: Grant access to the Microsoft Defender Security Center

The Microsoft Defender Security Center ([https://securitycenter.windows.com/](https://securitycenter.windows.com/)), also referred to as the Microsoft Defender ATP portal, is where you can access the features and capabilities of Microsoft Defender ATP. [Get an overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use).

Permissions to the Microsoft Defender Security Center can be granted using either basic permissions or role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

1. Plan roles and permissions. See [Role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment#role-based-access-control).

2. RBAC can be set up and configured using one of several different methods. We recommend using [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune), especially if your organization is using Windows 10, macOS, iOS, and Android devices. See [setting up RBAC using Intune](https://docs.microsoft.com/mem/intune/fundamentals/role-based-access-control).

    Depending on your organization's needs, you can another method, such as [Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration), [Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm), or the [Windows Admin Center](https://docs.microsoft.com/windows-server/manage/windows-admin-center/overview). 

3. After your roles are defined and RBAC is set up, grant access to the Microsoft Defender Security Center. See [Manage portal access using RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac).

## Step 3: Configure device proxy and internet connectivity settings



## Step 4: Set Microsoft Defender ATP to passive mode

## Step 5: Re-enable Microsoft Defender Antivirus

## Step 6: Add Microsoft Defender ATP EDR to the exclusion list for Symantec

Add Microsoft Defender ATP EDR to the exclusion list for Symantec (or any other security products).

## Step 7: Add Symantec to your Microsoft Defender ATP EDR exclusion list

Add Symantec and your other security solutions to the Microsoft Defender ATP EDR exclusion list.

## Step 8: Set up your device groups, device collections, and organizational units

## Step 9: Deploy Microsoft Defender ATP and uninstall Symantec

## Step 10: Onboard devices to Microsoft Defender ATP

You can choose from several methods to onboard devices to Microsoft Defender ATP. 

## Manage Microsoft Defender ATP

After you have moved to Microsoft Defender ATP, you can choose from several methods to manage your threat protection features. We recommend using Intune. The following table lists various tasks and resources to manage features and capabilities of Microsoft Defender ATP with [Intune](https://docs.microsoft.com/intune/fundamentals/what-is-intune).

|Task | Resources to learn more |
|---|---|
|Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune |[Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection) | 
|Specify device restrictions for Microsoft Defender Antivirus |[Device restrictions: Microsoft Defender Antivirus](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) |
|Specify exclusions for Microsoft Defender Antivirus|[Device restrictions: Microsoft Defender Antivirus Exclusions](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions)<br/><br/>[Configure Windows Defender Antivirus exclusions on Windows Server](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-server-exclusions-windows-defender-antivirus)<br/><br/>[Microsoft Antivirus Exclusion List (Windows Server)](https://social.technet.microsoft.com/wiki/contents/articles/953.microsoft-anti-virus-exclusion-list.aspx) |
|Manage attack surface reduction rules <br/><br/>(A sample Power BI dashboard is available to review your attack surface reduction rules. [Get the template here](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Attack%20Surface%20Reduction%20rules).)|[Endpoint protection: Attack surface reduction rules](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10?toc=%2Fintune%2Fconfiguration%2Ftoc.json&bc=%2Fintune%2Fconfiguration%2Fbreadcrumb%2Ftoc.json#attack-surface-reduction-rules)<br/><br/>|
|Manage network protection   |[]()<br/><br/>[]()<br/><br/>    |

## Related articles

[Microsoft Defender ATP deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases)


