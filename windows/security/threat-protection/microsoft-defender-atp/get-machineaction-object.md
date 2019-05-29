---
title: Get MachineAction object API
description: Use this API to create calls related to get machineaction object
keywords: apis, graph api, supported apis, machineaction object
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

# Get machineAction API

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Get action performed on a machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)

## HTTP request
```
GET https://api.securitycenter.windows.com/api/machineactions/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with a [Machine Action](machineaction.md) entity. If machine action entity with the specified id was not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/machineactions/2e9da30d-27f6-4208-81f2-9cd3d67893ba
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "id": "2e9da30d-27f6-4208-81f2-9cd3d67893ba",
    "type": "RunAntiVirusScan",
    "requestor": "Analyst@contoso.com",
    "requestorComment": "Check machine for viruses due to alert 3212",
    "status": "Succeeded",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2018-12-04T12:18:27.1293487Z",
    "lastUpdateTimeUtc": "2018-12-04T12:18:57.5511934Z",
	"relatedFileInfo": null
}


```
