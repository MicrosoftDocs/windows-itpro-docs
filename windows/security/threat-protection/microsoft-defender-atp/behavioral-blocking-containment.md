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

As you know, not all cyberattacks involve a simple piece of malware that's found and removed. Some attacks, such as fileless attacks, are much more difficult to identify, let alone contain. Microsoft Defender ATP includes behavioral blocking and containment capabilities that can help identify and stop threats 

Behavioral blocking and containment capabilities offer protection in all of the following scenarios:
- Client behavioral blocking. Enabled by default, threats that are detected through machine learning are blocked and remediated automatically
- Feedback-loop blocking (also referred to as Rapid Protection). Enabled by default, detections that are assumed to be false negatives are observed through behavioral intelligence.
- On-client, policy driven attack surface reduction rules. When enabled, predefined common attack behaviors are prevented from executing, according to your ASR policies (e.g. no child processes from Office applications). Alerts on attempts to execute these behaviors surface in the Microsoft Defender ATP portal (https://securitycenter.windows.com) as informational alerts.
- Endpoint detection and response (EDR) in block mode. When enabled, 
