---
title: Indicator resource type
description: Indicator entity description.
keywords: apis, supported apis, get, TiIndicator, Indicator, recent
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
ms.date: 12/08/2017
---

# Indicator resource type

**Applies to:** - Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Method|Return Type |Description
:---|:---|:---
[List TI Indicators](get-ti-indicators-collection-windows-defender-advanced-threat-protection-new.md) | [Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) Collection | List [Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entities.
[Submit TI Indicator](post-ti-indicator-windows-defender-advanced-threat-protection-new.md) | [Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) | Submits [Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.
[Delete TI Indicator](delete-ti-indicator-by-id-windows-defender-advanced-threat-protection-new.md) | No Content | Deletes [Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.

- See the corresponding [page](https://securitycenter.windows.com/preferences2/custom_ti_indicators/files) in the portal: 

# Properties
Property |	Type	|	Description
:---|:---|:---
indicatorValue | String | Identity of the [Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url"
title | String | Indicator alert title.
creationTimeDateTimeUtc | DateTimeOffset | The date and time when the indicator was created.
createdBy | String | Identity of the user/application that submitted the indicator.
expirationTime | DateTimeOffset | The expiration time of the indicator
action | Enum | The action that will be taken if the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed"
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High"
description | String | Description of the indicator.
recommendedActions | String | Indicator alert recommended actions.
rbacGroupNames | List of strings | RBAC group names where the indicator is exposed. Empty list in case it exposed to all groups.


