---
title: Get alert related machine information 
description: Retrieves all machines related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related machine
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

# Get alert related machine information API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Retrieves machine that is related to a specific alert.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](exposed-apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine information'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

## HTTP request
```
GET /api/alerts/{id}/machine
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and alert and machine exist - 200 OK.
If alert not found or machine not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]


```
GET https://api.securitycenter.windows.com/api/alerts/636688558380765161_2136280442/machine
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines/$entity",
    "id": "ff0c3800ed8d66738a514971cd6867166809369f",
    "computerDnsName": "amazingmachine.contoso.com",
    "firstSeen": "2017-12-10T07:47:34.4269783Z",
    "osPlatform": "Windows10",
    "osVersion": "10.0.0.0",
    "systemProductName": null,
    "lastIpAddress": "172.17.0.0",
    "lastExternalIpAddress": "167.220.0.0",
    "agentVersion": "10.5830.17732.1001",
    "groupName": "ContosoGroup",
    "osBuild": 17732,
    "healthStatus": "Active",
    "isAadJoined": true,
    "machineTags": [],
    "rbacGroupId": 75,
    "riskScore": "Low",
    "aadDeviceId": "80fe8ff8-0000-0000-9591-41f0491218f9"
}
```
