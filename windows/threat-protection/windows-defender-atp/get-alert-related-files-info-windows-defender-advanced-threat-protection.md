---
title: Get alert related files information 
description: Retrieves all files related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related files
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

# Get alert related files information 
Retrieves all files related to a specific alert.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/alerts/{id}/files
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and alert and files exist - 200 OK.
If alert not found or files not found - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}/files
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
"@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Files",
    "value": [
        {
            "sha1": "121c7060dada38275d7082a4b9dc62641b255c36",
            "sha256": "c815e0abb8273ba4ea6ca92d430d9e4d065dbb52877a9ce6a8371e5881bd7a94",
            "md5": "776c970dfd92397b3c7d74401c85cd40",
            "globalPrevalence": null,
            "globalFirstObserved": null,
…
}

```
