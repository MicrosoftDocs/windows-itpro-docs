---
title: Advanced Hunting API
ms.reviewer: 
description: Learn to use the advanced hunting API to run advanced queries on Microsoft Defender for Endpoint. Find out about limitations and see an example.
keywords: apis, supported apis, advanced hunting, query
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# Advanced hunting API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## Limitations
1. You can only run a query on data from the last 30 days.
2. The results will include a maximum of 100,000 rows.
3. The number of executions is limited per tenant:
   - API calls: Up to 45 calls per minute.
   - Execution time: 10 minutes of running time every hour and 3 hours of running time a day.
4. The maximal execution time of a single request is 10 minutes.
5. 429 response will represent reaching quota limit either by number of requests or by CPU. Read response body to understand what limit has been reached. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	AdvancedQuery.Read.All |	'Run advanced queries'
Delegated (work or school account) | AdvancedQuery.Read | 'Run advanced queries'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have 'View Data' AD role
>- The user needs to have access to the device, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.microsoft.com/api/advancedqueries/run
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content-Type	| application/json

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Query |	Text |	The query to run. **Required**.

## Response
If successful, this method returns 200 OK, and _QueryResponse_ object in the response body.


## Example

Request

Here is an example of the request.

```http
POST https://api.securitycenter.microsoft.com/api/advancedqueries/run
```

```json
{
	"Query":"DeviceProcessEvents  
    | where InitiatingProcessFileName =~ 'powershell.exe'
    | where ProcessCommandLine contains 'appdata'
    | project Timestamp, FileName, InitiatingProcessFileName, DeviceId
    | limit 2"
}
```

Response

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```json
{
	"Schema": [
		{
			"Name": "Timestamp",
			"Type": "DateTime"
		},
		{
			"Name": "FileName",
			"Type": "String"
		},
		{
			"Name": "InitiatingProcessFileName",
			"Type": "String"
		},
		{
			"Name": "DeviceId",
			"Type": "String"
		}
	],
	"Results": [
		{
			"Timestamp": "2020-02-05T01:10:26.2648757Z",
			"FileName": "csc.exe",
			"InitiatingProcessFileName": "powershell.exe",
			"DeviceId": "10cbf9182d4e95660362f65cfa67c7731f62fdb3"
		},
		{
			"Timestamp": "2020-02-05T01:10:26.5614772Z",
			"FileName": "csc.exe",
			"InitiatingProcessFileName": "powershell.exe",
			"DeviceId": "10cbf9182d4e95660362f65cfa67c7731f62fdb3"
		}
	]
}
```

## Related topic
- [Microsoft Defender for Endpoint APIs introduction](apis-intro.md)
- [Advanced Hunting from Portal](advanced-hunting-query-language.md)
- [Advanced Hunting using PowerShell](run-advanced-query-sample-powershell.md)
