---
title: 4945(S) A rule was listed when the Windows Firewall started. 
description: Describes security event 4945(S) A rule was listed when the Windows Firewall started.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4945(S): A rule was listed when the Windows Firewall started.


<img src="images/event-4945.png" alt="Event 4945 illustration" width="449" height="354" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)

***Event Description:***

This event generates every time Windows Firewall service starts.

This event shows the inbound and/or outbound rule that was listed when the Windows Firewall started and applied for “Public” profile.

This event generates per rule.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4945</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13571</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-02T23:48:27.535295100Z" /> 
 <EventRecordID>1049946</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="4744" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ProfileUsed">Public</Data> 
 <Data Name="RuleId">NPS-NPSSvc-In-RPC</Data> 
 <Data Name="RuleName">Network Policy Server (RPC)</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Profile used** \[Type = UnicodeString\]**:** the name of the profile that the rule belongs to. It always has value “**Public”**, because this event shows rules only for “Public” profile.

**Rule:**

-   **Rule ID** \[Type = UnicodeString\]: the unique firewall rule identifier.

    To see the unique ID of the rule, you need to navigate to “**HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules”** registry key and you'll see the list of Windows Firewall rule IDs (Name column) with parameters:

<img src="images/registry-editor-firewallrules.png" alt="Registry Editor FirewallRules key illustration" width="1412" height="422" />

-   **Rule Name** \[Type = UnicodeString\]: the name of the rule that was listed when the Windows Firewall started. You can see the name of Windows Firewall rule using Windows Firewall with Advanced Security management console (**wf.msc**), check “Name” column:

<img src="images/windows-firewall-with-advanced-security.png" alt="Windows Firewall with Advanced Security illustration" width="1082" height="363" />

## Security Monitoring Recommendations

For 4945(S): A rule was listed when the Windows Firewall started.

-   Typically this event has an informational purpose.

-   Unfortunately this event shows rules only for **Public** profile, but you still can compare this list with your organization's Windows Firewall baseline for Public profile rules on different computers, and trigger an alert if the configuration isn't the same.

