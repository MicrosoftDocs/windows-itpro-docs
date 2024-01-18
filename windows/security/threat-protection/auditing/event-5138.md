---
title: 5138(S) A directory service object was undeleted. 
description: Describes security event 5138(S) A directory service object was undeleted.
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

# 5138(S): A directory service object was undeleted.


<img src="images/event-5138.png" alt="Event 5138 illustration" width="671" height="573" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Directory Service Changes](audit-directory-service-changes.md)

***Event Description:***

This event generates every time an Active Directory object is undeleted. It happens, for example, when an Active Directory object was restored from the [Active Directory Recycle Bin](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd392261(v=ws.10)).

This event only generates if the container to which the Active Directory object was restored has a particular entry in its [SACL](/windows/win32/secauthz/access-control-lists): the “**Create**” action, auditing for specific classes or objects. An example is the “**Create User objects**” action.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5138</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>14081</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-02T04:34:20.611082300Z" /> 
 <EventRecordID>229336</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="544" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="OpCorrelationID">{3E2B5ECF-4C35-4C3F-8D82-B8D6F477D846}</Data> 
 <Data Name="AppCorrelationID">-</Data> 
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x3be49</Data> 
 <Data Name="DSName">contoso.local</Data> 
 <Data Name="DSType">%%14676</Data> 
 <Data Name="OldObjectDN">CN=Andrei\\0ADEL:53511188-bc98-4995-9d78-2d40143c9711,CN=Deleted Objects,DC=contoso,DC=local</Data> 
 <Data Name="NewObjectDN">CN=Andrei,CN=Users,DC=contoso,DC=local</Data> 
 <Data Name="ObjectGUID">{53511188-BC98-4995-9D78-2D40143C9711}</Data> 
 <Data Name="ObjectClass">user</Data> 
 </EventData>
 </Event>
```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested that the object be undeleted or restored. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID can't be resolved, you'll see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** name of account that requested that the object be undeleted or restored.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following ones:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Directory Service:**

-   **Name** \[Type = UnicodeString\]: the name of an Active Directory domain, where the object was undeleted.

-   **Type** \[Type = UnicodeString\]**:** has “**Active Directory Domain Services**” value for this event.

**Object:**

-   **Old DN** \[Type = UnicodeString\]: Old distinguished name of undeleted object. It will point to [Active Directory Recycle Bin](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd392261(v=ws.10)) folder, in case if it was restored from it.

> **Note**&nbsp;&nbsp;The LDAP API references an LDAP object by its **distinguished name (DN)**. A DN is a sequence of relative distinguished names (RDN) connected by commas.
> 
> An RDN is an attribute with an associated value in the form attribute=value; . These are examples of RDNs attributes:
> 
> • DC - domainComponent
> 
> • CN - commonName
> 
> • OU - organizationalUnitName
> 
> • O - organizationName

-   **New DN** \[Type = UnicodeString\]: New distinguished name of undeleted object. The Active Directory container to which the object was restored.

-   **GUID** \[Type = GUID\]**:** each Active Directory object has globally unique identifier (GUID), which is a 128-bit value that is unique not only in the enterprise but also across the world. GUIDs are assigned to every object created by Active Directory. Each object's GUID is stored in its Object-GUID (**objectGUID**) property.

    Active Directory uses GUIDs internally to identify objects. For example, the GUID is one of an object's properties that is published in the global catalog. Searching the global catalog for a User object's GUID will yield results if the user has an account somewhere in the enterprise. In fact, searching for any object by Object-GUID might be the most reliable way of finding the object you want to find. The values of other object properties can change, but the Object-GUID never changes. When an object is assigned a GUID, it keeps that value for life.

    Event Viewer automatically resolves **GUID** field to real object.

    To translate this GUID, use the following procedure:

    -   Perform the following LDAP search using LDP.exe tool:

        -   Base DN: CN=Schema,CN=Configuration,DC=XXX,DC=XXX

        -   Filter: (&(objectClass=\*)(objectGUID=GUID))

            -   Perform the following operations with the GUID before using it in a search request:

                -   We have this GUID to search for: a6b34ab5-551b-4626-b8ee-2b36b3ee6672

                -   Take first three sections a6b34ab5-551b-4626.

                -   For each of these three sections, you need to change (Invert) the order of bytes, like this b54ab3a6-1b55-2646

                -   Add the last two sections without transformation: b54ab3a6-1b55-2646-b8ee-2b36b3ee6672

                -   Delete: b54ab3a61b552646b8ee2b36b3ee6672

                -   Divide bytes with backslashes: \\b5\\4a\\b3\\a6\\1b\\55\\26\\46\\b8\\ee\\2b\\36\\b3\\ee\\66\\72

            -   Filter example: (&(objectClass=\*)(objectGUID = \\b5\\4a\\b3\\a6\\1b\\55\\26\\46\\b8\\ee\\2b\\36\\b3\\ee\\66\\72))

        -   Scope: Subtree

        -   Attributes: objectGUID

-   **Class** \[Type = UnicodeString\]: class of the object that was undeleted. Some of the common Active Directory object classes:

    -   container – for containers.

    -   user – for users.

    -   group – for groups.

    -   domainDNS – for domain object.

    -   groupPolicyContainer – for group policy objects.

        For all possible values of this field open Active Directory Schema snap-in (see how to enable this snap-in: <https://technet.microsoft.com/library/Cc755885(v=WS.10).aspx)> and navigate to **Active Directory Schema\\Classes**. Or use this document: <https://msdn.microsoft.com/library/cc221630.aspx>

**Operation:**

-   **Correlation ID** \[Type = GUID\]: multiple modifications are often executed as one operation via LDAP. This value allows you to correlate all the modification events that comprise the operation. Just look for other events from current subcategory with the same **Correlation ID**, for example “[5137](event-5137.md): A directory service object was created.” and “[5139](event-5139.md): A directory service object was moved.”

> **Note**&nbsp;&nbsp;**GUID** is an acronym for 'Globally Unique Identifier'. It is a 128-bit integer number used to identify resources, activities or instances.

-   **Application Correlation ID** \[Type = UnicodeString\]: always has “**-**“ value. Not in use.

## Security Monitoring Recommendations

For 5138(S): A directory service object was undeleted.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you need to monitor undelete operations (restoration) of Active Directory objects with specific classes, monitor for **Class** field with specific class name.

-   It may be a good idea to monitor all undelete events, because the operation isn't performed often. Confirm that there's a reason for the object to be undeleted.