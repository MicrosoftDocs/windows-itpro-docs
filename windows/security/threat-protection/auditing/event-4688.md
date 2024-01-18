---
title: 4688(S) A new process has been created. 
description: Describes security event 4688(S) A new process has been created. This event is generated when a new process starts.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 01/24/2022
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4688(S): A new process has been created. (Windows 10)


<img src="images/event-4688.png" alt="Event 4688 illustration" width="417" height="479" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Process Creation](audit-process-creation.md)

***Event Description:***

This event generates every time a new process starts.

> [Note]
> For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4688</EventID> 
 <Version>2</Version> 
 <Level>0</Level> 
 <Task>13312</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-12T02:24:52.377352500Z" /> 
 <EventRecordID>2814</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="400" /> 
 <Channel>Security</Channel> 
 <Computer>WIN-GG82ULGC9GO.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">WIN-GG82ULGC9GO$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="NewProcessId">0x2bc</Data> 
 <Data Name="NewProcessName">C:\\Windows\\System32\\rundll32.exe</Data> 
 <Data Name="TokenElevationType">%%1938</Data> 
 <Data Name="ProcessId">0xe74</Data> 
 <Data Name="CommandLine" /> 
 <Data Name="TargetUserSid">S-1-5-21-1377283216-344919071-3415362939-1104</Data> 
 <Data Name="TargetUserName">dadmin</Data> 
 <Data Name="TargetDomainName">CONTOSO</Data> 
 <Data Name="TargetLogonId">0x4a5af0</Data> 
 <Data Name="ParentProcessName">C:\\Windows\\explorer.exe</Data> 
 <Data Name="MandatoryLabel">S-1-16-8192</Data> 
 </EventData>
