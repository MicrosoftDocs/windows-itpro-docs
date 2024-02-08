---
title: 4771(F) Kerberos pre-authentication failed. 
description: Describes security event 4771(F) Kerberos pre-authentication failed. This event is generated when the Key Distribution Center fails to issue a Kerberos TGT.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.collection: 
  - highpri
  - tier3
ms.topic: reference
---

# 4771(F): Kerberos pre-authentication failed.


<img src="images/event-4771.png" alt="Event 4771 illustration" width="496" height="657" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Kerberos Authentication Service](audit-kerberos-authentication-service.md)

***Event Description:***

This event generates every time the Key Distribution Center fails to issue a Kerberos Ticket Granting Ticket (TGT). This problem can occur when a domain controller doesn't have a certificate installed for smart card authentication (for example, with a "Domain Controller" or "Domain Controller Authentication" template), the user's password has expired, or the wrong password was provided.

This event generates only on domain controllers.

This event is not generated if "Do not require Kerberos preauthentication" option is set for the account.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4771</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>14339</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-07T18:10:21.495462300Z" /> 
 <EventRecordID>166708</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="520" ThreadID="1084" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="TargetUserName">dadmin</Data> 
 <Data Name="TargetSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="ServiceName">krbtgt/CONTOSO.LOCAL</Data> 
 <Data Name="TicketOptions">0x40810010</Data> 
 <Data Name="Status">0x10</Data> 
 <Data Name="PreAuthType">15</Data> 
 <Data Name="IpAddress">::ffff:10.0.0.12</Data> 
 <Data Name="IpPort">49254</Data> 
 <Data Name="CertIssuerName" /> 
 <Data Name="CertSerialNumber" /> 
 <Data Name="CertThumbprint" /> 
 </EventData>
 </Event>
