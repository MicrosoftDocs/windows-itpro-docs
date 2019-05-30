---
title: 4794(S, F) An attempt was made to set the Directory Services Restore Mode administrator password. (Windows 10)
description: Describes security event 4794(S, F) An attempt was made to set the Directory Services Restore Mode administrator password.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4794(S, F): An attempt was made to set the Directory Services Restore Mode administrator password.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4794.png" alt="Event 4794 illustration" width="449" height="418" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit User Account Management](audit-user-account-management.md)

***Event Description:***

This event generates every time Directory Services Restore Mode (DSRM) administrator password is changed.

This event generates only on domain controllers.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4794</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13824</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-18T02:49:26.087748900Z" /> 
 <EventRecordID>172348</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="520" ThreadID="2964" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x36f67</Data> 
 <Data Name="Workstation">DC01</Data> 
 <Data Name="Status">0x0</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made an attempt to set Directory Services Restore Mode administrator password. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made an attempt to set Directory Services Restore Mode administrator password.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Additional Information:**

-   **Caller Workstation** \[Type = UnicodeString\]**:** the name of computer account from which Directory Services Restore Mode (DSRM) administrator password change request was received. For example: “**DC01**”. If the change request was sent locally (from the same server) this field will have the same name as the computer account.

-   **Status Code** \[Type = HexInt32\]**:** for Success events it has “**0x0**” value.

## Security Monitoring Recommendations

For 4794(S, F): An attempt was made to set the Directory Services Restore Mode administrator password.

-   Always monitor 4794 events and trigger alerts when they occur.

