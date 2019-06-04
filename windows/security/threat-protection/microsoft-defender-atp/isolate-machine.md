---
title: Isolate machine API
description: Use this API to create calls related isolating a machine.
keywords: apis, graph api, supported apis, isolate machine
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

# Isolate machine API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Isolates a machine from accessing external network.

[!include[Machine actions note](machineactionsnote.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Isolate |	'Isolate machine'
Delegated (work or school account) | Machine.Isolate |	'Isolate machine'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)


## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/isolate
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
Comment |	String |	Comment to associate with the action. **Required**.
IsolationType	| String |	Type of the isolation. Allowed values are: 'Full' or 'Selective'.

**IsolationType** controls the type of isolation to perform and can be one of the following:
-	Full – Full isolation
-	Selective – Restrict only limited set of applications from accessing the network (see [Isolate machines from the network](respond-machine-alerts.md#isolate-machines-from-the-network) for more details)


## Response
If successful, this method returns 201 - Created response code and [Machine Action](machineaction.md) in the response body.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/isolate
Content-type: application/json
{
  "Comment": "Isolate machine due to alert 1234",
  “IsolationType”: “Full” 
}

```
**Response**

Here is an example of the response.

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "id": "b89eb834-4578-496c-8be0-03f004061435",
    "type": "Isolate",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "Isolate machine due to alert 1234",
    "status": "InProgress",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2017-12-04T12:12:18.9725659Z",
    "lastUpdateTimeUtc": "2017-12-04T12:12:18.9725659Z",
	"relatedFileInfo": null
}

```

To unisolate a machine, see [Release machine from isolation](unisolate-machine.md).
