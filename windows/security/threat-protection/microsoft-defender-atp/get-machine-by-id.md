---
title: Get machine by ID API
description: Retrieves a machine entity by ID.
keywords: apis, graph api, supported apis, get, machines, entity, id
search.product: eADQiWindows 10XVcnh
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

# Get machine by ID API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a machine entity by ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- User needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)


## HTTP request
```
GET /api/machines/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machine exists - 200 OK with the [machine](machine.md) entity in the body.
If machine with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machine",
    "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "computerDnsName": "mymachine1.contoso.com",
    "firstSeen": "2018-08-02T14:55:03.7791856Z",
	"lastSeen": "2018-08-02T14:55:03.7791856Z",
    "osPlatform": "Windows10",
    "osVersion": "10.0.0.0",
    "lastIpAddress": "172.17.230.209",
    "lastExternalIpAddress": "167.220.196.71",
    "agentVersion": "10.5830.18209.1001",
    "osBuild": 18209,
    "healthStatus": "Active",
    "rbacGroupId": 140,
	"rbacGroupName": "The-A-Team",
    "riskScore": "Low",
    "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
	"machineTags": [ "test tag 1", "test tag 2" ]
}

```
