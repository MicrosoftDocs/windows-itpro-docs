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
ms.custom: 
- next-gen
- edr
ms.date: 08/21/2020
---

# Endpoint detection and response (EDR) in block mode

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## What is EDR in block mode?

When [endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) (EDR) in block mode is enabled, Microsoft Defender ATP leverages behavioral blocking and containment capabilities by blocking malicious artifacts or behaviors that are observed through post-breach protection. EDR in block mode works behind the scenes to remediate malicious artifacts that are detected post-breach. 

EDR in block mode is also integrated with [threat & vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt). Your organization's security team will get a [security recommendation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-security-recommendation) to turn EDR in block mode on if it isn't already enabled. 

:::image type="content" source="images/edrblockmode-TVMrecommendation.png" alt-text="recommendation to turn on EDR in block mode":::

> [!NOTE]
> EDR in block mode is currently in preview, available to organizations who have opted in to receive **[preview features](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/preview)**. To get the best protection, make sure to **[deploy Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline)**.

## What happens when something is detected?

When EDR in block mode is turned on, and a malicious artifact is detected, blocking and remediation actions are taken. You'll see detection status as **Blocked** or **Remediated** as completed actions in the [Action center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/respond-machine-alerts#check-activity-details-in-action-center).

The following image shows an instance of unwanted software that was detected and blocked through EDR in block mode:

:::image type="content" source="images/edr-in-block-mode-detection.png" alt-text="EDR in block mode detected something":::


## Enable EDR in block mode

> [!IMPORTANT]
> Make sure the [requirements](#requirements-for-edr-in-block-mode) are met before turning on EDR in block mode.

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. 

2. Choose **Settings** > **Advanced features**.

3. Turn on **EDR in block mode**.

> [!NOTE]
> EDR in block mode can be turned on only in the Microsoft Defender Security Center. You cannot use registry keys, Intune, or group policies to enable or disable EDR in block mode.

## Requirements for EDR in block mode

|Requirement  |Details  |
|---------|---------|
|Permissions |Global Administrator or Security Administrator role assigned in [Azure Active Directory](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-users-assign-role-azure-portal). See [Basic permissions](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/basic-permissions). |
|Operating system     |One of the following versions: <br/>- Windows 10 (all releases) <br/>- Windows Server 2016 or later         |
|Windows E5 enrollment     |Windows E5 is included in the following subscriptions: <br/>- Microsoft 365 E5 <br/>- Microsoft 365 E3 together with the Identity & Threat Protection offering <br/><br/>See [Components](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide#components) and [features and capabilities for each plan](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).       |
|Cloud-delivered protection |Make sure Microsoft Defender Antivirus is configured such that cloud-delivered protection is enabled. <br/><br/>See [Enable cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus). |
|Microsoft Defender Antivirus antimalware client |Make sure your client is up to date. Using PowerShell, run the [Get-MpComputerStatus](https://docs.microsoft.com/powershell/module/defender/get-mpcomputerstatus?view=win10-ps) cmdlet as an administrator. <br/>In the **AMProductVersion** line, you should see **4.18.2001.10** or above. |
|Microsoft Defender Antivirus engine |Make sure your engine is up to date. Using PowerShell, run the [Get-MpComputerStatus](https://docs.microsoft.com/powershell/module/defender/get-mpcomputerstatus?view=win10-ps) cmdlet as an administrator. <br/> In the **AMEngineVersion** line, you should see **1.1.16700.2** or above. |

> [!IMPORTANT]
> To get the best protection value, make sure your antivirus solution is configured to receive regular updates and essential features, and that your exclusions are defined. 


## Frequently asked questions 

### Will EDR in block mode have any impact on a user's antivirus protection? 

No. EDR in block mode does not affect third-party antivirus protection running on users' devices. EDR in block mode kicks in if the primary antivirus solution misses something, or if there is a post-breach detection. EDR in block mode works just like [Microsoft Defender Antivirus in passive mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility#functionality-and-features-available-in-each-state), with the additional steps of blocking and remediating malicious artifacts or behaviors that are detected. 

### Why do I need to keep Microsoft Defender Antivirus up to date? 

Because Microsoft Defender Antivirus detects and remediates malicious items, it's important to keep it up to date to leverage the latest device learning models, behavioral detections, and heuristics for EDR in block mode to be most effective. The [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) stack of capabilities works in an integrated manner, and to get best protection value, you should keep Microsoft Defender Antivirus up to date.  

### Why do we need cloud protection on? 

Cloud protection is needed to turn on the feature on the device. Cloud protection allows [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) to deliver the latest and greatest protection based on our breadth and depth of security intelligence, along with behavioral and device learning models.

## Related articles

[Behavioral blocking and containment](behavioral-blocking-containment.md)

[Better together: Microsoft Defender Antivirus and Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/why-use-microsoft-antivirus)

