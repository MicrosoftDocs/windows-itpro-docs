---
title: 5378(F) The requested credentials delegation was disallowed by policy. (Windows 10)
description: Describes security event 5378(F) The requested credentials delegation was disallowed by policy.
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.technology: itpro-security
ms.topic: reference
---

# 5378(F): The requested credentials delegation was disallowed by policy.


<img src="images/event-5378.png" alt="Event 5378 illustration" width="449" height="438" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Logon/Logoff Events](audit-other-logonlogoff-events.md)

***Event Description:***

This event generates requested [CredSSP](/openspecs/windows_protocols/ms-cssp/85f57821-40bb-46aa-bfcb-ba9590b8fc30) credentials delegation was disallowed by [CredSSP](/openspecs/windows_protocols/ms-cssp/85f57821-40bb-46aa-bfcb-ba9590b8fc30) delegation policy.

It typically occurs when [CredSSP](/openspecs/windows_protocols/ms-cssp/85f57821-40bb-46aa-bfcb-ba9590b8fc30) delegation for [WinRM](/windows/win32/winrm/portal) [double-hop](/windows/win32/winrm/multi-hop-support) session was not set properly.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5378</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12551</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-11T03:23:48.502346900Z" /> 
 <EventRecordID>1198733</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="4308" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x2b1e04</Data> 
 <Data Name="Package">CREDSSP</Data> 
 <Data Name="UserUPN">dadmin@contoso</Data> 
 <Data Name="TargetServer">WSMAN/dc01.contoso.local</Data> 
 <Data Name="CredType">%%8098</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested credentials delegation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested credentials delegation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Credential Delegation Information:**

-   **Security Package** \[Type = UnicodeString\]: the name of [Security Package](/windows/win32/secauthn/ssp-aps-versus-ssps) which was used. Always **CREDSSP** for this event.

-   **User's UPN** \[Type = UnicodeString\]: [UPN](/windows/win32/secauthn/user-name-formats) of the account for which delegation was requested.

-   **Target Server** \[Type = UnicodeString\]: SPN of the target service for which delegation was requested.

> **Note**&nbsp;&nbsp;**Service Principal Name (SPN)** is the name by which a client uniquely identifies an instance of a service. If you install multiple instances of a service on computers throughout a forest, each instance must have its own SPN. A given service instance can have multiple SPNs if there are multiple names that clients might use for authentication. For example, an SPN always includes the name of the host computer on which the service instance is running, so a service instance might register an SPN for each name or alias of its host.

-   **Credential Type** \[Type = UnicodeString\]: types of credentials which were presented for delegation:

| Credentials Type    | Description                                                                                                                                 |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| Default credentials | The credentials obtained when the user first logs on to Windows.                                                                            |
| Fresh credentials   | The credentials that the user is prompted for when executing an application.                                                                |
| Saved credentials   | The credentials that are saved using [Credential Manager](/windows/win32/secauthn/credential-manager). |

## Security Monitoring Recommendations

For 5378(F): The requested credentials delegation was disallowed by policy.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have defined CredSSP delegation policy, then this event will show you policy violations. We recommend collecting these events and investigating every policy violation.

-   This event also can be used for CredSSP delegation troubleshooting.