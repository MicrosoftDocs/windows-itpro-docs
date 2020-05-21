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

Feedback-loop blocking, also referred to as rapid protection, is a component of [behavioral blocking and containment capabilities](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) in [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/). With feedback-loop blocking, devices in your organization are protected better protected from threats. When a suspicious behavior or file is detected, such as by Microsoft Defender Antivirus, it's treated as a potential false negative. With machine learning and  and is observed more closely. Once confirmed as malicious, on a device is confirmed as malicious, 

Feedback-loop blocking Within a few moments of confirming a file as malicious, , the file, machine learning models operating on the EDR data, which come with richer granular details, determined the file to be malware, raised an alert, and provided feedback to the rapid protection loop engine. This insight led to the immediate blocking of the file on subsequent machines.

Behavioral detections feed into protection stack as potential FNs, generating new protection based on patient 0 behavioral intelligence. Patient 1+ are now protected and threats prevented higher in the stack
