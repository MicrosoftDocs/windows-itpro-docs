---
title: Get alert related files information 
description: Retrieves all files related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related files
search.product: eADQiWindows 10XVcnh
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
---

# Get alert related files information API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves all files related to a specific alert.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type | Permission | Permission display name
:---|:---|:---
Application | File.Read.All | 'Read file profiles'
Delegated (work or school account) | File.Read.All | 'Read file profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine associated with the alert, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/alerts/{id}/files
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body
Empty

## Response
If successful and alert and files exist - 200 OK. If alert not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/alerts/636688558380765161_2136280442/files
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Files",
    "value": [
        {
            "sha1": "654f19c41d9662cf86be21bf0af5a88c38c56a9d",
            "sha256": "2f905feec2798cee6f63da2c26758d86bfeaab954c01e20ac7085bf55fedde87",
            "md5": "82849dc81d94056224445ea73dc6153a",
            "globalPrevalence": 33,
            "globalFirstObserved": "2018-07-17T18:17:27.5909748Z",
            "globalLastObserved": "2018-08-06T16:07:12.9414137Z",
            "windowsDefenderAVThreatName": null,
            "size": 801112,
            "fileType": "PortableExecutable",
            "isPeFile": true,
            "filePublisher": null,
            "fileProductName": null,
            "signer": "Microsoft Windows",
            "issuer": "Microsoft Development PCA 2014",
            "signerHash": "9e284231a4d1c53fc8d4492b09f65116bf97447f",
            "isValidCertificate": true
        }
    ]
}
```
