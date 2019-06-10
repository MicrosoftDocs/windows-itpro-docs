---
title: Hardware-based isolation (Windows 10)
ms.reviewer: 
description: Learn about how hardware-based isolation in Windows 10 helps to combat malware.
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.author: mjcaparas
ms.date: 09/07/2018
---

# Hardware-based isolation in Windows 10

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Hardware-based isolation helps protect system integrity in Windows 10 and is integrated with Microsoft Defender ATP. 

| Feature | Description |
|------------|-------------|
| [Windows Defender Application Guard](../windows-defender-application-guard/wd-app-guard-overview.md) | Application Guard protects your device from advanced attacks while keeping you productive. Using a unique hardware-based isolation approach, the goal is to isolate untrusted websites and PDF documents inside a lightweight container that is separated from the operating system via the native Windows Hypervisor. If an untrusted site or PDF document turns out to be malicious, it still remains contained within Application Guard’s secure container, keeping the desktop PC protected and the attacker away from your enterprise data. |
| [Windows Defender System Guard](../windows-defender-system-guard/system-guard-how-hardware-based-root-of-trust-helps-protect-windows.md) | System Guard protects and maintains the integrity of the system as it starts and after it's running, and validates system integrity by using attestation.  |

