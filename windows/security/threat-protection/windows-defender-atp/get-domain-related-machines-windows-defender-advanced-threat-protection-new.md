---
title: Get domain related machines API
description: Retrieves a collection of machines related to a given domain address.
keywords: apis, graph api, supported apis, get, domain, related, machines
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

# Get domain related machines API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Retrieves a collection of machines that have communicated to or from a given domain address.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	URL.Read.All |	'Read URLs'

## HTTP request
```
GET /api/domains/{domain}/machines
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and domain and machine exists - 200 OK with list of [machine](machine-windows-defender-advanced-threat-protection-new.md) objects.
If domain or machines do not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com


```
GET https://api.securitycenter.windows.com/api/domains/api.securitycenter.windows.com/machines
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
    "value": [
        {
            "id": "02ea9a24e8bd39c247ed7ca0edae879c321684e5",
            "computerDnsName": "testMachine1",
            "firstSeen": "2018-07-30T20:12:00.3708661Z",
            "osPlatform": "Windows10",
            "osVersion": null,
            "systemProductName": null,
            "lastIpAddress": "10.209.67.177",
            "lastExternalIpAddress": "167.220.1.210",
            "agentVersion": "10.5830.18208.1000",
            "groupName": null,
            "osBuild": 18208,
            "healthStatus": "Inactive",
            "isAadJoined": false,
            "machineTags": [],
            "rbacGroupId": 75,
            "riskScore": "Low",
            "aadDeviceId": null
        },
        {
            "id": "02efb9a9b85f07749a018fbf3f962b4700b3b949",
            "computerDnsName": "testMachine2",
            "firstSeen": "2018-07-30T19:50:47.3618349Z",
            "osPlatform": "Windows10",
            "osVersion": null,
            "systemProductName": null,
            "lastIpAddress": "10.209.70.231",
            "lastExternalIpAddress": "167.220.0.28",
            "agentVersion": "10.5830.18208.1000",
            "groupName": null,
            "osBuild": 18208,
            "healthStatus": "Inactive",
            "isAadJoined": false,
            "machineTags": [],
            "rbacGroupId": 75,
            "riskScore": "None",
            "aadDeviceId": null
        }    
	]
}
```
