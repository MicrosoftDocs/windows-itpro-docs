---
title: 4953(F) Windows Firewall ignored a rule because it could not be parsed. (Windows 10)
description: Describes security event 4953(F) Windows Firewall ignored a rule because it could not be parsed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4953(F): Windows Firewall ignored a rule because it could not be parsed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4953.png" alt="Event 4953 illustration" width="449" height="375" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)

***Event Description:***

This event generates if Windows Firewall was not able to parse Windows Firewall rule for some reason.

It can happen if Windows Firewall rule registry entry was corrupted.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4953</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13571</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-07T22:03:40.261507200Z" /> 
 <EventRecordID>1052340</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="524" ThreadID="5088" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="Profile">All</Data> 
 <Data Name="ReasonForRejection">An error occurred.</Data> 
 <Data Name="RuleId">{08CBB349-D158-46BE-81E1-2ABC59BDD523}</Data> 
 <Data Name="RuleName">-</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Profile** \[Type = UnicodeString\]**:** the name of the profile of the ignored rule. Possible values are:

-   All

-   Domain,Public

-   Domain,Private

-   Private,Public

-   Public

-   Domain

-   Private

**Reason for Rejection** \[Type = UnicodeString\]**:** the reason, why the rule was ignored.

**Rule:**

-   **ID** \[Type = UnicodeString\]: the unique identifier for ignored firewall rule.

    To see the unique ID of the rule you need to navigate to “**HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules”** registry key and you will see the list of Windows Firewall rule IDs (Name column) with parameters:

<img src="images/registry-editor-firewallrules.png" alt="Registry Editor FirewallRules key illustration" width="1412" height="422" />

-   **Name** \[Type = UnicodeString\]: the name of the rule which was ignored. You can see the name of Windows Firewall rule using Windows Firewall with Advanced Security management console (**wf.msc**), check “Name” column:

<img src="images/windows-firewall-with-advanced-security.png" alt="Windows Firewall with Advanced Security illustration" width="1082" height="363" />

## Security Monitoring Recommendations

For 4953(F): Windows Firewall ignored a rule because it could not be parsed.

-   This event can be a sign of software issues, Windows Firewall registry errors or corruption, or Group Policy setting misconfigurations. We recommend monitoring this event and investigating the reason for the condition. Typically this event indicates configuration issues, not security issues.

