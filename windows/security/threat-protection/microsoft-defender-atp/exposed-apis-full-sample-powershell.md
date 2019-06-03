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
ms.date: 09/24/2018
---

# Microsoft Defender ATP APIs using PowerShell
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Full scenario using multiple APIs from Microsoft Defender ATP.

In this section we share PowerShell samples to 
 - Retrieve a token 
 - Use token to retrieve the latest alerts in Microsoft Defender ATP
 - For each alert, if the alert has medium or high priority and is still in progress, check how many times the machine has connected to suspicious URL.

>**Prerequisite**: You first need to [create an app](apis-intro.md).

## Preparation Instructions

- Open a PowerShell window.
- If your policy does not allow you to run the PowerShell commands, you can run the below command:
```
Set-ExecutionPolicy -ExecutionPolicy Bypass
```

>For more details, refer to [PowerShell documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy)

## Get token

- Run the below

> - $tenantId: ID of the tenant on behalf of which you want to run the query (i.e., the query will be run on the data of this tenant)
> - $appId: ID of your AAD app (the app must have 'Run advanced queries' permission to Microsoft Defender ATP)
> - $appSecret: Secret of your AAD app
> - $suspiciousUrl: The URL


```
$tenantId = '00000000-0000-0000-0000-000000000000' # Paste your own tenant ID here
$appId = '11111111-1111-1111-1111-111111111111' # Paste your own app ID here
$appSecret = '22222222-2222-2222-2222-222222222222' # Paste your own app secret here
$suspiciousUrl = 'www.suspiciousUrl.com' # Paste your own URL here

$resourceAppIdUri = 'https://securitycenter.onmicrosoft.com/windowsatpservice'
$oAuthUri = "https://login.windows.net/$TenantId/oauth2/token"
$authBody = [Ordered] @{
	resource = "$resourceAppIdUri"
	client_id = "$appId"
	client_secret = "$appSecret"
	grant_type = 'client_credentials'
}
$authResponse = Invoke-RestMethod -Method Post -Uri $oAuthUri -Body $authBody -ErrorAction Stop
$aadToken = $authResponse.access_token


#Get latest alert
$alertUrl = "https://api.securitycenter.windows.com/api/alerts?`$top=10"
$headers = @{ 
	'Content-Type' = 'application/json'
	Accept = 'application/json'
	Authorization = "Bearer $aadToken" 
}
$alertResponse = Invoke-WebRequest -Method Get -Uri $alertUrl -Headers $headers -ErrorAction Stop
$alerts =  ($alertResponse | ConvertFrom-Json).value

$machinesToInvestigate = New-Object System.Collections.ArrayList

Foreach($alert in $alerts)
{
	#echo $alert.id	$alert.machineId	$alert.severity	$alert.status

	$isSevereAlert = $alert.severity -in 'Medium', 'High'
	$isOpenAlert = $alert.status -in 'InProgress', 'New'
	if($isOpenAlert -and $isSevereAlert)
	{
		if (-not $machinesToInvestigate.Contains($alert.machineId))
		{
			$machinesToInvestigate.Add($alert.machineId) > $null
		}
	}
}

$commaSeparatedMachines = '"{0}"' -f ($machinesToInvestigate -join '","')

$query = "NetworkCommunicationEvents
| where MachineId in ($commaSeparatedMachines)
| where RemoteUrl  == `"$suspiciousUrl`"
| summarize ConnectionsCount = count() by MachineId"

$queryUrl = "https://api.securitycenter.windows.com/api/advancedqueries/run"

$queryBody = ConvertTo-Json -InputObject @{ 'Query' = $query }
$queryResponse = Invoke-WebRequest -Method Post -Uri $queryUrl -Headers $headers -Body $queryBody -ErrorAction Stop
$response =  ($queryResponse | ConvertFrom-Json).Results
$response

```


## Related topic
- [Microsoft Defender ATP APIs](apis-intro.md)
- [Advanced Hunting API](run-advanced-query-api.md)
- [Advanced Hunting using Python](run-advanced-query-sample-python.md)
- [Schedule Advanced Hunting](run-advanced-query-sample-ms-flow.md)
