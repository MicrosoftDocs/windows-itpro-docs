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
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Is IP seen in org
Answers whether an IP was seen in the organization.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/ips/{id}/
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and IP exists - 200 OK.
If IP do not exist - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/ips/{id}
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Ips/$entity",
    "id": "192.168.1.1"
}
```
