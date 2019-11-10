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
---

# Indicator resource type

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Method|Return Type |Description
:---|:---|:---
[List Indicators](get-ti-indicators-collection.md) | [Indicator](ti-indicator.md) Collection | List [Indicator](ti-indicator.md) entities.
[Submit Indicator](post-ti-indicator.md) | [Indicator](ti-indicator.md) | Submits [Indicator](ti-indicator.md) entity.
[Delete Indicator](delete-ti-indicator-by-id.md) | No Content | Deletes [Indicator](ti-indicator.md) entity.

- See the corresponding [page](https://securitycenter.windows.com/preferences2/custom_ti_indicators/files) in the portal. 

For more information on creating indicators, see [Manage indicators](manage-indicators.md).

# Properties
Property |	Type	|	Description
:---|:---|:---
indicatorValue | String | Identity of the [Indicator](ti-indicator.md) entity.
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


