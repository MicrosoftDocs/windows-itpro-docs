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
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Update alert

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Update the properties of an alert entity.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alerts.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Alerts investigation' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the machine associated with the alert, based on machine group settings (See [Create and manage machine groups](machine-groups.md) for more information)

## HTTP request
```
PATCH /api/alerts/{id}
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | String | application/json. **Required**.


## Request body
In the request body, supply the values for the relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't change.

Property | Type | Description
:---|:---|:---
status | String | Specifies the current status of the alert. The property values are: 'New', 'InProgress' and 'Resolved'.
assignedTo | String | Owner of the alert
classification | String | Specifies the specification of the alert. The property values are: 'Unknown', 'FalsePositive', 'TruePositive'. 
determination | String | Specifies the determination of the alert. The property values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'

[!include[Improve request performance](improve-request-performance.md)]

## Response
If successful, this method returns 200 OK, and the [alert](alerts.md) entity in the response body with the updated properties. If alert with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
PATCH https://api.securitycenter.windows.com/api/alerts/121688558380765161_2136280442
Content-Type: application/json
{
	"assignedTo": "secop2@contoso.com"
}
```

**Response**

Here is an example of the response.

```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts/$entity",
    "id": "121688558380765161_2136280442",
	"incidentId": 7696,
	"assignedTo": "secop2@contoso.com",
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
}
```
