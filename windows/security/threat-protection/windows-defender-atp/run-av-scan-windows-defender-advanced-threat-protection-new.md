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
ms.date: 12/08/2017
---

# Run antivirus scan API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Initiate Windows Defender Antivirus scan on the machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Scan |	'Scan machine'

## HTTP request
```
POST /api/machines/{id}/runAntiVirusScan
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.
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
POST https://api.securitycenter.windows.com/api/machines/fb9ab6be3965095a09c057be7c90f0a2/runAntiVirusScan 
Content-type: application/json
{
  "Comment": "Check machine for viruses due to alert 3212",
  “ScanType”: “Full”
}
```

**Response**

Here is an example of the response.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

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
    "error": "None",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2017-12-04T12:18:27.1293487Z",
    "lastUpdateTimeUtc": "2017-12-04T12:18:27.1293487Z"
}

```
