---
title: 4735(S) A security-enabled local group was changed. (Windows 10)
description: Describes security event 4735(S) A security-enabled local group was changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4735(S): A security-enabled local group was changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4735.png" alt="Event 4735 illustration" width="449" height="519" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Security Group Management](audit-security-group-management.md)

***Event Description:***

This event generates every time a security-enabled (security) local group is changed.

This event generates on domain controllers, member servers, and workstations.

Some changes do not invoke a 4735 event, for example, changes made using Active Directory Users and Computers management console in **Managed By** tab in group account properties.

If you change the name of the group (SAM Account Name), you also get “[4781](event-4781.md): The name of an account was changed” if “[Audit User Account Management](audit-user-account-management.md)” subcategory success auditing is enabled.

If you change the group type, you get a change event from the new group type auditing subcategory instead of 4735. If you need to monitor for group type changes, it is better to monitor for “[4764](event-4764.md): A group’s type was changed.” These events are generated for any group type when group type is changed. “[Audit Security Group Management](audit-security-group-management.md)” subcategory success auditing must be enabled.

From 4735 event you can get information about changes of **sAMAccountName** and **sIDHistory** attributes or you will see that something changed, but will not be able to see what exactly changed.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4735</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13826</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-19T02:00:45.537440000Z" /> 
 <EventRecordID>174850</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="512" ThreadID="1092" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="TargetUserName">AccountOperators\_NEW</Data> 
 <Data Name="TargetDomainName">CONTOSO</Data> 
 <Data Name="TargetSid">S-1-5-21-3457937927-2839227994-823803824-6605</Data> 
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3031e</Data> 
 <Data Name="PrivilegeList">-</Data> 
 <Data Name="SamAccountName">AccountOperators\_NEW</Data> 
 <Data Name="SidHistory">-</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the “change group” operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the “change group” operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Group:**

-   **Security ID** \[Type = SID\]**:** SID of changed group. Event Viewer automatically tries to resolve SIDs and show the group name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;Sometimes you can see the **Group\\Security ID** field contains an old group name in Event Viewer (as you can see in the event example). That happens because Event Viewer caches names for SIDs that it has already resolved for the current session.

> **Note**&nbsp;&nbsp;**Security ID** field has the same value as new group name (**Changed Attributes&gt;SAM Account Name**). That is happens because event is generated after name was changed and SID resolves to the new name. It is always better to use SID instead of group names for queries or filtering of events, because you will know for sure that this the right object you are looking for or want to monitor.

-   **Group Name** \[Type = UnicodeString\]**:** the name of the group that was changed. For example: ServiceDesk

-   **Group Domain** \[Type = UnicodeString\]: domain or computer name of the changed group. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For a local group, this field will contain the name of the computer to which this new group belongs, for example: “Win81”.

    -   [Built-in groups](https://technet.microsoft.com/library/dn169025(v=ws.10).aspx): Builtin

**Changed Attributes:**

> **Note**&nbsp;&nbsp;If attribute was not changed it will have “-“ value.

You might see a 4735 event without any changes inside, that is, where all Changed Attributes apear as “-“. This usually happens when a change is made to an attribute that is not listed in the event. In this case there is no way to determine which attribute was changed. For example, this would happen if you change the Description of a group object using the Active Directory Users and Computers administrative console. Also, if the [discretionary access control list](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx) (DACL) is changed, a 4735 event will generate, but all attributes will be “-“.

-   **SAM Account Name** \[Type = UnicodeString\]: This is a new name of changed group used to support clients and servers from previous versions of Windows (pre-Windows 2000 logon name). If the value of **sAMAccountName** attribute of group object was changed, you will see the new value here. For example: ServiceDesk. For local groups it is simply a new name of the group, if it was changed.

-   **SID History** \[Type = UnicodeString\]: contains previous SIDs used for the object if the object was moved from another domain. Whenever an object is moved from one domain to another, a new SID is created and becomes the objectSID. The previous SID is added to the **sIDHistory** property. If the value of **sIDHistory** attribute of group object was changed, you will see the new value here. For local groups it is not applicable and always has “**-**“ value.

**Additional Information:**

-   **Privileges** \[Type = UnicodeString\]: the list of user privileges which were used during the operation, for example, SeBackupPrivilege. This parameter might not be captured in the event, and in that case appears as “-”. See full list of user privileges in “Table 8. User Privileges.”.

## Security Monitoring Recommendations

For 4735(S): A security-enabled local group was changed.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have a list of critical local or domain security groups in the organization, and need to specifically monitor these groups for any change, monitor events with the “**Group\\Group Name”** values that correspond to the critical local or domain security groups.

-   If you need to monitor each time a member is added to a local or domain security group, to see who added the member and when, monitor this event. Typically, this event is used as an informational event, to be reviewed if needed.

-   If your organization has naming conventions for account names, monitor “**Attributes\\SAM Account Name”** for names that don’t comply with the naming conventions.

