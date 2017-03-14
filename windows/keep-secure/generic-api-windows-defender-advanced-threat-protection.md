---
title: Get Windows Defender ATP alerts using REST API
description: Get alerts from the Windows Defender ATP portal REST API.
keywords: alerts, get alerts, rest api, request, response,
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Get Windows Defender ATP alerts using REST API

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Use this method in the Windows Defender ATP API to get alerts in JSON format.

## Before you begin
- Before calling the Windows Defender ATP endpoint to get alerts, you'll need to enable the threat intelligence application in Azure Active Directory. For more information, see [Enable the custom threat intelligence application](enable-custom-ti-windows-defender-advanced-threat-protection.md). <br><br>
- Have the access token that you generated from the **SIEM integration** feature ready for use in the request header.

## Request
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

## Error codes
The Windows Defender ATP REST API returns the following error codes caused by an invalid request.

HTTP error code | Description
:---|:---
401 | Malformed request or invalid token.
403 | Unauthorized exception - any of the domains is not managed by the tenant administrator or tenant state is deleted.
500 | Error in the service.
