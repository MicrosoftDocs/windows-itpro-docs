---
title: 4906(S) The CrashOnAuditFail value has changed. 
description: Describes security event 4906(S) The CrashOnAuditFail value has changed.
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

# 4906(S): The CrashOnAuditFail value has changed.


<img src="images/event-4906.png" alt="Event 4906 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Policy Change](audit-audit-policy-change.md)

***Event Description:***

This event generates every time **CrashOnAuditFail** audit flag value was modified.

This event is always logged regardless of the "Audit Policy Change" sub-category setting.

More information about **CrashOnAuditFail** flag can be found [here](/previous-versions/windows/it-pro/windows-2000-server/cc963220(v=technet.10)).

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4906</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13568</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-01T00:45:07.048458800Z" /> 
 <EventRecordID>1049529</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="532" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="CrashOnAuditFailValue">1</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**New Value of CrashOnAuditFail** \[Type = UInt32\]**:** contains new value of **CrashOnAuditFail** flag. Possible values are:

-   0 - The feature is off. The system does not halt, even when it cannot record events in the Security Log.

-   1 - The feature is on. The system halts when it cannot record an event in the Security Log.

-   2 - The feature is on and has been triggered. The system halted because it could not record an auditable event in the Security Log. Only members of the Administrators group can log on.

## Security Monitoring Recommendations

For 4906(S): The CrashOnAuditFail value has changed.

-   Any changes of **CrashOnAuditFail** audit flag that are reported by this event must be monitored, and an alert should be triggered. If this change was not planned, investigate the reason for the change.