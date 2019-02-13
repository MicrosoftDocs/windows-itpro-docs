---
title: Get file information API
description: Retrieves a file by identifier Sha1, Sha256, or MD5.
keywords: apis, graph api, supported apis, get, file, information, sha1, sha256, md5
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

# Get file information API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


Retrieves a file by identifier Sha1, Sha256, or MD5.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/files/{id}/
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and file exists - 200 OK.
If file does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/files/{id}
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Files/$entity",
    "sha1": "adae3732709d2178c8895c9be39c445b5e76d587",
    "sha256": "34fcb083cd01b1bd89fc467fd3c2cd292de92f915a5cb43a36edaed39ce2689a",
    "md5": "d387a06cd4bf5fcc1b50c3882f41a44e",
    "globalPrevalence": 40790196,
…
}
```
