---
title: Find machines by internal IP API
description: Find machines seen with the requested internal IP in the time range of 15 minutes prior and after a given timestamp 
keywords: apis, graph api, supported apis, get, machine, IP, find, find machine, by ip, ip
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

# Find machines by internal IP API

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Find [Machines](machine.md) seen with the requested internal IP in the time range of 15 minutes prior and after a given timestamp.


## Limitations
1. The given timestamp must be in the past 30 days.
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
> - Response will include only machines that the user have access to based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)
> - The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
> - Response will include only machines that the user have access to based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/machines/findbyip(ip='{IP}',timestamp={TimeStamp})
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.

## Request body
Empty

## Response
If successful and machines were found - 200 OK with list of the machines in the response body.
If no machine found - 404 Not Found.
If the timestamp is not in the past 30 days - 400 Bad Request.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](../../includes/improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/machines/findbyip(ip='10.248.240.38',timestamp=2019-09-22T08:44:05Z)
```
