---
title: Get MachineAction object API
description: Use this API to create calls related to get machineaction object
keywords: apis, graph api, supported apis, machineaction object
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 09/01.2017
---

# Get MachineAction object
Get MachineAction object

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
GET /testwdatppreview/machineactions/{id}
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with the *MachineAction* object.


## Example

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machineactions/7327b54fd718525cbca07dacde913b5ac3c85673
```

Response

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#MachineActions/$entity",
    "id": "ac19aae7-4146-4a13-a786-eb43d8557f7c",
    "type": "UnrestrictExecution",
    "status": "Success",
    "error": "Unknown"
}

```
