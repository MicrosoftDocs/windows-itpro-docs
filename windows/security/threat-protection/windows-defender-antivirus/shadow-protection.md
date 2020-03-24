---
title: Shadow protection in next-generation protection
description: Learn about shadow protection in next-generation protection
keywords: Windows Defender Antivirus, shadow protection, passive mode
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

# Shadow protection in next-generation protection

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## What is shadow protection?

When enabled, shadow protection extends behavioral-based blocking and containment capabilities by blocking malicious artifacts or behaviors observed through post-breach protection. This is the case even if [Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) is not your active antivirus protection. Shadow protection is useful if your organization has not fully transitioned to Windows Defender Antivirus and you are presently using a third-party antivirus solution. Shadow protection works behind the scenes by remediating malicious entities identified in post-breach protection that the existing third-party antivirus solution missed. 

> [!NOTE]
> Shadow protection is currently in [limited private preview](#can-i-participate-in-the-private-preview-of-shadow-protection).

To get the best protection, [deploy Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline). And see [Better together: Windows Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/why-use-microsoft-antivirus).

## What happens when something is detected?

When shadow protection is turned on, and a malicious artifact is detected, the detection results in blocking and remediation actions. You'll see detection status as **Blocked** or **Remediated** as completed actions in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-auto-investigation#review-completed-actions).

The following images shows an instance of unwanted software that was detected and blocked through shadow protection:

:::image type="content" source="images/shadow-protection-detection.jpg" alt-text="Malware detected by shadow protection":::

## Turn on shadow protection

> [!IMPORTANT]
> Make sure the [requirements](#requirements-for-shadow-protection) are met before turning shadow protection on.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. 

2. Choose **Settings** > **Advanced features**.

    :::image type="content" source="images/turn-shadow-protection-on.jpg" alt-text="Turn shadow protection on":::

3. Turn shadow protection on.

> [!NOTE]
> Shadow protection can be turned on only in the Microsoft Defender Security Center. You cannot use registry keys, Intune, or group policies to turn shadow protection on or off.

## Requirements for shadow protection

|Requirement  |Details  |
|---------|---------|
|Permissions |Global Administrator or Security Administrator role assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). See [Basic permissions](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/basic-permissions). |
|Operating system     |One of the following: <br/>- Windows 10 (all releases) <br/>- Windows Server 2016 or later         |
|Windows E5 enrollment     |This is included in the following subscriptions: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 E3 together with the Identity & Threat Protection offering <br/>See [Components](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide#components) and [Features and capabilities for each plan](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).       |
|Cloud-delivered protection |Make sure Windows Defender Antivirus is configured such that cloud-delivered protection is enabled. <br/>See [Enable cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/enable-cloud-protection-windows-defender-antivirus). |
|Windows Defender Antivirus antimalware client |To make sure your client is up to date, using PowerShell, run the [Get-MpComputerStatus](https://docs.microsoft.com/powershell/module/defender/get-mpcomputerstatus?view=win10-ps) cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. |
|Windows Defender Antivirus engine |To make sure your engine is up to date, using PowerShell, run the [Get-MpComputerStatus](https://docs.microsoft.com/powershell/module/defender/get-mpcomputerstatus?view=win10-ps) cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. |

> [!IMPORTANT]
> To get the best protection value, make sure Windows Defender Antivirus is configured to receive regular updates and other essential features, such as behavioral monitoring, IOfficeAV, tamper protection, and more. See [Protect security settings with tamper protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/prevent-changes-to-security-settings-with-tamper-protection) 


## Frequently asked questions 

### Will shadow protection have any impact on a user's antivirus protection? 

No. Shadow protection does not affect third-party antivirus protection running on users' machines. Shadow protection kicks in if the primary antivirus solution misses something, or if there is post-breach detection. Shadow protection works just like Windows Defender Antivirus in passive mode with the additional steps of blocking and remediating malicious items detected. 

### Why do I need to keep Windows Defender Antivirus up to date? 

The [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) stack works in integration, and to get best protection value, you should keep Windows Defender Antivirus up to date.  

### Why do we need cloud protection on? 

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) to deliver the latest and greatest protection based on the optics received, along with behavioral and machine learning models.

### Can I participate in the private preview of shadow protection?

If you would like to participate in our private preview program, please send email to `shwjha@microsoft.com`. 

## See also

- [Better together: Windows Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/why-use-microsoft-antivirus)

