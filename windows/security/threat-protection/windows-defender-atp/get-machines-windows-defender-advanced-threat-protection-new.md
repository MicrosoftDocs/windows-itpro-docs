---
title: List machines API
description: Retrieves a collection of recently seen machines.
keywords: apis, graph api, supported apis, get, machines
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

# List machines API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

- Retrieves a collection of machines that have communicated with WDATP cloud on the last 30 days.
- Get Machines collection API supports [OData V4 queries](https://www.odata.org/documentation/).
- The OData's Filter query is supported on: "Id", "ComputerDnsName", "LastSeen", "LastIpAddress", "HealthStatus", "OsPlatform", "RiskScore", "MachineTags" and "RbacGroupId".

## Permissions

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles-windows-defender-advanced-threat-protection.md) for more information)
>- Response will include only machines,that the user have access to, based on machine group settings (See [Create and manage machine groups](machine-groups-windows-defender-advanced-threat-protection.md) for more information)

## HTTP request
```
GET https://api.securitycenter.windows.com/api/machines
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machines exists - 200 OK with list of [machine](machine-windows-defender-advanced-threat-protection-new.md) entities in the body. If no recent machines - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
GET https://api.securitycenter.windows.com/api/machines
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
			"lastSeen": "2018-08-02T14:55:03.7791856Z",
            "osPlatform": "Windows10",
            "osVersion": null,
            "systemProductName": null,
            "lastIpAddress": "172.17.230.209",
            "lastExternalIpAddress": "167.220.196.71",
            "agentVersion": "10.5830.18209.1001",
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
			"lastSeen": "2018-07-09T13:22:45.1250071Z",
            "osPlatform": "Windows10",
            "osVersion": null,
            "systemProductName": null,
            "lastIpAddress": "192.168.12.225",
            "lastExternalIpAddress": "79.183.65.82",
            "agentVersion": "10.5820.17724.1000",
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
