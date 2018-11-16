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
id | String | Alert ID
severity | String | Severity of the alert. Allowed values are: 'Low', 'Medium' and 'High'.
status | String | Specifies the current status of the alert. The property values are: 'New', 'InProgress' and 'Resolved'.
description | String | Description of the threat, identified by the alert.
recommendedAction | String | Action recommended for handling the suspected threat.
alertCreationTime | DateTimeOffset | The date and time (in UTC) the alert was created.
category| String | Category of the alert. The property values are: 'None', 'SuspiciousActivity', 'Malware', 'CredentialTheft', 'Exploit', 'WebExploit', 'DocumentExploit', 'PrivilegeEscalation', 'Persistence', 'RemoteAccessTool', 'CommandAndControl', 'SuspiciousNetworkTraffic', 'Ransomware', 'MalwareDownload', 'Reconnaissance', 'WebFingerprinting', 'Weaponization', 'Delivery', 'SocialEngineering', 'CredentialStealing', 'Installation', 'Backdoor', 'Trojan', 'TrojanDownloader', 'LateralMovement', 'ExplorationEnumeration', 'NetworkPropagation', 'Exfiltration', 'NotApplicable', 'EnterprisePolicy' and	'General'.
title | string | Alert title
threatFamilyName | string | Threat family
detectionSource | string | Detection source 
assignedTo | String | Owner of the alert
classification | String | Specification of the alert. The property values are: 'Unknown', 'FalsePositive', 'TruePositive'. 
determination | String | Specifies the determination of the alert. The property values are: 'NotAvailable', 'Apt', 'Malware', 'SecurityPersonnel', 'SecurityTesting', 'UnwantedSoftware', 'Other'
resolvedTime | DateTimeOffset | The date and time in which the status of the alert was changed to 'Resolved'.
lastEventTime | DateTimeOffset | The last occurance of the event that triggered the alert on the same machine.
firstEventTime | DateTimeOffset | The first occurance of the event that triggered the alert on that machine.
machineId | String | ID of a [machine](machine-windows-defender-advanced-threat-protection-new.md) entity that is associated with the alert.

# JSON representation
```
{
    "@odata.context": "https://api.securitycenter.windows.com/api/$metadata#Alerts",
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
}
```
