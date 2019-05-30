---
title: 4778(S) A session was reconnected to a Window Station. (Windows 10)
description: Describes security event 4778(S) A session was reconnected to a Window Station.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4778(S): A session was reconnected to a Window Station.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4778.png" alt="Event 4778 illustration" width="449" height="491" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Logon/Logoff Events](audit-other-logonlogoff-events.md)

***Event Description:***

This event is generated when a user reconnects to an existing Terminal Services session, or when a user switches to an existing desktop using [Fast User Switching](https://docs.microsoft.com/windows-hardware/drivers/display/fast-user-switching).

This event also generates when user reconnects to virtual host Hyper-V Enhanced Session, for example.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4778</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12551</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-10T23:05:29.743867200Z" /> 
 <EventRecordID>237651</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="504" ThreadID="2212" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="AccountName">ladmin</Data> 
 <Data Name="AccountDomain">CONTOSO</Data> 
 <Data Name="LogonID">0x1e01f6</Data> 
 <Data Name="SessionName">RDP-Tcp\#6</Data> 
 <Data Name="ClientName">WIN81</Data> 
 <Data Name="ClientAddress">10.0.0.100</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account for which the session was reconnected.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Session:**

-   **Session Name** \[Type = UnicodeString\]**:** the name of the session to which the user was reconnected. Examples:

    -   **RDP-Rcp\#N**, where N is a number of session – typical RDP session name.

    -   **Console** – console session, typical for Fast User Switching.

    -   **31C5CE94259D4006A9E4\#3** – example of “Hyper-V Enhanced Session” session name.

        You can see the list of current session’s using “**query session”** command in command prompt. Example of output (see **SESSIONNAME** column):

<img src="images/query-session.png" alt="Query session illustration" width="738" height="125" />

**Additional Information:**

-   **Client Name** \[Type = UnicodeString\]: computer name from which the user was reconnected. Has “**Unknown”** value for console session.

-   **Client Address** \[Type = UnicodeString\]: IP address of the computer from which the user was reconnected.

    -   IPv6 address or ::ffff:IPv4 address of a client.

    -   ::1 or 127.0.0.1 means localhost.

    -   Has “**LOCAL**” value for console session.

## Security Monitoring Recommendations

For 4778(S): A session was reconnected to a Window Station.

| **Type of monitoring required**                                                                                                                                                                                                                                                                                   | **Recommendation**                                                                                                                                                           |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **High-value accounts**: You might have high-value domain or local accounts for which you need to monitor each action.<br>Examples of high-value accounts are database administrators, built-in local administrator account, domain administrators, service accounts, domain controller accounts and so on. | Monitor this event with the **“Subject\\Account Name”** that corresponds to the high-value account or accounts.                                                              |
| **Anomalies or malicious actions**: You might have specific requirements for detecting anomalies or monitoring potential malicious actions. For example, you might need to monitor for use of an account outside of working hours.                                                                                | When you monitor for anomalies or malicious actions, use the **“Subject\\Account Name”** (with other information) to monitor how or when a particular account is being used. |
| **Non-active accounts**: You might have non-active, disabled, or guest accounts, or other accounts that should never be used.                                                                                                                                                                                     | Monitor this event with the **“Subject\\Account Name”** that corresponds to the accounts that should never be used.                                                          |
| **Account whitelist**: You might have a specific whitelist of accounts that are the only ones allowed to perform actions corresponding to particular events.                                                                                                                                                      | If this event corresponds to a “whitelist-only” action, review the **“Subject\\Account Name”** for accounts that are outside the whitelist.                                  |
| **Accounts of different types**: You might want to ensure that certain actions are performed only by certain account types, for example, local or domain account, machine or user account, vendor or employee account, and so on.                                                                                 | If this event corresponds to an action you want to monitor for certain account types, review the **“Subject\\Account Name”** to see whether the account type is as expected. |
| **External accounts**: You might be monitoring accounts from another domain, or “external” accounts that are not allowed to perform certain actions (represented by certain specific events).                                                                                                                     | Monitor this event for the **“Subject\\Account Domain”** corresponding to accounts from another domain or “external” accounts.                                               |
| **Restricted-use computers or devices**: You might have certain computers, machines, or devices on which certain people (accounts) should not typically perform any actions.                                                                                                                                      | Monitor the target **Computer:** (or other target device) for actions performed by the **“Subject\\Account Name”** that you are concerned about.                             |
| **Account naming conventions**: Your organization might have specific naming conventions for account names.                                                                                                                                                                                                       | Monitor “**Subject\\Account Name”** for names that don’t comply with naming conventions.                                                                                     |

-   If Fast User Switching is disabled on workstations or specific computers, then monitor for any event with **Session Name** = Console.

-   If Remote Desktop Connections are not allowed for specific users (**Subject\\Account Name**) or disabled on some computers, then monitor for **Session Name** = RDP-Tcp\# (substring).

-   If a specific computer or device (**Client Name** or **Client Address**) should never connect to this computer (**Computer**), monitor for any event with that **Client Name** or **Client Address**.

-   Check that **Additional Information\\Client Address** is from internal IP addresses list.

