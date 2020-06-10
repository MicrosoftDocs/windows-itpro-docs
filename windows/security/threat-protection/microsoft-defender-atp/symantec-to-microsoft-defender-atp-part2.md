---
title: Migrate from Symantec to Microsoft Defender ATP
description: Part 2 - Make the switch from Symantec to Microsoft Defender ATP
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

# Migrate from Symantec to Microsoft Defender Advanced Threat Protection - Part 2

| [Overview](symantec-to-microsoft-defender-atp-migration.md)  | [Part 1](symantec-to-microsoft-defender-atp-part1.md)  | Part 2<br/>*You are here!* | [Part 3](symantec-to-microsoft-defender-atp-part3.md) | [Post migration <br/>management](microsoft-defender-atp-post-migration-management.md) |
|--|--|--|--|--|



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


