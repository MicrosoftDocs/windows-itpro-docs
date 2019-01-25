---
title: Get file related alerts API
description: Retrieves a collection of alerts related to a given file hash.
keywords: apis, graph api, supported apis, get, file, hash
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

# Get file related alerts API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Retrieves a collection of alerts related to a given file hash.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/files/{id}/alerts
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and file and alert exists - 200 OK.
If file or alerts do not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/files/{id}/alerts
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{    
"@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Alerts",
    "@odata.count": 9,
    "value": [
        {
            "id": "636396023170943366_-36088267",
            "severity": "Medium",
            "status": "New",
            "description": "Built-in Microsoft command-line utility Regsvr32.exe executes a suspicious script that leads to malicious actions. The commands trigger additional downloads and execution of uncommon executable (PE) files or scripts. There are rare cases where this is tied to legitimate behavior.",
            "recommendedAction": "Update AV signatures and run a full scan.",
…
}
```
