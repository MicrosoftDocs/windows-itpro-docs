---
title: 4764(S) A group's type was changed. (Windows 10)
description: Describes security event 4764(S) A group’s type was changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4764(S): A group’s type was changed.

**Applies to**
-   Windows 10
-   Windows Server 2016

<img src="images/event-4764.png" alt="Event 4764 illustration" width="603" height="489" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Security Group Management](audit-security-group-management.md)

***Event Description:***

This event generates every time group’s type is changed.

This event generates for both security and distribution groups.

This event generates only on domain controllers.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4764</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13826</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-20T00:25:33.459568000Z" /> 
 <EventRecordID>175221</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="1072" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="GroupTypeChange">Security Enabled Local Group Changed to Security Disabled Local Group.</Data> 
 <Data Name="TargetUserName">CompanyAuditors</Data> 
 <Data Name="TargetDomainName">CONTOSO</Data> 
 <Data Name="TargetSid">S-1-5-21-3457937927-2839227994-823803824-6608</Data> 
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x38200</Data> 
 <Data Name="PrivilegeList">-</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the “change group type” operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the “change group type” operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Change Type** \[Type = UnicodeString\]**:** contains three parts: “&lt;Param1&gt; **Changed To** &lt;Param2&gt;.”. These two parameters can have the following values (they cannot have the same value at the same time):

-   Security Disabled Local Group

-   Security Disabled Universal Group

-   Security Disabled Global Group

-   Security Enabled Local Group

-   Security Enabled Universal Group

-   Security Enabled Global Group

**Group:**

-   **Security ID** \[Type = SID\]**:** SID of changed group. Event Viewer automatically tries to resolve SIDs and show the group name. If the SID cannot be resolved, you will see the source data in the event.

-   **Group Name** \[Type = UnicodeString\]**:** the name of the group, which type was changed. For example: ServiceDesk

-   **Group Domain** \[Type = UnicodeString\]: domain or computer name of the changed group. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For a local group, this field will contain the name of the computer to which this new group belongs, for example: “Win81”.

    -   [Built-in groups](https://technet.microsoft.com/library/dn169025(v=ws.10).aspx): Builtin

**Additional Information:**

-   **Privileges** \[Type = UnicodeString\]: the list of user privileges which were used during the operation, for example, SeBackupPrivilege. This parameter might not be captured in the event, and in that case appears as “-”. See full list of user privileges in “Table 8. User Privileges.”.

## Security Monitoring Recommendations

For 4764(S): A group’s type was changed.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have a list of critical local or domain groups in the organization, and need to specifically monitor these groups for any change, especially group type change, monitor events with the “**Group\\Group Name”** values that correspond to the critical distribution groups. Examples of critical local or domain groups are built-in local administrators group, domain admins, enterprise admins, critical distribution groups, and so on.

-   If you need to monitor each time any group’s type is changed, to see who changed it and when, monitor this event. Typically, this event is used as an informational event, to be reviewed if needed.

