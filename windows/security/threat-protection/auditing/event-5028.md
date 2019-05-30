---
title: 5028(F) The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy. (Windows 10)
description: Describes security event 5028(F) The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 5028(F): The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-5028.png" alt="Event 5028 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other System Events](audit-other-system-events.md)

***Event Description:***

This error indicates one of two situations, low memory resources or Windows Firewall group policy registry corruption.

Typically if this event occurs it indicates that Windows Firewall service was not able to start.

It typically occurs with “[5027](event-5027.md)(S): The Windows Firewall Service was unable to retrieve the security policy from the local storage. The service will continue enforcing the current policy.”

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5028</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12292</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-13T23:10:05.318922900Z" /> 
 <EventRecordID>1101849</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="2000" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ErrorCode">2147942413</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Error Code** \[Type = UInt32\]**:** unique error code. For information about error codes meanings for this event use <https://technet.microsoft.com/> or other informational resources.

## Security Monitoring Recommendations

For 5028(F): The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy.

-   This event can be a sign of software or operating system issues, Windows Firewall registry errors or corruption, or Group Policy setting misconfigurations. We recommend monitoring this event and investigating the reason for the condition. Typically this event indicates configuration issues, not security issues.

