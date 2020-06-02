---
title: List alerts API
description: Retrieve a collection of recent Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) alerts.
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

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Retrieves a collection of Alerts.
<br>Supports [OData V4 queries](https://www.odata.org/documentation/).
<br>The OData's ```$filter``` query is supported on: ```alertCreationTime```, ```lastUpdateTime```, ```incidentId```,```InvestigationId```, ```status```, ```severity``` and ```category``` properties.
<br>See examples at [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)


## Limitations
1. You can get alerts last updated in the past 30 days.
2. Maximum page size is 10,000.
3. Rate limitations for this API are 100 calls per minute and 1500 calls per hour. 


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
>- The response will include only alerts that are associated with devices that the user can access, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request
```
GET /api/alerts
```

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

```
GET https://api.securitycenter.windows.com/api/alerts
```

[!include[Improve request performance](../../includes/improve-request-performance.md)]


**Response**

Here is an example of the response.

>[!NOTE]
>The response list shown here may be truncated for brevity. All alerts will be returned from an actual call.


```json
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "value": [
        {
            "id": "da637084217856368682_-292920499",
			"incidentId": 66860,
			"investigationId": 4416234,
			"assignedTo": "secop@contoso.com",
			"severity": "Low",
			"status": "New",
			"classification": "TruePositive",
			"determination": null,
			"investigationState": "Running",
			"detectionSource": "WindowsDefenderAtp",
			"category": "CommandAndControl",
			"threatFamilyName": null,
			"title": "Network connection to a risky host",
			"description": "A network connection was made to a risky host which has exhibited malicious activity.",
			"alertCreationTime": "2019-11-03T23:49:45.3823185Z",
			"firstEventTime": "2019-11-03T23:47:16.2288822Z",
			"lastEventTime": "2019-11-03T23:47:51.2966758Z",
			"lastUpdateTime": "2019-11-03T23:55:52.6Z",
			"resolvedTime": null,
			"machineId": "986e5df8b73dacd43c8917d17e523e76b13c75cd",
			"comments": [
				{
					"comment": "test comment for docs",
					"createdBy": "secop@contoso.com",
					"createdTime": "2019-11-05T14:08:37.8404534Z"
				}
			]
		}
		...
	]
}
```

## Related topics
- [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md)
