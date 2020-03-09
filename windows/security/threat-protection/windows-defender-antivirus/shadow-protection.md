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

Shadow protection extends behavioral-based blocking and containment capabilities by blocking malicious artifacts or behaviors even if Windows Defender Antivirus is not your active antivirus protection. If your organization has decided to use an antivirus solution other than Windows Defender Antivirus, you are still protected through shadow protection.

> [!TIP]
> To get the best protection, [deploy Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline).

## Requirements for shadow protection


|Requirement  |Details  |
|---------|---------|
|Operating system     |One of the following: <br/>- Windows 10 (all releases) <br/>- Windows Server 2016 or later         |
|Windows E5 enrollment     |This is included in Microsoft 365 E5 and in the Identity & Threat Protection offering for Microsoft 365 E3. <br/>See [Components](https://docs.microsoft.com/microsoft-365/enterprise/microsoft-365-overview?view=o365-worldwide#components) and [Features and capabilities for each plan](https://www.microsoft.com/microsoft-365/compare-all-microsoft-365-plans).       |

E5 only feature 


Windows defender Cloud delivered protection is on (https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/enable-cloud-protection-windows-defender-antivirus) 

To get the best protection value, ensure windows defender is configured to receive regular updates (https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/manage-protection-updates-windows-defender-antivirus) and other essential features such as Behavioral monitoring, IOAV, Tamper Protection etc. 

Windows defender client version (AMProductVersion) 4.18.2001.10 or above  

(Run PowerShell Get-MpComputerStatus in admin mode) 

Windows Defender engine version (AMEngineVersion) 1.1.16700.2 or above 

(Run PowerShell Get-MpComputerStatus in admin mode 

## Turn on shadow protection

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. 

2. Choose **Settings** > **Advanced features**.

3. Turn shadow protection on.

## section 1

body

## section 2

body

## Next steps