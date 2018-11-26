---
title: List alerts API
description: Retrieves top recent alerts.
keywords: apis, graph api, supported apis, get, alerts, recent
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

# List alerts API
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)


[!include[Prerelease information](prerelease.md)]


- Retrieves a collection of Alerts.
- Supports [OData V4 queries](https://www.odata.org/documentation/).
- The OData's Filter query is supported on: "Id", "IncidentId", "AlertCreationTime", "Status", "Severity" and "Category".


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.Read.All |	'Read all alerts'
Application |	Alert.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.Read | 'Read alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles-windows-defender-advanced-threat-protection.md) for more information)
>- The response will include only alerts that are associated with machines that the user can access, based on machine group settings (See [Create and manage machine groups](machine-groups-windows-defender-advanced-threat-protection.md) for more information)

## HTTP request
```
GET /api/alerts
```

## Optional query parameters
Method supports $skip and $top query parameters.

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful, this method returns 200 OK, and a list of [alert](alerts-windows-defender-advanced-threat-protection-new.md) objects in the response body.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
GET https://api.securitycenter.windows.com/api/alerts
```

**Response**

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.


```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "value": [
        {
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
        },
        {
            "id": "636688558380765161_2136280442",
            "severity": "Informational",
            "status": "InProgress",
            "description": "Some alert description 2",
            "recommendedAction": "Some recommended action 2",
            "alertCreationTime": "2018-08-04T01:17:17.9516179Z",
            "category": "General",
            "title": "Some alert title 2",
            "threatFamilyName": null,
            "detectionSource": "WindowsDefenderAtp",
            "classification": "TruePositive",
            "determination": null,
            "assignedTo": "best secop ever",
            "resolvedTime": null,
            "lastEventTime": "2018-08-03T07:02:52.0894451Z",
            "firstEventTime": "2018-08-03T07:02:52.0894451Z",
            "actorName": null,
            "machineId": "ff0c3800ed8d66738a514971cd6867166809369d"
        }
	]
}
```
