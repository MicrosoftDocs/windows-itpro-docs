---
title: Release machine from isolation API
description: Use this API to create calls related to release a machine from isolation.
keywords: apis, graph api, supported apis, remove machine from isolation
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

# Release machine from isolation API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Undo isolation of a machine.

[!include[Machine actions note](machineactionsnote.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Isolate |	'Isolate machine'
Delegated (work or school account) |	Machine.Isolate |	'Isolate machine'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/unisolate
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

## Response
If successful, this method returns 201 - Created response code and [Machine Action](machineaction.md) in the response body.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/unisolate 
Content-type: application/json
{
  "Comment": "Unisolate machine since it was clean and validated"
}

```
**Response**

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "id": "09a0f91e-a2eb-409d-af33-5577fe9bd558",
    "type": "Unisolate",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "Unisolate machine since it was clean and validated ",
    "status": "InProgress",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2018-12-04T12:13:15.0104931Z",
    "lastUpdateTimeUtc": "2018-12-04T12:13:15.0104931Z",
	"relatedFileInfo": null
}

```

To isolate a machine, see [Isolate machine](isolate-machine.md).

