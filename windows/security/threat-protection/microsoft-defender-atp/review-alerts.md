---
title: Review alerts in Microsoft Defender Advanced Threat Protection
description: Review alert information, including a visualized attack story and details for each step of the chain.
keywords: incident, incidents, machines, devices, users, alerts, alert, investigation, graph, evidence
ms.prod: microsoft-365-enterprise
ms.pagetype: security
f1.keywords:
- NOCSH
ms.author: daniha
author: danihalfin
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.date: 4/24/2020
---

# Review alerts in Advanced Threat Protection

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-managealerts-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

The new alert details page in Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) provides full context to the alert, by combining attack signals and alerts related to the selected alert, to construct a detailed attack story.

Quickly triage, investigate and take effective action on alerts that affect your organization. Understand why they were triggered, and their impact from one location.

## Alert overview

Once you select an alert in the alerts page, you will be taken to the alert overview. This overview includes 3 sections:

1. [Title and involved assets](#title-and-involved-assets)
2. [Alert story](#alert-story)
3. [Details](#details)

### Title and involved assets

In addition to the name of the alert, as displayed in the title, this section provides additional context with impacted assets, such as devices and users that were found to be involved with this alert. You can click the asset cards to see additional information about them in the details section.

### Alert story

The attack story details why the alert was triggered, as well as related events that happened before and after in chronological order.

Every entity is expandable and clickable, with alert entities being expanded by default. The expanded part of these entities provides details at-a-glance about the entity. Clicking on an entity will switch the context in the details section to this entity, and will allow you to review further information, as well as manage that entity.

> [!NOTE]
> The attack story section may contain more than one alert, with additional alerts related to the same execution tree appearing before or after the alert you've selected.

### Details

The details section adjusts dynamically to the selected entity type.

By default, the details section will display details for the selected alert. As you work through the attack story, selecting different types of entities, the details section will change to display information relevant to the selected entity type. Selecting involved assets will have the details section display information on the selected user or device.

Aside for basic details about each entity, the details section displays historic information, when available, and offers controls to *take action* on this entity directly from the alert page.

## Related topics

- [Incidents overview](incidents-overview.md)
- [Investigate incidents](investigate-incidents.md)
- [Prioritize incidents](incident-queue.md)
- [Manage incidents](manage-incidents.md)