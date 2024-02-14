---
title: 4724(S, F) An attempt was made to reset an account's password. 
description: Describes security event 4724(S, F) An attempt was made to reset an account's password.
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

# 4724(S, F): An attempt was made to reset an account's password.


<img src="images/event-4724.png" alt="Event 4724 illustration" width="449" height="417" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit User Account Management](audit-user-account-management.md)

***Event Description:***

This event generates every time an account attempted to reset the password for another account.

For user accounts, this event generates on domain controllers, member servers, and workstations.

For domain accounts, a Failure event generates if the new password fails to meet the password policy.

A Failure event does NOT generate if user gets “Access Denied” while doing the password reset procedure.

This event also generates if a computer account reset procedure was performed.

For local accounts, a Failure event generates if the new password fails to meet the local password policy.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4724</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13824</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-22T01:58:21.725864900Z" /> 
 <EventRecordID>175740</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="520" ThreadID="548" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="TargetUserName">User1</Data> 
 <Data Name="TargetDomainName">CONTOSO</Data> 
 <Data Name="TargetSid">S-1-5-21-3457937927-2839227994-823803824-1107</Data> 
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x30d5f</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made an attempt to reset Target’s Account password. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made an attempt to reset Target’s Account password.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Target Account:** account for which password reset was requested.

-   **Security ID** \[Type = SID\]**:** SID of account for which password reset was requested. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account for which password reset was requested.

-   **Account Domain** \[Type = UnicodeString\]**:** target account’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

## Security Monitoring Recommendations

For 4724(S, F): An attempt was made to reset an account's password.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have a high-value domain or local user account for which you need to monitor every password reset attempt, monitor all [4724](event-4724.md) events with the **“Target Account\\Security ID”** that corresponds to the account.

-   If you have a high-value domain or local account for which you need to monitor every change, monitor all [4724](event-4724.md) events with the **“Target Account\\Security ID”** that corresponds to the account.

-   If you have domain or local accounts for which the password should never be reset, you can monitor all [4724](event-4724.md) events with the **“Target Account\\Security ID”** that corresponds to the account.

-   We recommend monitoring all [4724](event-4724.md) events for local accounts, because their passwords usually do not change often. This is especially relevant for critical servers, administrative workstations, and other high value assets.

