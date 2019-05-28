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
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Represents an alert entity in Microsoft Defender ATP.

# Methods
Method|Return Type |Description
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
incidentId | String | The [Incident](incidents-queue.md) ID of the Alert. 
assignedTo | String | Owner of the alert.
severity | Enum | Severity of the alert. Possible values are: 'UnSpecified', 'Informational', 'Low', 'Medium' and 'High'.
status | Enum | Specifies the current status of the alert. Possible values are: 'Unknown', 'New', 'InProgress' and 'Resolved'.
investigationState | Nullable Enum | The current state of the investigation. Possible values are: 'Unknown', 'Terminated', 'SuccessfullyRemediated', 'Benign Failed PartiallyRemediated', 'Running', 'PendingApproval', 'PendingResource', 'PartiallyInvestigated', 'TerminatedByUser', 'TerminatedBySystem', 'Queued', 'InnerFailure', 'PreexistingAlert', 'UnsupportedOs', 'UnsupportedAlertType', 'SuppressedAlert' .
classification | Nullable Enum | Specification of the alert. Possible values are: 'Unknown', 'FalsePositive', 'TruePositive'. 
determination | Nullable Enum | Specifies the determination of the alert. Possible values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'.
category| String | Category of the alert. Possible values are: 'Collection', 'Command and control', 'Credential access', 'Defense evasion', 'Discovery', 'Execution', 'Exfiltration', 'Exploit', 'Initial access', 'Lateral movement', 'Malware', 'Persistence', 'Privilege escalation', 'Ransomware', 'Suspicious activity', 'Unwanted software'. 
detectionSource | string | Detection source.
threatFamilyName | string | Threat family.
title | string | Alert title.
description | String | Description of the threat, identified by the alert.
alertCreationTime | DateTimeOffset | The date and time (in UTC) the alert was created.
lastEventTime | DateTimeOffset | The last occurance of the event that triggered the alert on the same machine.
firstEventTime | DateTimeOffset | The first occurance of the event that triggered the alert on that machine.
resolvedTime | DateTimeOffset | The date and time in which the status of the alert was changed to 'Resolved'.
machineId | String | ID of a [machine](machine.md) entity that is associated with the alert.

# JSON representation
```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
    "id": "121688558380765161_2136280442",
	"incidentId": 7696,
	"assignedTo": "secop@contoso.com",
	"severity": "High",
	"status": "New",
	"classification": "TruePositive",
	"determination": "Malware",
	"investigationState": "Running",
	"category": "MalwareDownload",
	"detectionSource": "WindowsDefenderAv",
	"threatFamilyName": "Mikatz",
	"title": "Windows Defender AV detected 'Mikatz', high-severity malware",
	"description": "Some description"
	"alertCreationTime": "2018-11-26T16:19:21.8409809Z",
	"firstEventTime": "2018-11-26T16:17:50.0948658Z",
	"lastEventTime": "2018-11-26T16:18:01.809871Z",
	"resolvedTime": null,
	"machineId": "9d80fbbc1bdbc5ce968f1d37c72384cbe17ee337"
}
```
