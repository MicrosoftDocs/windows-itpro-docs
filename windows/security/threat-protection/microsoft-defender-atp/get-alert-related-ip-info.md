---
title: Get alert related IPs information 
description: Retrieves all IPs related to a specific alert.
keywords: apis, graph api, supported apis, get alert information, alert information, related ip
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

# Get alert related IP information API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Retrieves all IPs related to a specific alert.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ip.Read.All |	'Read IP address profiles'
Delegated (work or school account) | Ip.Read.All |	'Read IP address profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine associated with the alert, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/alerts/{id}/ips
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and alert and an IP exist - 200 OK. If alert not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/alerts/636688558380765161_2136280442/ips
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/$metadata#Ips",    
	"value": [
				{
					"id": "104.80.104.128"
				},
				{
					"id": "23.203.232.228	
				}
	]
}
 
```
