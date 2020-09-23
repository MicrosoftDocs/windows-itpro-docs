---
title: Create alert from event API
description: Learn how to use the Create alert API to create a new Alert on top of Event in Microsoft Defender Advanced Threat Protection.
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

# Create alert API

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


## API description
Creates new [Alert](alerts.md) on top of **Event**.
<br>**Microsoft Defender ATP Event** is required for the alert creation.
<br>You will need to supply 3 parameters from the Event in the request: **Event Time**, **Machine ID** and **Report ID**. See example below.
<br>You can use an event found in Advanced Hunting API or Portal.
<br>If there existing an open alert on the same Device with the same Title, the new created alert will be merged with it.
<br>An automatic investigation starts automatically on alerts created via the API.


## Limitations
1. Rate limitations for this API are 15 calls per minute.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Use Microsoft Defender ATP APIs](apis-intro.md)

Permission type |	Permission	|	Permission display name
:---|:---|:---
Application |	Alerts.ReadWrite.All |	'Read and write all alerts'
Delegated (work or school account) | Alert.ReadWrite | 'Read and write alerts'

>[!Note]
> When obtaining a token using user credentials:
>- The user needs to have at least the following role permission: 'Alerts investigation' (See [Create and manage roles](user-roles.md) for more information)
>- The user needs to have access to the device associated with the alert, based on device group settings (See [Create and manage device groups](machine-groups.md) for more information)

## HTTP request

```
POST https://api.securitycenter.windows.com/api/alerts/CreateAlertByReference
```

## Request headers

Name | Type | Description
:---|:---|:---
Authorization | String | Bearer {token}. **Required**.
Content-Type | String | application/json. **Required**.

## Request body

In the request body, supply the following values (all are required):

Property | Type | Description
:---|:---|:---
eventTime | DateTime(UTC) | The precise time of the event as string, as obtained from advanced hunting. e.g. ```2018-08-03T16:45:21.7115183Z``` **Required**.
reportId | String | The reportId of the event, as obtained from advanced hunting. **Required**.
machineId | String | Id of the device on which the event was identified. **Required**.
severity | String | Severity of the alert. The property values are: 'Low', 'Medium' and 'High'. **Required**.
title | String | Title for the alert. **Required**.
description | String | Description of the alert. **Required**.
recommendedAction| String | Action that is recommended to be taken by security officer when analyzing the alert. **Required**.
category| String | Category of the alert. The property values are: "General", "CommandAndControl", "Collection", "CredentialAccess", "DefenseEvasion", "Discovery", "Exfiltration", "Exploit", "Execution", "InitialAccess", "LateralMovement", "Malware", "Persistence", "PrivilegeEscalation", "Ransomware", "SuspiciousActivity" **Required**.

## Response

If successful, this method returns 200 OK, and a new [alert](alerts.md) object in the response body. If event with the specified properties (_reportId_, _eventTime_ and _machineId_) was not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](../../includes/improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/alerts/CreateAlertByReference
```
```json
{
	"machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
	"severity": "Low",
	"title": "example",
	"description": "example alert",
	"recommendedAction": "nothing",
	"eventTime": "2018-08-03T16:45:21.7115183Z",
	"reportId": "20776",
	"category": "Exploit"
}
```
