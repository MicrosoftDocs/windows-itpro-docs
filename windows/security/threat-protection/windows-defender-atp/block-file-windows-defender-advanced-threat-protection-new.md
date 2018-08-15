---
title: Block file API
description: Use this API to blocking files from being running in the organization.
keywords: apis, graph api, supported apis, block file
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# Block file API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Prevent a file from being executed in the organization using Windows Defender Antivirus.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Threat Intelligence read write'

## HTTP request
```
POST /api/files/{sha1}/block
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


## Response
If successful, this method returns 200, Ok response code with empty body, which indicates that block message was sent to Windows Defender deployed in the organization.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
POST https://api.securitycenter.windows.com/api/files/7327b54fd718525cbca07dacde913b5ac3c85673/block 
Content-type: application/json
{
  "Comment": "Block file due to alert 32123"
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
     "actionType": "Block",
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
