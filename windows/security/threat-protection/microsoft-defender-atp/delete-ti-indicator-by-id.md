---
title: Delete Indicator API.
description: Deletes Indicator entity by ID.
keywords: apis, public api, supported apis, delete, ti indicator, entity, id
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

# Delete Indicator API

**Applies to:**  
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>[!Note]
> Currently this API is only supported for AppOnly context requests. (See [Get access with application context](exposed-apis-create-app-webapp.md) for more information)


- Deletes an Indicator entity by ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Get started](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ti.ReadWrite |	'Read and write TI Indicators'
Application |	Ti.ReadWrite.All |	'Read and write Indicators'


## HTTP request
```
Delete https://api.securitycenter.windows.com/api/indicators/{id}
```

[!include[Improve request performance](improve-request-performance.md)]


## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If Indicator exist and deleted successfully - 204 OK without content.
If Indicator with the specified id was not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

```
DELETE https://api.securitycenter.windows.com/api/indicators/220e7d15b0b3d7fac48f2bd61114db1022197f7f
```

**Response**

Here is an example of the response.


```
HTTP/1.1 204 NO CONTENT

```
