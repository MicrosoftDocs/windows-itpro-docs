---
title: Stop and quarantine file API
description: Use this API to create calls related to stopping and quarantining a file.
keywords: apis, graph api, supported apis, stop, quarantine, file
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

# Stop and quarantine file API (deprecated)

**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Stop execution of a file on a machine and ensure it’s not executed again on that machine.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
POST /testwdatppreview/machines/{id}/stopAndQuarantineFile
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
Sha1 |	String	 | Sha1 of the file to stop and quarantine on the machine. **Required**.

## Response
If successful, this method returns 201, Created response code and _FileMachineAction_ object in the response body.


## Example

**Request**

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/machines/fb9ab6be3965095a09c057be7c90f0a2/stopAndQuarantineFile
Content-type: application/json
{
  "Comment": "Stop and quarantine file on machine due to alert 32123",
  "Sha1": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9"
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
    "id": "6f1d364c-680c-499a-b30c-dd9265ad4c9d",
    "sha1": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9",
    "type": "StopAndQuarantineFile",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": " Stop and quarantine file on machine due to alert 32123",
    "status": "InProgress",
    "fileId": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2017-12-04T13:13:26.2106524Z",
    "lastUpdateDateTimeUtc": "2017-12-04T13:13:58.8098277Z",
    "fileInstances": [
        {
            "filePath": "C:\\Users\\ testUser \\Downloads\\elma.exe",
            "status": "InProgress"
        },
        {
            "filePath": "C:\\Users\\testUser\\AppData\\Local\\Packages\\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\\TempState\\Downloads\\elma (2).exe.xc9q785.partial",
            "status": "InProgress"
        },
    ]
 }


```
