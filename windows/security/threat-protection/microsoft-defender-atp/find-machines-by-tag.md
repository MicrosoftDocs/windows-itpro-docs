---
title: Find devices by tag API
description: Find all devices that contain specifc tag 
keywords: apis, supported apis, get, device, find, find device, by tag, tag
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

# Find devices by tag API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Find [Machines](machine.md) by [Tag](machine-tags.md).
<br>```startswith``` query is supported. 

## Limitations
1. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
> - Response will include only devices that the user have access to based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)
> - The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
> - Response will include only devices that the user have access to based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/machines/findbytag?tag={tag}&useStartsWithFilter={true/false}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request URI parameters

Name | Type | Description
:---|:---|:---
tag | String | The tag name. **Required**.
useStartsWithFilter | Boolean | When set to true, the search will find all devices with tag name that starts with the given tag in the query. Defaults to false. **Optional**.

## Request body
Empty

## Response
If successful - 200 OK with list of the machines in the response body.

## Example

**Request**

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/machines/findbytag?tag=testTag&useStartsWithFilter=true
```