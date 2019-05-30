---
title: 4912(S) Per User Audit Policy was changed. (Windows 10)
description: Describes security event 4912(S) Per User Audit Policy was changed.
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

# 4912(S): Per User Audit Policy was changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4912.png" alt="Event 4912 illustration" width="471" height="478" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Policy Change](audit-audit-policy-change.md)

***Event Description:***

This event generates every time [Per User Audit Policy](http://windowsitpro.com/systems-management/user-auditing-28-jun-2005) was changed.

This event is always logged regardless of the "Audit Policy Change" sub-category setting.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4912</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13568</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-30T23:43:07.363195100Z" /> 
 <EventRecordID>1049452</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="1660" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x11ae30</Data> 
 <Data Name="TargetUserSid">S-1-5-21-3457937927-2839227994-823803824-2104</Data> 
 <Data Name="CategoryId">%%8276</Data> 
 <Data Name="SubcategoryId">%%13312</Data> 
 <Data Name="SubcategoryGuid">{0CCE922B-69AE-11D9-BED3-505054503030}</Data> 
 <Data Name="AuditPolicyChanges">%%8452</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made a change to per-user audit policy. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made a change to per-user audit policy.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Policy For Account:**

-   **Security ID** \[Type = SID\]**:** SID of account for which the Per User Audit Policy was changed. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

**Policy Change Details:**

-   **Category** \[Type = UnicodeString\]**:** the name of auditing category which subcategory state was changed. Possible values are:

    -   Account Logon

    -   Account Management

    -   Detailed Tracking

    -   DS Access

    -   Logon/Logoff

    -   Object Access

    -   Policy Change

    -   Privilege Use

    -   System

-   **Subcategory** \[Type = UnicodeString\]**:** the name of auditing subcategory which state was changed. Possible values:

| Audit Credential Validation              | Audit Process Termination                    | Audit Other Logon/Logoff Events      |
|------------------------------------------|----------------------------------------------|--------------------------------------|
| Audit Kerberos Authentication Service    | Audit RPC Events                             | Audit Special Logon                  |
| Audit Kerberos Service Ticket Operations | Audit Detailed Directory Service Replication | Audit Application Generated          |
| Audit Other Logon/Logoff Events          | Audit Directory Service Access               | Audit Certification Services         |
| Audit Application Group Management       | Audit Directory Service Changes              | Audit Detailed File Share            |
| Audit Computer Account Management        | Audit Directory Service Replication          | Audit File Share                     |
| Audit Distribution Group Management      | Audit Account Lockout                        | Audit File System                    |
| Audit Other Account Management Events    | Audit IPsec Extended Mode                    | Audit Filtering Platform Connection  |
| Audit Security Group Management          | Audit IPsec Main Mode                        | Audit Filtering Platform Packet Drop |
| Audit User Account Management            | Audit IPsec Quick Mode                       | Audit Handle Manipulation            |
| Audit DPAPI Activity                     | Audit Logoff                                 | Audit Kernel Object                  |
| Audit Process Creation                   | Audit Logon                                  | Audit IPsec Driver                   |
| Audit Other Object Access Events         | Audit Filtering Platform Policy Change       | Audit Other System Events            |
| Audit Registry                           | Audit MPSSVC Rule-Level Policy Change        | Audit Security State Change          |
| Audit SAM                                | Audit Other Policy Change Events             | Audit Security System Extension      |
| Audit Policy Change                      | Audit Non-Sensitive Privilege Use            | Audit System Integrity               |
| Audit Authentication Policy Change       | Audit Sensitive Privilege Use                | Audit PNP Activity                   |
| Audit Authorization Policy Change        | Audit Other Privilege Use Events             |                                      |
| Group Membership                         | Audit Network Policy Server                  |                                      |

-   **Subcategory GUID** \[Type = GUID\]**:** the unique GUID of changed subcategory.

> **Note**&nbsp;&nbsp;**GUID** is an acronym for 'Globally Unique Identifier'. It is a 128-bit integer number used to identify resources, activities or instances.

To see subcategory GUID you can use the following command: “**auditpol /list /subcategory:\* /v”**:

<img src="images/auditpol-list-subcategory.png" alt="Auditpol list GUIDs illustration" width="951" height="506" />

-   **Changes** \[Type = UnicodeString\]**:** changes which were made for the subcategory. Possible values are:

    -   Success include removed

    -   Success include added

    -   Failure include removed

    -   Failure include added

    -   Success exclude removed

    -   Success exclude added

    -   Failure exclude removed

    -   Failure exclude added

## Security Monitoring Recommendations

For 4912(S): Per User Audit Policy was changed.

-   If you use the Per-user audit feature, then this event should be always monitored, especially on high value assets or computers. If this change was not planned, investigate the reason for the change.

-   If you don’t use the Per-user audit feature, then this event should be always monitored because it indicates use of the Per-user audit feature outside of your standard procedures.

