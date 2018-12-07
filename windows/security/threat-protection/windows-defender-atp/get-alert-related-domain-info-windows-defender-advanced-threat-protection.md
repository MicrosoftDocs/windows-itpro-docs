---
title: Get alert related domain information 
description: Retrieves all domains related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related domain
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

# Get alert related domain information API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)


[!include[Deprecated information](deprecate.md)]



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

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}/domains
Content-type: application/json
```

**Response**

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
