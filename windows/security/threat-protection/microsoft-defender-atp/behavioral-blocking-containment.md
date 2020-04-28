---
title: Behavioral blocking and containment
description: Learn about behavioral blocking and containment capabilities in Microsoft Defender ATP
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
ms.collection: 
---

# Behavioral blocking and containment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## Overview of behavioral blocking and containment

Not all cyberattacks involve a simple piece of malware that's found and removed. Some attacks, such as fileless attacks, are much more difficult to identify, let alone contain. Microsoft Defender ATP includes behavioral blocking and containment capabilities that can help identify and stop threats 

Behavioral blocking and containment capabilities include:

- **Client behavioral blocking**. Enabled by default, threats that are detected through machine learning are blocked and remediated automatically

- **Feedback-loop blocking** (also referred to as rapid protection). Enabled by default, detections that are assumed to be false negatives are observed through behavioral intelligence, and threats are prevented earlier.

- **On-client, policy-driven [attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)**. When enabled, predefined common attack behaviors are prevented from executing, according to your ASR policies (e.g. no child processes from Office applications). Alerts on attempts to execute these behaviors surface in the Microsoft Defender ATP portal (https://securitycenter.windows.com) as informational alerts.

- **[Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md)**. When enabled, blocks malicious artifacts or behaviors that are observed through post-breach protection, even if Windows Defender Antivirus is not the primary antivirus solution.

## Related articles

- [Reduce attack surfaces with attack surface reduction rules](attack-surface-reduction.md)

- [Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md)