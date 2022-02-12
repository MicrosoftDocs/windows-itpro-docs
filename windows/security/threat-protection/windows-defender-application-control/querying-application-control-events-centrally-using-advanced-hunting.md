---
title: Query Application Control events with Advanced Hunting (Windows)
description: Learn how to query Windows Defender Application Control events across your entire organization by using Advanced Hunting.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 12/06/2018
ms.technology: windows-sec
---

# Querying Application Control events centrally using Advanced hunting  

A Windows Defender Application Control (WDAC) policy logs events locally in Windows Event Viewer in either enforced or audit mode. 
While Event Viewer helps to see the impact on a single system, IT Pros want to gauge the impact across many systems. 

In November 2018, we added functionality in Microsoft Defender for Endpoint that makes it easy to view WDAC events centrally from all systems that are connected to Defender for Endpoint. 

Advanced hunting in Microsoft Defender for Endpoint allows customers to query data using a rich set of capabilities. WDAC events can be queried with using an ActionType that starts with “AppControl”. 
This capability is supported beginning with Windows version 1607.

## Action Types

| ActionType Name | Description |
| - | - |
| AppControlPolicyApplied | WDAC policy successfully deployed event |
| AppControlExecutableAudited | WDAC policy user mode binary audited |
| AppControlCodeIntegritySigningInformation | WDAC policy user mode binary audit event associated signing information |
| AppControlCodeIntegrityPolicyAudited |  |
| AppControlCodeIntegrityOriginAudited | The user mode binary would have been blocked because of managed installer or the reputation returned by ISG. Since the policy is in audit mode, the app was allowed to run |
| AppControlCodeIntegrityOriginAllowed | The user mode binary was allowed because of managed installer or the reputation returned by ISG |
| AppControlCIScriptAudited | The script would have been blocked by WDAC. Since the policy is in audit mode, the app was allowed to run |

Here is a simple example query that shows all the WDAC events generated in the last seven days from machines being monitored by Microsoft Defender for Endpoint:

```
DeviceEvents
| where Timestamp > ago(7d) and
ActionType startswith "AppControl"
| summarize Machines=dcount(DeviceName) by ActionType
| order by Machines desc
```

The query results can be used for several important functions related to managing WDAC including:

- Assessing the impact of deploying policies in audit mode 
  Since applications still run in audit mode, it is an ideal way to see the impact and correctness of the rules included in the policy. Integrating the generated events with Advanced hunting makes it much easier to have broad deployments of audit mode policies and see how the included rules would impact those systems in real world usage. This audit mode data will help streamline the transition to using policies in enforced mode.
- Monitoring blocks from policies in enforced mode
  Policies deployed in enforced mode may block executables or scripts that fail to meet any of the included allow rules. Legitimate new applications and updates or potentially unwanted or malicious software could be blocked. In either case, the Advanced hunting queries report the blocks for further investigation. 

Query Example 1:
Context: Query the application control action types summarized by type for past 7 days
```
DeviceEvents
| where Timestamp > ago(7d)
| where ActionType startswith "AppControl"
| summarize Count = count() by ActionType
| order by Count desc
```

Query Example #2:

Context: Query to determine audit blocks in the past 7 days
```
DeviceEvents 
| where ActionType startswith "AppControlExecutableAudited"
| where Timestamp > ago(7d)
|project DeviceId, // the device ID where the audit block happened
FileName, // The audit blocked app's filename
FolderPath, // The audit blocked app's device path
InitiatingProcessFileName, // The file name of the parent process loading the executable
InitiatingProcessVersionInfoCompanyName, // The company name of the parent process loading the executable
InitiatingProcessVersionInfoOriginalFileName, // The original file name of the parent process loading the executable
InitiatingProcessVersionInfoProductName, // The product name of the parent process loading the executable
InitiatingProcessSHA256, // The SHA256 of the parent process loading the executable
Timestamp, // The timestamp
ReportId, // The report ID
InitiatingProcessVersionInfoProductVersion, // The product version of the parent process loading the executable
InitiatingProcessVersionInfoFileDescription, // The file description of the parent process loading the executable
AdditionalFields
```