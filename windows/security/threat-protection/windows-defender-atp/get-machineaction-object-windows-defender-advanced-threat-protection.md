---
title: Get MachineAction object API
description: Use this API to create calls related to get machineaction object
keywords: apis, graph api, supported apis, machineaction object
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

# Get MachineAction object API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Get actions done on a machine.

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

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/machineactions/2e9da30d-27f6-4208-81f2-9cd3d67893ba
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#MachineActions/$entity",
    "id": "2e9da30d-27f6-4208-81f2-9cd3d67893ba",
    "type": "RunAntiVirusScan",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "Check machine for viruses due to alert 3212",
    "status": "Succeeded",
    "error": "None",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2017-12-04T12:18:27.1293487Z",
    "lastUpdateTimeUtc": "2017-12-04T12:18:57.5511934Z" 
}


```
