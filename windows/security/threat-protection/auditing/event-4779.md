---
title: 4779(S) A session was disconnected from a Window Station. (Windows 10)
description: Describes security event 4779(S) A session was disconnected from a Window Station.
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.technology: itpro-security
ms.topic: reference
---

# 4779(S): A session was disconnected from a Window Station.


<img src="images/event-4779.png" alt="Event 4779 illustration" width="449" height="504" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Logon/Logoff Events](audit-other-logonlogoff-events.md)

***Event Description:***

This event is generated when a user disconnects from an existing Terminal Services session, or when a user switches away from an existing desktop using [Fast User Switching](/windows-hardware/drivers/display/fast-user-switching).

This event also generated when user disconnects from virtual host Hyper-V Enhanced Session, for example.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4779</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12551</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-10T23:04:41.044489800Z" /> 
 <EventRecordID>237646</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="504" ThreadID="524" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="AccountName">ladmin</Data> 
 <Data Name="AccountDomain">CONTOSO</Data> 
 <Data Name="LogonID">0x1e01f6</Data> 
 <Data Name="SessionName">RDP-Tcp\#3</Data> 
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

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account for which the session was disconnected.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Session:**

-   **Session Name** \[Type = UnicodeString\]**:** the name of disconnected session. Examples:

    -   **RDP-Rcp\#N**, where N is a number of session – typical RDP session name.

    -   **Console** – console session, typical for Fast User Switching.

    -   **31C5CE94259D4006A9E4\#3** – example of “Hyper-V Enhanced Session” session name.

        You can see the list of current session’s using “**query session”** command in command prompt. Example of output (see **SESSIONNAME** column):

<img src="images/query-session.png" alt="Query session illustration" width="738" height="125" />

**Additional Information:**

-   **Client Name** \[Type = UnicodeString\]: machine name from which the session was disconnected. Has “**Unknown”** value for console session.

<!-- -->

-   **Client Address** \[Type = UnicodeString\]: IP address of the computer from which the session was disconnected.

    -   IPv6 address or ::ffff:IPv4 address of a client.

    -   ::1 or 127.0.0.1 means localhost.

    <!-- -->

    -   Has “**LOCAL**” value for console session.

## Security Monitoring Recommendations

For 4779(S): A session was disconnected from a Window Station.

| **Type of monitoring required**                                                                                                                                                                                                                                                                                   | **Recommendation**                                                                                                                                                                                                                                                                                                                                                                |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **High-value accounts**: You might have high-value domain or local accounts for which you need to monitor each action.<br>Examples of high-value accounts are database administrators, built-in local administrator account, domain administrators, service accounts, domain controller accounts and so on. | Monitor this event with the **“Subject\\Account Name”** that corresponds to the high-value account or accounts.                                                                                                                                                                                                                                                                   |
| **Anomalies or malicious actions**: You might have specific requirements for detecting anomalies or monitoring potential malicious actions. For example, you might need to monitor for use of an account outside of working hours.                                                                                | When you monitor for anomalies or malicious actions, use the **“Subject\\Account Name”** (with other information) to monitor how or when a particular account is being used.                                                                                                                                                                                                      |
| **Non-active accounts**: You might have non-active, disabled, or guest accounts, or other accounts that should never be used.                                                                                                                                                                                     | Monitor this event with the **“Subject\\Account Name”** that corresponds to the accounts that should never be used.                                                                                                                                                                                                                                                               |
| **Account allowlist**: You might have a specific allowlist of accounts that are the only ones allowed to perform actions corresponding to particular events.                                                                                                                                                      | If this event corresponds to an “allowlist-only” action, review the **“Subject\\Account Name”** for accounts that are outside the allowlist.                                                                                                                                                                                                                                       |
| **Accounts of different types**: You might want to ensure that certain actions are performed only by certain account types, for example, local or domain account, machine or user account, vendor or employee account, and so on.                                                                                 | If this event corresponds to an action you want to monitor for certain account types, review the **“Subject\\Account Name”** to see whether the account type is as expected.                                                                                                                                                                                                      |
| **External accounts**: You might be monitoring accounts from another domain, or “external” accounts that are not allowed to perform certain actions (represented by certain specific events).                                                                                                                     | Monitor this event for the **“Subject\\Account Domain”** corresponding to accounts from another domain or “external” accounts.                                                                                                                                                                                                                                                    |
| **Restricted-use computers or devices**: You might have certain computers, machines, or devices on which certain people (accounts) should not typically perform any actions.<br>For example, you might have computers to which connections should not be made from certain accounts or addresses.           | Monitor the target **Computer:** (or other target device) for actions performed by the **“Subject\\Account Name”** that you are concerned about.<br>If you have a target **Computer:** (or other target device) to which connections should not be made from certain accounts or addresses, monitor this event for the corresponding **Client Name** or **Client Address**. |
| **Account naming conventions**: Your organization might have specific naming conventions for account names.                                                                                                                                                                                                       | Monitor “**Subject\\Account Name”** for names that don’t comply with naming conventions.                                                                                                                                                                                                                                                                                          |

-   If Fast User Switching is disabled on workstations or specific computers, then monitor for any event with **Session Name** = Console.

-   If Remote Desktop Connections are not allowed for specific users (**Subject\\Account Name**) or disabled on some computers, then monitor for **Session Name** = RDP-Tcp\# (substring).

-   To ensure that connections are made only from your internal IP address list, monitor the **Additional Information\\Client Address** in this event.