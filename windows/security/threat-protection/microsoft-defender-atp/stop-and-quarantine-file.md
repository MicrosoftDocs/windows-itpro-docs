---
title: Stop and quarantine file API
description: Use this API to stop and quarantine file.
keywords: apis, graph api, supported apis, stop and quarantine file
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

# Stop and quarantine file API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Stop execution of a file on a machine and delete it.

[!include[Machine actions note](machineactionsnote.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.StopAndQuarantine |	'Stop And Quarantine'
Delegated (work or school account) | Machine.StopAndQuarantine | 'Stop And Quarantine'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/StopAndQuarantineFile
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
Sha1 |	String	 | Sha1 of the file to stop and quarantine on the machine. **Required**.

## Response
If successful, this method returns 201 - Created response code and [Machine Action](machineaction.md) in the response body.


## Example

**Request**

Here is an example of the request.

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/StopAndQuarantineFile 
Content-type: application/json
{
  "Comment": "Stop and quarantine file on machine due to alert 441688558380765161_2136280442",
  "Sha1": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9"
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
    "id": "141408d1-384c-4c19-8b57-ba39e378011a",
    "type": "StopAndQuarantineFile",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "Stop and quarantine file on machine due to alert 441688558380765161_2136280442",
    "status": "InProgress",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2018-12-04T12:15:04.3825985Z",
    "lastUpdateTimeUtc": "2018-12-04T12:15:04.3825985Z",
	"relatedFileInfo": {
        "fileIdentifier": "87662bc3d60e4200ceaf7aae249d1c343f4b83c9",
        "fileIdentifierType": "Sha1"
	}
}

```

