---
title: Run antivirus scan API
description: Use this API to create calls related to running an antivirus scan on a machine.
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

# Run antivirus scan API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Initiate Windows Defender Antivirus scan on a machine.

[!include[Machine actions note](machineactionsnote.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Scan |	'Scan machine'
Delegated (work or school account) |	Machine.Scan |	'Scan machine'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/runAntiVirusScan
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | string | application/json

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	String | Comment to associate with the action. **Required**.
ScanType|	String	| Defines the type of the Scan. **Required**.

**ScanType** controls the type of scan to perform and can be one of the following:

- **Quick** – Perform quick scan on the machine
- **Full** – Perform full scan on the machine



## Response
If successful, this method returns 201, Created response code and _MachineAction_ object in the response body.


## Example

**Request**

Here is an example of the request.

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/runAntiVirusScan 
Content-type: application/json
{
  "Comment": "Check machine for viruses due to alert 3212",
  “ScanType”: “Full”
}
```

**Response**

Here is an example of the response.

[!include[Improve request performance](improve-request-performance.md)]

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "id": "2e9da30d-27f6-4208-81f2-9cd3d67893ba",
    "type": "RunAntiVirusScan",
    "requestor": "Analyst@contoso.com",
    "requestorComment": "Check machine for viruses due to alert 3212",
    "status": "InProgress",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2018-12-04T12:18:27.1293487Z",
    "lastUpdateTimeUtc": "2018-12-04T12:18:27.1293487Z",
	"relatedFileInfo": null
}

```
