---
title: Stop and quarantine file API
description: Use this API to create calls related to stopping and quarantining a file.
keywords: apis, graph api, supported apis, stop, quarantine, file
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

# Stop and quarantine file
Stop execution of a file on a machine and ensure it’s not executed again on that machine.

## Permissions
User needs to have “secop” permissions.

## HTTP request
```
POST /testwdatppreview/machines/{id}/stopAndQuarantineFile
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
Comment |	String |	Comment to associate with the action. **Required**.
SHA1 |	String	 | SHA1 of the file to stop and quarantine on the machine. **Required**.

## Response
If successful, this method returns 201, Created response code and _FileMachineAction_ object in the response body.


## Example

Request

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/machines/fb9ab6be3965095a09c057be7c90f0a2/unrestrictCodeExecution 
Content-type: application/json
{
  "Comment": "Stop and quarantine file on machine due to alert 32123",
  “Sha1”: “7327b54fd718525cbca07dacde913b5ac3c85673”
}
```
Response

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```
HTTP/1.1 201 Created
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileMachineActions/$entity",
    "id": "ac19aae7-4146-4a13-a786-eb43d8557f7c",
    "type": "StopAndQuarantineFile",
    "status": "InProgress",
    "error": "Unknown"
}
```
