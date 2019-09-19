---
title: 1102(S) The audit log was cleared. (Windows 10)
description: Describes security event 1102(S) The audit log was cleared.
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

# 1102(S): The audit log was cleared.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-1102.png" alt="Event 1102 illustration" width="449" height="336" hspace="10" align="left" />

***Subcategory:***&nbsp;[Other Events](other-events.md)

***Event Description:***

This event generates every time Windows Security audit log was cleared.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Eventlog" Guid="{fc65ddd8-d6ef-4962-83d5-6e5cfe9ce148}" /> 
 <EventID>1102</EventID> 
 <Version>0</Version> 
 <Level>4</Level> 
 <Task>104</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x4020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-16T00:39:58.656871200Z" /> 
 <EventRecordID>1087729</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="820" ThreadID="2644" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <UserData>
- <LogFileCleared xmlns="http://manifests.microsoft.com/win/2004/08/windows/eventlog">
 <SubjectUserSid>S-1-5-21-3457937927-2839227994-823803824-1104</SubjectUserSid> 
 <SubjectUserName>dadmin</SubjectUserName> 
 <SubjectDomainName>CONTOSO</SubjectDomainName> 
 <SubjectLogonId>0x55cd1d</SubjectLogonId> 
 </LogFileCleared>
 </UserData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that cleared the system security audit log. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that cleared the system security audit log.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

## Security Monitoring Recommendations

For 1102(S): The audit log was cleared.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Typically you should not see this event. There is no need to manually clear the Security event log in most cases. We recommend monitoring this event and investigating why this action was performed.

