---
title: 4608(S) Windows is starting up. 
description: Describes security event 4608(S) Windows is starting up. This event is logged when the LSASS.EXE process starts and the auditing subsystem is initialized.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4608(S): Windows is starting up.


<img src="images/event-4608.png" alt="Event 4608 illustration" width="449" height="317" hspace="10" align="top" />

***Subcategory:***&nbsp;[Audit Security State Change](audit-security-state-change.md)

***Event Description:***

This event is logged when LSASS.EXE process starts and the auditing subsystem is initialized.

It typically generates during operating system startup process.

> [!NOTE]
> For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```xml
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4608</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12288</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-09T05:25:38.222242500Z" /> 
 <EventRecordID>1101704</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="508" ThreadID="512" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
 <EventData /> 
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

For 4608(S): Windows is starting up.

-   With this event, you can track system startup events.

