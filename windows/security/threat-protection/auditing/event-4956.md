---
title: 4956(S) Windows Firewall has changed the active profile. (Windows 10)
description: Describes security event 4956(S) Windows Firewall has changed the active profile.
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.technology: itpro-security
ms.topic: reference
---

# 4956(S): Windows Firewall has changed the active profile.


<img src="images/event-4956.png" alt="Event 4956 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)

***Event Description:***

This event generates when Windows Firewall has changed the active profile.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4956</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13571</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-03T00:14:56.676017600Z" /> 
 <EventRecordID>1050811</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="2216" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ActiveProfile">Domain</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**New Active Profile** \[Type = UnicodeString\]**:** the name of the new active profile. Possible values are:

-   Domain

-   Public

-   Private

## Security Monitoring Recommendations

For 4956(S): Windows Firewall has changed the active profile.

-   Typically this event has an informational purpose.

-   For domain joined machines you could monitor for all events where **New Active Profile** doesn’t equal **“Domain”**. This indicates that the computer was connected to another non-domain network.

