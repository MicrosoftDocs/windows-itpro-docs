---
title: Behavioral blocking in next-generation protection
description: Learn about behavioral blocking in next-generation protection
keywords: Windows Defender Antivirus, behavioral monitoring, behavioral blocking, behavior
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

# Behavioral blocking in next-generation protection

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## What is behavioral blocking?

Behavioral blocking and containment capabilities in Microsoft Defender ATP use machine learning to identify threats through behavioral patterns. When threats are detected, they are monitored, processed, classified by machine learning, and blocked, almost instantly. Windows Defender Antivirus on your machine works together with Microsoft Defender ATP to offer this protection. 

Behavioral blocking is a post-execution protection, as shown in the following diagram:

![diagram of pre and post execution protection](images/pre-execution-and-post-execution-detection-engines.png)

See [In hot pursuit of elusive threats: AI-driven behavior-based blocking stops attacks in their tracks](https://www.microsoft.com/security/blog/2019/10/08/in-hot-pursuit-of-elusive-threats-ai-driven-behavior-based-blocking-stops-attacks-in-their-tracks).

## Components of behavioral blocking

Behavioral blocking consists of the following components:

- Behavior-based machine learning
- Rapid-protection feedback loop
- [Shadow protection](shadow-protection.md)
- Client-side behavioral blocking
- Containment during automated investigation and remediation

## Next steps

- [Deploy Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline)

- [Turn on shadow protection](shadow-protection.md)