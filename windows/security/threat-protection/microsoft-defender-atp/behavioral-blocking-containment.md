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

## Behavioral blocking and containment overview

Not all cyberattacks involve a simple piece of malware that's found and removed. Some attacks, such as fileless attacks, are much more difficult to identify, let alone contain. Microsoft Defender ATP includes behavioral blocking and containment capabilities that can help identify and stop threats with machine learning, pre- and post-breach. In almost real time, when a suspicious behavior or artifact is detected and determined to be malicious, the threat is blocked. Pre-execution models learn about that threat, and prevent it from running on other endpoints. 

## Behavioral blocking and containment capabilities

Behavioral blocking and containment capabilities include the following:

- **On-client, policy-driven [attack surface reduction rules](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)**. Predefined common attack behaviors are prevented from executing, according to your attack surface reduction rules. When such behaviors attempt to execute, they can be seen in the Microsoft Defender Security Center (https://securitycenter.windows.com) as informational alerts. (Attack surface reduction rules are not enabled by default; you configure your policies in the Microsoft Defender Security Center.)

- **Client behavioral blocking**. Threats on endpoints are detected through machine learning, and then are blocked and remediated automatically. (Client behavioral blocking is enabled by default.)

- **Feedback-loop blocking** (also referred to as rapid protection). Threat detections that are assumed to be false negatives are observed through behavioral intelligence. Threats are stopped and prevented from running on other endpoints. (Feedback-loop blocking is enabled by default.)

- **[Endpoint detection and response (EDR) in block mode](edr-in-block-mode.md)**. Malicious artifacts or behaviors that are observed through post-breach protection are blocked and contained. EDR in block mode works even if Windows Defender Antivirus is not the primary antivirus solution. (EDR in block mode, currently in [limited private preview](edr-in-block-mode.md#can-i-participate-in-the-preview-of-edr-in-block-mode), is not enabled by default; you turn it on in the Microsoft Defender Security Center.)

As Microsoft continues to improve threat protection features and capabilities, you can expect more to come in the area of behavioral blocking and containment. Visit the [Microsoft 365 roadmap](https://www.microsoft.com/microsoft-365/roadmap) to see what's rolling out now and what's in development.

## Next steps

- [Configure your attack surface reduction rules](attack-surface-reduction.md)

- [Enable EDR in block mode](edr-in-block-mode.md)