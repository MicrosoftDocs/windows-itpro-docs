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

## The migration process at a high level

Use the following process to make the switch from Symantec to Microsoft Defender ATP:

1. Get Microsoft Defender ATP. 
2. Grant access to the Microsoft Defender Security Center. 
3. Configure machine proxy and internet connectivity settings.
4. Set Microsoft Defender ATP to passive mode.
5. Re-enable Microsoft Defender Antivirus.
6. Add Microsoft Defender ATP EDR to the exclusion list for Symantec (or any other security products).
7. Add Symantec and your other security solutions to the Microsoft Defender ATP EDR exclusion list.
8. Set up your device groups, device collections, and organizational units.
9. Install Microsoft Defender ATP and uninstall Symantec.
10. Onboard devices to Microsoft Defender ATP.

## Step 1: Get Microsoft Defender ATP

To get started, you must have Microsoft Defender ATP. If you don't already have Microsoft Defender ATP, you can [start a trial](https://aka.ms/mdatp) and see how it works.  

Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response, and includes the following features and capabilities:

- [Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)

- [Tools to surgically reduce the attack surface](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction)

- [Next-generation protection to block threats and malware](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)

- [Endpoint detection and response to detect advanced attacks](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response)

- [Automated investigation and remediation of threats](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations)

- [Behavioral blocking and containment of suspicious behaviors and process trees](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment)

- [Advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview)

## Step 2: Grant access to the Microsoft Defender Security Center

The Microsoft Defender Security Center ([https://securitycenter.windows.com/](https://securitycenter.windows.com/)), also referred to as the Microsoft Defender ATP portal, is where you can access the features and capabilities of Microsoft Defender ATP. Permissions to the Microsoft Defender Security Center can be granted using basic permissions, or through role-based access control (RBAC). We recommend using RBAC so that you have more granular control over permissions.

Use the following resources to plan your roles and permissions:

- [Role-based access control](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment#role-based-access-control)

- [Manage portal access using RBAC](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/rbac)

### Several options to set up RBAC

RBAC can be set up and configured using one of several different methods. These include [Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune), [Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/servers/deploy/configure/configure-role-based-administration), [Advanced Group Policy Management](https://docs.microsoft.com/microsoft-desktop-optimization-pack/agpm), or the [Windows Admin Center](https://docs.microsoft.com/windows-server/manage/windows-admin-center/overview). 

We recommend [setting up RBAC using Intune](https://docs.microsoft.com/mem/intune/fundamentals/role-based-access-control), because this method can support Windows 10, macOS, iOS, and Android devices.    


## Step 3: Configure device proxy and internet connectivity settings



## Step 4: Set Microsoft Defender ATP to passive mode

## Step 5: Re-enable Microsoft Defender Antivirus

## Step 6: Add Microsoft Defender ATP EDR to the exclusion list for Symantec

Add Microsoft Defender ATP EDR to the exclusion list for Symantec (or any other security products).

## Step 7: Add Symantec to your Microsoft Defender ATP EDR exclusion list

Add Symantec and your other security solutions to the Microsoft Defender ATP EDR exclusion list.

## Step 8: Set up your device groups, device collections, and organizational units

## Step 9: Install Microsoft Defender ATP and uninstall Symantec

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


