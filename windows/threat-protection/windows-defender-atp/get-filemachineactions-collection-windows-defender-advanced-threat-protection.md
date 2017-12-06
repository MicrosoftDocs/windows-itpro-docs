---
title: Get FileMachineActions collection API
description: Use this API to create calls related to get filemachineactions collection
keywords: apis, graph api, supported apis, filemachineactions collection
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 12/07/2017
---

# Get FileMachineActions collection
Get FileMachineActions collection API supports OData V4 queries.

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

Request

Here is an example of the request on an organization that has 3 FileMachineActions.

```
GET https://graph.microsoft.com/testwdatppreview/filemachineactions
```

Response

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
