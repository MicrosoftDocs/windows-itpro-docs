---
title: 4935(F) Replication failure begins. (Windows 10)
description: Describes security event 4935(F) Replication failure begins.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4935(F): Replication failure begins.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4935.png" alt="Event 4935 illustration" width="448" height="312" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Detailed Directory Service Replication](audit-detailed-directory-service-replication.md)

***Event Description:***

This event generates when Active Directory replication failure begins.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4935</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>14083</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-27T18:54:48.758149800Z" /> 
 <EventRecordID>1552</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="504" ThreadID="524" /> 
 <Channel>Security</Channel> 
 <Computer>Win2012r2.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ReplicationEvent">1</Data> 
 <Data Name="AuditStatusCode">8419</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Replication Event** \[Type = UInt32\]**:** there is no detailed information about this field in this document.

**Audit Status Code** \[Type = UInt32\]**:** there is no detailed information about this field in this document.

## Security Monitoring Recommendations

For 4935(F): Replication failure begins.

-   This event is typically used for Active Directory replication troubleshooting.

