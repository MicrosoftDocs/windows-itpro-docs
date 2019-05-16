---
title: File resource type
description: Retrieves top recent alerts.
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

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Method|Return Type |Description
:---|:---|:---
[List User related alerts](get-user-related-alerts.md) | [alert](alerts.md) collection |  List all the alerts that are associated with a [user](user.md).
[List User related machines](get-user-related-machines.md) | [machine](machine.md) collection | List all the machines that were logged on by a [user](user.md).