---
title: PowerShell code examples for the custom threat intelligence API
description: Use PowerShell code to create custom threat intelligence using REST API.
keywords: powershell, code examples, threat intelligence, custom threat intelligence, rest api, api
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# PowerShell code examples for the custom threat intelligence API

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

This article provides PowerShell code examples for using the custom threat intelligence API.

These code examples demonstrate the following tasks:
- [Obtain an Azure AD access token](#obtain-an-azure-ad-access-token)
- [Create headers](#create-headers)
- [Create calls to the custom threat intelligence API](#create-calls-to-the-custom-threat-intelligence-api)
- [Create a new alert definition](#create-a-new-alert-definition)
- [Create a new indicator of compromise](#create-a-new-indicator-of-compromise)

## Obtain an Azure AD access token
The following example demonstrates how to obtain an Azure AD access token that you can use to call methods in the custom threat intelligence API. After you obtain a token, you have 60 minutes to use this token in calls to the custom threat intelligence API before the token expires. After the token expires, you can generate a new token.

Replace the *tenant\_id*, *client_id*, and *client_secret* values with the ones you got from **Preferences settings** page in the portal:

[!code[CustomTIAPI](./code/example.ps1#L1-L14)]

## Create headers
The following example demonstrates how to create headers used for the requests with the API.

```
$headers = @{}
$headers.Add("Content-Type", "application/json")
$headers.Add("Accept", "application/json")
$headers.Add("Authorization", "Bearer {0}" -f $token)

```

## Create calls to the custom threat intelligence API
The following example demonstrates how to view all alert definition entities by creating a call to the API.

```
$apiBaseUrl = "https://ti.securitycenter.windows.com/V1.0/"
$alertDefinitions =
    (Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) -Method Get -Headers $headers).value
```

If this is the first time to use the API, the response is empty.

## Create a new alert definition
The following example shows how to create a new alert definition.

```
$alertDefinitionPayload = @{
    "Name"= "The Alert's Name"
    "Severity"= "Low"
    "InternalDescription"= "An internal description of the Alert"
    "Title"= "The Title"
    "UxDescription"= "Description of the alerts"
    "RecommendedAction"= "The alert's recommended action"
    "Category"= "Trojan"
    "Enabled"= "true"}


$alertDefinition =
    Invoke-RestMethod ("{0}AlertDefinitions" -f $apiBaseUrl) -Method Post -Headers $headers -Body ($alertDefinitionPayload | ConvertTo-Json)
```

## Create a new indicator of compromise
The following example shows how to use the alert ID obtained from creating a new alert definition to create a new indicator of compromise.

```
$iocPayload = @{
    "Type"="Sha1"
    "Value"="dead1111eeaabbccddeeaabbccddee11ffffffff"
    "DetectionFunction"="Equals"
    "Enabled"="true"
    "AlertDefinition@odata.bind"="AlertDefinitions({0})" -f $alertDefinitionId }


$ioc = Invoke-RestMethod ("{0}IndicatorsOfCompromise" -f $apiBaseUrl) -Method Post -Headers $headers -Body ($iocPayload | ConvertTo-Json)
```
