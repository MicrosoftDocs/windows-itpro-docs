---
title: Get domain statistics API
description: Retrieves the prevalence for the given domain.
keywords: apis, graph api, supported apis, get, domain, domain related machines
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

# Get domain statistics
Retrieves the prevalence for the given domain.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/domains/{id}/stats
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and domain exists - 200 OK.
If domain does not exist - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/domains/{id}/machines
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#microsoft.graph.InOrgDomainStats",
    "host": "example.com",
    "orgPrevalence": "4070",
    "orgFirstSeen": "2017-07-30T13:23:48Z",
    "orgLastSeen": "2017-08-29T13:09:05Z"
}
```
