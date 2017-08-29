---
title: Get FileMachineAction object API
description: Use this API to create calls related to get machineaction object
keywords: apis, graph api, supported apis, filemachineaction object
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

# Get FileMachineAction object
Get MachineAction object.

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

Request

Here is an example of the request.

```
GET https://graph.microsoft.com/testwdatppreview/filemachineactions/7327b54fd718525cbca07dacde913b5ac3c85673
```

Response

Here is an example of the response.


```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileMachineActions/$entity",
    "id": " 7327b54fd718525cbca07dacde913b5ac3c85673",
    "sha1": "1163788484e3258ab9fcf692f7db7938f72ddfc2",
    "type": "StopAndQuarantineFile",
    "status": "Succeeded",
    "machineId": "970a58d5f61786bb7799dfdb5395ec364ffceace",
    "fileInstances": [
        {
            "filePath": "C:\\Users\\alex\\AppData\\Local\\AppFetch\\Temp\\3324bcb\\AppDownloader\\AnApp.appfetch.zip",
            "status": "Succeeded"
        }
    ]
}

```
