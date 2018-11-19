---
title: Get Ti Indicator by ID API
description: Retrieves Ti Indicator entity by ID.
keywords: apis, public api, supported apis, get, ti indicator, entity, id
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

# Get TI Indicator by ID API

[!include[Prerelease information](prerelease.md)]

>[!Note]
> Currently this API is supported only for AppOnly context requests. (See [Get access without a user](exposed-apis-create-app-webapp.md) for more information)


**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)
Retrieves a TI Indicator entity by ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write TI Indicators'


## HTTP request
```
GET https://api.securitycenter.windows.com/api/tiindicators/{id}
```

[!include[Improve request performance](improverequestperformance-new.md)]


## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and TI Indicator exists - 200 OK with the [TI Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity in the body.
If TI Indicator with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/tiindicators/220e7d15b0b3d7fac48f2bd61114db1022197f7f
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#TiIndicators/$entity",
    "indicator": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
    "indicatorType": "FileSha1",
    "title": "test",
    "creationTimeDateTimeUtc": "2018-10-24T10:54:23.2009016Z",
    "createdBy": "45097602-0cfe-4cc6-925f-9f453233e62c",
    "expirationTime": "2020-12-12T00:00:00Z",
    "action": "AlertAndBlock",
    "severity": "Informational",
    "description": "test",
    "recommendedActions": "TEST"
}

```
