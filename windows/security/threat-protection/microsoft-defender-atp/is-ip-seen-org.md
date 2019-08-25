---
title: Is IP seen in org API
description: Answers whether an IP was seen in the organization.
keywords: apis, graph api, supported apis, is, ip, seen, org, organization
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

# Was IP seen in org (Deprecated)

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Answers whether an IP was seen in the organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ip.Read.All |	'Read IP address profiles'
Delegated (work or school account) | Ip.Read.All |	'Read IP address profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request
```
GET /api/ips/{ip}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and IP exists - 200 OK. If IP do not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://api.securitycenter.windows.com/api/ips/10.209.67.177
```

**Response**

Here is an example of the response.

[!include[Improve request performance](improve-request-performance.md)]


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Ips/$entity",
    "id": "10.209.67.177"
}
```
