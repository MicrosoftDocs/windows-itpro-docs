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

# Advanced Hunting using PowerShell

Run advanced queries using PowerShell. Please read about [Advanced Hunting API](run-advanced-query-windows-defender-advanced-threat-protection.md) before.

In this section we share PowerShell samples to retrieve a token and use it to run a query.

## Preparation Instructions

- Open a PowerShell window.
- If your policy does not allow you to run the PowerShell commands, you can run the below command:
```
Set-ExecutionPolicy -ExecutionPolicy Bypass
```

>For more details, refer to [PowerShell documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy)

## Get token

- Run the below

```
$tenantId = '00000000-0000-0000-0000-000000000000' # Paste your own tenant ID here
$appId = '00000000-0000-0000-0000-000000000000' # Paste your own app ID here
$appSecret = '00000000-0000-0000-0000-000000000000' # Paste your own app secret here

$resourceAppIdUri = 'https://securitycenter.onmicrosoft.com/windowsatpservice'
$oAuthUri = "https://login.windows.net/$TenantId/oauth2/token"
$body = [Ordered] @{
	resource = "$resourceAppIdUri"
	client_id = "$appId"
	client_secret = "$appSecret"
	grant_type = 'client_credentials'
}
$response = Invoke-RestMethod -Method Post -Uri $oAuthUri -Body $body -ErrorAction Stop
$aadToken = $response.access_token

```

where
- $tenantId: ID of the tenant on behalf of which you want to run the query (i.e., the query will be run on the data of this tenant)
- $appId: ID of your AAD app (the app must have 'Run advanced queries' permission to WDATP)
- $appSecret: Secret of your AAD app

## Run query

Run the below

```
$query = 'RegistryEvents | limit 10' # Paste your own query here

$queryServiceUri = "https://api.securitycenter.windows.com/advancedqueries/query"
$headers = @{ 
	'Content-Type' = 'application/json'
	Accept = 'application/json'
	Authorization = "Bearer $aadToken" 
}
$body = ConvertTo-Json -InputObject $query
$webResponse = Invoke-WebRequest -Method Post -Uri $queryServiceUri -Headers $headers -Body $body -ErrorAction Stop
$response =  $webResponse | ConvertFrom-Json
$results = $response.Results
$schema = $response.Schema
```

- $results contains the results of your query
- $schema contains the schema of the results of your query

### Complex queries

If you want to run complex queries (or multilines queries), save your query in a file and, instead of the first line in the above sample, run the below command:

```
​​​​$query = [IO.File]::ReadAllText("C:\myQuery.txt"); # Replace with the path to your file
```

## Work with query results

To work with the results you can, for instance, do the below

```
$results | ConvertTo-Csv -NoTypeInformation | Set-Content file1.csv
$results | ConvertTo-Json | Set-Content "file1.json"
```

- Line 1 outputs the results of the query in CSV format in file file1.csv
- Line 2 outputs the results of the query in JSON format in file file1.json​


## Related topic
- [Advanced Hunting API](run-advanced-query-windows-defender-advanced-threat-protection.md)
- [Schedule Advanced Hunting](run-advanced-query-windows-defender-advanced-threat-protection-sample-ms-flow.md)
- [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md)
