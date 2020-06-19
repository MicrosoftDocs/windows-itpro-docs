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

# Manage Microsoft Defender ATP, post migration

After you have moved from your previous threat protection solution to Microsoft Defender ATP, you can choose from several methods to manage your features and capabilities. 

We recommend using [Intune](https://docs.microsoft.com/intune/fundamentals/what-is-intune). The following table lists various tasks and resources to manage features and capabilities of Microsoft Defender ATP with Intune.

|Task | Resources to learn more |
|---|---|
|Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune |[Enforce compliance for Microsoft Defender ATP with Conditional Access in Intune](https://docs.microsoft.com/mem/intune/protect/advanced-threat-protection) | 
|Specify device restrictions for Microsoft Defender Antivirus |[Device restrictions: Microsoft Defender Antivirus](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus) |
|Specify exclusions for Microsoft Defender Antivirus|[Device restrictions: Microsoft Defender Antivirus Exclusions](https://docs.microsoft.com/mem/intune/configuration/device-restrictions-windows-10#microsoft-defender-antivirus-exclusions)<br/><br/>[Configure Windows Defender Antivirus exclusions on Windows Server](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-server-exclusions-windows-defender-antivirus)<br/><br/>[Microsoft Antivirus Exclusion List (Windows Server)](https://social.technet.microsoft.com/wiki/contents/articles/953.microsoft-anti-virus-exclusion-list.aspx) |
|Manage attack surface reduction rules <br/><br/>(A sample Power BI dashboard is available to review your attack surface reduction rules. [Get the template here](https://github.com/microsoft/MDATP-PowerBI-Templates/tree/master/Attack%20Surface%20Reduction%20rules).)|[Endpoint protection: Attack surface reduction rules](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10?toc=%2Fintune%2Fconfiguration%2Ftoc.json&bc=%2Fintune%2Fconfiguration%2Fbreadcrumb%2Ftoc.json#attack-surface-reduction-rules)<br/><br/>|
|Manage network protection   |*more to come*   |

## Additional methods

In addition to using Intune to manage Microsoft Defender ATP, you can choose from other options. These include the following:
- Group Policy Objects
- PowerShell
- Windows Management Instrumentation
- MPCmdRun.exe

## Related articles

[Microsoft Defender ATP deployment guide](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/deployment-phases)


