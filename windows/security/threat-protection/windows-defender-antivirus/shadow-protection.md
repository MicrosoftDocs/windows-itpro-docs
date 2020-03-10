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
localization_priority: Normal
ms.custom: next-gen
ms.collection: 
---

# Shadow protection in next-generation protection

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## What is shadow protection?

Shadow protection extends behavioral-based blocking and containment capabilities by blocking malicious artifacts or behaviors even if [Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) is not your active antivirus protection. If your organization has decided to use an antivirus solution other than Windows Defender Antivirus, you are still protected through shadow protection.

> [!TIP]
> To get the best protection, [deploy Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline). And see [Better together: Windows Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/why-use-microsoft-antivirus).

## What happens when something is detected?

When shadow protection is turned on, and something is detected, you'll see it in your [alerts queue](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/alerts-queue) with informational status. (Informational alerts are those that might not be considered harmful to your organization but might be good to keep track of.)

If the item detected turns out to be malicious, you'll see its detection status as **Blocked** or **Remediated**. You can view these items as completed actions in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-auto-investigation#review-completed-actions).

The following images shows an instance of unwanted software that was detected and blocked through shadow protection:

:::image type="content" source="images/shadow-protection-detection.jpg" alt-text="Malware detected by shadow protection":::

## Turn on shadow protection

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. 

2. Choose **Settings** > **Advanced features**.

    :::image type="content" source="images/turn-shadow-protection-on.jpg" alt-text="Turn shadow protection on":::

3. Turn shadow protection on.

> [!NOTE]
> Currently, shadow protection can be turned on only in the Microsoft Defender Security Center. You cannot use registry keys, Intune, or group policies to turn shadow protection on or off at this time.

## Requirements for shadow protection

|Requirement  |Details  |
|---------|---------|
|Operating system     |One of the following: <br/>- Windows 10 (all releases) <br/>- Windows Server 2016 or later         |
|Windows E5 enrollment     |This is included in the following subscriptions: <br/>- Microsoft 365 E5 <br/>- The Identity & Threat Protection offering for Microsoft 365 E3 customers. <br/>See [Components](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide#components) and [Features and capabilities for each plan](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).       |
|Cloud-delivered protection |Make sure Windows Defender Antivirus is configured such that cloud-delivered protection is enabled. <br/>See [Enable cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/enable-cloud-protection-windows-defender-antivirus). |
|Windows Defender Antivirus antimalware client |To make sure your client is up to date, using PowerShell, run the `Get-MpComputerStatus` cmdlet as an administrator. In the **AMProductVersion** line, you should see **4.18.2001.10** or above. |
|Windows Defender Antivirus engine |To make sure your engine is up to date, using PowerShell, run the `Get-MpComputerStatus` cmdlet as an administrator. In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. |

> [!IMPORTANT]
> To get the best protection value, make sure Windows Defender Antivirus is configured to receive regular updates and other essential features, such as behavioral monitoring, IOfficeAV, tamper protection etc. See [Manage the sources for Windows Defender Antivirus protection updates](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/manage-protection-updates-windows-defender-antivirus) 


## Frequently asked questions 

### Will shadow protection have any impact on a user's antivirus protection? 

No. Shadow protection does not affect third-party antivirus protection running on a users' machines. Shadow protection kicks in if the primary antivirus solution misses something, or if there is post-breach detection. Shadow protection works just like Windows Defender Antivirus in passive mode with the additional steps of blocking and remediating malicious items detected. 

### Why do I need to keep Windows Defender Antivirus up to date? 

The [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) stack works in integration, and to get best protection value, you should keep Windows Defender Antivirus up to date.  

### Why do we need cloud protection on? 

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) to deliver the latest and greatest protection based on the optics received, along with behavioral and machine learning models.

## See also

- [Better together: Windows Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/why-use-microsoft-antivirus)

