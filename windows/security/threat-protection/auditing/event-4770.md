---
title: 4770(S) A Kerberos service ticket was renewed. 
description: Describes security event 4770(S) A Kerberos service ticket was renewed.
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

# 4770(S): A Kerberos service ticket was renewed.


<img src="images/event-4770.png" alt="Event 4770 illustration" width="449" height="524" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Kerberos Service Ticket Operations](audit-kerberos-service-ticket-operations.md)

***Event Description:***

This event generates for every Ticket Granting Service (TGS) ticket renewal.

This event generates only on domain controllers.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4770</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>14337</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-08-07T03:26:23.466552900Z" /> 
 <EventRecordID>166481</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="520" ThreadID="1084" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="TargetUserName">WIN2008R2$@CONTOSO.LOCAL</Data> 
 <Data Name="TargetDomainName">CONTOSO.LOCAL</Data> 
 <Data Name="ServiceName">krbtgt</Data> 
 <Data Name="ServiceSid">S-1-5-21-3457937927-2839227994-823803824-502</Data> 
 <Data Name="TicketOptions">0x2</Data> 
 <Data Name="TicketEncryptionType">0x12</Data> 
 <Data Name="IpAddress">::ffff:10.0.0.12</Data> 
 <Data Name="IpPort">49964</Data> 
 </EventData>
 </Event>
