---
title: Is domain seen in org API
description: Use this API to create calls related to checking whether a domain was seen in the organization.
keywords: apis, graph api, supported apis, domain, domain seen
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

# Was domain seen in org

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Answers whether a domain was seen in the organization. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Url.Read.All |	'Read URLs'
Delegated (work or school account) | URL.Read.All |	'Read URLs'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request
```
GET /api/domains/{domain}
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and domain exists - 200 OK. If domain does not exist - 404 Not Found.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/domains/example.com
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Domains/$entity",
    "host": "example.com"
}
```
