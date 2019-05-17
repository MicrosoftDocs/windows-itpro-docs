---
title: Add or Remove Machine Tags API
description: Use this API to Add or Remove machine tags.
keywords: apis, graph api, supported apis, tags, machine tags
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

# Add or Remove Machine Tags API

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

This API adds or remove tag to a specific machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Manage security setting' (See [Create and manage roles](user-roles.md) for more information)
>- User needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/tags
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
Value |	String |	The tag name. **Required**.
Action	| Enum |	Add or Remove. Allowed values are: 'Add' or 'Remove'. **Required**.


## Response
If successful, this method returns 200 - Ok response code and the updated Machine in the response body.


## Example

**Request**

Here is an example of a request that adds machine tag.

[!include[Improve request performance](improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/tags
Content-type: application/json
{
  "Value" : "test Tag 2",
  "Action": "Add"
}

```
**Response**

Here is an example of the response.

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machine/$entity",
    "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "computerDnsName": "mymachine1.contoso.com",
    "firstSeen": "2018-08-02T14:55:03.7791856Z",
	"lastSeen": "2018-08-02T14:55:03.7791856Z",
    "osPlatform": "Windows10",
    "osVersion": "10.0.0.0",
    "lastIpAddress": "172.17.230.209",
    "lastExternalIpAddress": "167.220.196.71",
    "agentVersion": "10.5830.18209.1001",
    "osBuild": 18209,
    "healthStatus": "Active",
    "rbacGroupId": 140,
	"rbacGroupName": "The-A-Team",
    "riskScore": "Low",
    "aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
	"machineTags": [ "test tag 1", "test tag 2" ]
}

```

- To remove machine tag, set the Action to 'Remove' instead of 'Add' in the request body.