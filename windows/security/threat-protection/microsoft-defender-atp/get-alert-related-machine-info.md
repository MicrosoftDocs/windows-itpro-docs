---
title: Get alert related machine information
description: Retrieve all devices related to a specific alert using Microsoft Defender for Endpoint.
keywords: apis, graph api, supported apis, get alert information, alert information, related device
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

# Get alert related machine information API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## API description
Retrieves [Device](machine.md) related to a specific alert.


## Limitations
1. You can query on alerts last updated according to your configured retention period.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender for Endpoint APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine information'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the device associated with the alert, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request

```http
GET /api/alerts/{id}/machine
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and alert and device exist - 200 OK. If alert not found or device not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/alerts/636688558380765161_2136280442/machine
```

**Response**

Here is an example of the response.


```json
{
	"id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
	"computerDnsName": "mymachine1.contoso.com",
	"firstSeen": "2018-08-02T14:55:03.7791856Z",
	"lastSeen": "2021-01-25T07:27:36.052313Z",
	"osPlatform": "Windows10",
	"osProcessor": "x64",
	"version": "1901",
	"lastIpAddress": "10.166.113.46",
	"lastExternalIpAddress": "167.220.203.175",
	"osBuild": 19042,
	"healthStatus": "Active",
	"deviceValue": "Normal",
	"rbacGroupName": "The-A-Team",
	"riskScore": "Low",
	"exposureLevel": "Low",
	"aadDeviceId": "fd2e4d29-7072-4195-aaa5-1af139b78028",
	"machineTags": [
		"Tag1",
		"Tag2"
	],
	"ipAddresses": [
		{
			"ipAddress": "10.166.113.47",
			"macAddress": "8CEC4B897E73",
			"operationalStatus": "Up"
		},
		{
			"ipAddress": "2a01:110:68:4:59e4:3916:3b3e:4f96",
			"macAddress": "8CEC4B897E73",
			"operationalStatus": "Up"
		}
	]
}
```
