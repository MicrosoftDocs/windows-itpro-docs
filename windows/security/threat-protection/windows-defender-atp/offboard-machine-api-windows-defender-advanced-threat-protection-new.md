---
title: Offboard machine API
description: Use this API to offboard a machine from WDATP.
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

# Offboard machine API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Offboard machine from WDATP.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Offboard |	'Offboard machine'

## HTTP request
```
POST /api/machines/{id}/offboard
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

[!include[Improve request performance](improverequestperformance-new.md)]

```
POST https://api.securitycenter.windows.com/api/machines/1e5bc9d7e413ddd7902c2932e418702b84d0cc07/offboard
Content-type: application/json
{
  "Comment": "Offboard machine by automation"
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
    "type": "OffboardMachine",
    "requestor": "Analyst@contoso.com",
    "requestorComment": "offboard machine by automation",
    "status": "InProgress",
    "error": "None",
    "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
    "creationDateTimeUtc": "2017-12-04T12:09:24.1785079Z",
    "lastUpdateTimeUtc": "2017-12-04T12:09:24.1785079Z" 
}

```
