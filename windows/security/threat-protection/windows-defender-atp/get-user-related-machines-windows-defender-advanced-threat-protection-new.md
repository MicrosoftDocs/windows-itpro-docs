---
title: Get user related machines API
description: Retrieves a collection of machines related to a given user ID.
keywords: apis, graph api, supported apis, get, user, user related alerts
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

# Get user related machines API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Retrieves a collection of machines related to a given user ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](exposed-apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

## HTTP request
```
GET /api/users/{id}/machines
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machines exists - 200 OK with list of [machine](machine-windows-defender-advanced-threat-protection-new.md) entities in the body. If user or machines does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
GET https://api.securitycenter.windows.com/api/users/user1@contoso.com/machines
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
            "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
            "computerDnsName": "mymachine1.contoso.com",
            "firstSeen": "2018-08-02T14:55:03.7791856Z",
            "osPlatform": "Windows10",
            "osVersion": null,
            "systemProductName": null,
            "lastIpAddress": "172.17.230.209",
            "lastExternalIpAddress": "167.220.196.71",
            "agentVersion": "10.5830.18209.1001",
            "groupName": null,
            "osBuild": 18209,
            "healthStatus": "Active",
            "isAadJoined": true,
            "machineTags": [],
            "rbacGroupId": 140,
            "riskScore": "Low",
            "aadDeviceId": null
        },
        {
            "id": "7292e4b8cb74ff1cc3d8a495eb29dc8858b732f7",
            "computerDnsName": "mymachine2.contoso.com",
            "firstSeen": "2018-07-09T13:22:45.1250071Z",
            "osPlatform": "Windows10",
            "osVersion": null,
            "systemProductName": null,
            "lastIpAddress": "192.168.12.225",
            "lastExternalIpAddress": "79.183.65.82",
            "agentVersion": "10.5820.17724.1000",
            "groupName": "WDATPClientTeam",
            "osBuild": 17724,
            "healthStatus": "Inactive",
            "isAadJoined": true,
            "machineTags": [],
            "rbacGroupId": 140,
            "riskScore": "Low",
            "aadDeviceId": null
        }
    ]
}
```
