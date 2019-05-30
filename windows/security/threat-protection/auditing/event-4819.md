---
title: 4819(S) Central Access Policies on the machine have been changed. (Windows 10)
description: Describes security event 4819(S) Central Access Policies on the machine have been changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4819(S): Central Access Policies on the machine have been changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4819.png" alt="Event 4819 illustration" width="449" height="540" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Description:***

This event generates when [Central Access Policy](https://technet.microsoft.com/library/hh831425.aspx) on the machine have been changed.

For example, it generates when a new [Central Access Policy](https://technet.microsoft.com/library/hh831425.aspx) was applied to the machine via Group Policy.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4819</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13573</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-10T01:00:34.352877700Z" /> 
 <EventRecordID>1187659</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="3500" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DC01$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="ObjectServer">LSA</Data> 
 <Data Name="ObjectType">Central Access Policies</Data> 
 <Data Name="AddedCAPs">Main POlicy</Data> 
 <Data Name="DeletedCAPs" /> 
 <Data Name="ModifiedCAPs" /> 
 <Data Name="AsIsCAPs" /> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012, Windows 8.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that changed the Central Access Policies on the machine. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that changed the Central Access Policies on the machine.

-   **Account Domain** \[Type = UnicodeString\]**:** domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **Object Server** \[Type = UnicodeString\]: has “**LSA**” value for this event.

-   **Object Type** \[Type = UnicodeString\]: The type of an object to which this event applies. Always “**Central Access Policies**” for this event.

    The following table contains the list of the most common **Object Types**:

| Directory               | Event        | Timer                | Device                  |
|-------------------------|--------------|----------------------|-------------------------|
| Mutant                  | Type         | File                 | Token                   |
| Thread                  | Section      | WindowStation        | DebugObject             |
| FilterCommunicationPort | EventPair    | Driver               | IoCompletion            |
| Controller              | SymbolicLink | WmiGuid              | Process                 |
| Profile                 | Desktop      | KeyedEvent           | Central Access Policies |
| Key                     | WaitablePort | Callback             |                         |
| Job                     | Port         | FilterConnectionPort |                         |
| ALPC Port               | Semaphore    | Adapter              |                         |

**CAPs Added** \[Type = UnicodeString\]: the list of added Central Access Policies. Empty if no Central Access Policies were added.

**CAPs Deleted** \[Type = UnicodeString\]: the list of deleted Central Access Policies. Empty if no Central Access Policies were deleted.

**CAPs Modified** \[Type = UnicodeString\]: the list of modified Central Access Policies. Empty if no Central Access Policies were modified.

**CAPs As-Is** \[Type = UnicodeString\]: the list of non-modified Central Access Policies.

## Security Monitoring Recommendations

For 4819(S): Central Access Policies on the machine have been changed.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Because this event is typically triggered by the SYSTEM account, we recommend that you report it whenever **“Subject\\Security ID”** is not SYSTEM.

-   This event can help you to track modifications, additions and deletions of Central Access Policies if it is required by your security monitoring policy.

-   

