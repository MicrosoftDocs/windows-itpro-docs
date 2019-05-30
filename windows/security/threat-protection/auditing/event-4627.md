---
title: 4627(S) Group membership information. (Windows 10)
description: Describes security event 4627(S) Group membership information.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4627(S): Group membership information.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4627.png" alt="Event 4627 illustration" width="876" height="1418" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Group Membership](audit-group-membership.md)

***Event Description:***

This event generates with “[4624](event-4624.md)(S): An account was successfully logged on” and shows the list of groups that the logged-on account belongs to.

You must also enable the Success audit for [Audit Logon](audit-logon.md) subcategory to get this event.

Multiple events are generated if the group membership information cannot fit in a single security audit event.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4627</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12554</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-12T03:51:25.843673000Z" /> 
 <EventRecordID>3081</EventRecordID> 
 <Correlation ActivityID="{913FBE70-1CE6-0000-67BF-3F91E61CD101}" /> 
 <Execution ProcessID="736" ThreadID="808" /> 
 <Channel>Security</Channel> 
 <Computer>WIN-GG82ULGC9GO.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-0-0</Data> 
 <Data Name="SubjectUserName">-</Data> 
 <Data Name="SubjectDomainName">-</Data> 
 <Data Name="SubjectLogonId">0x0</Data> 
 <Data Name="TargetUserSid">S-1-5-21-1377283216-344919071-3415362939-1104</Data> 
 <Data Name="TargetUserName">dadmin</Data> 
 <Data Name="TargetDomainName">CONTOSO</Data> 
 <Data Name="TargetLogonId">0x569860</Data> 
 <Data Name="LogonType">3</Data> 
 <Data Name="EventIdx">1</Data> 
 <Data Name="EventCountTotal">1</Data> 
 <Data Name="GroupMembership">%{S-1-5-21-1377283216-344919071-3415362939-513} %{S-1-1-0} %{S-1-5-32-544} %{S-1-5-32-545} %{S-1-5-32-554} %{S-1-5-2} %{S-1-5-11} %{S-1-5-15} %{S-1-5-21-1377283216-344919071-3415362939-512} %{S-1-5-21-1377283216-344919071-3415362939-572} %{S-1-5-64-10} %{S-1-16-12288}</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2016, Windows 10.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that reported information about successful logon or invokes it. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that reported information about successful logon or invokes it.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4672](event-4672.md)(S): Special privileges assigned to new logon.”

**Logon Type** \[Type = UInt32\]**:** the type of logon which was performed. The table below contains the list of possible values for this field:

| Logon Type | Logon Title       | Description                                                                                                                                                                                                                                                                                                                |
|------------|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 2          | Interactive       | A user logged on to this computer.                                                                                                                                                                                                                                                                                         |
| 3          | Network           | A user or computer logged on to this computer from the network.                                                                                                                                                                                                                                                            |
| 4          | Batch             | Batch logon type is used by batch servers, where processes may be executing on behalf of a user without their direct intervention.                                                                                                                                                                                         |
| 5          | Service           | A service was started by the Service Control Manager.                                                                                                                                                                                                                                                                      |
| 7          | Unlock            | This workstation was unlocked.                                                                                                                                                                                                                                                                                             |
| 8          | NetworkCleartext  | A user logged on to this computer from the network. The user's password was passed to the authentication package in its unhashed form. The built-in authentication packages all hash credentials before sending them across the network. The credentials do not traverse the network in plaintext (also called cleartext). |
| 9          | NewCredentials    | A caller cloned its current token and specified new credentials for outbound connections. The new logon session has the same local identity, but uses different credentials for other network connections.                                                                                                                 |
| 10         | RemoteInteractive | A user logged on to this computer remotely using Terminal Services or Remote Desktop.                                                                                                                                                                                                                                      |
| 11         | CachedInteractive | A user logged on to this computer with network credentials that were stored locally on the computer. The domain controller was not contacted to verify the credentials.                                                                                                                                                    |

**New Logon:**

-   **Security ID** \[Type = SID\]**:** SID of account for which logon was performed. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account for which logon was performed.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4672](event-4672.md)(S): Special privileges assigned to new logon.”

**Event in sequence** \[Type = UInt32\]**: I**f is there is not enough space in one event to put all groups, you will see “**1 of N**” in this field and additional events will be generated. Typically this field has “**1 of 1**” value.

**Group Membership** \[Type = UnicodeString\]**:** the list of group SIDs which logged account belongs to (member of). Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

## Security Monitoring Recommendations

For 4627(S): Group membership information.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Typically this action is reported by the NULL SID account, so we recommend reporting all events with **“Subject\\Security ID”** not equal “**NULL SID**”.

<!-- -->

-   If you need to track that a member of a specific group logged on to a computer, check the “**Group Membership**” field.

