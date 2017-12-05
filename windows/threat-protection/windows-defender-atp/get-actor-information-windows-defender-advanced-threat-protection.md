---
title: Get actor information API
description: Retrieves an actor information report. 
keywords: apis, graph api, supported apis, get, actor, information
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

# Get actor information 
Retrieves an actor information report. 

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/actor/{id}/
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and actor exists - 200 OK. 
If actor does not exist - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/actors/zinc
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Actors/$entity",
    "id": "zinc",
    "linkToReport": "link-to-pdf"
}
```
