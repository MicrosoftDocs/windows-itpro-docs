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
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# List alerts API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Retrieves a collection of Alerts.

Supports [OData V4 queries](https://www.odata.org/documentation/).

The OData's Filter query is supported on: "Id", "IncidentId", "AlertCreationTime", "Status", "Severity" and "Category".

See examples at [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.Read.All |	'Read all alerts'
Application |	Alert.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.Read | 'Read alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'View Data' (See [Create and manage roles](user-roles.md) for more information)
>- The response will include only alerts that are associated with machines that the user can access, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

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
If successful, this method returns 200 OK, and a list of [alert](alerts.md) objects in the response body.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
GET https://api.securitycenter.windows.com/api/alerts
```

**Response**

Here is an example of the response.

>[!NOTE]
>The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.


```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "value": [
        {
            "id": "121688558380765161_2136280442",
			"incidentId": 7696,
			"assignedTo": "secop@contoso.com",
			"severity": "High",
			"status": "New",
			"classification": "TruePositive",
			"determination": "Malware",
			"investigationState": "Running",
			"category": "MalwareDownload",
			"detectionSource": "WindowsDefenderAv",
			"threatFamilyName": "Mikatz",
			"title": "Windows Defender AV detected 'Mikatz', high-severity malware",
			"description": "Some description",
			"alertCreationTime": "2018-11-26T16:19:21.8409809Z",
			"firstEventTime": "2018-11-26T16:17:50.0948658Z",
			"lastEventTime": "2018-11-26T16:18:01.809871Z",
			"resolvedTime": null,
			"machineId": "9d80fbbc1bdbc5ce968f1d37c72384cbe17ee337"
        },
        {
            "id": "441688558380765161_2136280442",
			"incidentId": 8633,
			"assignedTo": "secop@contoso.com",
			"severity": "Low",
			"status": "InProgress",
			"classification": "TruePositive",
			"determination": "Malware",
			"investigationState": "Running",
			"category": "MalwareDownload",
			"detectionSource": "WindowsDefenderAv",
			"threatFamilyName": "Mikatz",
			"title": "Windows Defender AV detected 'Mikatz', high-severity malware",
			"description": "Some description",
			"alertCreationTime": "2018-11-25T16:19:21.8409809Z",
			"firstEventTime": "2018-11-25T16:17:50.0948658Z",
			"lastEventTime": "2018-11-25T16:18:01.809871Z",
			"resolvedTime": null,
			"machineId": "9d80fbbc1bdbc5ce968f1d37c72384cbe17ee337"
        }
	]
}
```

## Related topics
- [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)
