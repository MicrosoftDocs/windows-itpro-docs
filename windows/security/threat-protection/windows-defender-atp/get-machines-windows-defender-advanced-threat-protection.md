---
title: Get machines API
description: Retrieves a collection of recently seen machines.
keywords: apis, graph api, supported apis, get, machines
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

# Get machines API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


Retrieves a collection of recently seen machines.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/machines
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and machines exists - 200 OK.
If no recent machines - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machines
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Machines",
    "@odata.count": 5000,
    "@odata.nextLink": "https://graph.microsoft.com/testwdatppreview/machines?$skip=5000",
    "value": [
        {
            "id": "fadd8a46f4cc722a0391fdee82a7503b9591b3b9",
            "computerDnsName": "",
            "firstSeen": "2015-03-15T00:18:20.6588778Z",
            "osPlatform": "Windows10",
            "osVersion": "10.0.0.0",
…
}

```
