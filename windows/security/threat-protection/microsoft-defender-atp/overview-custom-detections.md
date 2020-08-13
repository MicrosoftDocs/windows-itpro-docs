---
title: Overview of custom detections in Microsoft Defender ATP
ms.reviewer: 
description: Understand how you can use advanced hunting to create custom detections and generate alerts
keywords: custom detections, alerts, detection rules, advanced hunting, hunt, query, response actions, interval, mdatp, microsoft defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Custom detections overview
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured devices. You can do this with customizable detection rules that automatically trigger alerts as well as response actions.

Custom detections work with [advanced hunting](advanced-hunting-overview.md), which provides a powerful, flexible query language that covers a broad set of event and system information from your network. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

Custom detections provide:
- Alerts for rule-based detections built from advanced hunting queries
- Automatic response actions that apply to files and devices

## Related topic
- [Create detection rules](custom-detection-rules.md)
- [View and manage detection rules](custom-detections-manage.md)
- [Advanced hunting overview](advanced-hunting-overview.md)