---
title: Get FileActions collection API
description: Use this API to create calls related to get fileactions collection
keywords: apis, graph api, supported apis, get, file, information, fileactions collection
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

# Get FileActions collection API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Gets collection of actions done on files. Get FileActions collection API supports OData V4 queries.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
GET /testwdatppreview/fileactions
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with a collection of FileAction objects.

>[!NOTE]
>Although Block and Unblock actions are under FileAction category, this API only returns the Block actions on files that are currently blocked. For example, a file that is blocked and then unblocked will not be seen on this API.  



## Example

**Request**

Here is an example of the request on an organization that has three FileActions.

```
GET https://graph.microsoft.com/testwdatppreview/fileactions
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
            "requestor": "Analyst@contoso.com ",
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
            "requestor": "Analyst@ contoso.com ",
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
