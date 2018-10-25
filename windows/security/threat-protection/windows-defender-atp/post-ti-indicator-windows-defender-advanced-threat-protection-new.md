---
title: Submit Ti Indicator API
description: Use this API to submit Ti Indicator.
keywords: apis, graph api, supported apis, submit, ti, ti indicator
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

# Submit Ti Indicator API

[!include[Prerelease information](prerelease.md)]

>[!Note]
> Currently this API is supported only for AppOnly context requests. (See [Get access without a user](exposed-apis-create-app-webapp.md) for more information)


**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

- Submits new [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti_ReadWrite |	'Read and write Ti Indicators'


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
indicator | String | Identity of the [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) entity. **Required**
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url". **Required**
title | String | Ti indicator title.
expirationTime | DateTimeOffset | The expiration time of the indicator.
action | Enum | The action that will be taken when the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed". **Required**
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High".
description | String | Description of the indicator.
recommendedActions | String | Recommended actions for the indicator.


## Response
If successful, this method returns 201 - Created response code and the created [Ti Indicator](ti-indicator-windows-defender-advanced-threat-protection-new.md) in the response body.


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
HTTP/1.1 201 Created
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
