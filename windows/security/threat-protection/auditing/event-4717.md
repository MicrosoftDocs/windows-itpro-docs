---
title: 4717(S) System security access was granted to an account. 
description: Describes security event 4717(S) System security access was granted to an account.
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

# 4717(S): System security access was granted to an account.


<img src="images/event-4717.png" alt="Event 4717 illustration" width="449" height="435" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Authentication Policy Change](audit-authentication-policy-change.md)

***Event Description:***

This event generates every time local [logon user right policy](/previous-versions/windows/it-pro/windows-server-2003/cc728212(v=ws.10)) is changed and logon right was granted to an account.

You will see unique event for every user if logon user rights were granted to multiple accounts.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4717</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13569</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-02T00:02:33.213572000Z" /> 
 <EventRecordID>1049777</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="2064" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DC01$</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="TargetSid">S-1-5-21-3457937927-2839227994-823803824-2104</Data> 
 <Data Name="AccessGranted">SeInteractiveLogonRight</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made a change to local logon right user policy. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made a change to local logon right user policy.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Account Modified:**

-   **Account Name** \[Type = SID\]: the SID of the security principal for which logon right was granted. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

**Access Granted:**

-   **Access Right** \[Type = UnicodeString\]: the name of granted logon right. This event generates only for [logon rights](/previous-versions/windows/it-pro/windows-server-2003/cc728212(v=ws.10)), which are as follows:

| Value                             | Group Policy Name                             |
|-----------------------------------|-----------------------------------------------|
| SeNetworkLogonRight               | Access this computer from the network         |
| SeRemoteInteractiveLogonRight     | Allow logon through Terminal Services         |
| SeDenyNetworkLogonRight           | Deny access to this computer from the network |
| SeDenyBatchLogonRight             | Deny logon as a batch job                     |
| SeDenyServiceLogonRight           | Deny logon as a service                       |
| SeDenyInteractiveLogonRight       | Deny logon locally                            |
| SeDenyRemoteInteractiveLogonRight | Deny logon through Terminal Services          |
| SeBatchLogonRight                 | Log on as a batch job                         |
| SeServiceLogonRight               | Log on as a service                           |
| SeInteractiveLogonRight           | Log on locally                                |

## Security Monitoring Recommendations

For 4717(S): System security access was granted to an account.

| **Type of monitoring required**                                                                                                                                                                                                                                                                                   | **Recommendation**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Actions typically performed by the SYSTEM account**: This event and certain other events should be monitored to see if they are triggered by any account other than SYSTEM.                                                                                                                                     | Because this event is typically triggered by the SYSTEM account, we recommend that you report it whenever **“Subject\\Security ID”** is not SYSTEM.                                                                                                                                                                                                                                                                                                                                                  |
| **High-value accounts**: You might have high-value domain or local accounts for which you need to monitor each action.<br>Examples of high-value accounts are database administrators, built-in local administrator account, domain administrators, service accounts, domain controller accounts and so on. | Monitor this event with the **“Subject\\Security ID”** and “**Account Modified\\Account Name”** that correspond to the high-value account or accounts.                                                                                                                                                                                                                                                                                                                                               |
| **Anomalies or malicious actions**: You might have specific requirements for detecting anomalies or monitoring potential malicious actions. For example, you might need to monitor for use of an account outside of working hours.                                                                                | When you monitor for anomalies or malicious actions, use the **“Subject\\Security ID”** (with other information) to monitor how or when a particular account is being used.                                                                                                                                                                                                                                                                                                                          |
| **Non-active accounts**: You might have non-active, disabled, or guest accounts, or other accounts that should never be used.                                                                                                                                                                                     | Monitor this event with the **“Subject\\Security ID”** that corresponds to the accounts that should never be used.                                                                                                                                                                                                                                                                                                                                                                                   |
| **Account allowlist**: You might have a specific allowlist of accounts that are the only ones allowed to perform actions corresponding to particular events.                                                                                                                                                      | If this event corresponds to an “allowlist-only” action, review the **“Subject\\Security ID”** for accounts that are outside the allowlist.<br>If you have specific user logon rights policies, for example, an allowlist of accounts that can log on to certain computers, monitor this event to confirm that any “**Access Right**” was granted only to the appropriate “**Account Modified\\Account Name**.”                                                                                  |
| **Accounts of different types**: You might want to ensure that certain actions are performed only by certain account types, for example, local or domain account, machine or user account, vendor or employee account, and so on.                                                                                 | If this event corresponds to an action you want to monitor for certain account types, review the **“Subject\\Security ID”** and “**Account Modified\\Account Name”** to see whether the account type is as expected.<br>For example, if non-service accounts should never be granted certain logon rights (for example, **SeServiceLogonRight**), monitor this event for those accounts and rights.                                                                                            |
| **External accounts**: You might be monitoring accounts from another domain, or “external” accounts that are not allowed to perform certain actions (represented by certain specific events).                                                                                                                     | Monitor this event for the **“Subject\\Account Domain”** corresponding to accounts from another domain or “external” accounts.                                                                                                                                                                                                                                                                                                                                                                       |
| **Restricted-use computers or devices**: You might have certain computers, machines, or devices on which certain people (accounts) should perform only limited actions, or no actions at all.                                                                                                                     | Monitor the target **Computer:** (or other target device) for actions performed by the **“Subject\\Security ID”** that you are concerned about. Also be sure to check “**Account Modified\\Account Name**” to see whether logon rights should be granted to that account.<br>For high-value servers or other computers, we recommend that you track this event and investigate whether the specific “**Access Right**” should be granted to “**Account Modified\\Account Name**” in each case. |
| **Logon rights that should be restricted**: You might have a list of user logon rights that you want to monitor (for example, **SeServiceLogonRight**).                                                                                                                                                           | Monitor this event and compare the **“Access Right”** to your list of restricted rights.                                                                                                                                                                                                                                                                                                                                                                                                             |
| **Account naming conventions**: Your organization might have specific naming conventions for account names.                                                                                                                                                                                                       | Monitor “**Subject\\Account Name”** for names that don’t comply with naming conventions.                                                                                                                                                                                                                                                                                                                                                                                                             |