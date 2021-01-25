---
title: Import Indicators API
description: Learn how to use the Import batch of Indicator API in Microsoft Defender Advanced Threat Protection.
keywords: apis, supported apis, submit, ti, indicator, update
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

# Import Indicators API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Submits or Updates batch of [Indicator](ti-indicator.md) entities.
<br>CIDR notation for IPs is not supported.

## Limitations
1. Rate limitations for this API are 30 calls per minute.
2. There is a limit of 15,000 active [Indicators](ti-indicator.md) per tenant. 
3. Maximum batch size for one API call is 500.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write Indicators'
Application |	Ti.ReadWrite.All |	'Read and write All Indicators'
Delegated (work or school account) |	Ti.ReadWrite |	'Read and write Indicators'


## HTTP request
```
POST https://api.securitycenter.microsoft.com/api/indicators/import
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
Indicators | List<[Indicator](ti-indicator.md)> | List of [Indicators](ti-indicator.md). **Required**


## Response
- If successful, this method returns 200 - OK response code with a list of import results per indicator, see example below.
- If not successful: this method return 400 - Bad Request. Bad request usually indicates incorrect body.

## Example

**Request**

Here is an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/indicators/import
```

```json
{
	"Indicators":
	[
		{
            "indicatorValue": "220e7d15b011d7fac48f2bd61114db1022197f7f",
            "indicatorType": "FileSha1",
            "title": "demo",
            "application": "demo-test",
            "expirationTime": "2021-12-12T00:00:00Z",
            "action": "Alert",
            "severity": "Informational",
            "description": "demo2",
            "recommendedActions": "nothing",
            "rbacGroupNames": ["group1", "group2"]
        },
        {
            "indicatorValue": "2233223322332233223322332233223322332233223322332233223322332222",
            "indicatorType": "FileSha256",
            "title": "demo2",
            "application": "demo-test2",
            "expirationTime": "2021-12-12T00:00:00Z",
            "action": "Alert",
            "severity": "Medium",
            "description": "demo2",
            "recommendedActions": "nothing",
            "rbacGroupNames": []
        }
	]
}
```

**Response**

Here is an example of the response.

```json
{
    "value": [
        {
            "id": "2841",
            "indicator": "220e7d15b011d7fac48f2bd61114db1022197f7f",
            "isFailed": false,
            "failureReason": null
        },
        {
            "id": "2842",
            "indicator": "2233223322332233223322332233223322332233223322332233223322332222",
            "isFailed": false,
            "failureReason": null
        }
    ]
}
```

## Related topic
- [Manage indicators](manage-indicators.md)
