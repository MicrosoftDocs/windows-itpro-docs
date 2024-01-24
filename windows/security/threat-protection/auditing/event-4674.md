---
title: 4674(S, F) An operation was attempted on a privileged object. 
description: Describes security event 4674(S, F) An operation was attempted on a privileged object.
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

# 4674(S, F): An operation was attempted on a privileged object.


<img src="images/event-4674.png" alt="Event 4674 illustration" width="449" height="543" hspace="10" align="left" />

***Subcategories:***&nbsp;[Audit Sensitive Privilege Use](audit-sensitive-privilege-use.md) and [Audit Non Sensitive Privilege Use](audit-non-sensitive-privilege-use.md)

***Event Description:***

This event generates when an attempt is made to perform privileged operations on a protected subsystem object after the object is already opened.

This event generates, for example, when SeShutdownPrivilege, SeRemoteShutdownPrivilege, or SeSecurityPrivilege is used.

Failure event generates when operation attempt fails.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4674</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13056</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-09T00:22:36.237816000Z" /> 
 <EventRecordID>1099680</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="496" ThreadID="504" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-19</Data> 
 <Data Name="SubjectUserName">LOCAL SERVICE</Data> 
 <Data Name="SubjectDomainName">NT AUTHORITY</Data> 
 <Data Name="SubjectLogonId">0x3e5</Data> 
 <Data Name="ObjectServer">LSA</Data> 
 <Data Name="ObjectType">-</Data> 
 <Data Name="ObjectName">-</Data> 
 <Data Name="HandleId">0x0</Data> 
 <Data Name="AccessMask">16777216</Data> 
 <Data Name="PrivilegeList">SeSecurityPrivilege</Data> 
 <Data Name="ProcessId">0x1f0</Data> 
 <Data Name="ProcessName">C:\\Windows\\System32\\lsass.exe</Data> 
 </EventData>
 </Event>
