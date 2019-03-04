---
title: Submit or Update Ti Indicator API
description: Use this API to submit or Update Ti Indicator.
keywords: apis, graph api, supported apis, submit, ti, ti indicator, update
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

# Submit or Update TI Indicator API

[!include[Prerelease information](prerelease.md)]

>[!Note]
> Currently this API is supported only for AppOnly context requests. (See [Get access without a user](exposed-apis-create-app-webapp.md) for more information)


**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

- Submits or Updates new [TI Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write TI Indicators'


## HTTP request
```
POST https://api.securitycenter.windows.com/api/tiindicators
```

[!include[Improve request performance](improverequestperformance-new.md)]


## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
indicator | String | Identity of the [TI Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity. **Required**
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url". **Required**
action | Enum | The action that will be taken if the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed". **Required**
title | String | TI indicator alert title. **Optional**
expirationTime | DateTimeOffset | The expiration time of the indicator. **Optional**
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High". **Optional**
description | String | Description of the indicator. **Optional**
recommendedActions | String | TI indicator alert recommended actions. **Optional**


## Response
- If successful, this method returns 200 - OK response code and the created / updated [TI Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity in the response body.
- If not successful: this method return 400 - Bad Request / 409 - Conflict with the failure reason. Bad request usually indicates incorrect body and Conflict can happen if you try to submit a TI Indicator with existing indicator value but with different Indicator type or Action.  

## Example

**Request**

Here is an example of the request.

```
POST https://api.securitycenter.windows.com/api/tiindicators
Content-type: application/json
{
	"indicator": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
	"indicatorType": "FileSha1",
	"title": "test",
	"expirationTime": "2020-12-12T00:00:00Z",
	"action": "AlertAndBlock",
	"severity": "Informational",
	"description": "test",
	"recommendedActions": "TEST"
}

```
**Response**

Here is an example of the response.

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "indicator": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
    "indicatorType": "FileSha1",
    "title": "test",
    "creationTimeDateTimeUtc": "2018-10-24T10:54:23.2009016Z",
    "createdBy": "45097602-1234-5678-1234-9f453233e62c",
    "expirationTime": "2020-12-12T00:00:00Z",
    "action": "AlertAndBlock",
    "severity": "Informational",
    "description": "test",
    "recommendedActions": "TEST"
}

```
