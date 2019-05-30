---
title: 4948(S) A change has been made to Windows Firewall exception list. A rule was deleted. (Windows 10)
description: Describes security event 4948(S) A change has been made to Windows Firewall exception list. A rule was deleted.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4948(S): A change has been made to Windows Firewall exception list. A rule was deleted.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4948.png" alt="Event 4948 illustration" width="449" height="361" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)

***Event Description:***

This event generates when Windows Firewall rule was deleted.

This event doesn't generate when the rule was deleted via Group Policy.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4948</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13571</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-03T21:19:15.646187500Z" /> 
 <EventRecordID>1050934</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="528" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ProfileChanged">All</Data> 
 <Data Name="RuleId">{F2649D59-1355-4E3C-B886-CDD08B683199}</Data> 
 <Data Name="RuleName">Allow All Rule</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Profile Changed** \[Type = UnicodeString\]**:** the list of profiles to which deleted rule was applied. Examples:

-   All

-   Domain,Public

-   Domain,Private

-   Private,Public

-   Public

-   Domain

-   Private

**Deleted Rule:**

-   **Rule ID** \[Type = UnicodeString\]: the unique identifier for deleted firewall rule.

    To see the unique ID of the rule you need to navigate to “**HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules”** registry key and you will see the list of Windows Firewall rule IDs (Name column) with parameters:

<img src="images/registry-editor-firewallrules.png" alt="Registry Editor FirewallRules key illustration" width="1412" height="422" />

-   **Rule Name** \[Type = UnicodeString\]: the name of the rule which was deleted. You can see the name of Windows Firewall rule using Windows Firewall with Advanced Security management console (**wf.msc**), check “Name” column:

<img src="images/windows-firewall-with-advanced-security.png" alt="Windows Firewall with Advanced Security illustration" width="1082" height="363" />

## Security Monitoring Recommendations

For 4948(S): A change has been made to Windows Firewall exception list. A rule was deleted.

-   This event can be helpful in case you want to monitor all deletions of Firewall rules which were done locally.

