---
title: 4626(S) User/Device claims information. (Windows 10)
description: Describes security event 4626(S) User/Device claims information.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4626(S): User/Device claims information.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4626.png" alt="Event 4626 illustration" width="549" height="771" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit User/Device Claims](audit-user-device-claims.md)

***Event Description:***

This event generates for new account logons and contains user/device claims which were associated with a new logon session.

This event does not generate if the user/device doesn’t have claims.

For computer account logons you will also see device claims listed in the “**User Claims**” field.

You will typically get “[4624](event-4624.md): An account was successfully logged on” and after it a 4626 event with the same information in **Subject**, **Logon Type** and **New Logon** sections.

This event generates on the computer to which the logon was performed (target computer). For example, for Interactive logons it will be the same computer.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4626</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12553</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-10T00:12:02.243396300Z" /> 
 <EventRecordID>232648</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="1092" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-0-0</Data> 
 <Data Name="SubjectUserName">-</Data> 
 <Data Name="SubjectDomainName">-</Data> 
 <Data Name="SubjectLogonId">0x0</Data> 
 <Data Name="TargetUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="TargetUserName">dadmin</Data> 
 <Data Name="TargetDomainName">CONTOSO</Data> 
 <Data Name="TargetLogonId">0x136f7b</Data> 
 <Data Name="LogonType">3</Data> 
 <Data Name="EventIdx">1</Data> 
 <Data Name="EventCountTotal">1</Data> 
 <Data Name="UserClaims">ad://ext/cn:88d2b96fdb2b4c49 <%%1818> : "dadmin" ad://ext/Department:88d16a8edaa8c66b <%%1818> : "IT"</Data> 
 <Data Name="DeviceClaims">-</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012, Windows 8.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that reported information about claims. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that reported information about claims.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

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

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Event in sequence** \[Type = UInt32\]**: I**f is there is not enough space in one event to put all claims, you will see “**1 of N**” in this field and additional events will be generated. Typically this field has “**1 of 1**” value.

**User Claims** \[Type = UnicodeString\]**:** list of user claims for new logon session. This field contains user claims if user account was logged in and device claims if computer account was logged in. Here is an example how to parse the entrance of this field:

-   ad://ext/cn:88d2b96fdb2b4c49 &lt;String&gt; : “dadmin”

    -   cn – claim display name.

    -   88d2b96fdb2b4c49 – unique claim ID.

    -   &lt;String&gt; - claim type.

    -   “dadmin” – claim value.

**Device Claims** \[Type = UnicodeString\]**:** list of device claims for new logon session. For user accounts this field typically has “**-**“ value**.** For computer accounts this field has device claims listed.

## Security Monitoring Recommendations

For 4626(S): User/Device claims information.

-   <span id="Reccomendations_Subject_NULLSID" class="anchor"></span>Typically this action is reported by the NULL SID account, so we recommend reporting all events with **“Subject\\Security ID”** not equal “**NULL SID**”.

-   If you need to monitor account logons with specific claims, you can monitor for [4626](event-4626.md) and check **User Claims**\\**Device Claims** fields.

-   If you have specific requirements, such as:

    -   Users with specific claims should not access specific computers;

    -   Computer account should not have specific claims;

    -   User account should not have specific claims;

    -   Claim should not be empty

    -   And so on…

        You can monitor for [4626](event-4626.md) and check **User Claims**\\**Device Claims** fields.

-   If you need to monitor computer/user logon attempts only and you don’t need information about claims, then it is better to monitor “[4624](event-4624.md): An account was successfully logged on.”

