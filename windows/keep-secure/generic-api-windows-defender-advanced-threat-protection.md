---
title: Use the generic API to consume Windows Defender ATP alerts
description: Use the generic API to consume alerts from the Windows Defender ATP portal.
keywords: generic api, alerts, client credentials flow, oauth 2
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Use the generic API to consume Windows Defender ATP alerts

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

In general, the OAuth 2.0 protocol supports four types of flows:
- Authorization grant flow
- Implicit flow
- Client credentials flow
- Resource owner flow

Windows Defender ATP supports the _Authorization grant flow_ and _Client credential flow_ to obtain access to alerts, so that they can be consumed by supported tools.

In Windows Defender ATP, the _Authorization grant flow_ is used when consuming alerts using Splunk or HP ArcSight. In this flow, Azure Active Directory (AAD) acts as the authorization server.

The generic API implementation uses the _Client credential flow_. In this flow, a client can authenticate against the Windows Defender ATP endpoint using only its client credentials.

The _Client credentials flow_ is suitable for scenarios when a client creates requests to an API that doesn't require user credentials.

## Step 1: Get an access token
Before creating calls to the OAuth token endpoint, you'll need to get an access token.

You'll need the access token to access the protected resource, which are alerts in Windows Defender ATP.

To get an access token, you'll need to do a POST request to the following OAuth token endpoint. Here is a sample request:

<span style="color:#ED1C24;">LIOR - NEED EXACT POST REQUEST - THE ONE BELOW IS JUST AN ASSUMPTION FROM ME. DO I NEED TO PUT THE AUTHORIZATION AND CONTENT-TYPE? WHERE DO I USE THE RESOURCE URLS?
</span>

```
POST https://login.microsoftonline.com/<tenant_id>/oauth2/token HTTP/1.1
Host: login.microsoftonline.com
Content-Type:application/x-www-form-urlencoded; charset=utf-8

grant_type=client_credentials
&client_id=<your client id>
&client_secret=<your client secret>
&resource=https://graph.windows.net
```
For the *<tenant_id>* value in the POST URI and the *client_id* and *client_secret* parameters, specify your tenant ID, client ID, and client secret. For the *resource* parameter, use `https://graph.windows.net` if an application was created for you through the portal. Otherwise, use `https://WDATPAlertExport.Seville.onmicrosoft.com`.

As a response to the request, the authorization server will return a JSON formatted result with an *access_token* property, for example:

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
Use the value in the *access_token* field to authenticate against the Windows Defender ATP endpoint.

<span style="color:#ED1C24;">LIOR DO WE NEED TO CREATE HEADERS? NOT SURE, BUT I PUT THE STEP HERE. </span>    

## Step 2: Create headers used for the requests with the API
Use the following code to create the headers used for the requests with the API:

```
$headers = @{
    "Content-Type"="application/json"
    "Accept"="application/json"
    "Authorization"="Bearer {0}" -f $token }
```

## Step 3: Send calls to the Windows Defender ATP API
After obtaining your *access_token* and creating headers, you are ready to call the Windows Defender ATP API. You must pass the access token to the **Authorization** header of each method.

You can use the following operations when sending calls to the endpoint URL:

-	GET
-	POST
-	PATCH
-	PUT
-	DELETE

<span style="color:#ED1C24;">LIOR PLEASE CHECK IF THESE LIST OF OPERATIONS ARE CORRECT.</span>                                                          
All alert API requests use the following basic URL pattern:
- For EU: `https://wdatp-alertexporter-eu.windows.com/api/alerts`
- For US: `https://wdatp-alertexporter-us.windows.com/api/alerts`

## Windows Defender ATP methods

### Parameters
The Windows Defender ATP generic API provides several optional query parameters that you can use to specify and control the amount of data returned in a response. The generic API supports the following query options:

Name | Value| Description
:---|:---|:---
DateTime?sinceTimeUtc | string | Defines the time alerts are retrieved from based from `LastProccesedTimeUtc` time to current time. </br> NOTE: When not specified, all alerts generated in the last two hours are retrieved.
int?limit | int | Defines the number of alerts to be retrieved. Most recent alerts will be retrieved based on the number defined.</br> NOTE: When not specified, all alerts available in the time range will be retrieved.

Here is an example call with a limit of last 20 alerts since 2016-09-12 00:00:00:

`https://wdatp-alertexporter-eu.windows.com/api/alerts?limit=20&sinceTimeUtc="2016-09-12 00:00:00"`

### Return value
The return value is an array of alert objects in JSON format.

Here is an example return value:

```
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
The following code example demonstrates how to obtain an access token and call the Windows Defender ATP API from a C# console app.

```
AuthenticationContext context = new AuthenticationContext("https://login.windows.net/common/oauth2");
UserCredential user = new UserCredential("user@contoso.com", "password");
AuthenticationResult authenticationResult = context.AcquireToken(m_resource, m_clientId, user);    

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
