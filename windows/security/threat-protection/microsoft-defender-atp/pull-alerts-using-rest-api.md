---
title: Pull Microsoft Defender ATP Detections using REST API
description: Pull Detections from Microsoft Defender ATP REST API.
keywords: Detections, pull Detections, rest api, request, response
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

# Pull Microsoft Defender ATP Detections using SIEM REST API

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-pullalerts-abovefoldlink) 

>[!Note]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more Detections
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Machine and its related Alert details.

Microsoft Defender ATP supports the OAuth 2.0 protocol to pull Detections from the API.

In general, the OAuth 2.0 protocol supports four types of flows:
- Authorization grant flow
- Implicit flow
- Client credentials flow
- Resource owner flow

For more information about the OAuth specifications, see the [OAuth Website](http://www.oauth.net).

Microsoft Defender ATP supports the _Authorization grant flow_ and _Client credential flow_ to obtain access to pull Detections, with Azure Active Directory (AAD) as the authorization server.

The _Authorization grant flow_ uses user credentials to get an authorization code, which is then used to obtain an access token.

The _Client credential flow_ uses client credentials to authenticate against the Microsoft Defender ATP endpoint URL. This flow is suitable for scenarios when an OAuth client creates requests to an API that doesn't require user credentials.

Use the following method in the Microsoft Defender ATP API to pull Detections in JSON format.

>[!NOTE]
>Microsoft Defender Security Center merges similar alert detections into a single alert. This API pulls alert detections in its raw form based on the query parameters you set, enabling you to apply your own grouping and filtering. 

## Before you begin
- Before calling the Microsoft Defender ATP endpoint to pull Detections, you'll need to enable the SIEM integration application in Azure Active Directory (AAD). For more information, see [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md).

- Take note of the following values in your Azure application registration. You need these values to configure the OAuth flow in your service or daemon app:
  - Application ID (unique to your application)
  - App key, or secret (unique to your application)
  - Your app's OAuth 2.0 token endpoint
    - Find this value by clicking **View Endpoints** at the bottom of the Azure Management Portal in your app's page. The endpoint will look like `https://login.microsoftonline.com/{tenantId}/oauth2/token`.

## Get an access token
Before creating calls to the endpoint, you'll need to get an access token.

You'll use the access token to access the protected resource, which are Detections in Microsoft Defender ATP.

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
DateTime?sinceTimeUtc | string | Defines the lower time bound Detections are retrieved from, based on field: <br> `LastProcessedTimeUtc` <br> The time range will be: from sinceTimeUtc time to current time. <br><br> **NOTE**: When not specified, all Detections generated in the last two hours are retrieved.
DateTime?untilTimeUtc | string | Defines the upper time bound Detections are retrieved. <br> The time range will be: from `sinceTimeUtc` time to `untilTimeUtc` time. <br><br> **NOTE**: When not specified, the default value will be the current time.
string ago | string | Pulls Detections in the following time range: from `(current_time - ago)` time to `current_time` time. <br><br> Value should be set according to **ISO 8601** duration format <br> E.g. `ago=PT10M` will pull Detections received in the last 10 minutes.
int?limit | int | Defines the number of Detections to be retrieved. Most recent Detections will be retrieved based on the number defined.<br><br> **NOTE**: When not specified, all Detections available in the time range will be retrieved.
machinegroups | String | Specifies machine groups to pull Detections from. <br><br> **NOTE**: When not specified, Detections from all machine groups will be retrieved. <br><br> Example: <br><br> ```https://wdatp-alertexporter-eu.securitycenter.windows.com/api/Alerts/?machinegroups=UKMachines&machinegroups=FranceMachines```
DeviceCreatedMachineTags | string | Single machine tag from the registry.
CloudCreatedMachineTags | string | Machine tags that were created in Microsoft Defender Security Center.

### Request example
The following example demonstrates how to retrieve all the Detections in your organization.

```syntax
GET  https://wdatp-alertexporter-eu.windows.com/api/alerts
Authorization: Bearer <your access token>
```

The following example demonstrates a request to get the last 20 Detections since 2016-09-12 00:00:00.

```syntax
GET  https://wdatp-alertexporter-eu.windows.com/api/alerts?limit=20&sinceTimeUtc=2016-09-12T00:00:00.000
Authorization: Bearer <your access token>
```

## Response
The return value is an array of alert objects in JSON format.

Here is an example return value:

```json 
{"AlertTime":"2017-01-23T07:32:54.1861171Z",
"ComputerDnsName":"desktop-bvccckk",
"AlertTitle":"Suspicious PowerShell commandline",
"Category":"SuspiciousActivity",
"Severity":"Medium",
"AlertId":"636207535742330111_-1114309685",
"Actor":null,
"LinkToWDATP":"https://securitycenter.windows.com/alert/636207535742330111_-1114309685",
"IocName":null,
"IocValue":null,
"CreatorIocName":null,
"CreatorIocValue":null,
"Sha1":"69484ca722b4285a234896a2e31707cbedc59ef9",
"FileName":"powershell.exe",
"FilePath":"C:\\Windows\\SysWOW64\\WindowsPowerShell\\v1.0",
"IpAddress":null,
"Url":null,
"IoaDefinitiondId":"7f1c3609-a3ff-40e2-995b-c01770161d68",
"UserName":null,
"AlertPart":0,
"FullId":"636207535742330111_-1114309685:9DE735BA9FF87725E392C6DFBEB2AF279035CDE229FCC00D28C0F3242C5A50AF",
"LastProcessedTimeUtc":"2017-01-23T11:33:45.0760449Z",
"ThreatCategory":null,
"ThreatFamily":null,
"ThreatName":null,
"RemediationAction":null,
"RemediationIsSuccess":null,
"Source":"Microsoft Defender ATP",
"Md5":null,
"Sha256":null,
"WasExecutingWhileDetected":null,
"FileHash":"69484ca722b4285a234896a2e31707cbedc59ef9",
"IocUniqueId":"9DE735BA9FF87725E392C6DFBEB2AF279035CDE229FCC00D28C0F3242C5A50AF"}
```

## Code examples
### Get access token
The following code example demonstrates how to obtain an access token and call the Microsoft Defender ATP API.

```csharp
AuthenticationContext context = new AuthenticationContext(string.Format("https://login.windows.net/{0}/oauth2", tenantId));
ClientCredential clientCredentials = new ClientCredential(clientId, clientSecret);
AuthenticationResult authenticationResult  = context.AcquireToken(resource, clientCredentials);
```
### Use token to connect to the Detections endpoint

```
HttpClient httpClient = new HttpClient();
httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue(authenticationResult.AccessTokenType, authenticationResult.AccessToken);
HttpResponseMessage response = httpClient.GetAsync("https://wdatp-alertexporter-eu.windows.com/api/alert").GetAwaiter().GetResult();
string detectionsJson = response.Content.ReadAsStringAsync().Result;
Console.WriteLine("Got Detections list: {0}", detectionsJson);

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
- [Configure ArcSight to pull Microsoft Defender ATP Detections](configure-arcsight.md)
- [Configure Splunk to pull Microsoft Defender ATP Detections](configure-splunk.md)
- [Microsoft Defender ATP Detection fields](api-portal-mapping.md)
- [Troubleshoot SIEM tool integration issues](troubleshoot-siem.md)
