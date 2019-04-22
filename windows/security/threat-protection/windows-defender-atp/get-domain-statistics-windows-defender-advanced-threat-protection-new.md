---
title: Get domain statistics API
description: Retrieves the prevalence for the given domain.
keywords: apis, graph api, supported apis, get, domain, domain related machines
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

# Get domain statistics API
**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves the prevalence for the given domain.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	URL.Read.All |	'Read URLs'
Delegated (work or school account) | URL.Read.All |	'Read URLs'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles-windows-defender-advanced-threat-protection.md) for more information)

## HTTP request
```
GET /api/domains/{domain}/stats
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and domain exists - 200 OK, with statistics object in the response body. If domain does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
GET https://api.securitycenter.windows.com/api/domains/example.com/stats
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
	"@odata.context": "https://api.securitycenter.windows.com/api/$metadata#microsoft.windowsDefenderATP.api.InOrgDomainStats",
	"host": "example.com",
    "orgPrevalence": "4070",
    "orgFirstSeen": "2017-07-30T13:23:48Z",
    "orgLastSeen": "2017-08-29T13:09:05Z"
}
```
