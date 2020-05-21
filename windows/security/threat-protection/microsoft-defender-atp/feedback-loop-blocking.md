---
title: Feedback-loop blocking
description: Feedback-loop blocking, also called rapid protection, is part of behavioral blocking and containment capabilities in Microsoft Defender ATP
keywords: behavioral blocking, rapid protection, feedback blocking, Microsoft Defender ATP
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

# Feedback-loop blocking

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## Overview

Feedback-loop blocking, also referred to as rapid protection, is a component of [behavioral blocking and containment capabilities](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) in [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/). With feedback-loop blocking, devices in your organization are protected better protected from threats. When a suspicious behavior or file is detected, such as by [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10), the file or behavior is treated as a potential false negative, and is observed more closely. Once confirmed as malicious, artifacts are stopped in their tracks, and are reported to your cloud protection service. In almost real time, the other devices in your organization are scanned for and protected from those malicious artifacts. Thus, if a malicious behavior or file is detected on one device, it's analyzed and stopped, and other devices are protected from those artifacts as well. 

## Configuring feedback-loop blocking

If your organization is using Microsoft Defender ATP, feedback-loop blocking is enabled by default. However, rapid protection occurs through a combination of Microsoft Defender ATP capabilities, machine learning protection features, and signal-sharing across Microsoft security services.

Make sure the following features and capabilities of Microsoft Defender ATP are enabled and configured:
- [Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline)
- [Devices onboarded to Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-configure)
- [EDR in block mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/edr-in-block-mode)
- [Attack surface reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)
- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) (antivirus)

## Related articles

- [Behavioral blocking and containment](behavioral-blocking-containment.md)

- [Helpful Microsoft Defender ATP resources](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/helpful-resources)


