---
title: Restrict app execution API
description: Use this API to create calls related to restricting an application from executing.
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

# Restrict app execution API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Restrict execution of all applications on the machine except a predefined set (see [Response machine alerts](respond-machine-alerts.md) for more information)

[!include[Machine actions note](machineactionsnote.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.RestrictExecution |	'Restrict code execution'
Delegated (work or school account) | Machine.RestrictExecution | 'Restrict code execution'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Active remediation actions' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
POST https://api.securitycenter.windows.com/api/machines/{id}/restrictCodeExecution
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

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/restrictCodeExecution 
Content-type: application/json
{
  "Comment": "Restrict code execution due to alert 1234"
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
    "id": "78d408d1-384c-4c19-8b57-ba39e378011a",
    "type": "RestrictCodeExecution",
    "requestor": "Analyst@contoso.com ",
    "requestorComment": "Restrict code execution due to alert 1234",
    "status": "InProgress",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2018-12-04T12:15:04.3825985Z",
    "lastUpdateTimeUtc": "2018-12-04T12:15:04.3825985Z",
	"relatedFileInfo": null
}

```

To remove code execution restriction from a machine, see [Remove app restriction](unrestrict-code-execution.md).

