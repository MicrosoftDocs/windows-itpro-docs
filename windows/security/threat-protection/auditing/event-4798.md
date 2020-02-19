---
title: 4798(S) A user's local group membership was enumerated. (Windows 10)
description: Describes security event 4798(S) A user's local group membership was enumerated.
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

# 4798(S): A user's local group membership was enumerated.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4798.png" alt="Event 4798 illustration" width="438" height="402" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit User Account Management](audit-user-account-management.md)

***Event Description:***

This event generates when a process enumerates a user's security-enabled local groups on a computer or device.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4798</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13824</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-12T04:14:17.436787700Z" /> 
 <EventRecordID>691</EventRecordID> 
 <Correlation ActivityID="{CBAEDE08-1CF0-0000-50DE-AECBF01CD101}" /> 
 <Execution ProcessID="744" ThreadID="3928" /> 
 <Channel>Security</Channel> 
 <Computer>WIN10-1.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="TargetUserName">Administrator</Data> 
 <Data Name="TargetDomainName">WIN10-1</Data> 
 <Data Name="TargetSid">S-1-5-21-1694160624-234216347-2203645164-500</Data> 
 <Data Name="SubjectUserSid">S-1-5-21-1377283216-344919071-3415362939-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x72d9d</Data> 
 <Data Name="CallerProcessId">0xc80</Data> 
 <Data Name="CallerProcessName">C:\\Windows\\System32\\mmc.exe</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** none.

***Minimum OS Version:*** Windows Server 2016, Windows 10.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the “enumerate user's security-enabled local groups” operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the “enumerate user's security-enabled local groups” operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**User:**

-   **Security ID** \[Type = SID\]: SID of the account whose groups were enumerated. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

-   **Account Name** \[Type = UnicodeString\]: the name of the account whose groups were enumerated.

-   **Account Domain** \[Type = UnicodeString\]: group’s domain or computer name. Formats vary, and include the following:

    -   For a local group, this field will contain the name of the computer to which this group belongs, for example: “Win81”.

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process that enumerated the members of the group. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

> If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

## Security Monitoring Recommendations

For 4798(S): A user's local group membership was enumerated.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have high value domain or local accounts for which you need to monitor each enumeration of their group membership, or any access attempt, monitor events with the **“Subject\\Security ID”** that corresponds to the high value account or accounts.

-   If you have a pre-defined “**Process Name**” for the process reported in this event, monitor all events with “**Process Name**” not equal to your defined value.

-   You can monitor to see if “**Process Name**” is not in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

-   If you have a pre-defined list of restricted substrings or words in process names (for example, “**mimikatz**” or “**cain.exe**”), check for these substrings in “**Process Name**.”

