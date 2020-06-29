---
title: Indicator resource type
description: Specify the entity details and define the expiration of the indicator using Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP).
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

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

- See the corresponding [Indicators page](https://securitycenter.windows.com/preferences2/custom_ti_indicators/files) in the portal. 

Method|Return Type |Description
:---|:---|:---
[List Indicators](get-ti-indicators-collection.md) | [Indicator](ti-indicator.md) Collection | List [Indicator](ti-indicator.md) entities.
[Submit Indicator](post-ti-indicator.md) | [Indicator](ti-indicator.md) | Submits [Indicator](ti-indicator.md) entity.
[Delete Indicator](delete-ti-indicator-by-id.md) | No Content | Deletes [Indicator](ti-indicator.md) entity.


## Properties
Property |	Type	|	Description
:---|:---|:---
id | String | Identity of the [Indicator](ti-indicator.md) entity.
indicatorValue | String | The value of the [Indicator](ti-indicator.md).
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url".
application | String | The application associated with the indicator. 
action | Enum | The action that will be taken if the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed".
sourceType | Enum | "User" in case the Indicator created by a user (e.g. from the portal), "AadApp" in case it submitted using automated application via the API.
source | string | The name of the user/application that submitted the indicator.
createdBy | String | Unique identity of the user/application that submitted the indicator.
lastUpdatedBy | String | Identity of the user/application that last updated the indicator.
creationTimeDateTimeUtc | DateTimeOffset | The date and time when the indicator was created.
expirationTime | DateTimeOffset | The expiration time of the indicator.
lastUpdateTime | DateTimeOffset | The last time the indicator was updated.
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High".
title | String | Indicator title.
description | String | Description of the indicator.
recommendedActions | String | Recommended actions for the indicator.
rbacGroupNames | List of strings | RBAC device group names where the indicator is exposed and active. Empty list in case it exposed to all devices.


## Json representation

```json
{
    "id": "994",
    "indicatorValue": "881c0f10c75e64ec39d257a131fcd531f47dd2cff2070ae94baa347d375126fd",
    "indicatorType": "FileSha256",
    "action": "AlertAndBlock",
	"application": null,
    "source": "user@contoso.onmicrosoft.com",
    "sourceType": "User",
	"createdBy": "user@contoso.onmicrosoft.com",
    "severity": "Informational",
    "title": "Michael test",
    "description": "test",
    "recommendedActions": "nothing",
    "creationTimeDateTimeUtc": "2019-12-19T09:09:46.9139216Z",
    "expirationTime": null,
    "lastUpdateTime": "2019-12-19T09:09:47.3358111Z",
    "lastUpdatedBy": null,
    "rbacGroupNames": ["team1"]
}
```