```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Account Information:**

-   **Security ID** \[Type = SID\]**:** SID of account object for which (TGT) ticket was requested. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

    For example: CONTOSO\\dadmin or CONTOSO\\WIN81$.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name:** \[Type = UnicodeString\]**:** the name of account, for which (TGT) ticket was requested. Computer account name ends with **$** character.

    -   User account example: dadmin

    -   Computer account example: WIN81$

**Service Information:**

-   **Service Name** \[Type = UnicodeString\]: the name of the service in the Kerberos Realm to which TGT request was sent. Typically has one of the following formats:

    -   krbtgt/DOMAIN\_NETBIOS\_NAME. Example: krbtgt/CONTOSO

    -   krbtgt/DOMAIN\_FULL\_NAME. Example: krbtgt/CONTOSO.LOCAL

**Network Information:**

-   **Client Address** \[Type = UnicodeString\]**:** IP address of the computer from which the TGT request was received. Here are some examples of formats:

    -   **IPv6** or **IPv4** address.

    -   **::ffff:IPv4\_address**.

    -   **::1** - localhost.

-   **Client Port** \[Type = UnicodeString\]: source port number of client network connection (TGT request connection).

    -   0 for local (localhost) requests.

**Additional Information:**

-   **Ticket Options**: \[Type = HexInt32\]: this set of different Ticket Flags is in hexadecimal format.

    Example:

    -   Ticket Options: 0x40810010

    -   Binary view: 01000000100000010000000000010000

    -   Using **MSB 0**-bit numbering, we have bit 1, 8, 15 and 27 set = Forwardable, Renewable, Canonicalize, Renewable-ok.

> **Note**&nbsp;&nbsp;In the table below **"MSB 0"** bit numbering is used, because RFC documents use this style. In "MSB 0" style bit numbering begins from left.<br><img src="images/msb.png" alt="MSB illustration" width="224" height="57" />

The most common values:

-   0x40810010 - Forwardable, Renewable, Canonicalize, Renewable-ok

-   0x40810000 - Forwardable, Renewable, Canonicalize

-   0x60810010 - Forwardable, Forwarded, Renewable, Canonicalize, Renewable-ok

| Bit   | Flag Name                | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|-------|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0     | Reserved                 | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 1     | Forwardable              | (TGT only). Tells the ticket-granting service that it can issue a new TGT—based on the presented TGT—with a different network address based on the presented TGT.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 2     | Forwarded                | Indicates either that a TGT has been forwarded or that a ticket was issued from a forwarded TGT.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 3     | Proxiable                | (TGT only). Tells the ticket-granting service that it can issue tickets with a network address that differs from the one in the TGT.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 4     | Proxy                    | Indicates that the network address in the ticket is different from the one in the TGT used to obtain the ticket.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 5     | Allow-postdate           | Postdated tickets SHOULD NOT be supported in [KILE](/openspecs/windows_protocols/ms-kile/2a32282e-dd48-4ad9-a542-609804b02cc9) (Microsoft Kerberos Protocol Extension).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 6     | Postdated                | Postdated tickets SHOULD NOT be supported in [KILE](/openspecs/windows_protocols/ms-kile/2a32282e-dd48-4ad9-a542-609804b02cc9) (Microsoft Kerberos Protocol Extension).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 7     | Invalid                  | This flag indicates that a ticket is invalid, and it must be validated by the KDC before use. Application servers must reject tickets that have this flag set.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 8     | Renewable                | Used in combination with the End Time and Renew Till fields to cause tickets with long life spans to be renewed at the KDC periodically.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 9     | Initial                  | Indicates that a ticket was issued using the authentication service (AS) exchange and not issued based on a TGT.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 10    | Pre-authent              | Indicates that the client was authenticated by the KDC before a ticket was issued. This flag usually indicates the presence of an authenticator in the ticket. It can also flag the presence of credentials taken from a smart card logon.                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 11    | Opt-hardware-auth        | This flag was originally intended to indicate that hardware-supported authentication was used during pre-authentication. This flag is no longer recommended in the Kerberos V5 protocol. KDCs MUST NOT issue a ticket with this flag set. KDCs SHOULD NOT preserve this flag if it is set by another KDC.                                                                                                                                                                                                                                                                                                                                                    |
| 12    | Transited-policy-checked | KILE MUST NOT check for transited domains on servers or a KDC. Application servers MUST ignore the TRANSITED-POLICY-CHECKED flag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 13    | Ok-as-delegate           | The KDC MUST set the OK-AS-DELEGATE flag if the service account is trusted for delegation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 14    | Request-anonymous        | KILE does not use this flag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 15    | Name-canonicalize        | To request referrals, the Kerberos client MUST explicitly request the "canonicalize" KDC option for the AS-REQ or TGS-REQ.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 16-25 | Unused                   | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 26    | Disable-transited-check  | By default the KDC will check the transited field of a TGT against the policy of the local realm before it will issue derivative tickets based on the TGT. If this flag is set in the request, checking of the transited field is disabled. Tickets issued without the performance of this check will be noted by the reset (0) value of the TRANSITED-POLICY-CHECKED flag, indicating to the application server that the transited field must be checked locally. KDCs are encouraged but not required to honor<br>the DISABLE-TRANSITED-CHECK option.<br>Should not be in use, because Transited-policy-checked flag is not supported by KILE. |
| 27    | Renewable-ok             | The RENEWABLE-OK option indicates that a renewable ticket will be acceptable if a ticket with the requested life cannot otherwise be provided, in which case a renewable ticket may be issued with a renew-till equal to the requested end time. The value of the renew-till field may still be limited by local limits, or limits selected by the individual principal or server.                                                                                                                                                                                                                                                                           |
| 28    | Enc-tkt-in-skey          | No information.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 29    | Unused                   | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 30    | Renew                    | The RENEW option indicates that the present request is for a renewal. The ticket provided is encrypted in the secret key for the server on which it is valid. This option will only be honored if the ticket to be renewed has its RENEWABLE flag set and if the time in its renew-till field has not passed. The ticket to be renewed is passed in the padata field as part of the authentication header.                                                                                                                                                                                                                                                   |
| 31    | Validate                 | This option is used only by the ticket-granting service. The VALIDATE option indicates that the request is to validate a postdated ticket. Should not be in use, because postdated tickets are not supported by KILE.                                                                                                                                                                                                                                                                                                                                                                                                                                        |

> Table 6. Kerberos ticket flags.

-   **Failure Code** \[Type = HexInt32\]**:** hexadecimal failure code of failed TGT issue operation. The table below contains the list of the error codes for this event as defined in [RFC 4120](https://tools.ietf.org/html/rfc4120#section-7.5.9):

| Code | Code Name                      | Description                                                  | Possible causes                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|------|--------------------------------|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0x0         | KDC\_ERR\_NONE                            | No error                                        |
| 0x1         | KDC\_ERR\_NAME\_EXP                       | Client's entry in database has expired          |
| 0x2         | KDC\_ERR\_SERVICE\_EXP                    | Server's entry in database has expired          |
| 0x3         | KDC\_ERR\_BAD\_PVNO                       | Requested protocol version number not supported |
| 0x4         | KDC\_ERR\_C\_OLD\_MAST\_KVNO              | Client's key encrypted in old master key        |
| 0x5         | KDC\_ERR\_S\_OLD\_MAST\_KVNO              | Server's key encrypted in old master key        |
| 0x6         | KDC\_ERR\_C\_PRINCIPAL\_UNKNOWN           | Client not found in Kerberos database           |
| 0x7         | KDC\_ERR\_S\_PRINCIPAL\_UNKNOWN           | Server not found in Kerberos database           |
| 0x8         | KDC\_ERR\_PRINCIPAL\_NOT\_UNIQUE          | Multiple principal entries in database          |
| 0x9         | KDC\_ERR\_NULL\_KEY                       | The client or server has a null key             |
| 0xa         | KDC\_ERR\_CANNOT\_POSTDATE                | Ticket not eligible for postdating              |
| 0xb         | KDC\_ERR\_NEVER\_VALID                    | Requested starttime is later than end time      |
| 0xc         | KDC\_ERR\_POLICY                          | KDC policy rejects request                      |
| 0xd         | KDC\_ERR\_BADOPTION                       | KDC cannot accommodate requested option         |
| 0xe         | KDC\_ERR\_ETYPE\_NOSUPP                   | KDC has no support for encryption type          |
| 0xf         | KDC\_ERR\_SUMTYPE\_NOSUPP                 | KDC has no support for checksum type            |
| 0x10         | KDC\_ERR\_PADATA\_TYPE\_NOSUPP            | KDC has no support for PADATA type (pre-authentication data)|Smart card logon is being attempted and the proper certificate cannot be located. This problem can happen because the wrong certification authority (CA) is being queried or the proper CA cannot be contacted in order to get Domain Controller or Domain Controller Authentication certificates for the domain controller.<br>It can also happen when a domain controller doesn't have a certificate installed for smart cards (Domain Controller or Domain Controller Authentication templates).
| 0x11         | KDC\_ERR\_TRTYPE\_NOSUPP                  | KDC has no support for transited type           |
| 0x12         | KDC\_ERR\_CLIENT\_REVOKED                 | Clients credentials have been revoked           |
| 0x13         | KDC\_ERR\_SERVICE\_REVOKED                | Credentials for server have been revoked        |
| 0x14         | KDC\_ERR\_TGT\_REVOKED                    | TGT has been revoked                            |
| 0x15         | KDC\_ERR\_CLIENT\_NOTYET                  | Client not yet valid; try again later           |
| 0x16         | KDC\_ERR\_SERVICE\_NOTYET                 | Server not yet valid; try again later           |
| 0x17         | KDC\_ERR\_KEY\_EXPIRED                    | Password has expired—change password to reset   |The user's password has expired.
| 0x18         | KDC\_ERR\_PREAUTH\_FAILED                 | Pre-authentication information was invalid      |The wrong password was provided.
| 0x19         | KDC\_ERR\_PREAUTH\_REQUIRED               | Additional pre-authentication required          |
| 0x1a         | KDC\_ERR\_SERVER\_NOMATCH                 | Requested server and ticket don't match         |
| 0x1b         | KDC\_ERR\_MUST\_USE\_USER2USER            | Server principal valid for user2user only       |
| 0x1c         | KDC\_ERR\_PATH\_NOT\_ACCEPTED             | KDC Policy rejects transited path               |
| 0x1d         | KDC\_ERR\_SVC\_UNAVAILABLE                | A service is not available                      |
| 0x1f         | KRB\_AP\_ERR\_BAD\_INTEGRITY              | Integrity check on decrypted field failed       |
| 0x20         | KRB\_AP\_ERR\_TKT\_EXPIRED                | Ticket expired                                  |
| 0x21         | KRB\_AP\_ERR\_TKT\_NYV                    | Ticket not yet valid                            |
| 0x22         | KRB\_AP\_ERR\_REPEAT                      | Request is a replay                             |
| 0x23         | KRB\_AP\_ERR\_NOT\_US                     | The ticket isn't for us                         |
| 0x24         | KRB\_AP\_ERR\_BADMATCH                    | Ticket and authenticator don't match            |
| 0x25         | KRB\_AP\_ERR\_SKEW                        | Clock skew too great                            |
| 0x26         | KRB\_AP\_ERR\_BADADDR                     | Incorrect net address                           |
| 0x27         | KRB\_AP\_ERR\_BADVERSION                  | Protocol version mismatch                       |
| 0x28         | KRB\_AP\_ERR\_MSG\_TYPE                   | Invalid msg type                                |
| 0x29         | KRB\_AP\_ERR\_MODIFIED                    | Message stream modified                         |
| 0x2a         | KRB\_AP\_ERR\_BADORDER                    | Message out of order                            |
| 0x2c         | KRB\_AP\_ERR\_BADKEYVER                   | Specified version of key is not available       |
| 0x2d         | KRB\_AP\_ERR\_NOKEY                       | Service key not available                       |
| 0x2e         | KRB\_AP\_ERR\_MUT\_FAIL                   | Mutual authentication failed                    |
| 0x2f         | KRB\_AP\_ERR\_BADDIRECTION                | Incorrect message direction                     |
| 0x30         | KRB\_AP\_ERR\_METHOD                      | Alternative authentication method required      |
| 0x31         | KRB\_AP\_ERR\_BADSEQ                      | Incorrect sequence number in message            |
| 0x32         | KRB\_AP\_ERR\_INAPP\_CKSUM                | Inappropriate type of checksum in message       |
| 0x33         | KRB\_AP\_PATH\_NOT\_ACCEPTED              | Policy rejects transited path                   |
| 0x34         | KRB\_ERR\_RESPONSE\_TOO\_BIG              | Response too big for UDP; retry with TCP        |
| 0x3c         | KRB\_ERR\_GENERIC                         | Generic error (description in e-text)           |
| 0x3d         | KRB\_ERR\_FIELD\_TOOLONG                  | Field is too long for this implementation       |
| 0x3e         | KDC\_ERROR\_CLIENT\_NOT\_TRUSTED          | Reserved for PKINIT                             |
| 0x3f         | KDC\_ERROR\_KDC\_NOT\_TRUSTED             | Reserved for PKINIT                             |
| 0x40         | KDC\_ERROR\_INVALID\_SIG                  | Reserved for PKINIT                             |
| 0x41         | KDC\_ERR\_KEY\_TOO\_WEAK                  | Reserved for PKINIT                             |
| 0x42         | KDC\_ERR\_CERTIFICATE\_MISMATCH           | Reserved for PKINIT                             |
| 0x43         | KRB\_AP\_ERR\_NO\_TGT                     | No TGT available to validate USER-TO-USER       |
| 0x44         | KDC\_ERR\_WRONG\_REALM                    | Reserved for future use                         |
| 0x45         | KRB\_AP\_ERR\_USER\_TO\_USER\_REQUIRED    | Ticket must be for USER-TO-USER                 |
| 0x46         | KDC\_ERR\_CANT\_VERIFY\_CERTIFICATE       | Reserved for PKINIT                             |
| 0x47         | KDC\_ERR\_INVALID\_CERTIFICATE            | Reserved for PKINIT                             |
| 0x48         | KDC\_ERR\_REVOKED\_CERTIFICATE            | Reserved for PKINIT                             |
| 0x49         | KDC\_ERR\_REVOCATION\_STATUS\_UNKNOWN     | Reserved for PKINIT                             |
| 0x4a         | KDC\_ERR\_REVOCATION\_STATUS\_UNAVAILABLE | Reserved for PKINIT                             |
| 0x4b         | KDC\_ERR\_CLIENT\_NAME\_MISMATCH          | Reserved for PKINIT                             |
| 0x4c         | KDC\_ERR\_KDC\_NAME\_MISMATCH             | Reserved for PKINIT                             |                                                                   

-   **Pre-Authentication Type** \[Type = UnicodeString\]: the code of [pre-Authentication](/previous-versions/windows/it-pro/windows-server-2003/cc772815(v=ws.10)) type that was used in TGT request.

<span id="kerberos-preauthentication-types" />
## Table 5. Kerberos Pre-Authentication types.

| Type | Type Name              | Description                                                                                                                                                                                                                                                                                                                                                                                                      |
|------|------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0    | -                      | Logon without Pre-Authentication.                                                                                                                                                                                                                                                                                                                                                                                |
| 2    | PA-ENC-TIMESTAMP       | This type is normal for standard password authentication.                                                                                                                                                                                                                                                                                                                                                      |
| 11   | PA-ETYPE-INFO          | The ETYPE-INFO pre-authentication type is sent by the KDC in a KRB-ERROR indicating a requirement for additional pre-authentication. It is usually used to notify a client of which key to use for the encryption of an encrypted timestamp for the purposes of sending a PA-ENC-TIMESTAMP pre-authentication value.<br>Never saw this Pre-Authentication Type in Microsoft Active Directory environment.  |
| 15   | PA-PK-AS-REP\_OLD      | Used for Smart Card logon authentication.                                                                                                                                                                                                                                                                                                                                                                        |
| 16   | PA-PK-AS-REQ           | Request sent to KDC in Smart Card authentication scenarios.|
| 17   | PA-PK-AS-REP           | This type should also be used for Smart Card authentication, but in certain Active Directory environments, it is never seen.                                                                                                                                                                                                                                                                                     |
| 19   | PA-ETYPE-INFO2         | The ETYPE-INFO2 pre-authentication type is sent by the KDC in a KRB-ERROR indicating a requirement for additional pre-authentication. It is usually used to notify a client of which key to use for the encryption of an encrypted timestamp for the purposes of sending a PA-ENC-TIMESTAMP pre-authentication value.<br>Never saw this Pre-Authentication Type in Microsoft Active Directory environment. |
| 20   | PA-SVR-REFERRAL-INFO   | Used in KDC Referrals tickets.                                                                                                                                                                                                                                                                                                                                                                                   |
| 138  | PA-ENCRYPTED-CHALLENGE | Logon using Kerberos Armoring (FAST). Supported starting from Windows Server 2012 domain controllers and Windows 8 clients.                                                                                                                                                                                                                                                                                      |
| -    |                        | This type shows in Audit Failure events.                                                                                                                                                                                                                                                                                                                                                                         |

**Certificate Information:**

- **Certificate Issuer Name** \[Type = UnicodeString\]**:** the name of Certification Authority that issued smart card certificate. Populated in **Issued by** field in certificate. Always empty for [4771](event-4771.md) events.

- **Certificate Serial Number** \[Type = UnicodeString\]**:** smart card certificate's serial number. Can be found in **Serial number** field in the certificate. Always empty for [4771](event-4771.md) events.

- **Certificate Thumbprint** \[Type = UnicodeString\]**:** smart card certificate's thumbprint. Can be found in **Thumbprint** field in the certificate. Always empty for [4771](event-4771.md) events.

## Security Monitoring Recommendations

For 4771(F): Kerberos pre-authentication failed.

| **Type of monitoring required**                                                                                                                                                                                                                                                                                   | **Recommendation**                                                                                                                                                 |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **High-value accounts**: You might have high-value domain or local accounts for which you need to monitor each action.<br>Examples of high-value accounts are database administrators, built-in local administrator account, domain administrators, service accounts, domain controller accounts and so on. | Monitor this event with the **"Security ID"** that corresponds to the high-value account or accounts.                                                              |
| **Anomalies or malicious actions**: You might have specific requirements for detecting anomalies or monitoring potential malicious actions. For example, you might need to monitor for use of an account outside of working hours.                                                                                | When you monitor for anomalies or malicious actions, use the **"Security ID"** (with other information) to monitor how or when a particular account is being used. |
| **Non-active accounts**: You might have non-active, disabled, or guest accounts, or other accounts that should never be used.                                                                                                                                                                                     | Monitor this event with the **"Security ID"** that corresponds to the accounts that should never be used.                                                          |
| **Account allow list**: You might have a specific allow list of accounts that are the only ones allowed to perform actions corresponding to particular events.                                                                                                                                                      | If this event corresponds to a "allow list-only" action, review the **"Security ID"** for accounts that are outside the allow list.                                  |
| **Account naming conventions**: Your organization might have specific naming conventions for account names.                                                                                                                                                                                                       | Monitor "**Subject\\Account Name"** for names that don't comply with naming conventions.                                                                           |

-   You can track all [4771](event-4771.md) events where the **Client Address** is not from your internal IP range or not from private IP ranges.

-   If you know that **Account Name** should be used only from known list of IP addresses, track all **Client Address** values for this **Account Name** in [4771](event-4771.md) events. If **Client Address** is not from the allow list, generate the alert.

-   All **Client Address** = ::1 means local authentication. If you know the list of accounts that should log on to the domain controllers, then you need to monitor for all possible violations, where **Client Address** = ::1 and **Account Name** is not allowed to log on to any domain controller.

-   All [4771](event-4771.md) events with **Client Port** field value &gt; 0 and &lt; 1024 should be examined, because a well-known port was used for outbound connection.

-   Also monitor the fields shown in the following table, to discover the issues listed:

| **Field**                   | **Issue to discover**                                                                                                                                                                                                        |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Pre-Authentication Type** | Value is **not 15** when account must use a smart card for authentication. For more information, see [Table 5. Kerberos Pre-Authentication types](#kerberos-preauthentication-types).                                        |
| **Pre-Authentication Type** | Value is **not 2** when only standard password authentication is in use in the organization. For more information, see [Table 5. Kerberos Pre-Authentication types](#kerberos-preauthentication-types).                      |
| **Pre-Authentication Type** | Value is **not 138** when Kerberos Armoring is enabled for all Kerberos communications in the organization. For more information, see [Table 5. Kerberos Pre-Authentication types](#kerberos-preauthentication-types).       |
| **Failure Code**             | **0x10** (KDC has no support for PADATA type (pre-authentication data)). This error can help you to more quickly identify smart-card related problems with Kerberos authentication.                                          |
| **Failure Code**             | **0x18** ((Pre-authentication information was invalid), if you see, for example N events in last N minutes. This issue can indicate a brute-force attack on the account password, especially for highly critical accounts. |