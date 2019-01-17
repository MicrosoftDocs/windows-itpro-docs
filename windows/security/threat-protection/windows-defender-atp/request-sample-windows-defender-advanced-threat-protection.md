---
title: Request sample API
description: Use this API to create calls related to requesting a sample from a machine.
keywords: apis, graph api, supported apis, request sample
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# Request sample API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

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

**Request**

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/machines/fb9ab6be3965095a09c057be7c90f0a2/requestSample
Content-type: application/json
{
  "Comment": "Request Sample on machine due to alert 32123",
  "Sha1": "8d25682b3a82af25b42dc90291c35ff3293daa68"
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
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileMachineActions/$entity",
    "id": "c083f601-012f-4955-b4cc-fab50fb69d79",
    "sha1": "8d25682b3a82af25b42dc90291c35ff3293daa68",
    "type": "RequestSample",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "test",
    "status": "InProgress",
    "fileId": "8d25682b3a82af25b42dc90291c35ff3293daa68",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2017-12-04T13:39:24.9399004Z",
    "lastUpdateDateTimeUtc": "2017-12-04T13:39:24.9399004Z",
    "fileInstances": [
        {
            "filePath": "C:\\Windows\\System32\\conhost.exe",
            "status": "InProgress"
        }
    ] 
}

```
