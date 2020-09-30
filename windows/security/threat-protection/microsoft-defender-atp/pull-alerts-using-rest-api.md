---
title: Pull Microsoft Defender ATP detections using REST API
description: Learn how call an Microsoft Defender ATP endpoint to pull detections in JSON format using the SIEM REST API.
keywords: detections, pull detections, rest api, request, response
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

# Pull Microsoft Defender ATP detections using SIEM REST API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-pullalerts-abovefoldlink) 

>[!Note]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more detections.
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Device and its related Alert details.
>-The Microsoft Defender ATP Alert API is the latest API for alert consumption and contain a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Microsoft Defender ATP supports the OAuth 2.0 protocol to pull detections from the API.

In general, the OAuth 2.0 protocol supports four types of flows:
- Authorization grant flow
- Implicit flow
- Client credentials flow
- Resource owner flow

For more information about the OAuth specifications, see the [OAuth Website](http://www.oauth.net).

Microsoft Defender ATP supports the _Authorization grant flow_ and _Client credential flow_ to obtain access to pull detections, with Azure Active Directory (AAD) as the authorization server.

The _Authorization grant flow_ uses user credentials to get an authorization code, which is then used to obtain an access token.

The _Client credential flow_ uses client credentials to authenticate against the Microsoft Defender ATP endpoint URL. This flow is suitable for scenarios when an OAuth client creates requests to an API that doesn't require user credentials.

Use the following method in the Microsoft Defender ATP API to pull detections in JSON format.

>[!NOTE]
>Microsoft Defender Security Center merges similar alert detections into a single alert. This API pulls alert detections in its raw form based on the query parameters you set, enabling you to apply your own grouping and filtering. 

## Before you begin
- Before calling the Microsoft Defender ATP endpoint to pull detections, you'll need to enable the SIEM integration application in Azure Active Directory (AAD). For more information, see [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md).

- Take note of the following values in your Azure application registration. You need these values to configure the OAuth flow in your service or daemon app:
  - Application ID (unique to your application)
  - App key, or secret (unique to your application)
  - Your app's OAuth 2.0 token endpoint
    - Find this value by clicking **View Endpoints** at the bottom of the Azure Management Portal in your app's page. The endpoint will look like `https://login.microsoftonline.com/{tenantId}/oauth2/token`.

## Get an access token
Before creating calls to the endpoint, you'll need to get an access token.

You'll use the access token to access the protected resource, which are detections in Microsoft Defender ATP.

To get an access token, you'll need to do a POST request to the token issuing endpoint. Here is a sample request:

```syntax

POST /72f988bf-86f1-41af-91ab-2d7cd011db47/oauth2/token HTTP/1.1
Host: login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded

resource=https%3A%2F%2Fgraph.windows.net&client_id=35e0f735-5fe4-4693-9e68-3de80f1d3745&client_secret=IKXc6PxB2eoFNJ%2FIT%2Bl2JZZD9d9032VXz6Ul3D2WyUQ%3D&grant_type=client_credentials
```
The response will include an access token and expiry information.

```json
{
  "token_type": "Bearer",
  "expires_in": "3599",
  "ext_expires_in": "0",
  "expires_on": "1488720683",
  "not_before": "1488720683",
  "resource": "https://graph.windows.net",
  "access_token":"eyJ0eXaioJJOIneiowiouqSuzNiZ345FYOVkaJL0625TueyaJasjhIjEnbMlWqP..."
}
```
You can now use the value in the *access_token* field in a request to the Microsoft Defender ATP API.

## Request
With an access token, your app can make authenticated requests to the Microsoft Defender ATP API. Your app must append the access token to the Authorization header of each request.

### Request syntax
Method | Request URI
:---|:---|
GET| Use the URI applicable for your region. <br><br> **For EU**: `https://wdatp-alertexporter-eu.windows.com/api/alerts` </br> **For US**: `https://wdatp-alertexporter-us.windows.com/api/alerts` <br> **For UK**: `https://wdatp-alertexporter-uk.windows.com/api/alerts` 

### Request header
Header | Type | Description|
:--|:--|:--
Authorization | string | Required. The Azure AD access token in the form **Bearer** &lt;*token*&gt;. |

### Request parameters

Use optional query parameters to specify and control the amount of data returned in a response. If you call this method without parameters, the response contains all the alerts in your organization in the last 2 hours.

Name | Value| Description
:---|:---|:---
sinceTimeUtc | DateTime | Defines the lower time bound alerts are retrieved from, based on field: <br> `LastProcessedTimeUtc` <br> The time range will be: from sinceTimeUtc time to current time. <br><br> **NOTE**: When not specified, all alerts generated in the last two hours are retrieved.
untilTimeUtc | DateTime | Defines the upper time bound alerts are retrieved. <br> The time range will be: from `sinceTimeUtc` time to `untilTimeUtc` time. <br><br> **NOTE**: When not specified, the default value will be the current time.
ago | string | Pulls alerts in the following time range: from `(current_time - ago)` time to `current_time` time. <br><br> Value should be set according to **ISO 8601** duration format <br> E.g. `ago=PT10M` will pull alerts received in the last 10 minutes.
limit | int | Defines the number of alerts to be retrieved. Most recent alerts will be retrieved based on the number defined.<br><br> **NOTE**: When not specified, all alerts available in the time range will be retrieved.
machinegroups | string | Specifies device groups to pull alerts from. <br><br> **NOTE**: When not specified, alerts from all device groups will be retrieved. <br><br> Example: <br><br> ```https://wdatp-alertexporter-eu.securitycenter.windows.com/api/Alerts/?machinegroups=UKMachines&machinegroups=FranceMachines```
DeviceCreatedMachineTags | string | Single device tag from the registry.
CloudCreatedMachineTags | string | Device tags that were created in Microsoft Defender Security Center.

### Request example
The following example demonstrates how to retrieve all the detections in your organization.

```syntax
GET  https://wdatp-alertexporter-eu.windows.com/api/alerts
Authorization: Bearer <your access token>
```

The following example demonstrates a request to get the last 20 detections since 2016-09-12 00:00:00.

```syntax
GET  https://wdatp-alertexporter-eu.windows.com/api/alerts?limit=20&sinceTimeUtc=2016-09-12T00:00:00.000
Authorization: Bearer <your access token>
```

## Response
The return value is an array of alert objects in JSON format.

Here is an example return value:

```json 
[
{        
        "AlertTime": "2020-09-30T14:09:20.35743Z",
        "ComputerDnsName": "mymachine1.domain.com",
        "AlertTitle": "Suspicious File Activity",
        "Category": "Malware",
        "Severity": "High",
        "AlertId": "da637370718981685665_16349121",
        "Actor": "",
        "LinkToWDATP": "https://securitycenter.windows.com/alert/da637370718981685665_16349121",
        "IocName": "",
        "IocValue": "",
        "CreatorIocName": "",
        "CreatorIocValue": "",
        "Sha1": "aabbccddee1122334455aabbccddee1122334455",
        "FileName": "cmdParent.exe",
        "FilePath": "C:\\WINDOWS\\SysWOW64\\boo3\\qwerty",
        "IpAddress": "",
        "Url": "",
        "IoaDefinitionId": "b20af1d2-5990-4672-87f1-acc2a8ff7725",
        "UserName": "",
        "AlertPart": 0,
        "FullId": "da637370718981685665_16349121:R4xEdgAvDb2LQl3BgHoA3NYqKmRSiIAG7dpxAJCYZhY=",
        "LastProcessedTimeUtc": "2020-09-30T14:11:44.0779765Z",
        "ThreatCategory": "",
        "ThreatFamily": "",
        "ThreatName": "",
        "RemediationAction": "",
        "RemediationIsSuccess": null,
        "Source": "EDR",
        "Md5": "854b85cbff2752fcb88606bca76f83c6",
        "Sha256": "",
        "WasExecutingWhileDetected": null,
        "UserDomain": "",
        "LogOnUsers": "",
        "MachineDomain": "domain.com",
        "MachineName": "mymachine1",
        "InternalIPv4List": "",
        "InternalIPv6List": "",
        "FileHash": "aabbccddee1122334455aabbccddee1122334455",
        "DeviceID": "deadbeef000040830ee54503926f556dcaf82bb0",
        "MachineGroup": "",
        "Description": "Test Alert",
        "DeviceCreatedMachineTags": "",
        "CloudCreatedMachineTags": "",
        "CommandLine": "",
        "IncidentLinkToWDATP": "https://securitycenter.windows.com/incidents/byalert?alertId=da637370718981685665_16349121&source=SIEM",
        "ReportID": 1053729833,
        "LinkToMTP": "https://security.microsoft.com/alert/da637370718981685665_16349121",
        "IncidentLinkToMTP": "https://security.microsoft.com/incidents/byalert?alertId=da637370718981685665_16349121&source=SIEM",
        "ExternalId": "31DD0A845DDA4059FDEDE031014645350AECABD3",
        "IocUniqueId": "R4xEdgAvDb2LQl3BgHoA3NYqKmRSiIAG7dpxAJCYZhY="
}
]
```

## Code examples
### Get access token
The following code examples demonstrate how to obtain an access token for calling the Microsoft Defender ATP SIEM API.

```csharp
AuthenticationContext context = new AuthenticationContext(string.Format("https://login.windows.net/{0}", tenantId));
ClientCredential clientCredentials = new ClientCredential(clientId, clientSecret);
AuthenticationResult authenticationResult = context.AcquireTokenAsync(detectionsResource, clientCredentials).GetAwaiter().GetResult();
```

```PowerShell
#Get current working directory
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#Paste below your Tenant ID, App ID and App Secret (App key).
$tenantId = '' ### Paste your tenant ID here
$appId = '' ### Paste your Application ID here
$appSecret = '' ### Paste your Application secret here

$resourceAppIdUri = 'https://graph.windows.net'
$oAuthUri = "https://login.windows.net/$tenantId/oauth2/token"
$authBody = [Ordered] @{
    resource = "$resourceAppIdUri"
    client_id = "$appId"
    client_secret = "$appSecret"
    grant_type = 'client_credentials'
}

#call API
$authResponse = Invoke-RestMethod -Method Post -Uri $oAuthUri -Body $authBody -ErrorAction Stop
$authResponse
Out-File -FilePath "$scriptDir\LatestSIEM-token.txt" -InputObject $authResponse.access_token
```

```Bash
tenantId='' ### Paste your tenant ID here
appId='' ### Paste your Application ID here
appSecret='' ### Paste your Application secret here
resourceAppIdUri='https://graph.windows.net'
oAuthUri="https://login.windows.net/$tenantId/oauth2/token"
scriptDir=$(pwd)

apiResponse=$(curl -s X POST "$oAuthUri" -d "resource=$resourceAppIdUri&client_id=$appId&client_secret=$appSecret&\
        grant_type=client_credentials" | cut -d "{" -f2 | cut -d "}" -f1)
IFS=","
apiResponseArr=($apiResponse)
IFS=":"
tokenArr=(${apiResponseArr[6]})
echo ${tokenArr[1]} | cut -d "\"" -f2 | cut -d "\"" -f1 >> $scriptDir/LatestSIEM-token.txt
```

### Use token to connect to the detections endpoint
The following code examples demonstrate how to use an access token for calling the Microsoft Defender ATP SIEM API to get alerts.

```csharp
HttpClient httpClient = new HttpClient();
httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue(authenticationResult.AccessTokenType, authenticationResult.AccessToken);
HttpResponseMessage response = httpClient.GetAsync("https://wdatp-alertexporter-eu.windows.com/api/alert").GetAwaiter().GetResult();
string detectionsJson = response.Content.ReadAsStringAsync().Result;
Console.WriteLine("Got detections list: {0}", detectionsJson);
```

```PowerShell
#Get current working directory
$scriptDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#run the script Get-Token.ps1  - make sure you are running this script from the same folder of Get-SIEMToken.ps1
$token = Get-Content "$scriptDir\LatestSIEM-token.txt"

#Get Alert from the last xx hours 200 in this example. Make sure you have alerts in that time frame.
$dateTime = (Get-Date).ToUniversalTime().AddHours(-200).ToString("o")

#test SIEM API
$url = 'https://wdatp-alertexporter-us.windows.com/api/alerts?limit=20&sinceTimeUtc=2020-01-01T00:00:00.000'

#Set the WebRequest headers
$headers = @{ 
    'Content-Type' = 'application/json'
    Accept = 'application/json'
    Authorization = "Bearer $token" 
}

#Send the webrequest and get the results. 
$response = Invoke-WebRequest -Method Get -Uri $url -Headers $headers -ErrorAction Stop
$response
Write-Host

#Extract the alerts from the results.  This works for SIEM API:
$alerts =  $response.Content | ConvertFrom-Json | ConvertTo-Json

#Get string with the execution time. We concatenate that string to the output file to avoid overwrite the file
$dateTimeForFileName = Get-Date -Format o | foreach {$_ -replace ":", "."}    

#Save the result as json and as csv
$outputJsonPath = "$scriptDir\Latest Alerts $dateTimeForFileName.json"     
$outputCsvPath = "$scriptDir\Latest Alerts $dateTimeForFileName.csv"

Out-File -FilePath $outputJsonPath -InputObject $alerts
Get-Content -Path $outputJsonPath -Raw | ConvertFrom-Json | Select-Object -ExpandProperty value | Export-CSV $outputCsvPath -NoTypeInformation
```

```Bash
#Get current working directory
scriptDir=$(pwd)

#get the token
token=$(<$scriptDir/LatestSIEM-token.txt)

#test the SIEM API, get alerts since 1/1/2020
url='https://wdatp-alertexporter-us.windows.com/api/alerts?limit=20&sinceTimeUtc=2020-01-01T00:00:00.000'

#send web requst to API and echo JSON content
apiResponse=$(curl -s X GET "$url" -H "Content-Type: application/json" -H "Accept: application/json"\
         -H "Authorization: Bearer $token" | cut -d "[" -f2 | cut -d "]" -f1)
echo "If you see Alert info in JSON format, congratulations you accessed the MDATP SIEM API!"
echo
echo $apiResponse
```

## Error codes
The Microsoft Defender ATP REST API returns the following error codes caused by an invalid request.

HTTP error code | Description
:---|:---
401 | Malformed request or invalid token.
403 | Unauthorized exception - any of the domains is not managed by the tenant administrator or tenant state is deleted.
500 | Error in the service.

## Related topics
- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- [Configure ArcSight to pull Microsoft Defender ATP detections](configure-arcsight.md)
- [Configure Splunk to pull Microsoft Defender ATP detections](configure-splunk.md)
- [Microsoft Defender ATP Detection fields](api-portal-mapping.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
