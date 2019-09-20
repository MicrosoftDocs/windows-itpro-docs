---
title: Overview of custom detections in Microsoft Defender ATP
ms.reviewer: 
description: Understand how you can use Advanced hunting to create custom detections and generate alerts
keywords: custom detections, alerts, detection rules, advanced hunting, hunt, query, response actions, intervals, mdatp, microsoft defender atp
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

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured machines. This is made possible by customizable detection rules that automatically trigger alerts as well as response actions.

Custom detections work with [Advanced hunting](overview-hunting.md), which provides a powerful, flexible query language that covers a broad set of event and system information from your network. The queries run regularly based on your preferred intervals, generating alerts and taking response actions whenever there are matches.

Custom detections provide:
- Alerts from rule-based detections built from Advanced hunting queries
- Configurable query intervals from 1 hour to 24 hours
- Automatic response actions that apply to files and machines

>[!NOTE]
>To create and manage custom detections, [your role](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group) needs to have the **manage security settings** permission.

## Related topic
- [Create and manage custom detection rules](custom-detection-rules.md)