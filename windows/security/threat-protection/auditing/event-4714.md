---
title: 4714(S) Encrypted data recovery policy was changed. (Windows 10)
description: Describes security event 4714(S) Encrypted data recovery policy was changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4714(S): Encrypted data recovery policy was changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4714.png" alt="Event 4714 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Description:***

This event generates when a Data Recovery Agent group policy for Encrypting File System ([EFS](https://technet.microsoft.com/library/cc700811.aspx)) has changed.

This event generates when a Data Recovery Agent certificate or [Data Recovery Agent policy](https://technet.microsoft.com/library/cc778208(v=ws.10).aspx) was changed for the computer or device.

In the background, this event generates when the [\\HKLM\\Software\\Policies\\Microsoft\\SystemCertificates\\EFS\\EfsBlob](https://msdn.microsoft.com/library/cc232284.aspx) registry value is changed during a Group Policy update.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-a5ba-3e3b0328c30d}" /> 
 <EventID>4714</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13573</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-08T05:27:40.740602500Z" /> 
 <EventRecordID>1080883</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="524" ThreadID="4856" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <ProcessingErrorData>
 <ErrorCode>13</ErrorCode> 
 <DataItemName>SubjectUserSid</DataItemName> 
 <EventPayload /> 
 </ProcessingErrorData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

For 4714(S): Encrypted data recovery policy was changed.

-   We recommend monitoring this event and if the change was not planned, investigate the reason for the change.

