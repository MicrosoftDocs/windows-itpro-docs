---
title: Get CVE-KB map API
description: Retrieves a map of CVE's to KB's.
keywords: apis, graph api, supported apis, get, cve, kb
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: leonidzh
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Get CVE-KB map API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a map of CVE's to KB's and CVE details.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/cvekbmap
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json

## Request body
Empty

## Response
If successful and map exists - 200 OK.

## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/CveKbMap
Content-type: application/json
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context":"https://graph.microsoft.com/testwdatppreview/$metadata#CveKbMap",
    "@odata.count": 4168,
    "value": [
        {
            "cveKbId": "CVE-2015-2482-3097617",
            "cveId": "CVE-2015-2482",
            "kbId":"3097617",
            "title": "Cumulative Security Update for Internet Explorer",
            "severity": "Critical"
        },
    …
}

```
