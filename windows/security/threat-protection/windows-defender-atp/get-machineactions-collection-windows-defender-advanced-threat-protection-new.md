---
title: Get MachineActions collection API
description: Use this API to create calls related to get machineactions collection
keywords: apis, graph api, supported apis, machineaction collection
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

# Get MachineActions collection API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)

 Gets collection of actions done on machines. Get MachineAction collection API supports OData V4 queries.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Machine.Read.All |	'Read all machine profiles'
Application |	Machine.ReadWrite.All |	'Read and write all machine information'

## HTTP request
```
GET /api/machineactions
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with a collection of [Machine Action](machineaction-windows-defender-advanced-threat-protection-new.md) objects since the Retention policy time of the organization.


## Example 1

**Request**

Here is an example of the request on an organization that has three MachineActions.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
GET https://api.securitycenter.windows.com/api/machineactions
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#MachineActions",
    "value": [
        {
            "id": "69dc3630-1ccc-4342-acf3-35286eec741d",
            "type": "CollectInvestigationPackage",
            "requestor": "Analyst@contoso.com",
            "requestorComment": "test",
            "status": "Succeeded",
            "error": "None",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T12:43:57.2011911Z",
            "lastUpdateTimeUtc": "2017-12-04T12:45:25.4049122Z"
        },
        {
            "id": "2e9da30d-27f6-4208-81f2-9cd3d67893ba",
            "type": "RunAntiVirusScan",
            "requestor": "Analyst@contoso.com",
            "requestorComment": "Check machine for viruses due to alert 3212",
            "status": "Succeeded",
            "error": "None",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T12:18:27.1293487Z",
            "lastUpdateTimeUtc": "2017-12-04T12:18:57.5511934Z"
        },
        {
            "id": "44cffc15-0e3d-4cbf-96aa-bf76f9b27f5e",
            "type": "UnrestrictCodeExecution",
            "requestor": "Analyst@contoso.com",
            "requestorComment": "test",
            "status": "Succeeded",
            "error": "None",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T12:15:40.6052029Z",
            "lastUpdateTimeUtc": "2017-12-04T12:16:14.2899973Z"
        }
    ]
}
```

## Example 2

**Request**

Here is an example of a request that filters the MachineActions by machine ID and shows the latest two MachineActions.

```
GET https://api.securitycenter.windows.com/api/machineactions?$filter=machineId eq 'f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f'&$top=2
```

**Response**

Here is an example of the response.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://api.securitycenter.windows.com/testwdatppreview/$metadata#MachineActions",
    "value": [
        {
            "id": "69dc3630-1ccc-4342-acf3-35286eec741d",
            "type": "CollectInvestigationPackage",
            "requestor": "Analyst@contoso.com",
            "requestorComment": "test",
            "status": "Succeeded",
            "error": "None",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T12:43:57.2011911Z",
            "lastUpdateTimeUtc": "2017-12-04T12:45:25.4049122Z"
        },
        {
            "id": "2e9da30d-27f6-4208-81f2-9cd3d67893ba",
            "type": "RunAntiVirusScan",
            "requestor": "Analyst@contoso.com",
            "requestorComment": "Check machine for viruses due to alert 3212",
            "status": "Succeeded",
            "error": "None",
            "machineId": "f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f",
            "creationDateTimeUtc": "2017-12-04T12:18:27.1293487Z",
            "lastUpdateTimeUtc": "2017-12-04T12:18:57.5511934Z"
        }
    ]
}
```
