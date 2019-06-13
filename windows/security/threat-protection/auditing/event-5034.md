---
title: 5034(S) The Windows Firewall Driver was stopped. (Windows 10)
description: Describes security event 5034(S) The Windows Firewall Driver was stopped.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 5034(S): The Windows Firewall Driver was stopped.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-5034.png" alt="Event 5034 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other System Events](audit-other-system-events.md)

***Event Description:***

This event generates when Windows Firewall driver (Windows Firewall Authorization Driver service) was stopped.

This event is NOT logged during the operating system shutdown process.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5034</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12292</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-13T23:40:55.482270000Z" /> 
 <EventRecordID>1101856</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="140" /> 
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

For 5034(S): The Windows Firewall Driver was stopped.

-   This event is NOT logged during the operating system shutdown process.

-   You should not see this event during normal operating system operations, so we recommend that when it occurs, you investigate why the Windows Firewall driver was stopped.

