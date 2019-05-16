---
title: Get machine log on users API
description: Retrieves a collection of logged on users.
keywords: apis, graph api, supported apis, get, machine, log on, users
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

# Get machine log on users API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a collection of logged on users.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	User.Read.All |	'Read user profiles'
Delegated (work or school account) | User.Read.All | 'Read user profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- Response will include users only if the machine is visible to the user, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/machines/{id}/logonusers
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machine exist - 200 OK with list of [user](user.md) entities in the body. If machine was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/logonusers
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Users",
    "value": [
        {
            "id": "contoso\\user1",
            "firstSeen": "2018-08-02T00:00:00Z",
            "lastSeen": "2018-08-04T00:00:00Z",
            "mostPrevalentMachineId": null,
            "leastPrevalentMachineId": null,
            "logonTypes": "Network",
            "logOnMachinesCount": 3,
            "isDomainAdmin": false,
            "isOnlyNetworkUser": null
        },
        {
            "id": "contoso\\user2",
            "firstSeen": "2018-08-02T00:00:00Z",
            "lastSeen": "2018-08-05T00:00:00Z",
            "mostPrevalentMachineId": null,
            "leastPrevalentMachineId": null,
            "logonTypes": "Network",
            "logOnMachinesCount": 3,
            "isDomainAdmin": false,
            "isOnlyNetworkUser": null
        }
    ]
}
```
