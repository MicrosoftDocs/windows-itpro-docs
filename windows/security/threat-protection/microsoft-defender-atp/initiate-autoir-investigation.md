---
title: Initiate machine investigation API
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
---

# Initiate machine investigation API (Preview)
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> [!IMPORTANT]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

Initiate AutoIR investigation on a machine.

>[!Note]
> This page focuses on performing an automated investigation on a machine. See [Automated Investigation](automated-investigations.md) for more information.

## Limitations
1. The number of executions is limited (up to 5 calls per hour).
2. For Automated Investigation limitations, see [Automated Investigation](automated-investigations.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.ReadWrite.All	 |	'Read and write all alerts'
Delegated (work or school account) |	Alert.ReadWrite |	'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Alerts Investigation' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/InitiateInvestigation
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
If successful, this method returns 200 OK response code with object that holds the investigation ID in the "value" parameter. If machine was not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/machines/fb9ab6be3965095a09c057be7c90f0a2/InitiateInvestigation
Content-type: application/json
{
  "Comment": "Initiate an investigation on machine fb9ab6be3965095a09c057be7c90f0a2"
}
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Edm.Int64",
    "value": 5146
}

```
