---
title: Get machine by ID API
description: Retrieves a machine entity by ID.
keywords: apis, graph api, supported apis, get, machines, entity, id
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 12/08/2017
---

# Get machine by ID API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Retrieves a machine entity by ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'

## HTTP request
```
GET /api/machines/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and machine exists - 200 OK with the [machine](machine-windows-defender-advanced-threat-protection-new.md) entity in the body.
If machine with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
GET https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machine",
    "id": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "computerDnsName": "mymachine1.contoso.com",
    "firstSeen": "2018-08-02T14:55:03.7791856Z",
    "osPlatform": "Windows10",
    "osVersion": null,
    "systemProductName": null,
    "lastIpAddress": "172.17.230.209",
    "lastExternalIpAddress": "167.220.196.71",
    "agentVersion": "10.5830.18209.1001",
    "groupName": null,
    "osBuild": 18209,
    "healthStatus": "Active",
    "isAadJoined": true,
    "machineTags": [],
    "rbacGroupId": 140,
    "riskScore": "Low",
    "aadDeviceId": null
}

```
