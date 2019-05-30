---
title: PowerShell code examples for the custom threat intelligence API
description: Use PowerShell code to create custom threat intelligence using REST API.
keywords: powershell, code examples, threat intelligence, custom threat intelligence, rest api, api
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

# PowerShell code examples for the custom threat intelligence API (Deprecated)

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



This article provides PowerShell code examples for using the custom threat intelligence API.

These code examples demonstrate the following tasks:
- [Obtain an Azure AD access token](#token)
- [Create headers](#headers)
- [Create calls to the custom threat intelligence API](#calls)
- [Create a new alert definition](#alert-definition)
- [Create a new indicator of compromise](#ioc)

<span id="token" />
## Step 1: Obtain an Azure AD access token
The following example demonstrates how to obtain an Azure AD access token that you can use to call methods in the custom threat intelligence API. After you obtain a token, you have 60 minutes to use this token in calls to the custom threat intelligence API before the token expires. After the token expires, you can generate a new token.

Replace the *authUrl*, *clientid*, and *clientSecret* values with the ones you got from **Settings** page in the portal:

```powershell
$authUrl = 'Your Authorization URL'
$clientId = 'Your Client ID'
$clientSecret = 'Your Client Secret'

$tokenPayload = @{
    "resource"='https://graph.windows.net'
    "client_id" = $clientId
    "client_secret" = $clientSecret
    "grant_type"='client_credentials'}

$response = Invoke-RestMethod $authUrl -Method Post -Body $tokenPayload
$token = $response.access_token

```

<span id="headers" />
## Step 2: Create headers used for the requests with the API
Use the following code to create the headers used for the requests with the API:

```powershell
$headers = @{
    "Content-Type"="application/json"
    "Accept"="application/json"
    "Authorization"="Bearer {0}" -f $token }

$apiBaseUrl = "https://ti.securitycenter.windows.com/V1.0/"
```

<span id="calls" />
## Step 3: Create calls to the custom threat intelligence API
After creating the headers, you can now create calls to the API. The following example demonstrates how you can view all the alert definition entities:

```powershell
$alertDefinitions =
    (Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) -Method Get -Headers $headers).value
```

The response is empty on initial use of the API.

<span id="alert-definition" />
## Step 4: Create a new alert definition
The following example demonstrates how you to create a new alert definition.

```powershell
$alertDefinitionPayload = @{
    "Name"= "The alert's name"
    "Severity"= "Low"
    "InternalDescription"= "An internal description of the Alert"
    "Title"= "The Title"
    "UxDescription"= "Description of the alerts"
    "RecommendedAction"= "The alert's recommended action"
    "Category"= "Trojan"
    "Enabled"= "true"}

$alertDefinition =
    Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) `
        -Method Post -Headers $headers -Body ($alertDefinitionPayload | ConvertTo-Json)
```

<span id="ioc" />
## Step 5: Create a new indicator of compromise
You can now use the alert ID obtained from creating a new alert definition to create a new indicator of compromise.

```powershell
$iocPayload = @{
    "Type"="Sha1"
    "Value"="dead1111eeaabbccddeeaabbccddee11ffffffff"
    "DetectionFunction"="Equals"
    "Enabled"="true"
    "AlertDefinition@odata.bind"="AlertDefinitions({0})" -f $alertDefinitionId }


$ioc =
    Invoke-RestMethod ("{0}IndicatorsOfCompromise" -f $apiBaseUrl) `
         -Method Post -Headers $headers -Body ($iocPayload | ConvertTo-Json)
```

## Complete code
You can use the complete code to create calls to the API.

```powershell
$authUrl = 'Your Authorization URL'
$clientId = 'Your Client ID'
$clientSecret = 'Your Client Secret'

$tokenPayload = @{
    "resource"='https://graph.windows.net'
    "client_id" = $clientId
    "client_secret" = $clientSecret
    "grant_type"='client_credentials'}

$response = Invoke-RestMethod $authUrl -Method Post -Body $tokenPayload
$token = $response.access_token

$headers = @{
    "Content-Type"="application/json"
    "Accept"="application/json"
    "Authorization"="Bearer {0}" -f $token }

$apiBaseUrl = "https://ti.securitycenter.windows.com/V1.0/"

$alertDefinitions =
    (Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) -Method Get -Headers $headers).value

$alertDefinitionPayload = @{
    "Name"= "The alert's name"
    "Severity"= "Low"
    "InternalDescription"= "An internal description of the Alert"
    "Title"= "The Title"
    "UxDescription"= "Description of the alerts"
    "RecommendedAction"= "The alert's recommended action"
    "Category"= "Trojan"
    "Enabled"= "true"}

$alertDefinition =
    Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) `
        -Method Post -Headers $headers -Body ($alertDefinitionPayload | ConvertTo-Json)

$alertDefinitionId = $alertDefinition.Id

$iocPayload = @{
    "Type"="Sha1"
    "Value"="dead1111eeaabbccddeeaabbccddee11ffffffff"
    "DetectionFunction"="Equals"
    "Enabled"="true"
    "AlertDefinition@odata.bind"="AlertDefinitions({0})" -f $alertDefinitionId }


$ioc =
    Invoke-RestMethod ("{0}IndicatorsOfCompromise" -f $apiBaseUrl) `
         -Method Post -Headers $headers -Body ($iocPayload | ConvertTo-Json)

```

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-psexample-belowfoldlink) 


## Related topics
- [Understand threat intelligence concepts](threat-indicator-concepts.md)
- [Enable the custom threat intelligence API in Microsoft Defender ATP](enable-custom-ti.md)
- [Create custom alerts using the threat intelligence API](custom-ti-api.md)
- [Python code examples for the custom threat intelligence API](python-example-code.md)
- [Experiment with custom threat intelligence alerts](experiment-custom-ti.md)
- [Troubleshoot custom threat intelligence issues](troubleshoot-custom-ti.md)
