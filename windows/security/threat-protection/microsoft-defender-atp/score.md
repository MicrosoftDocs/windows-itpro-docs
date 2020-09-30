---
title: Score methods and properties
description: Retrieves your organization's exposure score, device secure score, and exposure score by device group
keywords: apis, graph api, supported apis, score, exposure score, device secure score, exposure score by device group
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Score resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Prerelease information](../../includes/prerelease.md)]

## Methods

Method |Return Type |Description
:---|:---|:---
[Get exposure score](get-exposure-score.md) | [Score](score.md) | Get the organizational exposure score.
[Get device secure score](get-device-secure-score.md) | [Score](score.md) | Get the organizational device secure score.
[List exposure score by device group](get-machine-group-exposure-score.md)| [Score](score.md) | List scores by device group.

## Properties

Property |	Type	|	Description
:---|:---|:---
Score | Double | The current score.
Time | DateTime | The date and time in which the call for this API was made.
RbacGroupName | String | The device group name.
