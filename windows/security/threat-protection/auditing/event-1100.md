---
title: 1100(S) The event logging service has shut down. (Windows 10)
description: Describes security event 1100(S) The event logging service has shut down.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dulcemontemayor
ms.date: 04/19/2017
---

# 1100(S): The event logging service has shut down.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-1100.png" alt="Event 1100 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Other Events](other-events.md)

***Event Description:***

This event generates every time Windows Event Log service has shut down.

It also generates during normal system shutdown.

This event doesn’t generate during emergency system reset.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Eventlog" Guid="{fc65ddd8-d6ef-4962-83d5-6e5cfe9ce148}" /> 
 <EventID>1100</EventID> 
 <Version>0</Version> 
 <Level>4</Level> 
 <Task>103</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x4020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-15T07:02:20.010585400Z" /> 
 <EventRecordID>1048124</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="820" ThreadID="964" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <UserData>
 <ServiceShutdown xmlns="http://manifests.microsoft.com/win/2004/08/windows/eventlog" /> 
 </UserData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

For 1100(S): The event logging service has shut down.

-   With this event, you can track system shutdowns and restarts.

-   This event also can be a sign of malicious action when someone tried to shut down the Log Service to cover his or her activity.

