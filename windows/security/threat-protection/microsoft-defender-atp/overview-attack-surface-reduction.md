---
title: Overview of attack surface reduction
description: Learn about the attack surface reduction capability in Microsoft Defender ATP
keywords: 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Overview of attack surface reduction

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Attack surface reduction capabilities in Microsoft Defender ATP helps protect the devices and applications in  your organization from new and emerging threats. 

| Capability | Description |
|------------|-------------|
| [Hardware-based isolation](../windows-defender-application-guard/wd-app-guard-overview.md) | Protects and maintains the integrity of the system as it starts and while it's running, and validates system integrity through local and remote attestation. In addition, container isolation for Microsoft Edge helps protect host operating system from malicious websites. |
| [Application control](../windows-defender-application-control/windows-defender-application-control.md) | Moves away from the traditional application trust model where all applications are assumed trustworthy by default to one where applications must earn trust in order to run. |
| [Exploit protection](../windows-defender-exploit-guard/exploit-protection-exploit-guard.md) | Applies exploit mitigation techniques to apps your organization uses, both individually and to all apps. Works with third-party antivirus solutions and Windows Defender Antivirus (Windows Defender AV) |
| [Network protection](../windows-defender-exploit-guard/network-protection-exploit-guard.md) | Extends the malware and social engineering protection offered by Windows Defender SmartScreen in Microsoft Edge to cover network traffic and connectivity on your organization's devices. Requires Windows Defender AV. | 
| [Controlled folder access](../windows-defender-exploit-guard/controlled-folders-exploit-guard.md) | Helps protect files in key system folders from changes made by malicious and suspicious apps, including file-encrypting ransomware malware. Requires Windows Defender AV. |
| [Attack surface reduction](../windows-defender-exploit-guard/attack-surface-reduction-exploit-guard.md) | reduce the attack surface of your applications with intelligent rules that stop the vectors used by Office-, script- and mail-based malware. Requires Windows Defender AV.  |
| [Network firewall](../windows-firewall/windows-firewall-with-advanced-security.md) | Host-based, two-way network traffic filtering that blocks unauthorized network traffic flowing into or out of the local device. |

