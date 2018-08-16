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
ms.date: 12/08/2017
---

# Get machine log on users API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Retrieves a collection of logged on users.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	User.Read.All |	'Read user profiles'


## HTTP request
```
GET /api/machines/{id}/logonusers
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machine and user exist - 200 OK with list of [user](user-windows-defender-advanced-threat-protection-new.md) entities in the body
If no machine found or no users found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

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
