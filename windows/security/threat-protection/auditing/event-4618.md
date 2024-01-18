---
title: 4618(S) A monitored security event pattern has occurred. 
description: Describes security event 4618(S) A monitored security event pattern has occurred.
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

# 4618(S): A monitored security event pattern has occurred.


***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

This event can be generated (invoked) only externally using the following command:

**%windir%\\system32\\rundll32 %windir%\\system32\\authz.dll,AuthziGenerateAdminAlertAudit OrgEventId ComputerName UserSid UserName UserDomain UserLogonId EventCount Duration**

Account must have **SeAuditPrivilege** (Generate security audits) to be able to generate this event.

-   **UserSid** is resolved when viewing the event in event viewer.

-   Only **OrgEventID**, **ComputerName**, and **EventCount** are required—others are optional. Fields not specified appear with “**-**“ in the event description field.

-   If a field doesn’t match the expected data type, the event is not generated. That is, if **EventCount** = “XYZ”, then no event is generated.

-   **UserSid**, **UserName**, and **UserDomain** are not related to each other (think **SubjectUser** fields, where they are)

-   Parameters are space delimited, even if a parameter is enclosed in double-quotes.

-   Here are the expected data types for the parameters:

| Parameter    | Expected Data Type                               |
|--------------|--------------------------------------------------|
| OrgEventID   | Ulong                                            |
| ComputerName | String                                           |
| UserSid      | SID (in string format)                           |
| UserName     | String                                           |
| UserDomain   | String                                           |
| UserLogonID  | Luid (a ULongLong converted to Hex in the event) |
| EventCount   | Ulong                                            |
| Duration     | String                                           |

<img src="images/event-4618.png" alt="Event 4618 illustration" width="449" height="494" hspace="10" align="left" />

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4618</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12290</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-11T21:42:33.264246700Z" /> 
 <EventRecordID>1198759</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="528" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="EventId">4624</Data> 
 <Data Name="ComputerName">DC01.contoso.local</Data> 
 <Data Name="TargetUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="TargetUserName">dadmin</Data> 
 <Data Name="TargetUserDomain">CONTOSO</Data> 
 <Data Name="TargetLogonId">0x1</Data> 
 <Data Name="EventCount">10</Data> 
 <Data Name="Duration">“Hour"</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

For 4618(S): A monitored security event pattern has occurred.

-   This event can be invoked only manually/intentionally, it is up to you how to interpret this event depends on information you put inside of it.

