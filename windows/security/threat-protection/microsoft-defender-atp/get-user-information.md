---
title: Get user information API
description: Retrieve a User entity by key such as user name or domain.
keywords: apis, graph api, supported apis, get, user, user information
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

# Get user information API
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Retrieve a User entity by key (user name).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	User.Read.All |	'Read all user profiles'

## HTTP request
```
GET /api/users/{id}/
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and user exists - 200 OK with [user](user.md) entity in the body. If user does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/users/user1
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Users/$entity",
    "id": "user1",
    "firstSeen": "2018-08-02T00:00:00Z",
    "lastSeen": "2018-08-04T00:00:00Z",
    "mostPrevalentMachineId": null,
    "leastPrevalentMachineId": null,
    "logonTypes": "Network",
    "logOnMachinesCount": 3,
    "isDomainAdmin": false,
    "isOnlyNetworkUser": null
}
```
