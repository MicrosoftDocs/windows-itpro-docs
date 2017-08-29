---
title: Unisolate machine API
description: Use this API to create calls related to removing a machine from isolation.
keywords: apis, graph api, supported apis, remove machine from isolation
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

# Unisolate machine
Undo isolation of a machine.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
POST /testwdatppreview/machines/{id}/unisolate
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.
Content-Type	| application/json

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	String |	Comment to associate with the action. **Required**.

## Response
If successful, this method returns 201, Created response code and _MachineAction_ object in the response body.


## Example

Request

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/machines/fb9ab6be3965095a09c057be7c90f0a2/unisolate 
Content-type: application/json
{
  "Comment": "Unisolate machine since it was clean and validated"
}

```
Response

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#MachineActions/$entity",
    "id": "ac19aae7-4146-4a13-a786-eb43d8557f7c",
    "type": "Unisolate",
    "status": "InProgress",
    "error": "Unknown"
}

```
