---
title: Get machine by ID API
description: Retrieves a machine entity by ID.
keywords: apis, graph api, supported apis, get, machines, entity, id
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

# Get machine by ID
Retrieves a machine entity by ID.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/machines/{id}
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and machine exists - 200 OK.
If no machine found - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machines/{id}
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Machines/$entity",
    "id": "fadd8a46f4cc722a0391fdee82a7503b9591b3b9",
    "computerDnsName": "",
    "firstSeen": "2015-03-15T00:18:20.6588778Z",
    "osPlatform": "Windows10",
    "osVersion": "10.0.0.0",
…
}

```
