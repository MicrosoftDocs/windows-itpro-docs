---
title: Get alerts API
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

# Alert resource type

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

- Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

Represents an alert entity in Microsoft Defender ATP.

# Methods
Method |Return Type |Description
:---|:---|:---
[Get alert](get-alert-info-by-id.md) | [Alert](alerts.md) | Get a single [alert](alerts.md) object.
[List alerts](get-alerts.md) | [Alert](alerts.md) collection | List [alert](alerts.md) collection.
[Create alert](create-alert-by-reference.md)|[Alert](alerts.md)|Create an alert based on event data obtained from [Advanced Hunting](run-advanced-query-api.md).
[List related domains](get-alert-related-domain-info.md)|Domain collection| List URLs associated with the alert.
[List related files](get-alert-related-files-info.md) | [File](files.md) collection |  List the [file](files.md) entities that are associated with the [alert](alerts.md).
[List related IPs](get-alert-related-ip-info.md) | IP collection | List IPs that are associated with the alert.
[Get related machines](get-alert-related-machine-info.md) | [Machine](machine.md) | The [machine](machine.md) that is associated with the [alert](alerts.md).
[Get related users](get-alert-related-user-info.md) | [User](user.md) | The [user](user.md) that is associated with the [alert](alerts.md).


# Properties
Property |	Type	|	Description
:---|:---|:---
id | String | Alert ID.
title | String | Alert title.
description | String | Alert description.
alertCreationTime | Nullable DateTimeOffset | The date and time (in UTC) the alert was created.
lastEventTime | Nullable DateTimeOffset | The last occurrence of the event that triggered the alert on the same machine.
firstEventTime | Nullable DateTimeOffset | The first occurrence of the event that triggered the alert on that machine.
lastUpdateTime | Nullable DateTimeOffset | The first occurrence of the event that triggered the alert on that machine.
resolvedTime | Nullable DateTimeOffset | The date and time in which the status of the alert was changed to 'Resolved'.
incidentId | Nullable Long | The [Incident](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/view-incidents-queue) ID of the Alert. 
investigationId | Nullable Long | The [Investigation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) ID related to the Alert. 
investigationState | Nullable Enum | The current state of the [Investigation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations). Possible values are: 'Unknown', 'Terminated', 'SuccessfullyRemediated', 'Benign', 'Failed', 'PartiallyRemediated', 'Running', 'PendingApproval', 'PendingResource', 'PartiallyInvestigated', 'TerminatedByUser', 'TerminatedBySystem', 'Queued', 'InnerFailure', 'PreexistingAlert', 'UnsupportedOs', 'UnsupportedAlertType', 'SuppressedAlert'.
assignedTo | String | Owner of the alert.
severity | Enum | Severity of the alert. Possible values are: 'UnSpecified', 'Informational', 'Low', 'Medium' and 'High'.
status | Enum | Specifies the current status of the alert. Possible values are: 'Unknown', 'New', 'InProgress' and 'Resolved'.
classification | Nullable Enum | Specification of the alert. Possible values are: 'Unknown', 'FalsePositive', 'TruePositive'. 
determination | Nullable Enum | Specifies the determination of the alert. Possible values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'.
category| String | Category of the alert.
detectionSource | String | Detection source.
threatFamilyName | String | Threat family.
machineId | String | ID of a [machine](machine.md) entity that is associated with the alert.
comments | List of Alert comments | Alert Comment is an object that contains: comment string, createdBy string and createTime date time.
alertFiles | List of Alert Files | **This list will be populated on $expand option, see example below** Alert File is an object that contains: sha1, sha256, filePath and fileName. 
alertIPs | List of Alert IPs | **This list will be populated on $expand option, see example below** Alert IP is an object that contains: ipAddress string field. 
alertDomains | List of Alert Domains | **This list will be populated on $expand option, see example below** Alert Domain is an object that contains: host string field. 


# JSON representation:

- When querying for alert list the regular way (without expand option, e.g. https://api.securitycenter.windows.com/api/alerts) the expandable properties will not get populated (empty lists)
- To expand expandable properties use $expand option (e.g. to expand all send https://api.securitycenter.windows.com/api/alerts?$expand=files,ips,domains).
- When querying single alert all expandable properties will be expanded. 
- Check out [OData queries with Microsoft Defender ATP](exposed-apis-odata-samples.md) for more OData examples. 

## Response example for getting single alert:

```
GET https://api.securitycenter.windows.com/api/alerts/da637084217856368682_-292920499
```

```json
{
    "id": "da637084217856368682_-292920499",
    "incidentId": 66860,
    "investigationId": 4416234,
    "assignedTo": secop@contoso.com,
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
    ],
    "alertFiles": [
        {
            "sha1": "77e862797dd525fd3e9c3058153247945d0d4cfd",
            "sha256": "c05823562aee5e6d000b0e041197d5b8303f5aa4eecb49820879b705c926e16e",
            "filePath": "C:\\Users\\test1212\\AppData\\Local\\Temp\\nsf61D3.tmp.exe",
            "fileName": "nsf61D3.tmp.exe"
        }
    ],
    "alertDomains": [
        {
            "host": "login.bullguard.com"
        }
    ],
    "alertIps": [
        {
            "ipAddress": "91.231.212.53"
        }
    ]
}
```
