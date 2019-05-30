---
title: 4690(S) An attempt was made to duplicate a handle to an object. (Windows 10)
description: Describes security event 4690(S) An attempt was made to duplicate a handle to an object.
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

# 4690(S): An attempt was made to duplicate a handle to an object.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4690.png" alt="Event 4690 illustration" width="449" height="463" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Handle Manipulation](audit-handle-manipulation.md)

***Event Description:***

This event generates if an attempt was made to duplicate a handle to an object.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4690</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12807</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-23T00:17:41.755998800Z" /> 
 <EventRecordID>338632</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="1100" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DC01$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="SourceHandleId">0x438</Data> 
 <Data Name="SourceProcessId">0x674</Data> 
 <Data Name="TargetHandleId">0xd9c</Data> 
 <Data Name="TargetProcessId">0x4</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made an attempt to duplicate a handle to an object. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made an attempt to duplicate a handle to an object.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Source Handle Information:**

-   **Source Handle ID** \[Type = Pointer\]: hexadecimal value of a handle which was duplicated. This field can help you correlate this event with other events, for example “4663: An attempt was made to access an object” in [Audit File System](audit-file-system.md), [Audit Kernel Object](audit-kernel-object.md), [Audit Registry](audit-registry.md), [Audit Removable Storage](audit-removable-storage.md) or [Audit SAM](audit-sam.md) subcategories.

-   **Source Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process which opened the **Source Handle ID** before it was duplicated. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

**New Handle Information:**

-   **Target Handle ID** \[Type = Pointer\]: hexadecimal value of the new handle (the copy of **Source Handle ID**). This field can help you correlate this event with other events, for example “4663: An attempt was made to access an object” in [Audit File System](audit-file-system.md), [Audit Kernel Object](audit-kernel-object.md), [Audit Registry](audit-registry.md), [Audit Removable Storage](audit-removable-storage.md) or [Audit SAM](audit-sam.md) subcategories.

-   **Target Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process which opened the **Target Handle ID**. Process ID (PID) is a number used by the operating system to uniquely identify an active process. You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID** field.

## Security Monitoring Recommendations

For 4690(S): An attempt was made to duplicate a handle to an object.

-   Typically this event has little to no security relevance and is hard to parse or analyze. There is no recommendation for this event, unless you know exactly what you need to monitor with it.

-   This event can be used to track all actions or operations related to a specific object handle.

