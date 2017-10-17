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
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Is domain seen in org
Answers whether a domain was seen in the organization. 

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/domains/{id}/
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and domain exists - 200 OK.
If domain does not exist - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/domains/{id}
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Domains/$entity",
    "host": "example.com"
}
```
