---
title: TiIndicator resource type
description: TiIndicator entity description.
keywords: apis, supported apis, get, TiIndicator, recent
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# TiIndicator resource type

**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Method|Return Type |Description
:---|:---|:---
[List TiIndicators](get-ti-indicators-collection-windows-defender-advanced-threat-protection-new.md) | [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) | List [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entities.

# Properties
Property |	Type	|	Description
:---|:---|:---
indicator | String | Identity of the [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url"
title | String | Ti indicator title.
creationTimeDateTimeUtc | DateTimeOffset | The date and time when the indicator was created.
createdBy | String | Identity of the user/application that created the indicator.
expirationTime | DateTimeOffset | The expiration time of the indicator
action | Enum | The action that will be taken when the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed"
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High"
description | String | Description of the indicator.
recommendedActions | String | Recommended actions for the indicator.


