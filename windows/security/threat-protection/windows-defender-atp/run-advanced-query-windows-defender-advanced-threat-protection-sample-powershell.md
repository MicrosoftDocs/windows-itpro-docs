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

## Preparation Instructions

In this section you will find a PowerShell module that retrieves a token and uses it to run a query. You can download the module and use it to run your own query.

- ​​Download and unzip 'AdvancedHunting' PowerShell module.
- Open a PowerShell window.
- If your policy does not allow you to run the PowerShell commands, you can run the below command:
```
Set-ExecutionPolicy -ExecutionPolicy Bypass
```
>Please see PowerShell documentation for full understanding

- Run
```
Import-Module <ModuleFolder>\AdvancedHunting.psd1​
```
where <ModuleFolder> is the folder in which you extracted the zip.  e.g., Import-Module 'D:\Dev\AAD Auth\AdvancedHunting.psd1'

## Get token
- Run
```
$aadToken = Get-WdatpAppToken -Tid <tenantID> -AppId <applicationID> -AppSecret <applicationSecret>
```
where
- <tenantID>: ID of the tenant on behalf of which you want to run the query (i.e., the query will be run on the data of this tenant)
- <applicationID>: ID of your AAD app (the app must have 'Run advanced queries' permission to WDATP)
- <applicationSecret>: Secret of your AAD app

## Run query

Run the below

```
$response = Invoke-Query -AadToken $aadToken -Query "RegistryEvents | limit 10"​
$response.results
$response.schema
$response.results | ConvertTo-Csv -NoTypeInformation | Set-Content file1.csv
$response.results | ConvertTo-Json | Set-Content "file1.json"
```

- Line 2 and 3 will show you the results or the schema in the PowerShell window
- Line 4 outputs the results of the query in CSV format in file file1.csv
- Line 5 outputs the results of the query in JSON format in file file1.json​

If you want to run complex queries (or multilines queries), save your query in a file and run the below commands:
>Replace C:\myQuery.txt with the path to your file.

```
​​​​$myQuery = [IO.File]::ReadAllText("C:\myQuery.txt");
$queryResults = Invoke-Query -AadToken $aadToken -Query $myQuery​​​
```


## Related topic
- [Advanced Hunting API](run-advanced-query-windows-defender-advanced-threat-protection.md)
- [Schedule Advanced Hunting](run-advanced-query-windows-defender-advanced-threat-protection-sample-ms-flow.md)
- [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md)
