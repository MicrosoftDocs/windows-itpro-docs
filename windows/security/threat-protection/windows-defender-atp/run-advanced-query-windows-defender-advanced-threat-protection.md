---
title: Advanced Hunting API
description: Use this API to run advanced queries
keywords: apis, supported apis, advanced hunting, query
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

# Advanced hunting API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)


Run advanced query.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	AdvancedQuery.Read.All |	'Run advanced queries'

## HTTP request
```
POST /advancedqueries/query
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

```
POST https://api.securitycenter.windows.com/advancedqueries/query
Content-type: application/json
{
  "ProcessCreationEvents  
| where InitiatingProcessFileName =~ \"powershell.exe\"
| where ProcessCommandLine contains \"appdata\"
| project EventTime, FileName, InitiatingProcessFileName 
| limit 2"​
}
```

Response

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```
HTTP/1.1 200 OK
Content-Type: application/json​
{
	"Schema": [{
		"Name": "EventTime",
		"Type": "DateTime"
	},
	{
		"Name": "FileName",
		"Type": "String"
	},
	{
		"Name": "InitiatingProcessFileName",
		"Type": "String"
	}],
	"Results": [{
		"EventTime": "2018-07-09T07:16:26.8017265",
		"FileName": "csc.exe",
		"InitiatingProcessFileName": "powershell.exe"
	},
	{
		"EventTime": "2018-07-08T19:00:02.7798905",
		"FileName": "gpresult.exe",
		"InitiatingProcessFileName": "powershell.exe"
	}]
}


```
