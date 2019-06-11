---
title: 4716(S) Trusted domain information was modified. (Windows 10)
description: Describes security event 4716(S) Trusted domain information was modified.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/04/2019
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 4716(S): Trusted domain information was modified.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4716.png" alt="Event 4716 illustration" width="449" height="489" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Authentication Policy Change](audit-authentication-policy-change.md)

***Event Description:***

This event generates when the trust was modified.

This event is generated only on domain controllers.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4716</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13569</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-01T22:55:54.560735500Z" /> 
 <EventRecordID>1049763</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="4920" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x138eb0</Data> 
 <Data Name="DomainName">-</Data> 
 <Data Name="DomainSid">S-1-5-21-2226861337-2836268956-2433141405</Data> 
 <Data Name="TdoType">2</Data> 
 <Data Name="TdoDirection">3</Data> 
 <Data Name="TdoAttributes">32</Data> 
 <Data Name="SidFilteringEnabled">-</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the “modify domain trust settings” operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the “modify domain trust settings” operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Trusted Domain:**

-   **Domain Name** \[Type = UnicodeString\]**:** the name of changed trusted domain. If this attribute was not changed, then it will have “**-**“ value.

-   **Domain ID** \[Type = SID\]**:** SID of changed trusted domain. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

**New Trust Information:**

-   **Trust Type** \[Type = UInt32\]**:** the type of new trust. If this attribute was not changed, then it will have “**-**“ value or its old value. The following table contains possible values for this field:

