---
title: Find machine information by internal IP API
description: Use this API to create calls related to finding a machine entry around a specific timestamp by internal IP.
keywords: ip, apis, graph api, supported apis, find machine, machine information
search.product: eADQiWindows 10XVcnh
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
---

# Find machine information by internal IP API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Find a machine by internal IP.

>[!NOTE]
>The timestamp must be within the last 30 days.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application | Machine.Read.All | 'Read all machine profiles'
Application | Machine.ReadWrite.All | 'Read and write all machine information'

## HTTP request
```
GET /api/machines/find(timestamp={time},key={IP})
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machine exists - 200 OK.
If no machine found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machines/find(timestamp=2018-06-19T10:00:00Z,key='10.166.93.61')
Content-type: application/json
```

**Response**

Here is an example of the response.

The response will return a list of all machines that reported this IP address within sixteen minutes prior and after the timestamp. 

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
