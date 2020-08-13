---
title: Advanced Hunting API
ms.reviewer: 
description: Use the Advanced hunting API to run advanced queries on Microsoft Defender Advanced Threat Protection
keywords: apis, supported apis, advanced hunting, query
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

# Advanced hunting API

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

## Limitations
1. You can only run a query on data from the last 30 days.
2. The results will include a maximum of 100,000 rows.
3. The number of executions is limited per tenant: up to 15 calls per minute, 15 minutes of running time every hour and 4 hours of running time a day.
4. The maximal execution time of a single request is 10 minutes.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

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
POST https://api.securitycenter.windows.com/api/advancedqueries/run
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

[!include[Improve request performance](../../includes/improve-request-performance.md)]


```
POST https://api.securitycenter.windows.com/api/advancedqueries/run
Content-type: application/json
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
- [Microsoft Defender ATP APIs introduction](apis-intro.md)
- [Advanced Hunting from Portal](advanced-hunting-query-language.md)
- [Advanced Hunting using PowerShell](run-advanced-query-sample-powershell.md)
