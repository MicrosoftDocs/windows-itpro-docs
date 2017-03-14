---
title: Security information and events management (SIEM) schema and portal mapping
description: Understand how the SIEM schema maps to the values in the Windows Defender ATP portal.
keywords: alerts, get alerts, rest api, request, response,
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# SIEM schema portal mapping

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Understand how the SIEM schema maps to the values in the Windows Defender ATP portal.

Field numbers match the numbers in the images.

(BORON image)

![Image of alert timeline with numbers](images/atp-alert-timeline-numbered.png)

![Image of new alerts with numbers](images/atp-alert-source.png)

(INSERT MACHINE TIMELINE WITH REMEDIATION ACTION)

![Image of file details](images/atp-file-details.png)


#				SIEM field name	Description	Matching field in the portal

Image label | SIEM field name | Description | Matching field in portal
:---|:---|:---|:---
1	| Actor |	Actor name when available or null	| Actor in alert page
2	|	Alert ID	| Alert id in WDATP	| Alert id is visible in the link: `https://securitycenter.windows.com/alert/<alert id>`
3	| LinkToWDATP |	Link back to the alert page in WDATP portal ||
4	|Severity |	High / Medium / Low / Informational	| Severity in alert page
5	| AlertTitle |	Title	| Alert title in alert page
6	| Category |	How the alert was categorized	| Category on alert page
7	| ComputerDnsName|	Computer DNS name (or GUID if machine has no reported DNS name)| Machine name in alert page
8	| IoaDefinitionId	| ID for which IOA (Indication of attack) this alert belongs to. **Note**: This is an internal ID of the rule which triggers the alert, provided as it can be used for aggregations in the SIEM.	| Internal field (usually correlates with the title)
9	|	AlertTime |	Last time the alert was observed	| Last Observed in alert page
10 | UserName	| The user context relevant to the activity on the machine which trigger the alert |	Not yet populated
11 | FileName	| File name	|Related file name
12 | FileHash	| Sha1 of file observed |	File Sha1 in alert timeline
13 | FilePath	| File path | File path in alert timeline
14 | IpAddress |	IP IOC | IP in alert timeline (when relevant)
15 | Url	| Url IOC |	URL in alert timeline (when relevant)
16 | FullId	| Unique ID for each combination of IOC + Alert ID. Enables to apply dedup logic in the SIEM.	| Internal field
17 | AlertPart	| Alerts which contains multiple IOCs will be split into several messages, each message contains one IOC and a running counter. The counter enables to reconstruct the alerts in the SIEM. | Internal field
18 | LastProccesedTimeUtc |	Time the alert was last processed in Seville| Internal field
19 | Source| Windows Defender AV/Windows Defender ATP
20 | ThreatCategory| Windows Defender AV threat category	| Windows Defender AV field
21 | ThreatFamily |	Windows Defender AV family	| Windows Defender AV field
22	|	ThreatName	| Windows Defender AV threat name |	Windows Defender AV field
23 | RemediationAction |	Windows Defender AV threat category	 | Windows Defender AV field
24 |	RemediationIsSuccess	| True/False	| Windows Defender AV field
25 | WasExecutingWhileDetected	| True/False	| Windows Defender AV field
26 | Sha1	| Sha1 of file observed	File Sha1 in alert timeline and in file side pane (when available)
27 | Sha256 |	Sha256 of file observed	| File Sha256 in file side pane (when available)
28 | Md5	| Md5 of file observed	| File Md5 in file side pane (when available)

>[!NOTE]
>A single AlertID represents an IOA detection and may contain multiple IOCs. In such a cases, they will be exported to the SIEM tool as multiple instances. For every instance with the same AlertID, fields #1-8 will be identical while fields #9-18 will be different according to the new IOC information. Fields #20-28 are related to Windows Defender AV alerts.
