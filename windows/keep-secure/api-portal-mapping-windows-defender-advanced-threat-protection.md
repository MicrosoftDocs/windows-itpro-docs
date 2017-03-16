---
title: Windows Defender ATP alert API fields
description: Understand how the alert API fields map to the values in the Windows Defender ATP portal.
keywords: alerts, alert fields, fields, api, fields, pull alerts, rest api, request, response
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Windows Defender ATP alert API fields

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


#	SIEM fields and portal mapping

Portal label | SIEM field name | Description
:---|:---|:---
1	| Actor |	Actor name
2	|	Alert ID	| Alert ID visible in the link: `https://securitycenter.windows.com/alert/<alert id>`
3	| LinkToWDATP |	Link back to the alert page in Windows Defender ATP portal |
4	|Severity |	Alert severity
5	| AlertTitle | Alert	title
6	| Category |	Alert category
7	| ComputerDnsName|	Computer DNS name and machine name
8	| IoaDefinitionId	| (Internal only)  <br><br>  ID for the IOA (Indication of attack) that this alert belongs to. It usually correlates with the title. <br><br> **Note**: This is an internal ID of the rule which triggers the alert. It's provided here as it can be used for aggregations in the SIEM.
9	|	AlertTime |	Last time the alert was observed
10 | UserName	| The user context relevant to the activity on the machine which triggered the alert.
11 | FileName	| File name
12 | FileHash	| Sha1 of file observed
13 | FilePath	| File path
14 | IpAddress |	IP of the IOC (when relevant)
15 | URL	| URL of the IOC (when relevant)  
16 | FullId	| (Internal only)  <br><br> Unique ID for each combination of IOC and Alert ID. Provides the ability to apply dedup logic in the SIEM.
17 | AlertPart	| (Internal only)  <br><br> Alerts which contain multiple IOCs will be split into several messages, each message contains one IOC and a running counter. The counter provides the ability to reconstruct the alerts in the SIEM.
18 | LastProccesedTimeUtc | (Internal only)  <br><br>	Time the alert was last processed in Windows Defender ATP.
19 | Source| Alert detection source (Windows Defender AV or Windows Defender ATP)
20 | ThreatCategory| Windows Defender AV threat category
21 | ThreatFamily |	Windows Defender AV family name
22	|	ThreatName	| Windows Defender AV threat name
23 | RemediationAction |	Windows Defender AV threat category	 |
24 |	RemediationIsSuccess	| Indicates if an alert was successfully remediated. (Windows Defender AV field)
25 | WasExecutingWhileDetected	| Indicates if a file was running while being detected. (Windows Defender AV field)
26 | Sha1	| Sha1 of file observed	in alert timeline and in file side pane (when available)
27 | Sha256 |	Sha256 of file observed	(when available)
28 | Md5	| Md5 of file observed	(when available)

>[!NOTE]
>A single AlertID represents an IOA detection and may contain multiple IOCs. In such a cases, they will be exported to the SIEM tool as multiple instances. For every instance with the same AlertID, fields #1-8 will be identical while fields #9-18 will be different according to the new IOC information. Fields #20-28 are related to Windows Defender AV alerts.
