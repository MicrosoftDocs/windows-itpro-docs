---
title: Get alert related user information 
description: Retrieves the user associated to a specific alert.
keywords: apis, graph api, supported apis, get, alert, information, related, user
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# Get alert related user information API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Retrieves the user associated to a specific alert.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/alerts/{id}/user
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and alert and a user exists - 200 OK.
If alert not found or user not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}/user
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Users/$entity",
    "id": "UserPII_487a7e2aa8b0a24e429b0be88e5cf5e91be1a8f4\\DomainPII_aca88e6ed7dc68a69c35019ca947745f3858c868",
    "accountSid": null,
    "accountName": "DomainPII_aca88e6ed7dc68a69c35019ca947745f3858c868",
    "accountDomainName": "UserPII_487a7e2aa8b0a24e429b0be88e5cf5e91be1a8f4",
…
}

```
