---
title: Initiate AutoIR Investigation API
description: Use this API to create calls related to initiating an investigation on a machine.
keywords: apis, graph api, supported apis, initiate AutoIR investigation
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
ms.date: 12/08/2017
---

# Initiate AutoIR Investigation API
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Initiate AutoIR investigation on a machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.ReadWrite.All	 |	'Read and write all alerts'
Delegated (work or school account) |	Alert.ReadWrite |	'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Alerts Investigation' (See [Create and manage roles](user-roles-windows-defender-advanced-threat-protection.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups-windows-defender-advanced-threat-protection.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/InitiateAutoIRInvestigation
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	String |	Comment to associate with the action. **Required**.

## Response
If successful, this method returns 200 OK with investigation id in the body. If machine was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
POST https://api.securitycenter.windows.com/api/machines/fb9ab6be3965095a09c057be7c90f0a2/InitiateAutoIRInvestigation
Content-type: application/json
{
  "Comment": "Initiate AutoIR investigation on machine f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f"
}
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Edm.Int64",
    "value": 52
}

```
