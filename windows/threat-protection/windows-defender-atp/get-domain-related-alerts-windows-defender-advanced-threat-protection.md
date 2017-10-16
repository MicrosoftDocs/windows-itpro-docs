---
title: Get domain related alerts API
description: Retrieves a collection of alerts related to a given domain address.
keywords: apis, graph api, supported apis, get, domain, related, alerts
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 10/17/2017
---

# Get domain related alerts
Retrieves a collection of alerts related to a given domain address.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/domains/{id}/alerts
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and domain and alert exists - 200 OK.
If domain or alert does not exist - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/domains/{id}/alerts
Content-type: application/json
```

Response

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
