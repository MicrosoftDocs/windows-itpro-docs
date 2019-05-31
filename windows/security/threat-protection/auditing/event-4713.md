---
title: 4713(S) Kerberos policy was changed. (Windows 10)
description: Describes security event 4713(S) Kerberos policy was changed.
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

# 4713(S): Kerberos policy was changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4713.png" alt="Event 4713 illustration" width="485" height="422" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Authentication Policy Change](audit-authentication-policy-change.md)

***Event Description:***

This event generates when [Kerberos](https://msdn.microsoft.com/library/windows/desktop/aa378747.aspx) policy was changed.

This event is generated only on domain controllers.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4713</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13569</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-01T23:15:50.811774300Z" /> 
 <EventRecordID>1049772</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="4116" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DC01$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="KerberosPolicyChange">KerMaxT: 0x10c388d000 (0x861c46800); KerMaxR: 0x19254d38000 (0xc92a69c000);</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made a change to Kerberos policy. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made a change to Kerberos policy.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Changes Made** \[Type = UnicodeString\]**:** '--' means no changes, otherwise each change is shown as: Parameter\_Name: new\_value (old\_value). Here is a list of possible parameter names:

| Parameter Name | Description                                                                                                                                                                                             |
|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| KerProxy       | 1.  Maximum tolerance for computer clock synchronization.<br>To convert the **KerProxy** to minutes you need to:<br>Convert the value to decimal value.<br>Divide value by 600000000. |
| KerMaxR        | 1.  Maximum lifetime for user ticket renewal.<br>To convert the **KerProxy** to days you need to:<br>Convert the value to decimal value.<br>Divide value by 864000000000.             |
| KerMaxT        | 1.  Maximum lifetime for user ticket.<br>To convert the **KerMaxT** to hours you need to:<br>Convert the value to decimal value.<br>Divide value by 36000000000.                      |
| KerMinT        | 1.  Maximum lifetime for service ticket.<br>To convert the **KerMinT** to minutes you need to:<br>Convert the value to decimal value.<br>Divide value by 600000000.                   |
| KerOpts        | -   Enforce user logon restrictions:<br>0x80 – Enabled<br>0x0 - Disabled                                                                                                                    |

This event shows changes in “Kerberos policy”. Here is location of Kerberos policies in Group Policy management console:

<img src="images/group-policy-editor.png" alt="Group policy editor illustration" width="790" height="171" />

## Security Monitoring Recommendations

For 4713(S): Kerberos policy was changed.

-   Any changes in Kerberos policy reported by current event must be monitored and an alert should be triggered. If this change was not planned, investigate the reason for the change.

