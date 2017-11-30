---
title: Request sample API
description: Use this API to create calls related to requesting a sample from a machine.
keywords: apis, graph api, supported apis, request sample
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

# Request sample
Request sample of a file from a specific machine. File will be collected from the machine and uploaded to a secure storage. 

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
POST /testwdatppreview/machines/{id}/requestSample
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
Sha1 |	String	 | Sha1 of the file to upload to the secure storage. **Required**.

## Response
If successful, this method returns 201, Created response code and *FileMachineAction*  object in the response body.


## Example

Request

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/machines/fb9ab6be3965095a09c057be7c90f0a2/requestSample 
Content-type: application/json
{
  “Sha1”: “7327b54fd718525cbca07dacde913b5ac3c85673”
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
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileMachineActions/$entity",
    "id": "ac19aae7-4146-4a13-a786-eb43d8557f7c",
    "type": "RequestSample",
    "status": "InProgress",
    "error": "Unknown"
}
```