```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Account Information:**

- **Account Name** \[Type = UnicodeString\]**:** the User Principal Name (UPN) of the account that requested ticket renewal. Computer account name ends with **$** character in UPN. This field typically has the following value format: user\_account\_name@FULL\_DOMAIN\_NAME.

  - User account example: dadmin@CONTOSO.LOCAL

  - Computer account example: WIN81$@CONTOSO.LOCAL

    This parameter in this event is optional and can be empty in some cases.

- **Account Domain** \[Type = UnicodeString\]**:** the name of the Kerberos Realm that **Account Name** belongs to. This can appear in a variety of formats, including the following:

  -   Domain NETBIOS name example: CONTOSO

  -   Lowercase full domain name: contoso.local

  -   Uppercase full domain name: CONTOSO.LOCAL

      This parameter in this event is optional and can be empty in some cases.

**Service Information:**

-   **Service Name** \[Type = UnicodeString\]: the name of the account or computer for which the TGS ticket was renewed.

    -   This parameter in this event is optional and can be empty in some cases.

-   **Service ID** \[Type = SID\]**:** SID of the account or computer object for which the TGS ticket was renewed. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

**Network Information:**

-   **Client Address** \[Type = UnicodeString\]**:** IP address of the computer from which the TGS renewal request was received. Formats vary, and include the following:

    -   **IPv6** or **IPv4** address.

    -   **::ffff:IPv4\_address**.

    -   **::1** - localhost.

-   **Client Port** \[Type = UnicodeString\]: source port number of client network connection (TGS renewal request connection).

    -   0 for local (localhost) requests.

**Additional information:**

-   **Ticket Options**: \[Type = HexInt32\]: this is a set of different Ticket Flags in hexadecimal format.

    Example:

    -   Ticket Options: 0x40810010

    -   Binary view: 01000000100000010000000000010000

    -   Using **MSB 0** bit numbering we have bit 1, 8, 15 and 27 set = Forwardable, Renewable, Canonicalize, Renewable-ok.

> **Note**&nbsp;&nbsp;In the table below **“MSB 0”** bit numbering is used, because RFC documents use this style. In “MSB 0” style bit numbering begins from left.<br><img src="images/msb.png" alt="MSB illustration" width="224" height="57" />

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
| 7     | Invalid                  | This flag indicates that a ticket is invalid, and it must be validated by the KDC before use. Application servers must reject tickets which have this flag set.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 8     | Renewable                | Used in combination with the End Time and Renew Till fields to cause tickets with long life spans to be renewed at the KDC periodically.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| 9     | Initial                  | Indicates that a ticket was issued using the authentication service (AS) exchange and not issued based on a TGT.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| 10    | Pre-authent              | Indicates that the client was authenticated by the KDC before a ticket was issued. This flag usually indicates the presence of an authenticator in the ticket. It can also flag the presence of credentials taken from a smart card logon.                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 11    | Opt-hardware-auth        | This flag was originally intended to indicate that hardware-supported authentication was used during pre-authentication. This flag is no longer recommended in the Kerberos V5 protocol. KDCs MUST NOT issue a ticket with this flag set. KDCs SHOULD NOT preserve this flag if it is set by another KDC.                                                                                                                                                                                                                                                                                                                                                    |
| 12    | Transited-policy-checked | KILE MUST NOT check for transited domains on servers or a KDC. Application servers MUST ignore the TRANSITED-POLICY-CHECKED flag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 13    | Ok-as-delegate           | The KDC MUST set the OK-AS-DELEGATE flag if the service account is trusted for delegation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 14    | Request-anonymous        | KILE not use this flag.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| 15    | Name-canonicalize        | In order to request referrals the Kerberos client MUST explicitly request the "canonicalize" KDC option for the AS-REQ or TGS-REQ.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 16-25 | Unused                   | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 26    | Disable-transited-check  | By default the KDC will check the transited field of a TGT against the policy of the local realm before it will issue derivative tickets based on the TGT. If this flag is set in the request, checking of the transited field is disabled. Tickets issued without the performance of this check will be noted by the reset (0) value of the TRANSITED-POLICY-CHECKED flag, indicating to the application server that the transited field must be checked locally. KDCs are encouraged but not required to honor<br>the DISABLE-TRANSITED-CHECK option.<br>Should not be in use, because Transited-policy-checked flag is not supported by KILE. |
| 27    | Renewable-ok             | The RENEWABLE-OK option indicates that a renewable ticket will be acceptable if a ticket with the requested life cannot otherwise be provided, in which case a renewable ticket may be issued with a renew-till equal to the requested end time. The value of the renew-till field may still be limited by local limits, or limits selected by the individual principal or server.                                                                                                                                                                                                                                                                           |
| 28    | Enc-tkt-in-skey          | No information.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| 29    | Unused                   | -                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 30    | Renew                    | The RENEW option indicates that the present request is for a renewal. The ticket provided is encrypted in the secret key for the server on which it is valid. This option will only be honored if the ticket to be renewed has its RENEWABLE flag set and if the time in it’s renew-till field has not passed. The ticket to be renewed is passed in the padata field as part of the authentication header.                                                                                                                                                                                                                                                  |
| 31    | Validate                 | This option is used only by the ticket-granting service. The VALIDATE option indicates that the request is to validate a postdated ticket. Should not be in use, because postdated tickets are not supported by KILE.                                                                                                                                                                                                                                                                                                                                                                                                                                        |

-   **Ticket Encryption Type**: \[Type = HexInt32\]: the cryptographic suite that was used in renewed TGS.

| Type                     | Type Name               | Description                                                                       |
|--------------------------|-------------------------|-----------------------------------------------------------------------------------|
| 0x1                      | DES-CBC-CRC             | Disabled by default starting from Windows 7 and Windows Server 2008 R2.           |
| 0x3                      | DES-CBC-MD5             | Disabled by default starting from Windows 7 and Windows Server 2008 R2.           |
| 0x11                     | AES128-CTS-HMAC-SHA1-96 | Supported starting from Windows Server 2008 and Windows Vista.                    |
| 0x12                     | AES256-CTS-HMAC-SHA1-96 | Supported starting from Windows Server 2008 and Windows Vista.                    |
| 0x17                     | RC4-HMAC                | Default suite for operating systems before Windows Server 2008 and Windows Vista. |
| 0x18                     | RC4-HMAC-EXP            | Default suite for operating systems before Windows Server 2008 and Windows Vista. |
| 0xFFFFFFFF or 0xffffffff | -                       | This type shows in Audit Failure events.                                          |


## Security Monitoring Recommendations

For 4770(S): A Kerberos service ticket was renewed.

-   This event typically has informational only purpose.