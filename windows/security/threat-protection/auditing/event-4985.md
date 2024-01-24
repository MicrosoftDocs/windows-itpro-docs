---
title: 4985(S) The state of a transaction has changed. 
description: Describes security event 4985(S) The state of a transaction has changed.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4985(S): The state of a transaction has changed.


<img src="images/event-4985.png" alt="Event 4985 illustration" width="468" height="473" hspace="10" align="left" />

***Subcategories:***&nbsp;[Audit File System](audit-file-system.md), [Audit Non Sensitive Privilege Use](audit-non-sensitive-privilege-use.md), [Audit Other Privilege Use Events](audit-other-privilege-use-events.md), and [Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md)

***Event Description:***

This is an informational event from file system [Transaction Manager](/windows/win32/ktm/transaction-managers).

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4985</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12800</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-19T00:00:40.099093300Z" /> 
 <EventRecordID>274277</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="5048" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DC01$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="TransactionId">{17EF5E21-5E2C-11E5-810F-00155D987005}</Data> 
 <Data Name="NewState">52</Data> 
 <Data Name="ResourceManager">{5F5ED427-FCCA-11E3-BD73-B54AB417B853}</Data> 
 <Data Name="ProcessId">0x370</Data> 
 <Data Name="ProcessName">C:\\Windows\\System32\\svchost.exe</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account through which the state of the transaction was changed. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that changed the state of the transaction.

-   **Account Domain** \[Type = UnicodeString\]**:** domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Transaction Information:**

-   **RM Transaction ID** \[Type = GUID\]: unique GUID of the [transaction](/windows/win32/ktm/what-is-a-transaction). This field can help you correlate this event with other events that might contain the same **Transaction ID**, such as “[4656](event-4656.md)(S, F): A handle to an object was requested.”

> **Note**&nbsp;&nbsp;**GUID** is an acronym for 'Globally Unique Identifier'. It is a 128-bit integer number used to identify resources, activities or instances.

-   **New State** \[Type = UInt32\]**:** identifier of the new state of the [transaction](/windows/win32/ktm/what-is-a-transaction).

-   **Resource Manager** \[Type = GUID\]**:** unique GUID-Identifier of the [Resource Manager](/windows/win32/ktm/resource-managers) which associated with this [transaction](/windows/win32/ktm/what-is-a-transaction).

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process through which the state of the transaction was changed. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

## Security Monitoring Recommendations

For 4985(S): The state of a transaction has changed.

-   This event typically has no security relevance and used for [Transaction Manager](/windows/win32/ktm/transaction-managers) troubleshooting.