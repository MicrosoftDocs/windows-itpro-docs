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

Not all cyberattacks involve a simple piece of [malware](https://docs.microsoft.com/windows/security/threat-protection/intelligence/understanding-malware) that's found and removed. Some attacks, such as and “living off the land” binaries, are much more difficult to identify, let alone contain. Fortunately, [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection) includes behavioral blocking and containment capabilities that can help identify and stop threats, based on their behaviors and process trees. 

Behavioral blocking and containment capabilities leverage multiple components and features of Microsoft Defender ATP to stop attacks immediately and prevent attacks from progressing.

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) (which includes Windows Defender Antivirus) can detect threats by analyzing behaviors, and stop threats that have started running.

- [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) (EDR) receives security signals across your network, devices, and kernel behavior. As threats are detected, alerts are created. Multiple alerts of the same type are aggregated into incidents, which makes it easier for your security operations team to investigate and respond.

- In addition to the network, endpoint, and kernel behavior signals received through EDR, [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) has a wide range of optics across identities, email, data, and apps. As a component of [Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection), Microsoft Defender ATP processes and correlates these signals, raises detection alerts, and connects related alerts in incidents. 

Next-generation protection, EDR, and other Microsoft Defender ATP components and features work together in behavioral blocking and containment capabilities, as illustrated in the following image: 



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