---
title: Update Ti Indicator 
description: Updates a specific Ti Indicator
keywords: apis, public api, supported apis, patch, update, ti indicator, information, id
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

# Update TiIndicator 

[!include[Prerelease information](prerelease.md)]

>[!Note]
> Currently this API is supported only for AppOnly context requests. (See [Get access without a user](exposed-apis-create-app-webapp.md) for more information)


**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

- Update the properties of an alert entity.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write Ti Indicators'


## HTTP request
```
PATCH https://api.securitycenter.windows.com/api/tiindicators/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | String | application/json. **Required**.


## Request body
In the request body, supply the values for the relevant fields that should be updated.Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't change.

Property | Type | Description
:---|:---|:---
expirationTime | DateTimeOffset | The expiration time of the indicator.
title | String | Ti indicator title.
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High"
description | String | Description of the indicator.
recommendedActions | String | Recommended actions for the indicator.

## Response
If successful, this method returns 200 - OK, and the updated [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.
In case of incorrect Body, the return type will be 400 - Bad request, with message that indicates the reason.
If the Ti Indicator is not exist, 404 - Not found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
PATCH https://api.securitycenter.windows.com/api/tiindicators/220e7d15b0b3d7fac48f2bd61114db1022197f7f
Content-Type: application/json
{
    "title": "Ben2",
    "severity": "High",
    "description": "test2",
    "expirationTime": "2020-12-12T00:00:00Z"
}
```

**Response**

Here is an example of the response.

```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#TiIndicators/$entity",
    "indicator": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
    "indicatorType": "FileSha1",
    "title": "Ben2",
    "creationTimeDateTimeUtc": "2018-10-24T10:54:23.2009016Z",
    "createdBy": "45097602-0cfe-4cc6-925f-9f453233e62c",
    "expirationTime": "2020-12-12T00:00:00Z",
    "action": "AlertAndBlock",
    "severity": "High",
    "description": "test",
    "recommendedActions": "TEST2"
}
```
