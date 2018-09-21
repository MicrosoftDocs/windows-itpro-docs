---
title: Get domain related alerts API
description: Retrieves a collection of alerts related to a given domain address.
keywords: apis, graph api, supported apis, get, domain, related, alerts
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

# Get domain related alerts API

[!include[Prerelease information](prerelease.md)]

**Applies to:**

- Windows Defender Advanced Threat Protection (Windows Defender ATP)



Retrieves a collection of alerts related to a given domain address.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Windows Defender ATP APIs](exposed-apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alert.Read.All |	'Read all alerts'
Application |	Alert.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.Read | 'Read alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

## HTTP request
```
GET /api/domains/{domain}/alerts
```

## Request headers

Header | Value 
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.


## Request body
Empty

## Response
If successful and domain and alert exists - 200 OK with list of [alert](alerts-windows-defender-advanced-threat-protection-new.md) entities. If domain or alert does not exist - 404 Not Found.


## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improverequestperformance-new.md)]

```
GET https://api.securitycenter.windows.com/api/domains/client.wns.windows.com/alerts
```

**Response**

Here is an example of the response.

```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Machines",
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

