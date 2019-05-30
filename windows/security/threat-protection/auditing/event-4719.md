---
title: 4719(S) System audit policy was changed. (Windows 10)
description: Describes security event 4719(S) System audit policy was changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4719(S): System audit policy was changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4719.png" alt="Event 4719 illustration" width="469" height="433" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Policy Change](audit-audit-policy-change.md)

***Event Description:***

This event generates when the computer's audit policy changes.

This event is always logged regardless of the "Audit Policy Change" sub-category setting.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4719</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13568</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-30T19:57:09.668217100Z" /> 
 <EventRecordID>1049418</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="4668" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DC01$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="CategoryId">%%8274</Data> 
 <Data Name="SubcategoryId">%%12807</Data> 
 <Data Name="SubcategoryGuid">{0CCE9223-69AE-11D9-BED3-505054503030}</Data> 
 <Data Name="AuditPolicyChanges">%%8448, %%8450</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made a change to local audit policy. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made a change to local audit policy.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Audit Policy Change:**

-   **Category:** the name of auditing Category which subcategory was changed. Possible values:

    -   Account Logon

    -   Account Management

    -   Detailed Tracking

    -   DS Access

    -   Logon/Logoff

    -   Object Access

    -   Policy Change

    -   Privilege Use

    -   System

-   **Subcategory:** the name of auditing Subcategory which was changed. Possible values:

| Credential Validation              | Process Termination                    | Network Policy Server          |
|------------------------------------|----------------------------------------|--------------------------------|
| Kerberos Authentication Service    | RPC Events                             | Other Logon/Logoff Events      |
| Kerberos Service Ticket Operations | Detailed Directory Service Replication | Special Logon                  |
| Other Logon/Logoff Events          | Directory Service Access               | Application Generated          |
| Application Group Management       | Directory Service Changes              | Certification Services         |
| Computer Account Management        | Directory Service Replication          | Detailed File Share            |
| Distribution Group Management      | Account Lockout                        | File Share                     |
| Other Account Management Events    | IPsec Extended Mode                    | File System                    |
| Security Group Management          | IPsec Main Mode                        | Filtering Platform Connection  |
| User Account Management            | IPsec Quick Mode                       | Filtering Platform Packet Drop |
| DPAPI Activity                     | Logoff                                 | Handle Manipulation            |
| Process Creation                   | Logon                                  | Kernel Object                  |
| Other Object Access Events         | Filtering Platform Policy Change       | IPsec Driver                   |
| Registry                           | MPSSVC Rule-Level Policy Change        | Other System Events            |
| SAM                                | Other Policy Change Events             | Security State Change          |
| Policy Change                      | Non-Sensitive Privilege Use            | Security System Extension      |
| Authentication Policy Change       | Sensitive Privilege Use                | System Integrity               |
| Authorization Policy Change        | Other Privilege Use Events             | Plug and Play Events           |
| Group Membership                   |                                        |                                |

-   **Subcategory GUID:** the unique subcategory GUID. To see Subcategory GUIDs you can use this command: **auditpol /list /subcategory:\* /v**.

<img src="images/auditpol-list-subcategory.png" alt="Auditpol list GUIDs illustration" width="951" height="506" />

> **Note**&nbsp;&nbsp;**GUID** is an acronym for 'Globally Unique Identifier'. It is a 128-bit integer number used to identify resources, activities or instances.

-   **Changes:** changes which were made for **“Subcategory”**. Possible values:

    -   Success removed

    -   Failure removed

    -   Success added

    -   Failure added

        It can be also a combination of any of the items above, separated by coma.

## Security Monitoring Recommendations

For 4719(S): System audit policy was changed.

-   Monitor for all events of this type, especially on high value assets or computers, because any change in local audit policy should be planned. If this action was not planned, investigate the reason for the change.

