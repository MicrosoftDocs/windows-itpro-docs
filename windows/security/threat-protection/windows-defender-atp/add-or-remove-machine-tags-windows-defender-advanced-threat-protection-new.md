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
ms.date: 12/08/2017
---

# Add or Remove Machine Tags API

[!include[Prerelease information](prerelease.md)]

**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)
Adds or remove tag to a specific machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](exposed-apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.ReadWrite.All |	'Read and write all machine information'
Delegated (work or school account) | Machine.ReadWrite | 'Read and write machine information'


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

[!include[Improve request performance](improverequestperformance-new.md)]

```
POST https://api.securitycenter.windows.com/api/machines/863fed4b174465c703c6e412965a31b5e1884cc4/tags
Content-type: application/json
{
  "Value" : "Test Tag",
  "Action": "Add"
}

```
**Response**

Here is an example of the response.

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines/$entity",
    "id": "863fed4b174465c703c6e412965a31b5e1884cc4",
    "computerDnsName": "mymachine2.contoso.com",
    "firstSeen": "2018-07-31T14:20:55.8223496Z",
    "lastSeen": "2018-09-27T08:44:05.6228836Z",
    "osPlatform": "Windows10",
    "osVersion": null,
    "lastIpAddress": "10.248.240.38",
    "lastExternalIpAddress": "167.220.2.166",
    "agentVersion": "10.3720.16299.98",
    "osBuild": 16299,
    "healthStatus": "Active",
    "isAadJoined": true,
    "machineTags": [
        "Test Tag"
    ],
    "rbacGroupId": 75,
    "riskScore": "Medium",
    "aadDeviceId": null
}

```

To remove machine tag, send the same request with the Action 'Remove' instead of 'Add' in the request body.