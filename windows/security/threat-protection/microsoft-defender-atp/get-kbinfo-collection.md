---
title: Get KB collection API
description: Retrieves a collection of KB's.
keywords: apis, graph api, supported apis, get, kb
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: leonidzh
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 10/07/2018
---

# Get KB collection API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a collection of KB's and KB details.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/kbinfo
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json

## Request body
Empty

## Response
If successful - 200 OK.

## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/KbInfo
Content-type: application/json
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#KbInfo",
    "@odata.count": 271,
    "value":[
        {
            "id": "KB3097617 (10240.16549) Amd64",
            "release": "KB3097617 (10240.16549)",
            "publishingDate": "2015-10-16T21:00:00Z",
            "version": "10.0.10240.16549",
            "architecture": "Amd64"
        },
        …
}
```