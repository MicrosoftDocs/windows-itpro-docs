---
title: Get user related alerts API
description: Retrieves a collection of alerts related to a given user ID.
keywords: apis, graph api, supported apis, get, user, related, alerts
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

# Get user related alerts API
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Retrieves a collection of alerts related to a given user ID.

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
>- Response will include only alerts, associated with machines, that the user have access to, based on machine group settings (See [Create and manage machine groups](machine-groups-windows-defender-advanced-threat-protection.md) for more information)

## HTTP request
```
GET /api/users/{id}/alerts
```

**Note that the id is not the full UPN, but only the user name. (e.g., to retrieve alerts for user1@contoso.com use /api/users/user1/alerts) **

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and user exist - 200 OK. If the user do not exist - 404 Not Found. 


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
GET https://api.securitycenter.windows.com/api/users/user1/alerts
```

**Response**

Here is an example of the response.


```
HTTP/1.1 200 OK
Content-type: application/json
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
