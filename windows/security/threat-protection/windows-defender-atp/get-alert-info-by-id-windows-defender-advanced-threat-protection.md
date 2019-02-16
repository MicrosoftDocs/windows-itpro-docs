---
title: Get alert information by ID API
description: Retrieves an alert by its ID.
keywords: apis, graph api, supported apis, get, alert, information, id
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

# Get alert information by ID API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


Retrieves an alert by its ID.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/alerts/{id}
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and alert exists - 200 OK.
If alert not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/alerts/{id}
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Alerts/$entity",
    "id": "636396039176847743_89954699",
    "severity": "Informational",
    "status": "New",
    "description": "Readily available tools, such as commercial spyware, monitoring software, and hacking programs",
    "recommendedAction": "Collect artifacts and determine scope.",
    "alertCreationTime": "2017-08-29T11:45:17.5754165Z",
…
}

```
