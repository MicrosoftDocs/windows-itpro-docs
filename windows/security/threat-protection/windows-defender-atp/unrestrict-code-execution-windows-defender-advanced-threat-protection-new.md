---
title: Remove app restriction API
description: Use this API to create calls related to removing a restriction from applications from executing.
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

# Remove app restriction API

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Enable execution of any application on the machine.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.RestrictExecution |	'Restrict code execution'

## HTTP request
```
POST /api/machines/{id}/unrestrictCodeExecution
```

## Request headers
Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.
Content-Type | string | application/json. **Required**.

## Request body
In the request body, supply a JSON object with the following parameters:

Parameter |	Type	| Description
:---|:---|:---
Comment |	String | Comment to associate with the action. **Required**.

## Response
If successful, this method returns 201 - Created response code and [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) in the response body.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
POST https://api.securitycenter.windows.com/api/machines/fb9ab6be3965095a09c057be7c90f0a2/unrestrictCodeExecution 
Content-type: application/json
{
  "Comment": "Unrestrict code execution since machine was cleaned and validated"
}

```

**Response**

Here is an example of the response.

```
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions/$entity",
    "id": "44cffc15-0e3d-4cbf-96aa-bf76f9b27f5e",
    "type": "UnrestrictCodeExecution",
    "requestor": "Analyst@contoso.com",
    "requestorComment": "Unrestrict code execution since machine was cleaned and validated ",
    "status": "InProgress",
    "error": "None",
    "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
    "creationDateTimeUtc": "2017-12-04T12:15:40.6052029Z",
    "lastUpdateTimeUtc": "2017-12-04T12:15:40.6052029Z"
}

```
