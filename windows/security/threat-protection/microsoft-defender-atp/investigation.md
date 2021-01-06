---
title: Investigation resource type
description: Microsoft Defender ATP Investigation entity.
keywords: apis, graph api, supported apis, get, alerts, investigations
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
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: article
---

# Investigation resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


Represent an Automated Investigation entity in Defender for Endpoint.
<br> See [Overview of automated investigations](automated-investigations.md) for more information.

## Methods
Method|Return Type |Description
:---|:---|:---
[List Investigations](get-investigation-collection.md) | Investigation collection | Get collection of Investigation
[Get single Investigation](get-investigation-collection.md) | Investigation entity | Gets single Investigation entity.
[Start Investigation](initiate-autoir-investigation.md) | Investigation entity | Starts Investigation on a device.


## Properties
Property |	Type	|	Description
:---|:---|:---
id | String | Identity of the investigation entity. 
startTime | DateTime Nullable | The date and time when the investigation was created. 
endTime | DateTime Nullable | The date and time when the investigation was completed. 
cancelledBy | String | The ID of the user/application that cancelled that investigation. 
investigationState | Enum | The current state of the investigation. Possible values are: 'Unknown', 'Terminated', 'SuccessfullyRemediated', 'Benign', 'Failed', 'PartiallyRemediated', 'Running', 'PendingApproval', 'PendingResource', 'PartiallyInvestigated', 'TerminatedByUser', 'TerminatedBySystem', 'Queued', 'InnerFailure', 'PreexistingAlert', 'UnsupportedOs', 'UnsupportedAlertType', 'SuppressedAlert'.
statusDetails | String | Additional information about the state of the investigation.
machineId | String | The ID of the device on which the investigation is executed.
computerDnsName | String | The name of the device on which the investigation is executed.
triggeringAlertId | String | The ID of the alert that triggered the investigation.


## Json representation

```json
{
    "id": "63004",
    "startTime": "2020-01-06T13:05:15Z",
    "endTime": null,
    "state": "Running",
    "cancelledBy": null,
    "statusDetails": null,
    "machineId": "e828a0624ed33f919db541065190d2f75e50a071",
    "computerDnsName": "desktop-test123",
    "triggeringAlertId": "da637139127150012465_1011995739"
}
```
