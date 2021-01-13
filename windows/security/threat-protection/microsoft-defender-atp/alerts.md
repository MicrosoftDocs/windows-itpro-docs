---
title: Get alerts API
description: Learn about the methods and properties of the Alert resource type in Microsoft Defender Advanced Threat Protection.
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

# Alert resource type

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]


## Methods

Method |Return Type |Description
:---|:---|:---
[Get alert](get-alert-info-by-id.md) | [Alert](alerts.md) | Get a single [alert](alerts.md) object.
[List alerts](get-alerts.md) | [Alert](alerts.md) collection | List [alert](alerts.md) collection.
[Update alert](get-alerts.md) | [Alert](update-alert.md) | Update specific [alert](alerts.md).
[Create alert](create-alert-by-reference.md)|[Alert](alerts.md)|Create an alert based on event data obtained from [Advanced Hunting](run-advanced-query-api.md).
[List related domains](get-alert-related-domain-info.md)|Domain collection| List URLs associated with the alert.
[List related files](get-alert-related-files-info.md) | [File](files.md) collection |  List the [file](files.md) entities that are associated with the [alert](alerts.md).
[List related IPs](get-alert-related-ip-info.md) | IP collection | List IPs that are associated with the alert.
[Get related machines](get-alert-related-machine-info.md) | [Machine](machine.md) | The [machine](machine.md) that is associated with the [alert](alerts.md).
[Get related users](get-alert-related-user-info.md) | [User](user.md) | The [user](user.md) that is associated with the [alert](alerts.md).


## Properties

Property |    Type    |    Description
:---|:---|:---
id | String | Alert ID.
title | String | Alert title.
description | String | Alert description.
alertCreationTime | Nullable DateTimeOffset | The date and time (in UTC) the alert was created.
lastEventTime | Nullable DateTimeOffset | The last occurrence of the event that triggered the alert on the same device.
firstEventTime | Nullable DateTimeOffset | The first occurrence of the event that triggered the alert on that device.
lastUpdateTime | Nullable DateTimeOffset | The date and time (in UTC) the alert was last updated.
resolvedTime | Nullable DateTimeOffset | The date and time in which the status of the alert was changed to 'Resolved'.
incidentId | Nullable Long | The [Incident](view-incidents-queue.md) ID of the Alert.
investigationId | Nullable Long | The [Investigation](automated-investigations.md) ID related to the Alert.
investigationState | Nullable Enum | The current state of the [Investigation](automated-investigations.md). Possible values are: 'Unknown', 'Terminated', 'SuccessfullyRemediated', 'Benign', 'Failed', 'PartiallyRemediated', 'Running', 'PendingApproval', 'PendingResource', 'PartiallyInvestigated', 'TerminatedByUser', 'TerminatedBySystem', 'Queued', 'InnerFailure', 'PreexistingAlert', 'UnsupportedOs', 'UnsupportedAlertType', 'SuppressedAlert'.
assignedTo | String | Owner of the alert.
severity | Enum | Severity of the alert. Possible values are: 'UnSpecified', 'Informational', 'Low', 'Medium' and 'High'.
status | Enum | Specifies the current status of the alert. Possible values are: 'Unknown', 'New', 'InProgress' and 'Resolved'.
classification | Nullable Enum | Specification of the alert. Possible values are: 'Unknown', 'FalsePositive', 'TruePositive'.
determination | Nullable Enum | Specifies the determination of the alert. Possible values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'.
category| String | Category of the alert.
detectionSource | String | Detection source.
threatFamilyName | String | Threat family.
machineId | String | ID of a [machine](machine.md) entity that is associated with the alert.
computerDnsName | String | [machine](machine.md) fully qualified name.
aadTenantId | String | The Azure Active Directory ID.
comments | List of Alert comments | Alert Comment is an object that contains: comment string, createdBy string and createTime date time.

### Response example for getting single alert:

```
GET https://api.securitycenter.microsoft.com/api/alerts/da637084217856368682_-292920499
```

```json
{
    "id": "da637084217856368682_-292920499",
    "incidentId": 66860,
    "investigationId": 4416234,
    "investigationState": "Running",
    "assignedTo": "secop@contoso.com",
    "severity": "Low",
    "status": "New",
    "classification": "TruePositive",
    "determination": null,
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
```
