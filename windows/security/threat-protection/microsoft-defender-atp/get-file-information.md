---
title: Get file information API
description: Retrieves a file by identifier Sha1, Sha256, or MD5.
keywords: apis, graph api, supported apis, get, file, information, sha1, sha256, md5
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

# Get file information API
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves a file by identifier Sha1, Sha256, or MD5.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	File.Read.All |	'Read all file profiles'
Delegated (work or school account) | File.Read.All |	'Read all file profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request
```
GET /api/files/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and file exists - 200 OK with the [file](files.md) entity in the body. If file does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/files/6532ec91d513acc05f43ee0aa3002599729fd3e1
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Files/$entity",
    "sha1": "6532ec91d513acc05f43ee0aa3002599729fd3e1",
    "sha256": "d4447dffdbb2889b4b4e746b0bc882df1b854101614b0aa83953ef3cb66904cf",
    "md5": "7f05a371d2beffb3784fd2199f81d730",
    "globalPrevalence": 7329,
    "globalFirstObserved": "2018-04-08T05:50:29.4459725Z",
    "globalLastObserved": "2018-08-07T23:35:11.1361328Z",
    "windowsDefenderAVThreatName": null,
    "size": 391680,
    "fileType": "PortableExecutable",
    "isPeFile": true,
    "filePublisher": null,
    "fileProductName": null,
    "signer": null,
    "issuer": null,
    "signerHash": null,
    "isValidCertificate": null
}
```
