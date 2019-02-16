---
title: Get alert related files information 
description: Retrieves all files related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related files
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 12/08/2017
---

# Get alert related files information API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


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

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}/files
Content-type: application/json
```

**Response**

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
