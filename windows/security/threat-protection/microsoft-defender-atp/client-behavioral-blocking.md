---
title: Client behavioral blocking
description: Client behavioral blocking is part of behavioral blocking and containment capabilities in Microsoft Defender ATP
keywords: behavioral blocking, rapid protection, client behavior, Microsoft Defender ATP
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

# Client behavioral blocking

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## Overview

Client behavioral blocking is a component of [behavioral blocking and containment capabilities](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) in [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/). As threats are detected on devices (clients), they are blocked, checked, and remediated automatically. 

:::image type="content" source="images/pre-execution-and-post-execution-detection-engines.png" alt-text="Cloud and client protection":::

Antivirus protection works best when paired with cloud protection.

## How client behavioral blocking works

[Microsoft Defender Antivirus](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) can identify malicious behavior, detect malicious code, detect fileless and in-memory attacks, and more on a device. When suspicious behaviors, Microsoft Defender Antivirus monitors and sends suspicious behaviors and process trees to the cloud protection service. Machine learning differentiates between malicious applications and good behaviors within milliseconds, and classifies each artifact. In almost real time, as soon as an artifact is found to be malicious, it's blocked on the device.


## Configuring client behavioral blocking

If your organization is using Microsoft Defender ATP, client behavioral blocking is enabled by default. However, to benefit from all Microsoft Defender ATP capabilities, including [Behavioral blocking and containment](behavioral-blocking-containment.md), make sure the following features and capabilities of Microsoft Defender ATP are enabled and configured:

- [Microsoft Defender ATP baselines](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/configure-machines-security-baseline)

- [Devices onboarded to Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboard-configure)

- [EDR in block mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/edr-in-block-mode)

- [Attack surface reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)

- [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-windows-defender-antivirus-features) (antivirus)

## Related articles

- [Behavioral blocking and containment](behavioral-blocking-containment.md)

- [(Blog) Behavioral blocking and containment: Transforming optics into protection](https://www.microsoft.com/security/blog/2020/03/09/behavioral-blocking-and-containment-transforming-optics-into-protection/)

- [Helpful Microsoft Defender ATP resources](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/helpful-resources)
