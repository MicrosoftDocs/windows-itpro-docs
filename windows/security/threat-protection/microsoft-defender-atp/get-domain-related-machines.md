---
title: Get domain related machines API
description: Learn how to use the Get domain related machines API to get machines that communicated to or from a domain in Microsoft Defender Advanced Threat Protection.
keywords: apis, graph api, supported apis, get, domain, related, devices
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

# Get domain related machines API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Retrieves a collection of [Machines](machine.md) that have communicated to or from a given domain address.


## Limitations
1. You can query on devices last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


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
>- Response will include only devices that the user can access, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```http
GET /api/domains/{domain}/machines
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and domain exists - 200 OK with list of [machine](machine.md) entities. If domain do not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](../../includes/improve-request-performance.md)]


```http
GET https://api.securitycenter.windows.com/api/domains/api.securitycenter.windows.com/machines
```
