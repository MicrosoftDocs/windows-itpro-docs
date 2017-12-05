---
title: Get alert related domain information 
description: Retrieves all domains related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related domain
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

# Get alert related domain information 
Retrieves all domains related to a specific alert.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/alerts/{id}/domains
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and alert and domain exist - 200 OK.
If alert not found or domain not found - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}/domains
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Domains",
    "value": [
        {
            "host": "www.example.com"
        }
    ]
}

```
