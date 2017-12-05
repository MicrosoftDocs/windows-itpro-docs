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
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Get user information 
Retrieve a User entity by key (user name or domain\user).

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/users/{id}/
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and user exists - 200 OK.
If user does not exist - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/users/{id}
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Users/$entity",
    "id": "",
    "accountSid": null,
    "accountName": "",
    "accountDomainName": "",
…
}
```
