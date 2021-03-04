---
title: Get alert related IPs information
description: Retrieve all IPs related to a specific alert using Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get alert information, alert information, related ip
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# Get alert related IPs information API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Retrieves all IPs related to a specific alert.


## Limitations
1. You can query on alerts last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Ip.Read.All |	'Read IP address profiles'
Delegated (work or school account) | Ip.Read.All |	'Read IP address profiles'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the device associated with the alert, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

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

```http
GET https://api.securitycenter.microsoft.com/alerts/636688558380765161_2136280442/ips
```

**Response**

Here is an example of the response.


```json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/$metadata#Ips",    
	"value": [
				{
					"id": "104.80.104.128"
				},
				{
					"id": "23.203.232.228	
				}
				...
	]
}
 
```
