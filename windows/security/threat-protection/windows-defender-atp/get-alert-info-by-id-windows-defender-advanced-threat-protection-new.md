---
title: Get alert information by ID API
description: Retrieves an alert by its ID.
keywords: apis, graph api, supported apis, get, alert, information, id
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

# Get alert information by ID API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)


Retrieves an alert by its ID.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Create your app](exposed-apis-windows-defender-advanced-threat-protection-new.md#create-an-app)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.Read.All |	'Read all alerts'
Application |	Alert.ReadWrite.All |	'Read and write all alerts'

## HTTP request
```
GET /api/alerts/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | string | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK, and an [alert](alerts-windows-defender-advanced-threat-protection-new.md) object in the response body.
If alert with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

>[!NOTE]
>For better performance, you can use server closer to your geo location:
> - api-us.securitycenter.windows.com
> - api-eu.securitycenter.windows.com
> - api-uk.securitycenter.windows.com

```
GET https://api.securitycenter.windows.com/api/alerts/636688558380765161_2136280442
```

**Response**

Here is an example of the response.


```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "id": "636688558380765161_2136280442",
    "severity": "Informational",
    "status": "InProgress",
    "description": "Some alert description 1",
    "recommendedAction": "Some recommended action 1",
    "alertCreationTime": "2018-08-03T01:17:17.9516179Z",
    "category": "General",
    "title": "Some alert title 1",
    "threatFamilyName": null,
    "detectionSource": "WindowsDefenderAtp",
    "classification": "TruePositive",
    "determination": null,
    "assignedTo": "best secop ever",
    "resolvedTime": null,
    "lastEventTime": "2018-08-02T07:02:52.0894451Z",
    "firstEventTime": "2018-08-02T07:02:52.0894451Z",
    "actorName": null,
    "machineId": "ff0c3800ed8d66738a514971cd6867166809369f"
}

```
