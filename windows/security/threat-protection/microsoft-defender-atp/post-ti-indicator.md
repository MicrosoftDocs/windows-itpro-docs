---
title: Submit or Update Indicator API
description: Learn how to use the Submit or Update Indicator API to submit or update a new Indicator entity in Microsoft Defender Advanced Threat Protection.
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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Submits or Updates new [Indicator](ti-indicator.md) entity.
<br>CIDR notation for IPs is supported.

## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.
2. There is a limit of 15,000 active indicators per tenant. 


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write Indicators'
Application |	Ti.ReadWrite.All |	'Read and write All Indicators'
Delegated (work or school account) |	Ti.ReadWrite |	'Read and write Indicators'


## HTTP request
```
POST https://api.securitycenter.microsoft.com/api/indicators
```

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
application | String | The application associated with the indicator. **Optional**
title | String | Indicator alert title. **Required**
description | String | Description of the indicator. **Required**
expirationTime | DateTimeOffset | The expiration time of the indicator. **Optional**
severity | Enum | The severity of the indicator. possible values are: "Informational", "Low", "Medium" and "High". **Optional**
recommendedActions | String | TI indicator alert recommended actions. **Optional**
rbacGroupNames | String | Comma-separated list of RBAC group names the indicator would be applied to. **Optional**


## Response
- If successful, this method returns 200 - OK response code and the created / updated [Indicator](ti-indicator.md) entity in the response body.
- If not successful: this method return 400 - Bad Request. Bad request usually indicates incorrect body.

## Example

**Request**

Here is an example of the request.

```
POST https://api.securitycenter.microsoft.com/api/indicators
Content-type: application/json
{
    "indicatorValue": "220e7d15b011d7fac48f2bd61114db1022197f7f",
    "indicatorType": "FileSha1",
    "title": "test",
    "application": "demo-test",
    "expirationTime": "2020-12-12T00:00:00Z",
    "action": "AlertAndBlock",
    "severity": "Informational",
    "description": "test",
    "recommendedActions": "nothing",
    "rbacGroupNames": ["group1", "group2"]
}
```

## Related topic
- [Manage indicators](manage-indicators.md)
