---
title: 5031(F) The Windows Firewall Service blocked an application from accepting incoming connections on the network. 
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
description: Describes security event 5031(F) The Windows Firewall Service blocked an application from accepting incoming connections on the network.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.topic: reference
---

# 5031(F): The Windows Firewall Service blocked an application from accepting incoming connections on the network.


<img src="images/event-5031.png" alt="Event 5031 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Filtering Platform Connection](audit-filtering-platform-connection.md)

***Event Description:***

This event generates when an application was blocked from accepting incoming connections on the network by [Windows Filtering Platform](/windows/win32/fwp/windows-filtering-platform-start-page).

If you don’t have any firewall rules (Allow or Deny) in Windows Firewall for specific applications, you'll get this event from [Windows Filtering Platform](/windows/win32/fwp/windows-filtering-platform-start-page) layer, because by default this layer is denying any incoming connections.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5031</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12810</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-22T03:46:36.634473000Z" /> 
 <EventRecordID>304373</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="2976" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="Profiles">Domain</Data> 
 <Data Name="Application">C:\\documents\\listener.exe</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

-   **Profiles** \[Type = UnicodeString\]: network profile using which application was blocked. Possible values:

    -   Domain

    -   Public

    -   Private

-   **Application** \[Type = UnicodeString\]: full path and file name of executable file for blocked application.

## Security Monitoring Recommendations

For 5031(F): The Windows Firewall Service blocked an application from accepting incoming connections on the network.

-   You can use this event to detect applications for which no Windows Firewall rules were created.

-   If you have a pre-defined application that should be used to perform the operation that was reported by this event, monitor events with “**Application**” not equal to your defined application.

-   You can monitor to see if “**Application**” isn't in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

-   If you have a pre-defined list of restricted substrings or words in application names (for example, “**mimikatz**” or “**cain.exe**”), check for these substrings in “**Application**.”