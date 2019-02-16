---
title: Get MachineActions collection API
description: Use this API to create calls related to get machineactions collection
keywords: apis, graph api, supported apis, machineaction collection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
ms.date: 12/08/2017
---

# Get MachineActions collection API (deprecated)

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Deprecated information](deprecate.md)]

 Gets collection of actions done on machines. Get MachineAction collection API supports OData V4 queries.

## Permissions
Users need to have Security administrator or Global admin directory roles.

## HTTP request
```
GET /testwdatppreview/machineactions
```

## Request headers

Header | Value 
:---|:---
Authorization | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200, Ok response code with a collection of MachineAction objects since the Retention policy time of the organization.


## Example 1

**Request**

Here is an example of the request on an organization that has three MachineActions.

```
GET https://graph.microsoft.com/testwdatppreview/machineactions
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#MachineActions",
    "value": [
        {
            "id": "69dc3630-1ccc-4342-acf3-35286eec741d",
            "type": "CollectInvestigationPackage",
            "requestor": "Analyst@ contoso.com ",
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
            "requestor": "Analyst@ contoso.com ",
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
            "requestor": "Analyst@ contoso.com ",
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
GET https://graph.microsoft.com/testwdatppreview/machineactions?$filter=machineId eq 'f46b9bb259ed4a7fb9981b73510e3cc7aa81ec1f'&$top=2
```



**Response**

Here is an example of the response.

```
HTTP/1.1 200 Ok
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/testwdatppreview/$metadata#MachineActions",
    "value": [
        {
            "id": "69dc3630-1ccc-4342-acf3-35286eec741d",
            "type": "CollectInvestigationPackage",
            "requestor": "Analyst@contoso.com ",
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
            "requestor": "Analyst@ contoso.com ",
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
