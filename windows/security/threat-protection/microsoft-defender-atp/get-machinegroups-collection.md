---
title: Get RBAC machine groups collection API
description: Retrieves a collection of RBAC machine groups.
keywords: apis, graph api, supported apis, get, RBAC, group
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
ms.date: 10/07/2018
---

# Get KB collection API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a collection of RBAC machine groups.

## Permissions
User needs read permissions.

## HTTP request
```
GET /testwdatppreview/machinegroups
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content type | application/json

## Request body
Empty

## Response
If successful - 200 OK.

## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machinegroups
Content-type: application/json
```

**Response**

Here is an example of the response.
Field id contains machine group **id** and equal to field **rbacGroupId** in machines info. 
Field **ungrouped** is true only for one group for all machines that have not been assigned to any group. This group as usual has name "UnassignedGroup".

```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context":"https://graph.microsoft.com/testwdatppreview/$metadata#MachineGroups",
    "@odata.count":7,
    "value":[
        {
            "id":86,
            "name":"UnassignedGroup",
            "description":"",
            "ungrouped":true},
        …
}
```