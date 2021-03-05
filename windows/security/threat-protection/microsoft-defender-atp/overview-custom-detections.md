---
title: Overview of custom detections in Microsoft Defender ATP
ms.reviewer: 
description: Understand how you can use advanced hunting to create custom detections and generate alerts
keywords: custom detections, alerts, detection rules, advanced hunting, hunt, query, response actions, interval, mdatp, microsoft defender atp
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
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
ms.technology: mde
---

# Custom detections overview

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)


With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured devices. You can do this with customizable detection rules that automatically trigger alerts and response actions.

Custom detections work with [advanced hunting](advanced-hunting-overview.md), which provides a powerful, flexible query language that covers a broad set of event and system information from your network. You can set them to run at regular intervals, generating alerts and taking response actions whenever there are matches.

Custom detections provide:
- Alerts for rule-based detections built from advanced hunting queries
- Automatic response actions that apply to files and devices

## Related topics
- [Create detection rules](custom-detection-rules.md)
- [View and manage detection rules](custom-detections-manage.md)
- [Advanced hunting overview](advanced-hunting-overview.md)
