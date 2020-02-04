---
title: 4866(S) A trusted forest information entry was removed. (Windows 10)
description: Describes security event 4866(S) A trusted forest information entry was removed.
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

# 4866(S): A trusted forest information entry was removed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4866.png" alt="Event 4866 illustration" width="449" height="502" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Authentication Policy Change](audit-authentication-policy-change.md)

***Event Description:***

This event generates when the trusted forest information entry was removed.

This event is generated only on domain controllers.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4865</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13569</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-02T03:11:33.397715700Z" /> 
 <EventRecordID>1049810</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="4808" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ForestRoot">Fabrikam.local</Data> 
 <Data Name="ForestRootSid">S-1-5-21-2703072690-1374247579-2643703677</Data> 
 <Data Name="OperationId">0x648620</Data> 
 <Data Name="EntryType">2</Data> 
 <Data Name="Flags">0</Data> 
 <Data Name="TopLevelName">-</Data> 
 <Data Name="DnsName">Fabrikam.local</Data> 
 <Data Name="NetbiosName">FABRIKAM</Data> 
 <Data Name="DomainSid">S-1-5-21-2703072690-1374247579-2643703677</Data> 
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x138eb0</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the “remove a trusted forest information entry” operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the “remove a trusted forest information entry” operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Trust Information:**

-   **Forest Root** \[Type = UnicodeString\]: the name of the Active Directory forest for which trusted forest information entry was removed.

<!-- -->

-   **Forest Root SID** \[Type = SID\]: the SID of the Active Directory forest for which trusted forest information entry was removed. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

<!-- -->

-   **Operation ID** \[Type = HexInt64\]: unique hexadecimal identifier of the operation. You can correlate this event with other events ([4865](event-4865.md)(S): A trusted forest information entry was added, [4867](event-4867.md)(S): A trusted forest information entry was modified.) using this field.

<!-- -->

-   **Entry Type** \[Type = UInt32\]: the type of removed entry:

| Value | Type Name                 | Description                                                                                                                                                                                                                                                                                                                                                                     |
|-------|---------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0     | ForestTrustTopLevelName   | The [DNS name](https://msdn.microsoft.com/library/cc234227.aspx#gt_102a36e2-f66f-49e2-bee3-558736b2ecd5) of the [trusted forest](https://msdn.microsoft.com/library/cc234227.aspx#gt_3b76a71f-9697-4836-9c69-09899b23c21b). The structure used for this record type is equivalent to [LSA\_UNICODE\_STRING](https://msdn.microsoft.com/library/cc234258.aspx) |
| 1     | ForestTrustTopLevelNameEx | This type commonly used for name suffix exceptions. The structure used for this record type is equivalent to [LSA\_UNICODE\_STRING](https://msdn.microsoft.com/library/cc234258.aspx).                                                                                                                                                                                    |
| 2     | ForestTrustDomainInfo     | This field specifies a record containing identification and name information                                                                                                                                                                                                                                                                                                    |

-   **Flags** \[Type = UInt32\]: The following table specifies the possible flags.

    Some flag values are reused for different forest record types. See the “Meaning” column for more information.

| Value | Trust Type                                                 | Meaning                                                                      |
|-------|------------------------------------------------------------|------------------------------------------------------------------------------|
| 0     | -                                                          | No flags were set.                                                           |
| 1     | ForestTrustTopLevelNameEx<br>ForestTrustTopLevelName | The top-level name trust record is disabled during initial creation.         |
|       | ForestTrustDomainInfo                                      | The domain information trust record is disabled by the domain administrator. |
| 2     | ForestTrustTopLevelNameEx<br>ForestTrustTopLevelName | The top-level name trust record is disabled by the domain administrator.     |
|       | ForestTrustDomainInfo                                      | The domain information trust record is disabled due to a conflict.           |
| 4     | ForestTrustTopLevelNameEx<br>ForestTrustTopLevelName | The top-level name trust record is disabled due to a conflict.               |
|       | ForestTrustDomainInfo                                      | The domain information trust record is disabled by the domain administrator. |
| 8     | ForestTrustDomainInfo                                      | The domain information trust record is disabled due to a conflict.           |

-   **Top Level Name** \[Type = UnicodeString\]: the name of the removed trusted forest information entry.

-   **DNS Name** \[Type = UnicodeString\]: DNS name of the trust partner. This parameter might not be captured in the event, and in that case appears as “-”.

-   **NetBIOS Name** \[Type = UnicodeString\]: NetBIOS name of the trust partner. This parameter might not be captured in the event, and in that case appears as “-”.

-   **Domain SID** \[Type = SID\]: SID of the trust partner. This parameter might not be captured in the event, and in that case appears as “NULL SID”.

## Security Monitoring Recommendations

For 4866(S): A trusted forest information entry was removed.

-   Any changes related to Active Directory forest trusts (especially trust removal) must be monitored and alerts should be triggered. If this change was not planned, investigate the reason for the change.

