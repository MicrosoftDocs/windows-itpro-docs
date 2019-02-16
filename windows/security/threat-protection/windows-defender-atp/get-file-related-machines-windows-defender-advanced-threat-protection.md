---
title: Get file related machines API
description: Retrieves a collection of machines related to a given file hash.
keywords: apis, graph api, supported apis, get, machines, hash
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

# Get file related machines API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Retrieves a collection of machines related to a given file hash.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/files/{id}/machines
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and file and machines exists - 200 OK.
If file or machines do not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/files/{id}/machines
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{    
"@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Machines",
    "value": [
        {
            "id": "0a3250e0693a109f1affc9217be9459028aa8426",
            "computerDnsName": "ComputerPII_4aa5f8f4509b90675a13183742f1b1ad67cf62b0.DomainPII_23208d0fe863968308c0c8e67dc0004bd1257631",
            "firstSeen": "2017-07-05T08:21:00.0572159Z",
            "osPlatform": "Windows10",
…
}
```
