---
title: Find machine information by interal IP API
description: Use this API to create calls related to finding a machine entry around a specific timestamp by FQDN or interal IP.
keywords: apis, graph api, supported apis, find machine, machine information, IP
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

# Find machine information by interal IP 
Find a machine entity around a specific timestamp by FQDN or internal IP.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/machines/find(timestamp={time},key={IP/FQDN})
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json


## Request body
Empty

## Response
If successful and machine exists - 200 OK.
If no machine found - 404 Not Found.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machines/find(timestamp={time},key={IP/FQDN})
Content-type: application/json
```

Response

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#Machines",
    "value": [
        {
            "id": "04c99d46599f078f1c3da3783cf5b95f01ac61bb",
            "computerDnsName": "",
            "firstSeen": "2017-07-06T01:25:04.9480498Z",
            "osPlatform": "Windows10",
…
}
```
