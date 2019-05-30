---
title: 5889(S) An object was deleted from the COM+ Catalog. (Windows 10)
description: Describes security event 5889(S) An object was deleted from the COM+ Catalog.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 5889(S): An object was deleted from the COM+ Catalog.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-5889.png" alt="Event 5889 illustration" width="472" height="653" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Object Access Events](audit-other-object-access-events.md)

***Event Description:***

This event generates when the object in the [COM+ Catalog](https://msdn.microsoft.com/library/windows/desktop/ms679196(v=vs.85).aspx) was deleted.

For some reason this event belongs to [Audit System Integrity](event-5890.md) subcategory, but generation of this event enables in this subcategory.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5889</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12290</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-23T20:44:42.948569400Z" /> 
 <EventRecordID>344998</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="4756" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectUserDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">222443</Data> 
 <Data Name="ObjectCollectionName">Applications</Data> 
 <Data Name="ObjectIdentifyingProperties">ID = {1D34B2DC-0E43-4040-BA7B-2F1C181FD86A} AppPartitionID = {41E90F3E-56C1-4633-81C3-6E8BAC8BDD70}</Data> 
 <Data Name="ObjectProperties">Name = COMApp-New ApplicationProxyServerName = ProcessType = 2 CommandLine = ServiceName = <null> RunAsUserType = 1 Identity = Interactive User Description = IsSystem = N Authentication = 4 ShutdownAfter = 3 RunForever = N Password = \*\*\*\*\*\*\*\* Activation = Local Changeable = Y Deleteable = Y CreatedBy = AccessChecksLevel = 1 ApplicationAccessChecksEnabled = 1 cCOL\_SecurityDescriptor = <Opaque> ImpersonationLevel = 3 AuthenticationCapability = 64 CRMEnabled = 0 3GigSupportEnabled = 0 QueuingEnabled = 0 QueueListenerEnabled = N EventsEnabled = 1 ProcessFlags = 0 ThreadMax = 0 ApplicationProxy = 0 CRMLogFile = DumpEnabled = 0 DumpOnException = 0 DumpOnFailfast = 0 MaxDumpCount = 5 DumpPath = %systemroot%\\system32\\com\\dmp IsEnabled = 1 AppPartitionID = {41E90F3E-56C1-4633-81C3-6E8BAC8BDD70} ConcurrentApps = 1 RecycleLifetimeLimit = 0 RecycleCallLimit = 0 RecycleActivationLimit = 0 RecycleMemoryLimit = 0 RecycleExpirationTimeout = 15 QCListenerMaxThreads = 0 QCAuthenticateMsgs = 0 ApplicationDirectory = SRPTrustLevel = 262144 SRPEnabled = 0 SoapActivated = 0 SoapVRoot = SoapMailTo = SoapBaseUrl = Replicable = 1</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested the “delete object” operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested the “delete object” operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **COM+ Catalog Collection** \[Type = UnicodeString\]: the name of COM+ collection in which COM+ object was deleted. Here is the list of possible collection values with descriptions:

| Collection                                                                                                       | Description                                                                                                                                                                                                     |
|------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [ApplicationCluster](https://msdn.microsoft.com/library/windows/desktop/ms683600(v=vs.85).aspx)            | Contains a list of the servers in the application cluster.                                                                                                                                                      |
| [ApplicationInstances](https://msdn.microsoft.com/library/windows/desktop/ms679173(v=vs.85).aspx)          | Contains an object for each instance of a running COM+ application.                                                                                                                                             |
| [Applications](https://msdn.microsoft.com/library/windows/desktop/ms686107(v=vs.85).aspx)                  | Contains an object for each COM+ application installed on the local computer.                                                                                                                                   |
| [Components](https://msdn.microsoft.com/library/windows/desktop/ms688285(v=vs.85).aspx)                    | Contains an object for each component in the application to which it is related.                                                                                                                                |
| [ComputerList](https://msdn.microsoft.com/library/windows/desktop/ms681320(v=vs.85).aspx)                  | Contains a list of the computers found in the Computers folder of the Component Services administration tool.                                                                                                   |
| [DCOMProtocols](https://msdn.microsoft.com/library/windows/desktop/ms688297(v=vs.85).aspx)                 | Contains a list of the protocols to be used by DCOM. It contains an object for each protocol.                                                                                                                   |
| [ErrorInfo](https://msdn.microsoft.com/library/windows/desktop/ms686530(v=vs.85).aspx)                     | Retrieves extended error information regarding methods that deal with multiple objects.                                                                                                                         |
| [EventClassesForIID](https://msdn.microsoft.com/library/windows/desktop/ms679576(v=vs.85).aspx)            | Retrieves information regarding event classes.                                                                                                                                                                  |
| [FilesForImport](https://msdn.microsoft.com/library/windows/desktop/ms685046(v=vs.85).aspx)                | Retrieves information from its MSI file about an application that can be imported.                                                                                                                              |
| [InprocServers](https://msdn.microsoft.com/library/windows/desktop/ms678949(v=vs.85).aspx)                 | Contains a list of the in-process servers registered with the system. It contains an object for each component.                                                                                                 |
| [InterfacesForComponent](https://msdn.microsoft.com/library/windows/desktop/ms687751(v=vs.85).aspx)        | Contains an object for each interface exposed by the component to which the collection is related.                                                                                                              |
| [LegacyComponents](https://msdn.microsoft.com/library/windows/desktop/ms683616(v=vs.85).aspx)              | Contains an object for each unconfigured component in the application to which it is related.                                                                                                                   |
| [LegacyServers](https://msdn.microsoft.com/library/windows/desktop/ms685965(v=vs.85).aspx)                 | Identical to the [InprocServers](https://msdn.microsoft.com/library/windows/desktop/ms678949(v=vs.85).aspx) collection except that this collection also includes local servers.                           |
| [LocalComputer](https://msdn.microsoft.com/library/windows/desktop/ms682790(v=vs.85).aspx)                 | Contains a single object that holds computer level settings information for the computer whose catalog you are accessing.                                                                                       |
| [MethodsForInterface](https://msdn.microsoft.com/library/windows/desktop/ms687595(v=vs.85).aspx)           | Contains an object for each method on the interface to which the collection is related.                                                                                                                         |
| [Partitions](https://msdn.microsoft.com/library/windows/desktop/ms679480(v=vs.85).aspx)                    | Used to specify the applications contained in each partition.                                                                                                                                                   |
| [PartitionUsers](https://msdn.microsoft.com/library/windows/desktop/ms686081(v=vs.85).aspx)                | Used to specify the users contained in each partition.                                                                                                                                                          |
| [PropertyInfo](https://msdn.microsoft.com/library/windows/desktop/ms681735(v=vs.85).aspx)                  | Retrieves information about the properties that a specified collection supports.                                                                                                                                |
| [PublisherProperties](https://msdn.microsoft.com/library/windows/desktop/ms682794(v=vs.85).aspx)           | Contains an object for each publisher property for the parent [SubscriptionsForComponent](https://msdn.microsoft.com/library/windows/desktop/ms687726(v=vs.85).aspx) collection.                          |
| [RelatedCollectionInfo](https://msdn.microsoft.com/library/windows/desktop/ms686925(v=vs.85).aspx)         | Retrieves information about other collections related to the collection from which it is called.                                                                                                                |
| [Roles](https://msdn.microsoft.com/library/windows/desktop/ms683613(v=vs.85).aspx)                         | Contains an object for each role assigned to the application to which it is related.                                                                                                                            |
| [RolesForComponent](https://msdn.microsoft.com/library/windows/desktop/ms686119(v=vs.85).aspx)             | Contains an object for each role assigned to the component to which the collection is related.                                                                                                                  |
| [RolesForInterface](https://msdn.microsoft.com/library/windows/desktop/ms688303(v=vs.85).aspx)             | Contains an object for each role assigned to the interface to which the collection is related.                                                                                                                  |
| [RolesForMethod](https://msdn.microsoft.com/library/windows/desktop/ms679943(v=vs.85).aspx)                | Contains an object for each role assigned to the method to which the collection is related.                                                                                                                     |
| [RolesForPartition](https://msdn.microsoft.com/library/windows/desktop/ms681316(v=vs.85).aspx)             | Contains an object for each role assigned to the partition to which the collection is related.                                                                                                                  |
| [Root](https://msdn.microsoft.com/library/windows/desktop/ms682277(v=vs.85).aspx)                          | Contains the top-level collections on the catalog.                                                                                                                                                              |
| [SubscriberProperties](https://msdn.microsoft.com/library/windows/desktop/ms681611(v=vs.85).aspx)          | Contains an object for each subscriber property for the parent [SubscriptionsForComponent](https://msdn.microsoft.com/library/windows/desktop/ms687726(v=vs.85).aspx) collection.                         |
| [SubscriptionsForComponent](https://msdn.microsoft.com/library/windows/desktop/ms687726(v=vs.85).aspx)     | Contains an object for each subscription for the parent [Components](https://msdn.microsoft.com/library/windows/desktop/ms688285(v=vs.85).aspx) collection.                                               |
| [TransientPublisherProperties](https://msdn.microsoft.com/library/windows/desktop/ms681793(v=vs.85).aspx)  | Contains an object for each publisher property for the parent [TransientSubscriptions](https://msdn.microsoft.com/library/windows/desktop/ms686100(v=vs.85).aspx) collection.                             |
| [TransientSubscriberProperties](https://msdn.microsoft.com/library/windows/desktop/ms686051(v=vs.85).aspx) | Contains an object for each subscriber property for the parent [TransientSubscriptions](https://msdn.microsoft.com/library/windows/desktop/ms686100(v=vs.85).aspx) collection.                            |
| [TransientSubscriptions](https://msdn.microsoft.com/library/windows/desktop/ms686100(v=vs.85).aspx)        | Contains an object for each transient subscription.                                                                                                                                                             |
| [UsersInPartitionRole](https://msdn.microsoft.com/library/windows/desktop/ms686441(v=vs.85).aspx)          | Contains an object for each user in the partition role to which the collection is related.                                                                                                                      |
| [UsersInRole](https://msdn.microsoft.com/library/windows/desktop/ms687622(v=vs.85).aspx)                   | Contains an object for each user in the role to which the collection is related.                                                                                                                                |
| [WOWInprocServers](https://msdn.microsoft.com/library/windows/desktop/ms681249(v=vs.85).aspx)              | Contains a list of the in-process servers registered with the system for 32-bit components on 64-bit computers.                                                                                                 |
| [WOWLegacyServers](https://msdn.microsoft.com/library/windows/desktop/ms682774(v=vs.85).aspx)              | Identical to the [LegacyServers](https://msdn.microsoft.com/library/windows/desktop/ms685965(v=vs.85).aspx) collection except that this collection is drawn from the 32-bit registry on 64-bit computers. |

-   **Object Name** \[Type = UnicodeString\]: object-specific fields with the names and identifiers for the deleted object. It depends on **COM+ Catalog Collection** value, for example, if **COM+ Catalog Collection** = [Applications](https://msdn.microsoft.com/library/windows/desktop/ms686107(v=vs.85).aspx), then you can find that:

    -   **ID** - A GUID representing the application. This property is returned when the [Key](https://msdn.microsoft.com/library/windows/desktop/ms679201(v=vs.85).aspx) property method is called on an object of this collection.

    -   **AppPartitionID** - A GUID representing the application partition ID.

> **Note**&nbsp;&nbsp;**GUID** is an acronym for 'Globally Unique Identifier'. It is a 128-bit integer number used to identify resources, activities or instances.

-   **Object Details** \[Type = UnicodeString\]: the list of deleted object’s (**Object Name**) properties.

    The items have the following format: Property\_Name = VALUE

    Check description for specific **COM+ Catalog Collection** to see the list of object’s properties and descriptions.

## Security Monitoring Recommendations

For 5889(S): An object was deleted from the COM+ Catalog.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have a specific COM+ object for which you need to monitor all modifications (especially delete operations), monitor all [5889](event-5889.md) events with the corresponding **Object Name**.

