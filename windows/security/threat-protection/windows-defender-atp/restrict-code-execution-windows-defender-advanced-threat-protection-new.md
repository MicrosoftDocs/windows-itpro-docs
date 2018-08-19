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
ms.date: 12/08/2017
---

# Restrict app execution API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Restrict execution of all applications on the machine except a predefined set (see [Response machine alerts](respond-machine-alerts-windows-defender-advanced-threat-protection.md) for more information)

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.RestrictExecution |	'Restrict code execution'

## HTTP request
```
POST /api/machines/{id}/restrictCodeExecution
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
If successful, this method returns 201 - Created response code and [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) in the response body.


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

[!include[Improve request performance](improverequestperformance-new.md)]

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
    "error": "None",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2017-12-04T12:15:04.3825985Z",
    "lastUpdateTimeUtc": "2017-12-04T12:15:04.3825985Z" 
}

```

To remove code execution restriction from a machine, see [Remove app restriction](unrestrict-code-execution-windows-defender-advanced-threat-protection-new.md).

