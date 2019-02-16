---
title: Get FileMachineActions collection API
description: Use this API to create calls related to get filemachineactions collection
keywords: apis, graph api, supported apis, filemachineactions collection
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

# Get FileMachineActions collection API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Get collection of file and machine actions. Get FileMachineActions collection API supports OData V4 queries.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
GET /testwdatppreview/filemachineactions
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with a collection of FileMachineAction objects since the Retention policy time of the organization.


## Example 1

**Request**

Here is an example of the request on an organization that has three FileMachineActions.

```
GET https://graph.microsoft.com/testwdatppreview/filemachineactions
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileActions",
    "value": [
        {
            "fileIdentifier": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9",
            "fileIdentifierType": "Sha1",
            "actionType": "Block",
            "fileStatus": "Blocked",
            "creationDateTimeUtc": "2017-12-04T13:06:23.4502191Z",
            "requestor": "Analyst@ contoso.com ",
            "requestorComment": "test",
            "cancellationDateTimeUtc": null,
            "cancellationRequestor": null,
            "cancellationComment": null,
            "lastUpdateDateTimeUtc": "2017-12-04T13:06:23.4502191Z"
        },
        {
            "fileIdentifier": "df708f0107c7cc75ba2e5aaadc88b8bcfa01071d",
            "fileIdentifierType": "Sha1",
            "actionType": "Block",
            "fileStatus": "Blocked",
            "creationDateTimeUtc": "2017-11-05T11:16:19.9209438Z",
            "requestor": "Analyst@contoso.com ",
            "requestorComment": "1316",
            "cancellationDateTimeUtc": null,
            "cancellationRequestor": null,
            "cancellationComment": null,
            "lastUpdateDateTimeUtc": "2017-11-05T11:16:19.9209438Z"
        },
        {
            "fileIdentifier": "f5bc0981641c8a1fb3ef03e4bf574d8adf7134cf",
            "fileIdentifierType": "Sha1",
            "actionType": "Block",
            "fileStatus": "Blocked",
            "creationDateTimeUtc": "2017-11-05T10:57:02.2430564Z",
            "requestor": "Analyst@ contoso.com ",
            "requestorComment": "test 1256 2017.11.05",
            "cancellationDateTimeUtc": null,
            "cancellationRequestor": null,
            "cancellationComment": null,
            "lastUpdateDateTimeUtc": "2017-11-05T10:57:02.2430564Z"
        }
    ]
}


```

##Example 2

**Request**

Here is an example of a request that filters the FileMachineActions by machine ID and shows the latest two FileMachineActions.

```
GET https://graph.microsoft.com/testwdatppreview/filemachineactions?$filter=machineId eq 'f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f'&$top=2
```

**Response** 

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#FileMachineActions",
    "value": [
        {
            "id": "6f1d364c-680c-499a-b30c-dd9265ad4c9d",
            "sha1": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9",
            "type": "StopAndQuarantineFile",
            "requestor": "Analyst@ contoso.com ",
            "requestorComment": "test",
            "status": "Succeeded",
            "fileId": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T13:13:26.2106524Z",
            "lastUpdateDateTimeUtc": "2017-12-04T13:15:07.1639963Z",
            "fileInstances": [
                {
                    "filePath": "C:\\Users\\ testUser \\Downloads\\elma.exe",
                    "status": "Succeeded"
                },
                {
                    "filePath": "C:\\Users\\ testUser \\AppData\\Local\\Packages\\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\\TempState\\Downloads\\elma (2).exe.xc9q785.partial",
                    "status": "Succeeded"
                },
            ]
        },
        {
            "id": "c083f601-012f-4955-b4cc-fab50fb69d79",
            "sha1": "8d25682b3a82af25b42dc90291c35ff3293daa68",
            "type": "RequestSample",
            "requestor": "Analyst@ contoso.com ",
            "requestorComment": "test",
            "status": "Succeeded",
            "fileId": "8d25682b3a82af25b42dc90291c35ff3293daa68",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T13:39:24.9399004Z",
            "lastUpdateDateTimeUtc": "2017-12-04T13:40:01.1094743Z",
            "fileInstances": [
                {
                    "filePath": "C:\\Windows\\System32\\conhost.exe",
                    "status": "Succeeded"
                }
            ]
        }
    ]
}
```