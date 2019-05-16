---
title: Submit or Update Indicator API
description: Use this API to submit or Update Indicator.
keywords: apis, graph api, supported apis, submit, ti, indicator, update
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

# Submit or Update Indicator API

**Applies to:** 
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>[!Note]
> Currently this API is supported only for AppOnly context requests. (See [Get access with application context](exposed-apis-create-app-webapp.md) for more information)


- Submits or Updates new [Indicator](ti-indicator.md) entity.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write Indicators'
Application |	Ti.ReadWrite.All |	'Read and write All Indicators'


## HTTP request
```
POST https://api.securitycenter.windows.com/api/indicators
```

[!include[Improve request performance](improve-request-performance.md)]


## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
indicatorValue | String | Identity of the [Indicator](ti-indicator.md) entity. **Required**
indicatorType | Enum | Type of the indicator. Possible values are: "FileSha1", "FileSha256", "IpAddress", "DomainName" and "Url". **Required**
action | Enum | The action that will be taken if the indicator will be discovered in the organization. Possible values are: "Alert", "AlertAndBlock", and "Allowed". **Required**
title | String | Indicator alert title. **Optional**
expirationTime | DateTimeOffset | The expiration time of the indicator. **Optional**
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High". **Optional**
description | String | Description of the indicator. **Optional**
recommendedActions | String | TI indicator alert recommended actions. **Optional**


## Response
- If successful, this method returns 200 - OK response code and the created / updated [Indicator](ti-indicator.md) entity in the response body.
- If not successful: this method return 400 - Bad Request / 409 - Conflict with the failure reason. Bad request usually indicates incorrect body and Conflict can happen if you try to submit an Indicator that conflicts with an existing Indicator type or Action.  

## Example

**Request**

Here is an example of the request.

```
POST https://api.securitycenter.windows.com/api/indicators
Content-type: application/json
{
	"indicatorValue": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
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
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Indicators/$entity",
    "indicatorValue": "220e7d15b0b3d7fac48f2bd61114db1022197f7f",
    "indicatorType": "FileSha1",
    "title": "test",
    "creationTimeDateTimeUtc": "2018-10-24T10:54:23.2009016Z",
    "createdBy": "45097602-1234-5678-1234-9f453233e62c",
    "expirationTime": "2020-12-12T00:00:00Z",
    "action": "AlertAndBlock",
    "severity": "Informational",
    "description": "test",
    "recommendedActions": "TEST",
	"rbacGroupNames": []
}

```
