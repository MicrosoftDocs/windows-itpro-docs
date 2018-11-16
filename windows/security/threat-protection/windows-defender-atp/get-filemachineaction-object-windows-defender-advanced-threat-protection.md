---
title: Get FileMachineAction object API
description: Use this API to create calls related to get machineaction object
keywords: apis, graph api, supported apis, filemachineaction object
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

# Get FileMachineAction object API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Gets file and machine actions.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
GET /testwdatppreview/filemachineactions/{id}
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with the *FileMachineAction* object.


## Example

**Request**

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/filemachineactions/3dc88ce3-dd0c-40f7-93fc-8bd14317aab6
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileMachineActions/$entity",
    "id": "3dc88ce3-dd0c-40f7-93fc-8bd14317aab6",
    "sha1": "8908b4441a2cd7285fe9c82917f69041cd467cf7",
    "type": "StopAndQuarantineFile",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "1104",
    "status": "Succeeded",
    "fileId": "8908b4441a2cd7285fe9c82917f69041cd467cf7",
    "machineId": "61a2d326d2190d048950406b54af23416118094a",
    "creationDateTimeUtc": "2017-09-06T08:04:06.1994034Z",
    "lastUpdateDateTimeUtc": "2017-09-06T08:05:46.9200942Z",
    "fileInstances": [
        {
            "filePath": "C:\\tools\\PE\\7f06a650-040b-4774-bb39-5264ea9e93fa.exe",
            "status": "Succeeded"
        }
    ]
}


```
