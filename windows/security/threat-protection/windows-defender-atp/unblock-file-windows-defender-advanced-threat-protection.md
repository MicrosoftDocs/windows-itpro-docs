---
title: Unblock file API
description: Use this API to create calls related to allowing a file to be executed in the organization
keywords: apis, graph api, supported apis, unblock file
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

# Unblock file API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

Allow a file to be executed in the organization, using Windows Defender Antivirus.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
POST /testwdatppreview/files/{sha1}/unblock
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
Comment |	String | Comment to associate with the action. **Required**.


## Response
If successful, this method returns 200, Ok response code with empty body, which indicates that block message was sent to Windows Defender deployed in the organization.


## Example

**Request**

Here is an example of the request.

```
POST https://graph.microsoft.com/testwdatppreview/files/7327b54fd718525cbca07dacde913b5ac3c85673/unblock 
Content-type: application/json
{
  "Comment": "Unblock file since alert 1234 was investigated and discovered to be false alarm",
}
```

**Response**

Here is an example of the response.


```
HTTP/1.1 201 Created
Content-type: application/json
{
    "fileIdentifier": "7327b54fd718525cbca07dacde913b5ac3c85673",
     "fileIdentifierType": "Sha1",
     "actionType": "UnBlock",
     "fileStatus": "Blocked",
      "creationDateTimeUtc": "2017-12-04T13:06:23.4502191Z",
      "requestor": "Analyst@contoso.com ",
      "requestorComment": "test",
      "cancellationDateTimeUtc": null,
      "cancellationRequestor": null,
      "cancellationComment": null,
      "lastUpdateDateTimeUtc": "2017-12-04T13:06:23.4502191Z"
}

```
