---
title: List machines API
description: Learn how to use the List machines API to retrieve a collection of machines that have communicated with Microsoft Defender ATP cloud.
keywords: apis, graph api, supported apis, get, devices
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

# List machines API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## API description
Retrieves a collection of [Machines](machine.md) that have communicated with  Microsoft Defender for Endpoint cloud.
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>The OData's `$filter` query is supported on: `computerDnsName`, `lastSeen`, `healthStatus`, `osPlatform`, `riskScore` and `rbacGroupId`.
<br>See examples at [OData queries with Defender for Endpoint](exposed-apis-odata-samples.md)


## Limitations
1. You can get devices last seen according to your configured retention period.
2. Maximum page size is 10,000.
3. Rate limitations for this API are 100 calls per minute and 1500 calls per hour. 


## Permissions

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.Read | 'Read machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- Response will include only devices, that the user have access to, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request

```http
GET https://api.securitycenter.microsoft.com/api/machines
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machines exists - 200 OK with list of [machine](machine.md) entities in the body. If no recent machines - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```http
GET https://api.securitycenter.microsoft.com/api/machines
```

**Response**

Here is an example of the response.

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.microsoft.com/api/$metadata#Machines",
    "value": [
        {
            "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
			"computerDnsName": "mymachine1.contoso.com",
			"firstSeen": "2018-08-02T14:55:03.7791856Z",
			"lastSeen": "2018-08-02T14:55:03.7791856Z",
			"osPlatform": "Windows10",
			"version": "1709",
			"osProcessor": "x64",
			"lastIpAddress": "172.17.230.209",
			"lastExternalIpAddress": "167.220.196.71",
			"osBuild": 18209,
			"healthStatus": "Active",
			"rbacGroupId": 140,
			"rbacGroupName": "The-A-Team",
			"riskScore": "Low",
			"exposureLevel": "Medium",
			"isAadJoined": true,
			"aadDeviceId": "80fe8ff8-2624-418e-9591-41f0491218f9",
			"machineTags": [ "test tag 1", "test tag 2" ]
        }
		...
    ]
}
```

## Related topics
- [OData queries with Microsoft Defender for Endpoint](exposed-apis-odata-samples.md)
