---
title: Collect investigation package API
description: Use this API to create calls related to the collecting an investigation package from a machine.
keywords: apis, graph api, supported apis, collect investigation package
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

# Collect investigation package API
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Collect investigation package from a machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.CollectForensics |	'Collect forensics'
Delegated (work or school account) |	Machine.CollectForensics |	'Collect forensics'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Alerts Investigation' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/collectInvestigationPackage
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
POST https://api.securitycenter.windows.com/api/machines/fb9ab6be3965095a09c057be7c90f0a2/collectInvestigationPackage
Content-type: application/json
{
  "Comment": "Collect forensics due to alert 1234"
}
```

**Response**

Here is an example of the response.

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "id": "c9042f9b-8483-4526-87b5-35e4c2532223",
    "type": "CollectInvestigationPackage",
    "requestor": "Analyst@contoso.com",
    "requestorComment": " Collect forensics due to alert 1234",
    "status": "InProgress",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2018-12-04T12:09:24.1785079Z",
    "lastUpdateTimeUtc": "2018-12-04T12:09:24.1785079Z",
	"relatedFileInfo": null
}

```
