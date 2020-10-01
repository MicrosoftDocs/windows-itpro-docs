---
title: User resource type
description: Retrieve recent Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) alerts related to users.
keywords: apis, graph api, supported apis, get, alerts, recent
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# User resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Method|Return Type |Description
:---|:---|:---
[List User related alerts](get-user-related-alerts.md) | [alert](alerts.md) collection |  List all the alerts that are associated with a [user](user.md).
[List User related devices](get-user-related-machines.md) | [machine](machine.md) collection | List all the devices that were logged on by a [user](user.md).
