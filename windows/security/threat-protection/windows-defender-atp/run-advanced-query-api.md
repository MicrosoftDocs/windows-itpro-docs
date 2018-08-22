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
ms.date: 09/03/2018
---

# Advanced hunting API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

This API allows you to run programatically queries that you are used to run from [Windows Defender ATP Portal](https://securitycenter.windows.com/hunting)


## Limitations
This API is a beta version only and is currently restricted
1. ​You can only run a query on data from the last 30 days
2. The results will include a maximum of 10,000 rows
3. The nu​mber of executions is limited​ (up to 15 minutes every hour and 4 hours a day)

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](exposed-apis-intro.md)

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

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

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

## T​roubl​eshooting:

- (403) Forbidden.
	
	If you get this error when calling WDATP API, your token probably does not include the necessary permission,
	Check [app permissions](exposed-apis-create-app-webapp.md#validate-the-token) or [delegated permissions](exposed-apis-create-app-nativeapp.md#validate-the-token) included in your token.
	If the 'roles' section in the token does not include the necessary permission, 
		- either you did not add the necessary permission to your app (refer to [Access Windows Defender ATP without a user](exposed-apis-create-app-webapp.md#create-an-app) or [Access Windows Defender ATP on behalf of a user](exposed-apis-create-app-nativeapp.md#create-an-app)) 
		- or you did not authorize your app in the tenant see, [Application consent](exposed-apis-create-app-webapp.md#application-consent).


## Related topic
- [Windows Defender ATP APIs](exposed-apis-intro.md)
- [Advanced Hunting from Portal](advanced-hunting-windows-defender-advanced-threat-protection.md)
- [Advanced Hunting using PowerShell](run-advanced-query-sample-powershell.md)
- [Schedule Advanced Hunting](run-advanced-query-sample-ms-flow.md)
