---
title: Create alert from event API
description: Creates an alert using event details
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

# Create alert from event API

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Enables using event data, as obtained from the [Advanced Hunting](run-advanced-query-api.md) for creating a new alert entity.

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
machineId | String | Id of the machine on which the event was identified. **Required**.
severity | String | Severity of the alert. The property values are: 'Low', 'Medium' and 'High'. **Required**.
title | String | Title for the alert. **Required**.
description | String | Description of the alert. **Required**.
recommendedAction| String | Action that is recommended to be taken by security officer when analyzing the alert. **Required**.
eventTime | DateTime(UTC) | The time of the event, as obtained from the advanced query. **Required**.
reportId | String | The reportId, as obtained from the advanced query. **Required**.
category| String | Category of the alert. The property values are: 'None', 'SuspiciousActivity', 'Malware', 'CredentialTheft', 'Exploit', 'WebExploit', 'DocumentExploit', 'PrivilegeEscalation', 'Persistence', 'RemoteAccessTool', 'CommandAndControl', 'SuspiciousNetworkTraffic', 'Ransomware', 'MalwareDownload', 'Reconnaissance', 'WebFingerprinting', 'Weaponization', 'Delivery', 'SocialEngineering', 'CredentialStealing', 'Installation', 'Backdoor', 'Trojan', 'TrojanDownloader', 'LateralMovement', 'ExplorationEnumeration', 'NetworkPropagation', 'Exfiltration', 'NotApplicable', 'EnterprisePolicy' and	'General'.

## Response

If successful, this method returns 200 OK, and a new [alert](alerts.md) object in the response body. If event with the specified properties (_reportId_, _eventTime_ and _machineId_) was not found - 404 Not Found.

## Example

**Request**

Here is an example of the request.

[!include[Improve request performance](improve-request-performance.md)]

```
POST https://api.securitycenter.windows.com/api/alerts/CreateAlertByReference
Content-Length: application/json

{
  "machineId": "1e5bc9d7e413ddd7902c2932e418702b84d0cc07",
  "severity": "Low",
  "title": "test alert",
  "description": "test alert",
  "recommendedAction": "test alert",
  "eventTime": "2018-08-03T16:45:21.7115183Z",
  "reportId": "20776",
  "category": "None"
}
```
