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

Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Microsoft Defender ATP includes all the following features and capabilities:

- [Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)

- [Tools to reduce the attack surface](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction)

- [Next-generation protection to block threats and malware](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)

- [Endpoint detection and response to detect advanced attacks](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response)

- [Behavioral blocking and containment of suspicious behaviors and process trees](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment)

- [Automated investigation and remediation of threats](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Threat hunting service (Microsoft Threat Experts)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts)

## The migration process at a high level

Use the following process to make the switch from Symantec to Microsoft Defender ATP:

| Part 1: Get Microsoft Defender ATP | Part 2: Configure settings and exclusions | Part 3: Make the switch |
|---|---|---|
|[Step 1: Get Microsoft Defender ATP](#step-1-get-microsoft-defender-atp)<br/>[Step 2: Grant access to the Microsoft Defender Security Center](#step-2-grant-access-to-the-microsoft-defender-security-center)<br/>[Step 3: Configure device proxy and internet connectivity settings](#step-3-configure-device-proxy-and-internet-connectivity-settings) |[Step 4: Set Microsoft Defender ATP to passive mode](#step-4-set-microsoft-defender-atp-to-passive-mode)<br/>[Step 5: Re-enable Microsoft Defender Antivirus](#step-5-re-enable-microsoft-defender-antivirus)<br/>[Step 6: Add Microsoft Defender ATP EDR to the exclusion list for Symantec](#step-6-add-microsoft-defender-atp-edr-to-the-exclusion-list-for-symantec)<br/>[Step 7: Add Symantec to your Microsoft Defender ATP EDR exclusion list](#step-7-add-symantec-to-your-microsoft-defender-atp-edr-exclusion-list) |[Step 8: Set up your device groups, device collections, and organizational units](#step-8-set-up-your-device-groups-device-collections-and-organizational-units)<br/>[Step 9: Deploy Microsoft Defender ATP and uninstall Symantec](#step-9-deploy-microsoft-defender-atp-and-uninstall-symantec)<br/>[Step 10: Onboard devices to Microsoft Defender ATP](#step-10-onboard-devices-to-microsoft-defender-atp) |


## Step 1: Get Microsoft Defender ATP

To get started, you must have Microsoft Defender ATP with licenses assigned and provisioned per the following steps:

1. Buy or try Microsoft Defender ATP today. [Visit Microsoft Defender ATP to start a trial or request a quote](https://aka.ms/mdatp). 

2. Verify that your licenses are properly provisioned. See [Check license state](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/production-deployment#check-license-state).

3. 




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

## Post-setup management of Microsoft Defender ATP

After you have set up Microsoft Defender ATP, you can choose from several methods to manage your threat protection features, as listed in the following table:

|Method | Task |
|---|---|
|Intune |[Configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/use-intune-config-manager-windows-defender-antivirus) | 
| |Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune |
| |Manage device restrictions for Microsoft Defender Antivirus |
| |Manage Microsoft Defender Antivirus exclusions |

## Related articles

[Microsoft Defender ATP deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases)


