---
title: 4933(S, F) Synchronization of a replica of an Active Directory naming context has ended. (Windows 10)
description: Describes security event 4933(S, F) Synchronization of a replica of an Active Directory naming context has ended.
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

# 4933(S, F): Synchronization of a replica of an Active Directory naming context has ended.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4933.png" alt="Event 4933 illustration" width="773" height="377" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Directory Service Replication](audit-directory-service-replication.md)

***Event Description:***

This event generates every time synchronization of a replica of an Active Directory naming context has ended.

Failure event occurs when synchronization of a replica of an Active Directory naming context failed.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4933</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>14082</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-01T20:58:28.854735700Z" /> 
 <EventRecordID>413644</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="524" ThreadID="2288" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="DestinationDRA">CN=NTDS Settings,CN=DC01,CN=Servers,CN=Default-First-Site-Name,CN=Sites,CN=Configuration,DC=contoso,DC=local</Data> 
 <Data Name="SourceDRA">CN=NTDS Settings,CN=WIN2012R2,CN=Servers,CN=Default-First-Site-Name,CN=Sites,CN=Configuration,DC=contoso,DC=local</Data> 
 <Data Name="NamingContext">CN=Schema,CN=Configuration,DC=contoso,DC=local</Data> 
 <Data Name="Options">2147483733</Data> 
 <Data Name="SessionID">40</Data> 
 <Data Name="EndUSN">20869</Data> 
 <Data Name="StatusCode">1722</Data> 
 </EventData>
 </Event>
```

***Required Server Roles:*** Active Directory domain controller.

***Minimum OS Version:*** Windows Server 2008.

***Event Versions:*** 0.

***Field Descriptions:***

-   **Destination DRA** \[Type = UnicodeString\]: destination directory replication agent distinguished name.

> **Note**&nbsp;&nbsp;The **Directory Replication Agent (DRA)** handles replication between domain controllers. The Directory Replication Agent uses the connection objects in the topology map to find out those partners that are relevant when replicating changes to directory partitions. The DRA sends a replication request to the partners of a domain controller when the domain controller needs to update its copy of Active Directory.

-   **Source DRA** \[Type = UnicodeString\]: source directory replication agent distinguished name.

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

-   **Naming Context** \[Type = UnicodeString\]**:** naming context to replicate.

> **Note**&nbsp;&nbsp;The Directory Tree of Active Directory tree is partitioned to allow sections to be distributed (replicated) to domain controllers in different domains within the forest. Each domain controller stores a copy of a specific part of the directory tree, called a **Naming Context** also known as Directory Partition. **Naming Context** is replicated as a unit to other domain controllers in the forest that contain a replica of the same sub tree. A **Naming Context** is also called a Directory Partition.

-   **Options** \[Type = UInt32\]: decimal value of [DRS Options](https://msdn.microsoft.com/library/cc228477.aspx).

-   **Session ID** \[Type = UInt32\]**:** unique identifier of replication session. Using this field you can find “[4932](event-4932.md): Synchronization of a replica of an Active Directory naming context has begun.” and “[4933](event-4933.md): Synchronization of a replica of an Active Directory naming context has ended.” events for the same session.

-   **End USN** \[Type = UInt32\]**: Naming Context’s** USN number after replication ends.

> **Note**&nbsp;&nbsp;Active Directory replication does not depend on time to determine what changes need to be propagated. It relies instead on the use of **update sequence numbers (USNs)** that are assigned by a counter that is local to each domain controller. Because these USN counters are local, it is easy to ensure that they are reliable and never "run backward" (that is, decrease in value). The trade-off is that it is meaningless to compare a USN assigned on one domain controller to a USN assigned on a different domain controller. The replication system is designed with this restriction in mind.

-   **Status Code** \[Type = UInt32\]**:** if there are no issues or errors, the status code will be “**0**”. If an error happened, you will receive Failure event and Status Code will not be equal to “**0**”. You can check error code meaning here: <https://msdn.microsoft.com/library/windows/desktop/ms681381(v=vs.85).aspx>

## Security Monitoring Recommendations

For 4933(S, F): Synchronization of a replica of an Active Directory naming context has ended.

-   Monitor for **Source Address** field, because the source of replication (DRA) must be authorized for this action. If you find any unauthorized DRA you should trigger an event.

-   This event is typically used for Active Directory replication troubleshooting.