| Value | Attribute Value        | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|-------|------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1     | TRUST\_TYPE\_DOWNLEVEL | The domain controller of the trusted domain is a computer running an operating system earlier than Windows 2000.                                                                                                                                                                                                                                                                                                                                                                                                                           |
| 2     | TRUST\_TYPE\_UPLEVEL   | The domain controller of the trusted domain is a computer running Windows 2000 or later.                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| 3     | TRUST\_TYPE\_MIT       | The trusted domain is running a non-Windows, RFC4120-compliant Kerberos distribution. This type of trust is distinguished in that (1) a [SID](https://msdn.microsoft.com/library/cc223126.aspx#gt_83f2020d-0804-4840-a5ac-e06439d50f8d) is not required for the [TDO](https://msdn.microsoft.com/library/cc223126.aspx#gt_f2ceef4e-999b-4276-84cd-2e2829de5fc4), and (2) the default key types include the DES-CBC and DES-CRC encryption types (see [\[RFC4120\]](https://go.microsoft.com/fwlink/?LinkId=90458) section 8.1). |
| 4     | TRUST\_TYPE\_DCE       | The trusted domain is a DCE realm. Historical reference, this value is not used in Windows.                                                                                                                                                                                                                                                                                                                                                                                                                                                |

-   **Trust Direction** \[Type = UInt32\]**:** the direction of new trust. If this attribute was not changed, then it will have “**-**“ value or its old value. The following table contains possible values for this field:

| Value | Attribute Value                 | Description                                                                                                 |
|-------|---------------------------------|-------------------------------------------------------------------------------------------------------------|
| 0     | TRUST\_DIRECTION\_DISABLED      | The trust relationship exists, but it has been disabled.                                                    |
| 1     | TRUST\_DIRECTION\_INBOUND       | The trusted domain trusts the primary domain to perform operations such as name lookups and authentication. |
| 2     | TRUST\_DIRECTION\_OUTBOUND      | The primary domain trusts the trusted domain to perform operations such as name lookups and authentication. |
| 3     | TRUST\_DIRECTION\_BIDIRECTIONAL | Both domains trust one another for operations such as name lookups and authentication.                      |

-   **Trust Attributes** \[Type = UInt32\]**:** the decimal value of attributes for new trust. You need convert decimal value to hexadecimal and find it in the table below. If this attribute was not changed, then it will have “**-**“ value or its old value. The following table contains possible values for this field:

| Value | Attribute Value                                            | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|-------|------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0x1   | TRUST\_ATTRIBUTE\_NON\_TRANSITIVE                          | If this bit is set, then the trust cannot be used transitively. For example, if domain A trusts domain B, which in turn trusts domain C, and the A&lt;--&gt;B trust has this attribute set, then a client in domain A cannot authenticate to a server in domain C over the A&lt;--&gt;B&lt;--&gt;C trust linkage.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| 0x2   | TRUST\_ATTRIBUTE\_UPLEVEL\_ONLY                            | If this bit is set in the attribute, then only Windows 2000 operating system and newer clients may use the trust link. [Netlogon](https://msdn.microsoft.com/library/cc223126.aspx#gt_70771a5a-04a3-447d-981b-e03098808c32) does not consume [trust objects](https://msdn.microsoft.com/library/cc223126.aspx#gt_e81f6436-01d2-4311-93a4-4316bb67eabd) that have this flag set.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| 0x4   | TRUST\_ATTRIBUTE\_QUARANTINED\_DOMAIN                      | If this bit is set, the trusted domain is quarantined and is subject to the rules of [SID](https://msdn.microsoft.com/library/cc223126.aspx#gt_83f2020d-0804-4840-a5ac-e06439d50f8d) Filtering as described in [\[MS-PAC\]](https://msdn.microsoft.com/library/cc237917.aspx) section [4.1.2.2](https://msdn.microsoft.com/library/cc237940.aspx).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| 0x8   | TRUST\_ATTRIBUTE\_FOREST\_TRANSITIVE                       | If this bit is set, the trust link is a [cross-forest trust](https://msdn.microsoft.com/library/cc223126.aspx#gt_86f3dbf2-338f-462e-8c5b-3c8e05798dbc) [\[MS-KILE\]](https://msdn.microsoft.com/library/cc233855.aspx) between the root domains of two [forests](https://msdn.microsoft.com/library/cc223126.aspx#gt_fd104241-4fb3-457c-b2c4-e0c18bb20b62), both of which are running in a [forest functional level](https://msdn.microsoft.com/library/cc223126.aspx#gt_b3240417-ca43-4901-90ec-fde55b32b3b8) of DS\_BEHAVIOR\_WIN2003 or greater.<br>Only evaluated on Windows Server 2003 operating system, Windows Server 2008 operating system, Windows Server 2008 R2 operating system, Windows Server 2012 operating system, Windows Server 2012 R2 operating system, and Windows Server 2016 operating system.<br>Can only be set if forest and trusted forest are running in a forest functional level of DS\_BEHAVIOR\_WIN2003 or greater.                   |
| 0x10  | TRUST\_ATTRIBUTE\_CROSS\_ORGANIZATION                      | If this bit is set, then the trust is to a domain or forest that is not part of the [organization](https://msdn.microsoft.com/library/cc223126.aspx#gt_6fae7775-5232-4206-b452-f298546ab54f). The behavior controlled by this bit is explained in [\[MS-KILE\]](https://msdn.microsoft.com/library/cc233855.aspx) section [3.3.5.7.5](https://msdn.microsoft.com/library/cc233949.aspx) and [\[MS-APDS\]](https://msdn.microsoft.com/library/cc223948.aspx) section [3.1.5](https://msdn.microsoft.com/library/cc223991.aspx).<br>Only evaluated on Windows Server 2003, Windows Server 2008, Windows Server 2008 R2, Windows Server 2012, Windows Server 2012 R2, and Windows Server 2016.<br>Can only be set if forest and trusted forest are running in a forest functional level of DS\_BEHAVIOR\_WIN2003 or greater.                                                                                                                                        |
| 0x20  | TRUST\_ATTRIBUTE\_WITHIN\_FOREST                           | If this bit is set, then the trusted domain is within the same forest.<br>Only evaluated on Windows Server 2003, Windows Server 2008, Windows Server 2008 R2, Windows Server 2012, Windows Server 2012 R2, and Windows Server 2016.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| 0x40  | TRUST\_ATTRIBUTE\_TREAT\_AS\_EXTERNAL                      | If this bit is set, then a cross-forest trust to a domain is to be treated as an external trust for the purposes of SID Filtering. Cross-forest trusts are [more stringently filtered](https://docs.microsoft.com/openspecs/windows_protocols/ms-adts/e9a2d23c-c31e-4a6f-88a0-6646fdb51a3c) than external trusts. This attribute relaxes those cross-forest trusts to be equivalent to external trusts.<br>Only evaluated on Windows Server 2003, Windows Server 2008, Windows Server 2008 R2, Windows Server 2012, Windows Server 2012 R2, and Windows Server 2016.<br>Only evaluated if SID Filtering is used.<br>Only evaluated on cross-forest trusts having TRUST\_ATTRIBUTE\_FOREST\_TRANSITIVE.<br>Can only be set if forest and trusted forest are running in a forest functional level of DS\_BEHAVIOR\_WIN2003 or greater. |
| 0x80  | TRUST\_ATTRIBUTE\_USES\_RC4\_ENCRYPTION                    | This bit is set on trusts with the [trustType](https://msdn.microsoft.com/library/cc220955.aspx) set to TRUST\_TYPE\_MIT, which are capable of using RC4 keys. Historically, MIT Kerberos distributions supported only DES and 3DES keys ([\[RFC4120\]](https://go.microsoft.com/fwlink/?LinkId=90458), [\[RFC3961\]](https://go.microsoft.com/fwlink/?LinkId=90450)). MIT 1.4.1 adopted the RC4HMAC encryption type common to Windows 2000 [\[MS-KILE\]](https://msdn.microsoft.com/library/cc233855.aspx), so trusted domains deploying later versions of the MIT distribution required this bit. For more information, see "Keys and Trusts", section [6.1.6.9.1](https://msdn.microsoft.com/library/cc223782.aspx).<br>Only evaluated on TRUST\_TYPE\_MIT                                                                                                                                                                                                                                          |
| 0x200 | TRUST\_ATTRIBUTE\_CROSS\_ORGANIZATION\_NO\_TGT\_DELEGATION | If this bit is set, tickets granted under this trust MUST NOT be trusted for delegation. The behavior controlled by this bit is as specified in [\[MS-KILE\]](https://msdn.microsoft.com/library/cc233855.aspx) section 3.3.5.7.5.<br>Only supported on Windows Server 2012, Windows Server 2012 R2, and Windows Server 2016.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| 0x400 | TRUST\_ATTRIBUTE\_PIM\_TRUST                               | If this bit and the TATE bit are set, then a cross-forest trust to a domain is to be treated as Privileged Identity Management trust for the purposes of SID Filtering. For more information on how each trust type is filtered, see [\[MS-PAC\]](https://msdn.microsoft.com/library/cc237917.aspx) section 4.1.2.2.<br>Evaluated only on Windows Server 2016<br>Evaluated only if SID Filtering is used.<br>Evaluated only on cross-forest trusts having TRUST\_ATTRIBUTE\_FOREST\_TRANSITIVE.<br>Can be set only if the forest and the trusted forest are running in a forest functional level of DS\_BEHAVIOR\_WINTHRESHOLD or greater.                                                                                                                                                                                                                                                                                                                                   |

-   **SID Filtering** \[Type = UnicodeString\]: [SID Filtering](https://technet.microsoft.com/library/cc772633(v=ws.10).aspx) state for the new trust:

    -   Enabled

    -   Disabled

        If this attribute was not changed, then it will have “**-**“ value or its old value.

## Security Monitoring Recommendations

For 4716(S): Trusted domain information was modified.

-   Any changes in Active Directory domain trust settings must be monitored and alerts should be triggered. If this change was not planned, investigate the reason for the change.

