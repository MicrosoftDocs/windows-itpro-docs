---
title: Find machines by internal IP API
description: Find machines seen with the requested internal IP in the time range of 15 minutes prior and after a given timestamp 
keywords: apis, graph api, supported apis, get, machine, IP, find, find machine, by ip, ip
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

# Find machines by internal IP API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Find machines seen with the requested internal IP in the time range of 15 minutes prior and after a given timestamp.

The given timestamp must be in the past 30 days.

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
>- Response will include only machines,that the user have access to, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/machines/findbyip(ip='{IP}',timestamp={TimeStamp})
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body
Empty

## Response
If successful and machines were found - 200 OK with list of the machines in the response body.
If no machine found  - 404 Not Found.
If the timestamp is not in the past 30 days - 400 Bad Request.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/machines/findbyip(ip='10.248.240.38',timestamp=2018-09-22T08:44:05Z)
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
			"lastSeen": "2018-09-22T08:55:03.7791856Z",
			"osPlatform": "Windows10",
			"osVersion": "10.0.0.0",
			"lastIpAddress": "10.248.240.38",
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
    ]
}
```
