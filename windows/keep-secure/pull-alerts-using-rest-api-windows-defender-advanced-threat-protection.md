---
title: Pull Windows Defender ATP alerts using REST API
description: Pull alerts from the Windows Defender ATP portal REST API.
keywords: alerts, pull alerts, rest api, request, response
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Pull Windows Defender ATP alerts using REST API

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP supports the OAuth 2.0 protocol to pull alerts from the portal.

In general, the OAuth 2.0 protocol supports four types of flows:
- Authorization grant flow
- Implicit flow
- Client credentials flow
- Resource owner flow

For more information about the OAuth specifications, see the [OAuth Website](http://www.oauth.net).

Windows Defender ATP supports the _Authorization grant flow_ and _Client credential flow_ to obtain access to generate alerts from the portal, with Azure Active Directory (AAD) as the authorization server.

The _Authorization grant flow_ uses user credentials to get an authorization code, which is then used to obtain an access token.

The _Client credential flow_ uses client credentials to authenticate against the Windows Defender ATP endpoint URL. This flow is suitable for scenarios when an OAuth client creates requests to an API that doesn't require user credentials.

Use the following method in the Windows Defender ATP API to pull alerts in JSON format.

## Before you begin
- Before calling the Windows Defender ATP endpoint to pull alerts, you'll need to enable the SIEM integration application in Azure Active Directory (AAD). For more information, see [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md).

- Take note of the following values in your Azure application registration. You need these values to configure the OAuth flow in your service or daemon app:
  - Application ID (unique to your application)
  - App key, or secret (unique to your application)
  - Your app's OAuth 2.0 token endpoint
    - Find this value by clicking **View Endpoints** at the bottom of the Azure Management Portal in your app's page. The endpoint will look like `https://login.microsoftonline.com/{tenantId}/oauth2/token`.

## Get an access token
Before creating calls to the endpoint, you'll need to get an access token.

You'll use the access token to access the protected resource, which are alerts in Windows Defender ATP.

To get an access token, you'll need to do a POST request to the token issuing endpoint. Here is a sample request:

```syntax

POST /72f988bf-86f1-41af-91ab-2d7cd011db47/oauth2/token HTTP/1.1
Host: login.microsoftonline.com
Content-Type: application/x-www-form-urlencoded

resource=https%3A%2F%2FWDATPAlertExport.Seville.onmicrosoft.com&client_id=35e0f735-5fe4-4693-9e68-3de80f1d3745&client_secret=IKXc6PxB2eoFNJ%2FIT%2Bl2JZZD9d9032VXz6Ul3D2WyUQ%3D&grant_type=client_credentials
```
The response will include an access token and expiry information.

```json
{
  "token type": "Bearer",
  "expires in": "3599"
  "ext_expires_in": "0",
  "expires_on": "1488720683",
  "not_before": "1488720683",
  "resource": "https://WDATPAlertExport.Seville.onmicrosoft.com",
  "access_token":"eyJ0eXaioJJOIneiowiouqSuzNiZ345FYOVkaJL0625TueyaJasjhIjEnbMlWqP..."
}
```
You can now use the value in the *access_token* field in a request to the Windows Defender ATP API.

## Request
With an access token, your app can make authenticated requests to the Windows Defender ATP API. Your app must append the access token to the Authorization header of each request.

### Request syntax
Method | Request URI
:---|:---|
GET| Use the URI applicable for your region. <br><br> **For EU**: `https://wdatp-alertexporter-eu.windows.com/api/alerts` </br> **For US**: `https://wdatp-alertexporter-us.windows.com/api/alerts`

### Request header
Header | Type | Description|
:--|:--|:--
Authorization | string | Required. The Azure AD access token in the form **Bearer** &lt;*token*&gt;. |

### Request parameters

Use optional query parameters to specify and control the amount of data returned in a response. If you call this method without parameters, the response contains all the alerts in your organization.

Name | Value| Description
:---|:---|:---
DateTime?sinceTimeUtc | string | Defines the time alerts are retrieved from based from `LastProccesedTimeUtc` time to current time. <br><br> **NOTE**: When not specified, all alerts generated in the last two hours are retrieved.
int?limit | int | Defines the number of alerts to be retrieved. Most recent alerts will be retrieved based on the number defined.<br><br> **NOTE**: When not specified, all alerts available in the time range will be retrieved.

### Request example
The following example demonstrates how to retrieve all the alerts in your organization.

```syntax
GET  https://wdatp-alertexporter-eu.windows.com/api/alerts
Authorization: Bearer <your access token>
```

The following example demonstrates a request to get the last 20 alerts since 2016-09-12 00:00:00.

```syntax
GET  https://wdatp-alertexporter-eu.windows.com/api/alerts?limit=20&sinceTimeUtc="2016-09-12 00:00:00"
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
"Source":"Windows Defender ATP",
"Md5":null,
"Sha256":null,
"WasExecutingWhileDetected":null,
"FileHash":"69484ca722b4285a234896a2e31707cbedc59ef9",
"IocUniqueId":"9DE735BA9FF87725E392C6DFBEB2AF279035CDE229FCC00D28C0F3242C5A50AF"}
```

## Code examples
### Get access token
The following code example demonstrates how to obtain an access token and call the Windows Defender ATP API.

```syntax
AuthenticationContext context = new AuthenticationContext(string.Format("https://login.windows.net/{0}/oauth2", tenantId));
ClientCredential clientCredentials = new ClientCredential(clientId, clientSecret);
AuthenticationResult authenticationResult  = context.AcquireToken(resource, clientCredentials);
```
### Use token to connect to the alerts endpoint

```
HttpClient httpClient = new HttpClient();
httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue(authenticationResult.AccessTokenType, authenticationResult.AccessToken);
HttpResponseMessage response = httpClient.GetAsync("https://wdatp-alertexporter-eu.windows.com/api/alert").GetAwaiter().GetResult();
string alertsJson = response.Content.ReadAsStringAsync().Result;
Console.WriteLine("Got alert list: {0}", alertsJson);

```




## Error codes
The Windows Defender ATP REST API returns the following error codes caused by an invalid request.

HTTP error code | Description
:---|:---
401 | Malformed request or invalid token.
403 | Unauthorized exception - any of the domains is not managed by the tenant administrator or tenant state is deleted.
500 | Error in the service.
