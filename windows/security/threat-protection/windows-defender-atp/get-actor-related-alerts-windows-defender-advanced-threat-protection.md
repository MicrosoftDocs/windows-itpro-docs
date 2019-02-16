---
title: Get actor related alerts API
description: Retrieves all alerts related to a given actor.
keywords: apis, graph api, supported apis, get, actor, related, alerts
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

# Get actor related alerts API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]


Retrieves all alerts related to a given actor.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/actor/{id}/alerts
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
If actor does not exist or no related alerts - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/actors/zinc/alerts
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Alerts",
    "@odata.count": 3,
    "value": [
        {
            "id": "636390437845006321_-1646055784",
            "severity": "Medium",
            "status": "Resolved",
            "description": "Malware associated with ZINC has been detected.",
            "recommendedAction": "1.\tContact your incident response team.",
            "alertCreationTime": "2017-08-23T00:09:43.9057955Z",
            "category": "Malware",
            "title": "Malware associated with the activity group ZINC was discovered",
…
}
```
