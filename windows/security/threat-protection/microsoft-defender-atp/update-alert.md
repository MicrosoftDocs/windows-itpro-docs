---
title: Update alert entity API
description: Update a Microsoft Defender ATP alert via this API.
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

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Updates properties of existing [Alert](alerts.md).
<br>Submission of **comment** is available with or without updating properties.
<br>Updatable properties are: ```status```, ```determination```, ```classification``` and ```assignedTo```.


## Limitations
1. You can update alerts that available in the API. See [List Alerts](get-alerts.md) for more information.
2. Rate limitations for this API are 100 calls per minute and 1500 calls per hour.


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
In the request body, supply the values for the relevant fields that should be updated.
<br>Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. 
<br>For best performance you shouldn't include existing values that haven't change.

Property | Type | Description
:---|:---|:---
status | String | Specifies the current status of the alert. The property values are: 'New', 'InProgress' and 'Resolved'.
assignedTo | String | Owner of the alert
classification | String | Specifies the specification of the alert. The property values are: 'Unknown', 'FalsePositive', 'TruePositive'. 
determination | String | Specifies the determination of the alert. The property values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'
comment | String | Comment to be added to the alert.

[!include[Improve request performance](../../includes/improve-request-performance.md)]

## Response
If successful, this method returns 200 OK, and the [alert](alerts.md) entity in the response body with the updated properties. If alert with the specified id was not found - 404 Not Found.


## Example

**Request**

Here is an example of the request.

```
PATCH https://api.securitycenter.windows.com/api/alerts/121688558380765161_2136280442
Content-Type: application/json

{
    "status": "Resolved",
	"assignedTo": "secop2@contoso.com",
    "classification": "FalsePositive",
    "determination": "Malware",
    "comment": "Resolve my alert and assign to secop2"
}
```
