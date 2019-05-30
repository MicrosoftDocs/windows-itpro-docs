---
title: 5024(S) The Windows Firewall Service has started successfully. (Windows 10)
description: Describes security event 5024(S) The Windows Firewall Service has started successfully.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 5024(S): The Windows Firewall Service has started successfully.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-5024.png" alt="Event 5024 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other System Events](audit-other-system-events.md)

***Event Description:***

This event generates when Windows Firewall (MpsSvc) service has started successfully.

This event is typically logged during operating system startup process.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5024</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12292</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-09T03:22:53.842816300Z" /> 
 <EventRecordID>1101613</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="528" /> 
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

For 5024(S): The Windows Firewall Service has started successfully.

-   Typically this event has an informational purpose. It’s logged during operating system startup process.

-   You should not see this event after system startup, so we recommend that you monitor it when it occurs outside the system startup process.

