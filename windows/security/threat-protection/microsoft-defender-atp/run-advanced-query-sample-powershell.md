---
title: Advanced Hunting API
ms.reviewer: 
description: Use this API to run advanced queries
keywords: apis, supported apis, advanced hunting, query
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mjcaparas
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Advanced Hunting using PowerShell
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Run advanced queries using PowerShell, see [Advanced Hunting API](run-advanced-query-api.md).

In this section we share PowerShell samples to retrieve a token and use it to run a query.

## Before you begin
You first need to [create an app](apis-intro.md).

## Preparation instructions

- Open a PowerShell window.
- If your policy does not allow you to run the PowerShell commands, you can run the below command:
  ```
  Set-ExecutionPolicy -ExecutionPolicy Bypass
  ```

>For more details, see [PowerShell documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy)

## Get token

- Run the following:

```
$tenantId = '00000000-0000-0000-0000-000000000000' # Paste your own tenant ID here
$appId = '11111111-1111-1111-1111-111111111111' # Paste your own app ID here
$appSecret = '22222222-2222-2222-2222-222222222222' # Paste your own app secret here

$resourceAppIdUri = 'https://api.securitycenter.windows.com'
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
- $appId: ID of your AAD app (the app must have 'Run advanced queries' permission to Microsoft Defender ATP)
- $appSecret: Secret of your AAD app

## Run query

Run the following query:

```
$query = 'RegistryEvents | limit 10' # Paste your own query here

$url = "https://api.securitycenter.windows.com/api/advancedqueries/run"
$headers = @{ 
    'Content-Type' = 'application/json'
    Accept = 'application/json'
    Authorization = "Bearer $aadToken" 
}
$body = ConvertTo-Json -InputObject @{ 'Query' = $query }
$webResponse = Invoke-WebRequest -Method Post -Uri $url -Headers $headers -Body $body -ErrorAction Stop
$response =  $webResponse | ConvertFrom-Json
$results = $response.Results
$schema = $response.Schema
```

- $results contains the results of your query
- $schema contains the schema of the results of your query

### Complex queries

If you want to run complex queries (or multilines queries), save your query in a file and, instead of the first line in the above sample, run the below command:

```
$query = [IO.File]::ReadAllText("C:\myQuery.txt"); # Replace with the path to your file
```

## Work with query results

You can now use the query results.

To output the results of the query in CSV format in file file1.csv do the below:

```
$results | ConvertTo-Csv -NoTypeInformation | Set-Content file1.csv
```

To output the results of the query in JSON format in file file1.json do the below:

```
$results | ConvertTo-Json | Set-Content file1.json
```


## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
- [Advanced Hunting API](run-advanced-query-api.md)
- [Advanced Hunting using Python](run-advanced-query-sample-python.md)
- [Schedule Advanced Hunting](run-advanced-query-sample-ms-flow.md)
