---
title: Overview of endpoint detection and response capabilities
ms.reviewer: 
description: Learn about the endpoint detection and response capabilities in Microsoft Defender ATP
keywords: 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mjcaparas
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Overview of endpoint detection and response

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft Defender ATP endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats.

When a threat is detected, alerts are created in the system for an analyst to investigate. Alerts with the same attack techniques or attributed to the same attacker are aggregated into an entity called an _incident_. Aggregating alerts in this manner makes it easy for analysts to collectively investigate and respond to threats.

Inspired by the "assume breach" mindset, Microsoft Defender ATP continuously collects behavioral cyber telemetry. This includes process information, network activities, deep optics into the kernel and memory manager, user login activities, registry and file system changes, and others. The information is stored for six months, enabling an analyst to travel back in time to the start of an attack. The analyst can then pivot in various views and approach an investigation through multiple vectors.

The response capabilities give you the power to promptly remediate threats by acting on the affected entities.

## In this section

Topic | Description
:---|:---
[Security operations dashboard](security-operations-dashboard.md) | Explore a high level overview of detections, highlighting where response actions are needed.
[Incidents queue](incidents-queue.md) | View and organize the incidents queue, and manage and investigate alerts.
[Alerts queue](alerts-queue.md) | View and organize the machine alerts queue, and manage and investigate alerts.
[Machines list](machines-view-overview.md) | Investigate machines with generated alerts and search for specific events over time.
[Take response actions](response-actions.md) | Learn about the available response actions and apply them to machines and files.
