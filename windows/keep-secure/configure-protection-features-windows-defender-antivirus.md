---
title: Enable and configure protection features in Windows Defender AV
description: Enable behavior-based, heuristic, and real-time protection in Windows Defender AV.
keywords: heuristic, machine-learning, behavior monitor, real-time protection, always-on, windows defender antivirus, antimalware, security, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Configure behavioral, heuristic, and real-time protection

**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators

Windows Defender Antivirus uses several methods to provide threat protection:

- Cloud-delivered protection for near-instant detection and blocking of new and emerging threats
- Always-on scanning, using file and process behavior monitoring and other heuristics (also known as "real-time protection")
- Dedicated protection updates based on machine-learning, human and automated big-data analysis, and in-depth threat resistance research

You can configure how Windows Defender AV uses these methods with Group Policy, System Center Configuration Manage, PowerShell cmdlets, and Windows Management Instrumentation (WMI).

This section covers configuration for always-on scanning, including how to detect and block apps that are deemed unsafe, but may not be detected as malware. 

See the [Utilize Microsoft cloud-delivered protection](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) section for how to enable and configure Windows Defender AV cloud-delivered protection.


## In this section

 Topic | Description 
---|---
[Detect and block potentially unwanted applications](detect-block-potentially-unwanted-apps-windows-defender-antivirus.md) | Detect and block apps that may be unwanted in your network, such as adware, browser modifiers and toolbars, and rogue or fake antivirus apps
[Enable and configure Windows Defender AV protection capabilities](configure-real-time-protection-windows-defender-antivirus.md) | Enable and configure real-time protection, heuristics, and other always-on antivirus monitoring features