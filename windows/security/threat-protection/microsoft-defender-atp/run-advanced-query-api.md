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
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Advanced hunting API

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

This API allows you to run programmatic queries that you are used to running from [Microsoft Defender ATP Portal](https://securitycenter.windows.com/hunting).

## Limitations
1. You can only run a query on data from the last 30 days
2. The results will include a maximum of 10,000 rows
3. The number of executions is limited (up to 15 calls per minute, 15 minutes of running time every hour and 4 hours of running time a day)
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
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

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

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
POST https://api.securitycenter.windows.com/api/advancedqueries/run
Content-type: application/json
{
	"Query":"ProcessCreationEvents  
| where InitiatingProcessFileName =~ \"powershell.exe\"
| where ProcessCommandLine contains \"appdata\"
| project EventTime, FileName, InitiatingProcessFileName 
| limit 2"
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

## T​roubl​eshoot issues

- Error: (403) Forbidden / (401) Unauthorized
	
	
    If you get this error when calling Microsoft Defender ATP API, your token might not include the necessary permission.

	Check [app permissions](exposed-apis-create-app-webapp.md#validate-the-token) or [delegated permissions](exposed-apis-create-app-nativeapp.md#validate-the-token) included in your token.
	
    If the 'roles' section in the token does not include the necessary permission: 

	- The necessary permission to your app might not have been granted. For more information, see [Access Microsoft Defender ATP without a user](exposed-apis-create-app-webapp.md#create-an-app) or [Access Microsoft Defender ATP on behalf of a user](exposed-apis-create-app-nativeapp.md#create-an-app) or,
    - The app was not authorized in the tenant, see [Application consent](exposed-apis-create-app-webapp.md#application-consent).


## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
- [Advanced Hunting from Portal](advanced-hunting.md)
- [Advanced Hunting using PowerShell](run-advanced-query-sample-powershell.md)
- [Schedule Advanced Hunting](run-advanced-query-sample-ms-flow.md)
