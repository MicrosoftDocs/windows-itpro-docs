---
title: Get file information API
description: Learn how to use the Get file information API to get a file by Sha1, Sha256, or MD5 identifier in Microsoft Defender Advanced Threat Protection.
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

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Retrieves a [File](files.md) by identifier Sha1, or Sha256


## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


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

[!include[Improve request performance](../../includes/improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/files/4388963aaa83afe2042a46a3c017ad50bdcdafb3
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
	"@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Files/$entity",
	"sha1": "4388963aaa83afe2042a46a3c017ad50bdcdafb3",
	"sha256": "413c58c8267d2c8648d8f6384bacc2ae9c929b2b96578b6860b5087cd1bd6462",
	"globalPrevalence": 180022,
	"globalFirstObserved": "2017-09-19T03:51:27.6785431Z",
	"globalLastObserved": "2020-01-06T03:59:21.3229314Z",
	"size": 22139496,
	"fileType": "APP",
	"isPeFile": true,
	"filePublisher": "CHENGDU YIWO Tech Development Co., Ltd.",
	"fileProductName": "EaseUS MobiSaver for Android",
	"signer": "CHENGDU YIWO Tech Development Co., Ltd.",
	"issuer": "VeriSign Class 3 Code Signing 2010 CA",
	"signerHash": "6c3245d4a9bc0244d99dff27af259cbbae2e2d16",
	"isValidCertificate": false,
	"determinationType": "Pua",
	"determinationValue": "PUA:Win32/FusionCore"
}
```
