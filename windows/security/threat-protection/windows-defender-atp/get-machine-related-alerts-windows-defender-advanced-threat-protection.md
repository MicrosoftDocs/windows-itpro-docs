---
title: Get machine related alerts API
description: Retrieves a collection of alerts related to a given machine ID.
keywords: apis, graph api, supported apis, get, machines, related, alerts
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

# Get machine related alerts  API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Retrieves a collection of alerts related to a given machine ID.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/machines/{id}/alerts
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and machine and alert exists - 200 OK.
If no machine or no alerts found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machines/{id}/alerts
Content-type: application/json
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Alerts",
    "@odata.count": 1,
    "value": [
        {
            "id": "636396066728379047_-395412459",
            "severity": "Medium",
            "status": "New",
            "description": "A reverse shell created from PowerShell was detected. A reverse shell allows an attacker to access the compromised machine without authenticating.",
…
}
```
