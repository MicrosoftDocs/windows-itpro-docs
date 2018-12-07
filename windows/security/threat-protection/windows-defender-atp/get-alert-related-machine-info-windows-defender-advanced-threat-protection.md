---
title: Get alert related machine information 
description: Retrieves all machines related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related machine
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

# Get alert related machine information API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


Retrieves all machines related to a specific alert.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/alerts/{id}/machine
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and alert and machine exist - 200 OK.
If alert not found or machine not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}/machine
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Machines/$entity",
    "id": "207575116e44741d2b22b6a81429b3ca4fd34608",
    "computerDnsName": "machine1-corp.contoso.com",
    "firstSeen": "2015-12-01T11:31:53.7016691Z",
…
}
```
