---
title: Get machine log on users API
description: Learn how to use the Get machine log on users API to retrieve a collection of logged on users on a device in Microsoft Defender Advanced Threat Protection.
keywords: apis, graph api, supported apis, get, device, log on, users
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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Retrieves a collection of logged on users on a specific device.


## Limitations
1. You can query on alerts last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	User.Read.All |	'Read user profiles'
Delegated (work or school account) | User.Read.All | 'Read user profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- Response will include users only if the device is visible to the user, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```http
GET /api/machines/{id}/logonusers
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and device exist - 200 OK with list of [user](user.md) entities in the body. If device was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](../../includes/improve-request-performance.md)]

```http
GET https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/logonusers
```

**Response**

Here is an example of the response.


```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Users",
    "value": [
        {
            "id": "contoso\\user1",
            "accountName": "user1",
            "accountDomain": "contoso",
            "accountSid": "S-1-5-21-72051607-1745760036-109187956-93922",
            "firstSeen": "2019-12-18T08:02:54Z",
            "lastSeen": "2020-01-06T08:01:48Z",
            "mostPrevalentMachineId": "111153d0c675eaa415b8e5f383c6388bff446c62",
            "leastPrevalentMachineId": "111153d0c675eaa415b8e5f383c6388bff446c62",
            "logonTypes": "Interactive",
            "logOnMachinesCount": 8,
            "isDomainAdmin": true,
            "isOnlyNetworkUser": false
        },
		...
    ]
}
```
