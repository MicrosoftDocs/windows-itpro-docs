---
title: Endpoint detection and response in block mode
description: Learn about endpoint detection and response in block mode
keywords: Microsoft Defender ATP, EDR in block mode, passive mode blocking
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: shwetaj
audience: ITPro 
ms.topic: article 
ms.prod: w10 
ms.localizationpriority: medium
ms.custom: next-gen
ms.collection: 
---

# EDR in block mode

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## What is EDR in block mode?

When enabled, endpoint detection and response (EDR) in block mode blocks malicious artifacts or behaviors observed through post-breach protection. EDR extends behavioral-based blocking and containment capabilities in Microsoft Defender ATP. EDR in block mode works behind the scenes to remediate malicious entities identified in post-breach.

> [!NOTE]
> EDR in block mode is currently in [limited private preview](#can-i-participate-in-the-private-preview-of-edr-in-block-mode). To get the best protection, [deploy Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline).

## What happens when something is detected?

When EDR in block mode is turned on, and a malicious artifact is detected, the detection results in blocking and remediation actions. You'll see detection status as **Blocked** or **Remediated** as completed actions in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-auto-investigation#review-completed-actions).

The following image shows an instance of unwanted software that was detected and blocked through EDR in block mode:

:::image type="content" source="images/edr-in-block-mode.jpg" alt-text="Malware detected by EDR in block mode":::


## Enable EDR in block mode

> [!IMPORTANT]
> Make sure the [requirements](#requirements-for-edr-in-block-mode) are met before turning on EDR in block mode.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. 

2. Choose **Settings** > **Advanced features**.

    :::image type="content" source="images/turn-edr-in-block-mode-on.jpg" alt-text="Turn EDR in block mode on":::

3. Turn on EDR in block mode.

> [!NOTE]
> EDR in block mode can be turned on only in the Microsoft Defender Security Center. You cannot use registry keys, Intune, or group policies to enable or disable EDR in block mode.

## Requirements for EDR in block mode

|Requirement  |Details  |
|---------|---------|
|Permissions |Global Administrator or Security Administrator role assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). See [Basic permissions](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/basic-permissions). |
|Operating system     |One of the following: <br/>- Windows 10 (all releases) <br/>- Windows Server 2016 or later         |
|Windows E5 enrollment     |This is included in the following subscriptions: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 E3 together with the Identity & Threat Protection offering <br/>See [Components](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide#components) and [Features and capabilities for each plan](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).       |
|Cloud-delivered protection |Make sure Windows Defender Antivirus is configured such that cloud-delivered protection is enabled. <br/>See [Enable cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/enable-cloud-protection-windows-defender-antivirus). |
|Windows Defender Antivirus antimalware client |To make sure your client is up to date, using PowerShell, run the [Get-MpComputerStatus](https://docs.microsoft.com/powershell/module/defender/get-mpcomputerstatus?view=win10-ps) cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. |
|Windows Defender Antivirus engine |To make sure your engine is up to date, using PowerShell, run the [Get-MpComputerStatus](https://docs.microsoft.com/powershell/module/defender/get-mpcomputerstatus?view=win10-ps) cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. |

> [!IMPORTANT]
> To get the best protection value, make sure your antivirus solution is configured to receive regular updates and essential features. 


## Frequently asked questions 

### Will EDR in block mode have any impact on a user's antivirus protection? 

No. EDR in block mode does not affect third-party antivirus protection running on users' machines. EDR in block mode kicks in if the primary antivirus solution misses something, or if there is a post-breach detection. EDR in block mode works just like Windows Defender Antivirus in passive mode, with the additional steps of blocking and remediating malicious items that are detected. 

### Why do I need to keep Windows Defender Antivirus up to date? 

The [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) stack works in integration. To get best protection value, you should keep Windows Defender Antivirus up to date.  

### Why do we need cloud protection on? 

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) to deliver the latest and greatest protection based on the optics received, along with behavioral and machine learning models.

### Can I participate in the private preview of EDR in block mode?

If you would like to participate in our private preview program, please send email to `shwjha@microsoft.com`. 

## See also

- [Better together: Windows Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/why-use-microsoft-antivirus)