</Event>
```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:***

-   0 - Windows Server 2008, Windows Vista.

-   1 - Windows Server 2012 R2, Windows 8.1.

    -   Added "Process Command Line" field.

-   2 - Windows 10.

    -   **Subject** renamed to **Creator Subject**.

    -   Added "**Target Subject**" section.

    -   Added "**Mandatory Label**" field.

    -   Added "**Creator Process Name**" field.

***Field Descriptions:***

**Creator Subject** \[Value for versions 0 and 1 – **Subject**\]**:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the "create process" operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> [Note]
> A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the "create process" operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject's domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is "NT AUTHORITY".

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: "Win81".

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, "[4624](event-4624.md): An account was successfully logged on."

**Target Subject** \[Version 2\]**:**

> [Note]
> This event includes the principal of the process creator, but this is not always sufficient if the target context is different from the creator context. In that situation, the subject specified in the process termination event does not match the subject in the process creation event even though both events refer to the same process ID. Therefore, in addition to including the creator of the process, we will also include the target principal when the creator and target do not share the same logon.

-   **Security ID** \[Type = SID\] \[Version 2\]**:** SID of target account. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> [Note]
> A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\] \[Version 2\]**:** the name of the target account.

-   **Account Domain** \[Type = UnicodeString\] \[Version 2\]**:** target account's domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is "NT AUTHORITY".

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: "Win81".

-   **Logon ID** \[Type = HexInt64\] \[Version 2\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, "[4624](event-4624.md): An account was successfully logged on."

**Process Information:**

-   **New Process ID** \[Type = Pointer\]: hexadecimal Process ID of the new process. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

> If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

-   **New Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the new process.

-   **Token Elevation Type** \[Type = UnicodeString\]**:**

    -   **%%1936:** Type 1 is a full token with no privileges removed or groups disabled. A full token is only used if User Account Control is disabled or if the user is the built-in Administrator account (for which UAC is disabled by default), service account, or local system account.

    -   **%%1937:** Type 2 is an elevated token with no privileges removed or groups disabled. An elevated token is used when User Account Control is enabled and the user chooses to start the program using Run as administrator. An elevated token is also used when an application is configured to always require administrative privilege or to always require maximum privilege, and the user is a member of the Administrators group.

    -   **%%1938:** Type 3 is a limited token with administrative privileges removed and administrative groups disabled. The limited token is used when User Account Control is enabled, the application does not require administrative privilege, and the user does not choose to start the program using Run as administrator.

-   **Mandatory Label** \[Version 2\] \[Type = SID\]**:** SID of [integrity label](/windows/win32/secauthz/mandatory-integrity-control) which was assigned to the new process. Can have one of the following values:

| SID          | RID        | RID label                                    | Meaning                |
|--------------|------------|----------------------------------------------|------------------------|
| S-1-16-0     | 0x00000000 | SECURITY\_MANDATORY\_UNTRUSTED\_RID          | Untrusted.             |
| S-1-16-4096  | 0x00001000 | SECURITY\_MANDATORY\_LOW\_RID                | Low integrity.         |
| S-1-16-8192  | 0x00002000 | SECURITY\_MANDATORY\_MEDIUM\_RID             | Medium integrity.      |
| S-1-16-8448  | 0x00002100 | SECURITY\_MANDATORY\_MEDIUM\_PLUS\_RID       | Medium high integrity. |
| S-1-16-12288 | 0X00003000 | SECURITY\_MANDATORY\_HIGH\_RID               | High integrity.        |
| S-1-16-16384 | 0x00004000 | SECURITY\_MANDATORY\_SYSTEM\_RID             | System integrity.      |
| S-1-16-20480 | 0x00005000 | SECURITY\_MANDATORY\_PROTECTED\_PROCESS\_RID | Protected process.     |

-   **Creator Process ID** \[Type = Pointer\]**:** hexadecimal Process ID of the process which ran the new process. If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

> You can also correlate this process ID with a process ID in other events, for example, "[4688](event-4688.md): A new process has been created" **Process Information\\New Process ID**.

-   **Creator Process Name** \[Version 2\] \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

-   **Process Command Line** \[Version 1, 2\] \[Type = UnicodeString\]**:** contains the name of executable and arguments which were passed to it. You must enable "Administrative Templates\\System\\Audit Process Creation\\Include command line in process creation events" group policy to include command line in process creation events:

    <img src="images/group-policy.png" alt="Group policy illustration" width="490" height="448" />

    By default **Process Command Line** field is empty.

## Security Monitoring Recommendations

For 4688(S): A new process has been created.

| **Type of monitoring required**                                                                                                                                                                                                                                                                                   | **Recommendation**                                                                                                                                                                                                       |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **High-value accounts**: You might have high-value domain or local accounts for which you need to monitor each action.<br>Examples of high-value accounts are database administrators, built-in local administrator account, domain administrators, service accounts, domain controller accounts and so on. | Monitor all events with the **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** that corresponds to the high-value account or accounts.                                                              |
| **Anomalies or malicious actions**: You might have specific requirements for detecting anomalies or monitoring potential malicious actions. For example, you might need to monitor for use of an account outside of working hours.                                                                                | When you monitor for anomalies or malicious actions, use the **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** (with other information) to monitor how or when a particular account is being used. |
| **Non-active accounts**: You might have non-active, disabled, or guest accounts, or other accounts that should never be used.                                                                                                                                                                                     | Monitor all events with the **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** that corresponds to the accounts that should never be used.                                                          |
| **Account allowlist**: You might have a specific allowlist of accounts that are the only ones allowed to perform actions corresponding to particular events.                                                                                                                                                      | If this event corresponds to an "allowlist-only" action, review the **"Creator Subject\\Security ID"** and **"Target Subject\\Security ID"** for accounts that are outside the allowlist.                                 |
| **Accounts of different types**: You might want to ensure that certain actions are performed only by certain account types, for example, local or domain account, machine or user account, vendor or employee account, and so on.                                                                                 | If this event corresponds to an action you want to monitor for certain account types, review the **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** to see whether the account type is as expected. |
| **External accounts**: You might be monitoring accounts from another domain, or "external" accounts that are not allowed to perform certain actions (represented by certain specific events).                                                                                                                     | Monitor the specific events for the **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** corresponding to accounts from another domain or "external" accounts.                                        |
| **Restricted-use computers or devices**: You might have certain computers, machines, or devices on which certain people (accounts) should not typically perform any actions.                                                                                                                                      | Monitor the target **Computer:** (or other target device) for actions performed by the **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** that you are concerned about.                             |
| **Account naming conventions**: Your organization might have specific naming conventions for account names.                                                                                                                                                                                                       | Monitor **"Creator Subject\\Security ID"** or **"Target Subject\\Security ID"** for names that don't comply with naming conventions.                                                                                     |

- If you have a pre-defined "**New** **Process Name**" or **"Creator Process Name**" for the process reported in this event, monitor all events with "**New** **Process Name**" or **"Creator Process Name**" not equal to your defined value.

- You can monitor to see if "**New** **Process Name**" or **"Creator Process Name**" is not in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

- If you have a pre-defined list of restricted substrings or words in process names (for example "**mimikatz**" or "**cain.exe**"), check for these substrings in "**New** **Process Name**" or **"Creator Process Name**."

- It can be unusual for a process to run using a local account in either **Creator Subject\\Security ID** or in **Target** **Subject\\Security ID**.

- Monitor for **Token Elevation Type** with value **%%1936** when **Subject\\Security ID** lists a real user account, for example when **Account Name** doesn't contain the $ symbol. Typically this means that UAC is disabled for this account for some reason.

- Monitor for **Token Elevation Type** with value **%%1937** on standard workstations, when **Subject\\Security ID** lists a real user account, for example when **Account Name** doesn't contain the $ symbol. This means that a user ran a program using administrative privileges.

- You can also monitor for **Token Elevation Type** with value **%%1937** on standard workstations, when a computer object was used to run the process, but that computer object is not the same computer where the event occurs.

- If you need to monitor all new processes with a specific Mandatory Label, for example S-1-16-20480 (Protected process), check the "**Mandatory Label**" in this event.
