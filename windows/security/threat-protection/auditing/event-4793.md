---
title: 4793(S) The Password Policy Checking API was called. 
description: Describes security event 4793(S) The Password Policy Checking API was called.
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

# 4793(S): The Password Policy Checking API was called.


<img src="images/event-4793.png" alt="Event 4793 illustration" width="449" height="419" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Account Management Events](audit-other-account-management-events.md)

***Event Description:***

This event generates each time the [Password Policy Checking API](/windows/win32/api/lmaccess/nf-lmaccess-netvalidatepasswordpolicy) is called.

The Password Policy Checking API allows an application to check password compliance against an application-provided account database or single account and verify that passwords meet the complexity, aging, minimum length, and history reuse requirements of a password policy.

This event, for example, generates during Directory Services Restore Mode ([DSRM](/archive/blogs/askds/ds-restore-mode-password-maintenance)) account password reset procedure to check new DSRM password.

This event generates on the computer where Password Policy Checking API was called.

Note that starting with Microsoft SQL Server 2005, the “SQL Server password policy” feature can generate many 4793 events on a SQL Server.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4793</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13829</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-18T02:37:46.322424300Z" /> 
 <EventRecordID>172342</EventRecordID> 
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
 <Data Name="TargetUserName">-</Data> 
 <Data Name="Status">0x0</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested Password Policy Checking API operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested Password Policy Checking API operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Additional Information:**

-   **Caller Workstation** \[Type = UnicodeString\]**:** name of the computer from which the Password Policy Checking API was called. Typically, this is the same computer where this event was generated, for example, DC01. Computer name here does not contain **$** symbol at the end. It also can be an IP address or the DNS name of the computer.

-   **Provided Account Name (unauthenticated)** \[Type = UnicodeString\]**:** the name of account, which password was provided/requested for validation. This parameter might not be captured in the event, and in that case appears as “-”.

-   **Status Code** \[Type = HexInt32\]**:** typically has “**0x0**” value. Status code is “**0x0**”, no matter meets password domain Password Policy or not.

## Security Monitoring Recommendations

For 4793(S): The Password Policy Checking API was called.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Typically this is an informational event, and can give you information about when Password Policy Checking APIs were invoked, and who invoked them. The **Provided Account Name** does not always have a value—sometimes it’s not really possible to determine for which account the password policy check was performed.