```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested privileged operation. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested privileged operation.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **Object Server** \[Type = UnicodeString\] \[Optional\]: Contains the name of the Windows subsystem calling the routine. Subsystems examples are:

    -   Security

    -   Security Account Manager

    -   NT Local Security Authority / Authentication Service

    -   SC Manager

    -   Win32 SystemShutdown module

    -   LSA

-   **Object Type** \[Type = UnicodeString\] \[Optional\]: The type of an object that was accessed during the operation.

    The following table contains the list of the most common **Object Types**:

| Directory               | Event        | Timer                | Device             |
|-------------------------|--------------|----------------------|--------------------|
| Mutant                  | Type         | File                 | Token              |
| Thread                  | Section      | WindowStation        | DebugObject        |
| FilterCommunicationPort | EventPair    | Driver               | IoCompletion       |
| Controller              | SymbolicLink | WmiGuid              | Process            |
| Profile                 | Desktop      | KeyedEvent           | SC\_MANAGER OBJECT |
| Key                     | WaitablePort | Callback             |                    |
| Job                     | Port         | FilterConnectionPort |                    |
| ALPC Port               | Semaphore    | Adapter              |                    |

-   **Object Name** \[Type = UnicodeString\] \[Optional\]: the name of the object that was accessed during the operation.

-   **Object Handle** \[Type = Pointer\]: hexadecimal value of a handle to **Object Name**. This field can help you correlate this event with other events that might contain the same Handle ID, for example, “4656: A handle to an object was requested” event in appropriate/other subcategory. This parameter might not be captured in the event, and in that case appears as “0x0”.

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process that attempted the operation on the privileged object. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

**Requested Operation**:

-   **Desired Access** \[Type = UnicodeString\]: The desired access mask. This mask depends on **Object Server** and **Object Type** parameters values. The value of this parameter is in decimal format. There is no detailed information about this parameter in this document. If **Desired Access** is not presented, then this parameter will have “**0**” value.

-   **Privileges** \[Type = UnicodeString\]: the list of user privileges which were requested. The possible privileges depend on the subcategory, either **Audit Non Sensitive Privilege Use** or **Audit Sensitive Privilege Use**, as shown in the following two tables:

|     **Subcategory of event**      |                        **Privilege Name: <br>User Right Group Policy Name**                         |                                                                                                                                                                                           **Description**                                                                                                                                                                                           |
|-----------------------------------|-----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Audit Non Sensitive Privilege Use |               <b>SeChangeNotifyPrivilege: <br></b>Bypass traverse checking                | Required to receive notifications of changes to files or directories. This privilege also causes the system to skip all traversal access checks. <br>With this privilege, the user can traverse directory trees even though the user may not have permissions on the traversed directory. This privilege does not allow the user to list the contents of a directory, only to traverse directories. |
| Audit Non Sensitive Privilege Use |                 <b>SeCreateGlobalPrivilege: <br></b>Create global objects                 |                                                                                                                                              Required to create named file mapping objects in the global namespace during Terminal Services sessions.                                                                                                                                               |
| Audit Non Sensitive Privilege Use |                  <b>SeCreatePagefilePrivilege: <br></b>Create a pagefile                  |                                                                                                                                                             With this privilege, the user can create and change the size of a pagefile.                                                                                                                                                             |
| Audit Non Sensitive Privilege Use |          <b>SeCreatePermanentPrivilege: <br></b>Create permanent shared objects           |                                                                Required to create a permanent object. <br>This privilege is useful to kernel-mode components that extend the object namespace. Components that are running in kernel mode already have this privilege inherently; it is not necessary to assign them the privilege.                                                                 |
| Audit Non Sensitive Privilege Use |              <b>SeCreateSymbolicLinkPrivilege: <br></b>Create symbolic links              |                                                                                                                                                                                 Required to create a symbolic link.                                                                                                                                                                                 |
| Audit Non Sensitive Privilege Use |         <b>SeIncreaseBasePriorityPrivilege: <br></b>Increase scheduling priority          |                             Required to increase the base priority of a process.<br>With this privilege, the user can use a process with Write property access to another process to increase the execution priority assigned to the other process. A user with this privilege can change the scheduling priority of a process through the Task Manager user interface.                             |
| Audit Non Sensitive Privilege Use |          <b>SeIncreaseQuotaPrivilege: <br></b>Adjust memory quotas for a process          |                                                                                                                      Required to increase the quota assigned to a process. <br>With this privilege, the user can change the maximum memory that can be consumed by a process.                                                                                                                       |
| Audit Non Sensitive Privilege Use |         <b>SeIncreaseWorkingSetPrivilege: <br></b>Increase a process working set          |                                                                                                                                                         Required to allocate more memory for applications that run in the context of users.                                                                                                                                                         |
| Audit Non Sensitive Privilege Use |                  <b>SeLockMemoryPrivilege: <br></b>Lock pages in memory                   |                         Required to lock physical pages in memory. <br>With this privilege, the user can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Exercising this privilege could significantly affect system performance by decreasing the amount of available random access memory (RAM).                         |
| Audit Non Sensitive Privilege Use |             <b>SeMachineAccountPrivilege: <br></b>Add workstations to domain              |                                                                                                                                          With this privilege, the user can create a computer account. This privilege is valid only on domain controllers.                                                                                                                                           |
| Audit Non Sensitive Privilege Use |           <b>SeManageVolumePrivilege: <br></b>Perform volume maintenance tasks            |                                                                                                                                                           Required to run maintenance tasks on a volume, such as remote defragmentation.                                                                                                                                                            |
| Audit Non Sensitive Privilege Use |            <b>SeProfileSingleProcessPrivilege: <br></b>Profile single process             |                                                                                                      Required to gather profiling information for a single process. <br>With this privilege, the user can use performance monitoring tools to monitor the performance of non-system processes.                                                                                                      |
| Audit Non Sensitive Privilege Use |                   <b>SeRelabelPrivilege: <br></b>Modify an object label                   |                                                                                                                                                                   Required to modify the mandatory integrity level of an object.                                                                                                                                                                    |
| Audit Non Sensitive Privilege Use |         <b>SeRemoteShutdownPrivilege: <br></b>Force shutdown from a remote system         |                                                                                                                                                                       Required to shut down a system using a network request.                                                                                                                                                                       |
| Audit Non Sensitive Privilege Use |                   <b>SeShutdownPrivilege: <br></b>Shut down the system                    |                                                                                                                                                                                Required to shut down a local system.                                                                                                                                                                                |
| Audit Non Sensitive Privilege Use |            <b>SeSyncAgentPrivilege: <br></b>Synchronize directory service data            |      This privilege enables the holder to read all objects and properties in the directory, regardless of the protection on the objects and properties. By default, it is assigned to the Administrator and LocalSystem accounts on domain controllers. <br>With this privilege, the user can synchronize all directory service data. This is also known as Active Directory synchronization.       |
| Audit Non Sensitive Privilege Use |              <b>SeSystemProfilePrivilege: <br></b>Profile system performance              |                                                                                                       Required to gather profiling information for the entire system. <br>With this privilege, the user can use performance monitoring tools to monitor the performance of system processes.                                                                                                        |
| Audit Non Sensitive Privilege Use |                 <b>SeSystemtimePrivilege: <br></b>Change the system time                  |                     Required to modify the system time. <br>With this privilege, the user can change the time and date on the internal clock of the computer. Users that are assigned this user right can affect the appearance of event logs. If the system time is changed, events that are logged will reflect this new time, not the actual time that the events occurred.                      |
| Audit Non Sensitive Privilege Use |                   <b>SeTimeZonePrivilege: <br></b>Change the time zone                    |                                                                                                                                                           Required to adjust the time zone associated with the computer's internal clock.                                                                                                                                                           |
| Audit Non Sensitive Privilege Use | <b>SeTrustedCredManAccessPrivilege: <br></b>Access Credential Manager as a trusted caller |                                                                                                                                                                     Required to access Credential Manager as a trusted caller.                                                                                                                                                                      |
| Audit Non Sensitive Privilege Use |            <b>SeUndockPrivilege: <br></b>Remove computer from docking station             |                                                                                                                             Required to undock a laptop. <br>With this privilege, the user can undock a portable computer from its docking station without logging on.                                                                                                                              |

|   **Subcategory of event**    |                  **Privilege Name: <br>User Right Group Policy Name**                   |                                                                                                                                                                                                                                                                                                                                                                                                    **Description**                                                                                                                                                                                                                                                                                                                                                                                                    |
|-------------------------------|-----------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Audit Sensitive Privilege Use |    <b>SeAssignPrimaryTokenPrivilege: <br></b>Replace a process-level token    |                                                                                                                                                                                                                                                               Required to assign the [*primary token*](/windows/win32/secgloss/p-gly#_security_primary_token_gly) of a process. <br>With this privilege, the user can initiate a process to replace the default token associated with a started subprocess.                                                                                                                                                                                                                                                               |
| Audit Sensitive Privilege Use |             <b>SeAuditPrivilege: <br></b>Generate security audits             |                                                                                                                                                                                                                                                                                                                                                                          With this privilege, the user can add entries to the security log.                                                                                                                                                                                                                                                                                                                                                                           |
| Audit Sensitive Privilege Use |          <b>SeBackupPrivilege: <br></b>Back up files and directories          |                                                     -   Required to perform backup operations. <br>With this privilege, the user can bypass file and directory, registry, and other persistent object permissions for the purposes of backing up the system. This privilege causes the system to grant all read access control to any file, regardless of the [*access control list*](/windows/win32/secgloss/a-gly#_security_access_control_list_gly) (ACL) specified for the file. Any access request other than read is still evaluated with the ACL. <br>The following access rights are granted if this privilege is held:<br>READ\_CONTROL<br>ACCESS\_SYSTEM\_SECURITY<br>FILE\_GENERIC\_READ<br>FILE\_TRAVERSE                                                     |
| Audit Sensitive Privilege Use |           <b>SeCreateTokenPrivilege: <br></b>Create a token object            |                                                                                                                                                                                                                   Allows a process to create a token which it can then use to get access to any local resources when the process uses NtCreateToken() or other token-creation APIs. <br>When a process requires this privilege, we recommend using the LocalSystem account (which already includes the privilege), rather than creating a separate user account and assigning this privilege to it.                                                                                                                                                                                                                   |
| Audit Sensitive Privilege Use |                  <b>SeDebugPrivilege: <br></b>Debug programs                  |                                                                                                                                                                                         Required to debug and adjust the memory of a process owned by another account. <br>With this privilege, the user can attach a debugger to any process or to the kernel. Developers who are debugging their own applications do not need this user right. Developers who are debugging new system components need this user right. <br>This user right provides complete access to sensitive and critical operating system components.                                                                                                                                                                                         |
| Audit Sensitive Privilege Use | <b>SeImpersonatePrivilege: <br></b>Impersonate a client after authentication  |                                                                                                                                                                                                                                                                                                                                                                             With this privilege, the user can impersonate other accounts.                                                                                                                                                                                                                                                                                                                                                                             |
| Audit Sensitive Privilege Use |       <b>SeLoadDriverPrivilege: <br></b>Load and unload device drivers        |                                                                                                                                                                                                                                                                                             Required to load or unload a device driver. <br>With this privilege, the user can dynamically load and unload device drivers or other code in to kernel mode. This user right does not apply to Plug and Play device drivers.                                                                                                                                                                                                                                                                                             |
| Audit Sensitive Privilege Use |            <b>SeLockMemoryPrivilege: <br></b>Lock pages in memory             |                                                                                                                                                                                                                                  Required to lock physical pages in memory. <br>With this privilege, the user can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Exercising this privilege could significantly affect system performance by decreasing the amount of available random access memory (RAM).                                                                                                                                                                                                                                  |
| Audit Sensitive Privilege Use |         <b>SeRestorePrivilege: <br></b>Restore files and directories          | Required to perform restore operations. This privilege causes the system to grant all write access control to any file, regardless of the ACL specified for the file. Any access request other than write is still evaluated with the ACL. Additionally, this privilege enables you to set any valid user or group SID as the owner of a file. The following access rights are granted if this privilege is held:<br>WRITE\_DAC<br>WRITE\_OWNER<br>ACCESS\_SYSTEM\_SECURITY<br>FILE\_GENERIC\_WRITE<br>FILE\_ADD\_FILE<br>FILE\_ADD\_SUBDIRECTORY<br>DELETE<br>With this privilege, the user can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories and determines which users can set any valid security principal as the owner of an object. |
| Audit Sensitive Privilege Use |       <b>SeSecurityPrivilege: <br></b>Manage auditing and security log        |                                                                                                                                                                                                                        Required to perform a number of security-related functions, such as controlling and viewing audit events in security event log. <br>With this privilege, the user can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. A user with this privilege can also view and clear the security log.                                                                                                                                                                                                                        |
| Audit Sensitive Privilege Use |  <b>SeSystemEnvironmentPrivilege: <br></b>Modify firmware environment values  |                                                                                                                                                                                                                                                                                                                                                  Required to modify the nonvolatile RAM of systems that use this type of memory to store configuration information.                                                                                                                                                                                                                                                                                                                                                   |
| Audit Sensitive Privilege Use | <b>SeTakeOwnershipPrivilege: <br></b>Take ownership of files or other objects |                                                                                                                                                                                            Required to take ownership of an object without being granted discretionary access. This privilege allows the owner value to be set only to those values that the holder may legitimately assign as the owner of an object. <br>With this privilege, the user can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads.                                                                                                                                                                                            |

## Security Monitoring Recommendations

For 4674(S, F): An operation was attempted on a privileged object.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Monitor for this event where “**Subject\\Security ID**” is *not* one of these well-known security principals: LOCAL SYSTEM, NETWORK SERVICE, LOCAL SERVICE, and where “**Subject\\Security ID**” is not an administrative account that is expected to have the listed **Privileges**. Especially monitor Failure events.

<!-- -->

-   If you need to monitor events related to specific Windows subsystems (“**Object Server**”), for example **LSA** or **Security Account Manager**, monitor this event for the corresponding “**Object Server**.”

-   <span id="Reccomendations_Object_Type" class="anchor"></span>If you need to monitor events related to specific Windows object types (“**Object Type**”), for example **File** or **Key**, monitor this event for the corresponding “**Object Type**.”

-   If you have a pre-defined “**Process Name**” for the process reported in this event, monitor all events with “**Process Name**” not equal to your defined value.

-   You can monitor to see if “**Process Name**” is not in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

<!-- -->

-   If you have a pre-defined list of restricted substrings or words in process names (for example, “**mimikatz**” or “**cain.exe**”), check for these substrings in “**Process Name**.”

<!-- -->

-   If you know that specific “**Subject\\Security ID**” should only be able to use the privileges in a pre-defined list, monitor for events in which “**Subject\\Security ID**” used “**Privileges**” that are not on that list.

<!-- -->

-   If you have a list of specific user rights which should never be used, or used only by a few accounts (for example, SeDebugPrivilege), trigger an alert for those “**Privileges**.”

-   If you have a list of specific user rights for which every use must be reported or monitored (for example, SeRemoteShutdownPrivilege), trigger an alert for those “**Privileges**.”