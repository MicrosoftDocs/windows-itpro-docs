---
title: Collect investigation package API
description: Use this API to create calls related to the collecting an investigation package from a machine.
keywords: apis, graph api, supported apis, collect investigation package
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

# Collect investigation package API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Collect investigation package from a machine.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
POST /testwdatppreview/machines/{id}/collectInvestigationPackage
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. Required.
Content-Type	| application/json

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	Text |	Comment to associate with the action. **Required**.

## Response
If successful, this method returns 201, Created response code and _MachineAction_ object in the response body.


## Example

**Request**

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/machines/fb9ab6be3965095a09c057be7c90f0a2/collectInvestigationPackage
Content-type: application/json
{
  "Comment": "Collect forensics due to alert 1234"
}
```

**Response**

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#MachineActions/$entity",
    "id": "c9042f9b-8483-4526-87b5-35e4c2532223",
    "type": "CollectInvestigationPackage",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": " Collect forensics due to alert 1234",
    "status": "InProgress",
    "error": "None",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2017-12-04T12:09:24.1785079Z",
    "lastUpdateTimeUtc": "2017-12-04T12:09:24.1785079Z" 
}


```
