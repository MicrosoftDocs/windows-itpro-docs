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

Feedback-loop blocking, also referred to as rapid protection, is a component of [behavioral blocking and containment capabilities](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) in [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/). With feedback-loop blocking, devices across your organization are better protected from attacks. 

## How feedback-loop blocking works

When a suspicious behavior or file is detected, such as by [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10), information about that artifact is sent to multiple classifiers. The rapid protection loop engine inspects and correlates the information with other signals to arrive at a decision as to whether to block a file. Checking and classifying artifacts happens quickly. It results in rapid blocking of confirmed malware, and drives protection across the entire ecosystem. 

With rapid protection in place, an attack can be stopped on a device, other devices in the organization, and devices in other organizations, as an attack attempts to broaden its foothold.


## Configuring feedback-loop blocking

If your organization is using Microsoft Defender ATP, feedback-loop blocking is enabled by default. However, rapid protection occurs through a combination of Microsoft Defender ATP capabilities, machine learning protection features, and signal-sharing across Microsoft security services. Make sure the following features and capabilities of Microsoft Defender ATP are enabled and configured:

- [Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline)

- [Devices onboarded to Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-configure)

- [EDR in block mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/edr-in-block-mode)

- [Attack surface reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) (antivirus)

## Related articles

- [Behavioral blocking and containment](behavioral-blocking-containment.md)

- [(Blog) Behavioral blocking and containment: Transforming optics into protection](https://www.microsoft.com/security/blog/2020/03/09/behavioral-blocking-and-containment-transforming-optics-into-protection/)

- [Helpful Microsoft Defender ATP resources](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/helpful-resources)
