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
ms.date: 12/08/2017
---

# Alert resource type
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Represents an alert entity in WDATP.

# Methods
Method|Return Type |Description
:---|:---|:---
[Get alert](get-alert-info-by-id-windows-defender-advanced-threat-protection-new.md) | [Alert](alerts-windows-defender-advanced-threat-protection-new.md) | Get a single [alert](alerts-windows-defender-advanced-threat-protection-new.md) object.
[List alerts](get-alerts-windows-defender-advanced-threat-protection-new.md) | [Alert](alerts-windows-defender-advanced-threat-protection-new.md) collection | List [alert](alerts-windows-defender-advanced-threat-protection-new.md) collection.
[Create alert](create-alert-by-reference-windows-defender-advanced-threat-protection-new.md)|[Alert](alerts-windows-defender-advanced-threat-protection-new.md)|Create an alert based on event data obtained from [Advanced Hunting](run-advanced-query-api.md).
[List related domains](get-alert-related-domain-info-windows-defender-advanced-threat-protection-new.md)|Domain collection| List URLs associated with the alert.
[List related files](get-alert-related-files-info-windows-defender-advanced-threat-protection-new.md) | [File](files-windows-defender-advanced-threat-protection-new.md) collection |  List the [file](files-windows-defender-advanced-threat-protection-new.md) entities that are associated with the [alert](alerts-windows-defender-advanced-threat-protection-new.md).
[List related IPs](get-alert-related-ip-info-windows-defender-advanced-threat-protection-new.md) | IP collection | List IPs that are associated with the alert.
[Get related machines](get-alert-related-machine-info-windows-defender-advanced-threat-protection-new.md) | [Machine](machine-windows-defender-advanced-threat-protection-new.md) | The [machine](machine-windows-defender-advanced-threat-protection-new.md) that is associated with the [alert](alerts-windows-defender-advanced-threat-protection-new.md).
[Get related users](get-alert-related-user-info-windows-defender-advanced-threat-protection-new.md) | [User](user-windows-defender-advanced-threat-protection-new.md) | The [user](user-windows-defender-advanced-threat-protection-new.md) that is associated with the [alert](alerts-windows-defender-advanced-threat-protection-new.md).


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
category| String | Category of the alert. The property values are: 'None', 'SuspiciousActivity', 'Malware', 'CredentialTheft', 'Exploit', 'WebExploit', 'DocumentExploit', 'PrivilegeEscalation', 'Persistence', 'RemoteAccessTool', 'CommandAndControl', 'SuspiciousNetworkTraffic', 'Ransomware', 'MalwareDownload', 'Reconnaissance', 'WebFingerprinting', 'Weaponization', 'Delivery', 'SocialEngineering', 'CredentialStealing', 'Installation', 'Backdoor', 'Trojan', 'TrojanDownloader', 'LateralMovement', 'ExplorationEnumeration', 'NetworkPropagation', 'Exfiltration', 'NotApplicable', 'EnterprisePolicy' and	'General' .
detectionSource | string | Detection source.
threatFamilyName | string | Threat family.
title | string | Alert title.
description | String | Description of the threat, identified by the alert.
recommendedAction | String | Action recommended for handling the suspected threat.
alertCreationTime | DateTimeOffset | The date and time (in UTC) the alert was created.
lastEventTime | DateTimeOffset | The last occurance of the event that triggered the alert on the same machine.
firstEventTime | DateTimeOffset | The first occurance of the event that triggered the alert on that machine.
resolvedTime | DateTimeOffset | The date and time in which the status of the alert was changed to 'Resolved'.
machineId | String | ID of a [machine](machine-windows-defender-advanced-threat-protection-new.md) entity that is associated with the alert.

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
	"recommendedAction": "Some recommended action"
	"alertCreationTime": "2018-11-26T16:19:21.8409809Z",
	"firstEventTime": "2018-11-26T16:17:50.0948658Z",
	"lastEventTime": "2018-11-26T16:18:01.809871Z",
	"resolvedTime": null,
	"machineId": "9d80fbbc1bdbc5ce968f1d37c72384cbe17ee337"
}
```
