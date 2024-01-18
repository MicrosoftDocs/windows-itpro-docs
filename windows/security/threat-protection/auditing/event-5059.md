---
title: 5059(S, F) Key migration operation. 
description: Describes security event 5059(S, F) Key migration operation. This event is generated when a cryptographic key is exported/imported using a Key Storage Provider.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 5059(S, F): Key migration operation.


<img src="images/event-5059.png" alt="Event 5059 illustration" width="491" height="489" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other System Events](audit-other-system-events.md)

***Event Description:***

This event generates when a cryptographic key is exported or imported using a [Key Storage Provider](/windows/win32/seccertenroll/cng-key-storage-providers) (KSP). This event generates only if one of the following KSPs were used:

-   Microsoft Software Key Storage Provider

-   Microsoft Smart Card Key Storage Provider

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5059</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12292</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-14T19:42:08.135265600Z" /> 
 <EventRecordID>1048447</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="520" ThreadID="3496" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x38e2d</Data> 
 <Data Name="ProviderName">Microsoft Software Key Storage Provider</Data> 
 <Data Name="AlgorithmName">ECDH\_P521</Data> 
 <Data Name="KeyName">le-SuperAdmin-795fd6c1-2fae-4bef-a6bc-4f4d464bc083</Data> 
 <Data Name="KeyType">%%2500</Data> 
 <Data Name="Operation">%%2464</Data> 
 <Data Name="ReturnCode">0x0</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested key migration operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested key migration operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Cryptographic Parameters:**

-   **Provider Name** \[Type = UnicodeString\]**:** the name of KSP through which the operation was performed. Can have one of the following values:

    -   Microsoft Software Key Storage Provider

    -   Microsoft Smart Card Key Storage Provider

-   **Algorithm Name** \[Type = UnicodeString\]: the name of cryptographic algorithm through which the key was used or accessed. For “Read persisted key from file” operation, this typically has “**UNKNOWN**” value. Can also have one of the following values:

    -   RSA – algorithm created by Ron Rivest, Adi Shamir, and Leonard Adleman.

    -   DSA – Digital Signature Algorithm.

    -   DH – Diffie-Hellman.

    -   ECDH\_P521 – Elliptic Curve Diffie-Hellman algorithm with 512-bit key length.

    -   ECDH\_P384 – Elliptic Curve Diffie-Hellman algorithm with 384-bit key length.

    -   ECDH\_P256 – Elliptic Curve Diffie-Hellman algorithm with 256-bit key length.

    -   ECDSA\_P256 – Elliptic Curve Digital Signature Algorithm with 256-bit key length.

    -   ECDSA\_P384 – Elliptic Curve Digital Signature Algorithm with 384-bit key length.

    -   ECDSA\_P521 – Elliptic Curve Digital Signature Algorithm with 521-bit key length.

-   **Key Name** \[Type = UnicodeString\]: the name of the key (key container) with which operation was performed. For example, to get the list of **Key Names** for certificates for logged in user you can use “**certutil -store -user my**” command and check **Key Container** parameter in the output. Here is an output example:

<img src="images/certutil-command.png" alt="Certutil command illustration" width="588" height="665" />

-   **Key Type** \[Type = UnicodeString\]: can have one of the following values:

    -   “User key.” – user’s cryptographic key.

    -   “Machine key.” – machine’s cryptographic key.

**Additional Information:**

-   **Operation** \[Type = UnicodeString\]: performed operation. Examples:

    -   “**Export of persistent cryptographic key.**” – typically generates during key read operations, which means that the key was taken for read purposes. But it also generates during real key export operations (export certificate with private key, for example).

    -   “**Import of persistent cryptographic key.**” – key import operation was performed (import certificate with private key, for example).

-   **Return Code** \[Type = HexInt32\]: has “**0x0**” value for Success events. For failure events, provides a hexadecimal error code number.

## Security Monitoring Recommendations

For 5059(S, F): Key migration operation.

-   Typically this event is required for detailed monitoring of KSP-related actions with cryptographic keys. If you need to monitor actions related to specific cryptographic keys (**“Key Name”)** or a specific **“Operation”**, such as **“Export of persistent cryptographic key”**, create monitoring rules and use this event as an information source.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-