---
title: Enable and configure Microsoft Defender Antivirus protection features
description: Enable behavior-based, heuristic, and real-time protection in Windows Defender AV.
keywords: heuristic, machine-learning, behavior monitor, real-time protection, always-on, Microsoft Defender Antivirus, antimalware, security, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Configure behavioral, heuristic, and real-time protection

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft Defender Antivirus uses several methods to provide threat protection:

- Cloud-delivered protection for near-instant detection and blocking of new and emerging threats
- Always-on scanning, using file and process behavior monitoring and other heuristics (also known as "real-time protection")
- Dedicated protection updates based on machine-learning, human and automated big-data analysis, and in-depth threat resistance research

You can configure how Microsoft Defender Antivirus uses these methods with Group Policy, System Center Configuration Manage, PowerShell cmdlets, and Windows Management Instrumentation (WMI).

This section covers configuration for always-on scanning, including how to detect and block apps that are deemed unsafe, but may not be detected as malware.

See [Use next-gen Microsoft Defender Antivirus technologies through cloud-delivered protection](utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md) for how to enable and configure Microsoft Defender Antivirus cloud-delivered protection.

## In this section

 Topic | Description
---|---
[Detect and block potentially unwanted applications](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md) | Detect and block apps that may be unwanted in your network, such as adware, browser modifiers and toolbars, and rogue or fake antivirus apps
[Enable and configure Microsoft Defender Antivirus protection capabilities](configure-real-time-protection-microsoft-defender-antivirus.md) | Enable and configure real-time protection, heuristics, and other always-on Microsoft Defender Antivirus monitoring features
