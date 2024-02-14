---
title: 4656(S, F) A handle to an object was requested. 
description: Describes security event 4656(S, F) A handle to an object was requested.
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

# 4656(S, F): A handle to an object was requested.


<img src="images/event-4656.png" alt="Event 4656 illustration" width="764" height="895"/>

***Subcategories:***&nbsp;[Audit File System](audit-file-system.md), [Audit Kernel Object](audit-kernel-object.md), [Audit Registry](audit-registry.md), and [Audit Removable Storage](audit-removable-storage.md)

***Event Description:***

This event indicates that specific access was requested for an object. The object could be a file system, kernel, or registry object, or a file system object on removable storage or a device.

If access was declined, a Failure event is generated.

This event generates only if the object’s [SACL](/windows/win32/secauthz/access-control-lists) has the required ACE to handle the use of specific access rights.

This event shows that access was requested, and the results of the request, but it doesn’t show that the operation was performed. To see that the operation was performed, check “[4663](event-4663.md)(S): An attempt was made to access an object.”

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

***Event XML***:
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4656</EventID> 
 <Version>1</Version> 
 <Level>0</Level> 
 <Task>12800</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-18T22:15:19.346776600Z" /> 
 <EventRecordID>274057</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="524" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x4367b</Data> 
 <Data Name="ObjectServer">Security</Data> 
 <Data Name="ObjectType">File</Data> 
 <Data Name="ObjectName">C:\\Documents\\HBI Data.txt</Data> 
 <Data Name="HandleId">0x0</Data> 
 <Data Name="TransactionId">{00000000-0000-0000-0000-000000000000}</Data> 
 <Data Name="AccessList">%%1538 %%1541 %%4416 %%4417 %%4418 %%4419 %%4420 %%4423 %%4424</Data> 
 <Data Name="AccessReason">%%1538: %%1804 %%1541: %%1809 %%4416: %%1809 %%4417: %%1809 %%4418: %%1802 D:(D;;LC;;;S-1-5-21-3457937927-2839227994-823803824-1104) %%4419: %%1809 %%4420: %%1809 %%4423: %%1811 D:(A;OICI;FA;;;S-1-5-21-3457937927-2839227994-823803824-1104) %%4424: %%1809</Data> 
 <Data Name="AccessMask">0x12019f</Data> 
 <Data Name="PrivilegeList">-</Data> 
 <Data Name="RestrictedSidCount">0</Data> 
 <Data Name="ProcessId">0x1074</Data> 
 <Data Name="ProcessName">C:\\Windows\\System32\\notepad.exe</Data> 
 <Data Name="ResourceAttributes">S:AI(RA;ID;;;;WD;("Impact\_MS",TI,0x10020,3000))</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:***

-   0 - Windows Server 2008, Windows Vista.

-   1 - Windows Server 2012, Windows 8.

    -   Added “Resource Attributes” field.

    -   Added “Access Reasons” field.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested a handle to an object. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested a handle to an object.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **Object Server** \[Type = UnicodeString\]: has “**Security**” value for this event.

-   **Object Type** \[Type = UnicodeString\]: The type of an object that was accessed during the operation.

    The following table contains the list of the most common **Object Types**:

| Directory               | Event        | Timer                | Device       |
|-------------------------|--------------|----------------------|--------------|
| Mutant                  | Type         | File                 | Token        |
| Thread                  | Section      | WindowStation        | DebugObject  |
| FilterCommunicationPort | EventPair    | Driver               | IoCompletion |
| Controller              | SymbolicLink | WmiGuid              | Process      |
| Profile                 | Desktop      | KeyedEvent           | Adapter      |
| Key                     | WaitablePort | Callback             | Semaphore    |
| Job                     | Port         | FilterConnectionPort | ALPC Port    |

-   **Object Name** \[Type = UnicodeString\]: name and other identifying information for the object for which access was requested. For example, for a file, the path would be included.

-   **Handle ID** \[Type = Pointer\]: hexadecimal value of a handle to **Object Name**. This field can help you correlate this event with other events that might contain the same Handle ID, for example, “[4663](event-4663.md)(S): An attempt was made to access an object.” This parameter might not be captured in the event, and in that case appears as “0x0”.

-   **Resource Attributes** \[Type = UnicodeString\] \[Version 1\]: attributes associated with the object. For some objects, the field does not apply and “-“ is displayed.

    For example, for a file, the following might be displayed: S:AI(RA;ID;;;;WD;("Impact\_MS",TI,0x10020,3000))

    -   Impact\_MS: Resource Property ***ID***.

    -   3000: Recourse Property ***Value***.

<img src="images/impact-property.png" alt="Impact property illustration" width="886" height="592" />

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process through which the access was requested. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

**Access Request Information:**

-   **Transaction ID** \[Type = GUID\]: unique GUID of the transaction. This field can help you correlate this event with other events that might contain the same **Transaction ID**, such as “[4660](event-4660.md)(S): An object was deleted.”

    This parameter might not be captured in the event, and in that case appears as “{00000000-0000-0000-0000-000000000000}”.

> **Note**&nbsp;&nbsp;**GUID** is an acronym for 'Globally Unique Identifier'. It is a 128-bit integer number used to identify resources, activities or instances.

-   **Accesses** \[Type = UnicodeString\]: the list of access rights which were requested by **Subject\\Security ID**. These access rights depend on **Object Type**. The following table contains information about the most common access rights for file system objects. Access rights for registry objects are often similar to file system objects, but the table contains a few notes about how they vary.

| <span id="File_system_objects_access_rights" class="anchor"></span>Access             | Hexadecimal Value,<br>Schema Value  | Description    |
|---------------------------------------------------------------------------------------|-------------------------------------|----------------|
| ReadData (or ListDirectory)<br><br>(For registry objects, this is “Query key value.”) | 0x1,<br>%%4416                | **ReadData -** For a file object, the right to read the corresponding file data. For a directory object, the right to read the corresponding directory data.<br>**ListDirectory -** For a directory, the right to list the contents of the directory.                                                                                     |
| WriteData (or AddFile)<br><br>(For registry objects, this is “Set key value.”)        | 0x2,<br>%%4417                | **WriteData -** For a file object, the right to write data to the file. For a directory object, the right to create a file in the directory (**FILE\_ADD\_FILE**).<br>**AddFile -** For a directory, the right to create a file in the directory.                                                                                         |
| AppendData (or AddSubdirectory or CreatePipeInstance)                                 | 0x4,<br>%%4418                | **AppendData -** For a file object, the right to append data to the file. (For local files, write operations will not overwrite existing data if this flag is specified without **FILE\_WRITE\_DATA**.) For a directory object, the right to create a subdirectory (**FILE\_ADD\_SUBDIRECTORY**). <br>**AddSubdirectory -** For a directory, the right to create a subdirectory.<br>**CreatePipeInstance -** For a named pipe, the right to create a pipe.                                                                                                                                                                                                                                                              |
| ReadEA<br>(For registry objects, this is “Enumerate sub-keys.”)                       | 0x8,<br>%%4419                | The right to read extended file attributes.                                                                                                           |
| WriteEA                                                                               | 0x10,<br>%%4420               | The right to write extended file attributes.                                                                                                          |
| Execute/Traverse                                                                      | 0x20,<br>%%4421               | **Execute** - For a native code file, the right to execute the file. This access right given to scripts may cause the script to be executable, depending on the script interpreter.<br>**Traverse -** For a directory, the right to traverse the directory. By default, users are assigned the **BYPASS\_TRAVERSE\_CHECKING**&thinsp; [privilege](/windows/win32/secauthz/privileges), which ignores the **FILE\_TRAVERSE**&thinsp; [access right](/windows/win32/secauthz/access-rights-and-access-masks). See the remarks in [File Security and Access Rights](/windows/win32/fileio/file-security-and-access-rights) for more information.                                                                                      |
| DeleteChild                                                                            | 0x40,<br>%%4422              | For a directory, the right to delete a directory and all the files it contains, including read-only files.                                                                                                                                                        |
| ReadAttributes                                                                         | 0x80,<br>%%4423              | The right to read file attributes.                                                                                                                    |
| WriteAttributes                                                                        | 0x100,<br>%%4424             | The right to write file attributes.                                                                                                                   |
| DELETE                                                                                 | 0x10000,<br>%%1537           | The right to delete the object.                                                                                                                       |
| READ\_CONTROL                                                                          | 0x20000,<br>%%1538           | The right to read the information in the object's security descriptor, not including the information in the system access control list (SACL).                                                                                                                                                                                              |
| WRITE\_DAC                                                                             | 0x40000,<br>%%1539           | The right to modify the discretionary access control list (DACL) in the object's security descriptor.                                                                                                                                                                      |
| WRITE\_OWNER                                                                           | 0x80000,<br>%%1540           | The right to change the owner in the object's security descriptor                                                                                                                                                                                              |
| SYNCHRONIZE                                                                            | 0x100000,<br>%%1541 | The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.                                                                                                                                                                         |
| ACCESS\_SYS\_SEC                                                                       | 0x1000000,<br>%%1542         | The ACCESS\_SYS\_SEC access right controls the ability to get or set the SACL in an object's security descriptor.                                         |

> <span id="_Ref433973578" class="anchor"></span>Table 14. File System objects access rights.

-   **Access Reasons** \[Type = UnicodeString\] \[Version 1\]: the list of access check results. The format of this varies, depending on the object. For kernel objects, this field does not apply.

-   **Access Mask** \[Type = HexInt32\]: hexadecimal mask for the requested or performed operation. For more information, see the preceding table.

<!-- -->

-   **Privileges Used for Access Check** \[Type = UnicodeString\]: the list of user privileges which were used during the operation, for example, SeBackupPrivilege. This parameter might not be captured in the event, and in that case appears as “-”. See full list of user privileges in the table below:

| Privilege Name                  | User Right Group Policy Name                                   | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|---------------------------------|----------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| SeAssignPrimaryTokenPrivilege   | Replace a process-level token                                  | Required to assign the [*primary token*](/windows/win32/secgloss/p-gly#_security_primary_token_gly) of a process. <br>With this privilege, the user can initiate a process to replace the default token associated with a started subprocess.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| SeAuditPrivilege                | Generate security audits                                       | With this privilege, the user can add entries to the security log.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| SeBackupPrivilege               | Back up files and directories                                  | -   Required to perform backup operations. <br>With this privilege, the user can bypass file and directory, registry, and other persistent object permissions for the purposes of backing up the system.<br>This privilege causes the system to grant all read access control to any file, regardless of the [*access control list*](/windows/win32/secgloss/a-gly#_security_access_control_list_gly) (ACL) specified for the file. Any access request other than read is still evaluated with the ACL. The following access rights are granted if this privilege is held:<br>READ\_CONTROL<br>ACCESS\_SYSTEM\_SECURITY<br>FILE\_GENERIC\_READ<br>FILE\_TRAVERSE                                                                                                                |
| SeChangeNotifyPrivilege         | Bypass traverse checking                                       | Required to receive notifications of changes to files or directories. This privilege also causes the system to skip all traversal access checks. <br>With this privilege, the user can traverse directory trees even though the user may not have permissions on the traversed directory. This privilege does not allow the user to list the contents of a directory, only to traverse directories.                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| SeCreateGlobalPrivilege         | Create global objects                                          | Required to create named file mapping objects in the global namespace during Terminal Services sessions.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| SeCreatePagefilePrivilege       | Create a pagefile                                              | With this privilege, the user can create and change the size of a pagefile.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| SeCreatePermanentPrivilege      | Create permanent shared objects                                | Required to create a permanent object. <br>This privilege is useful to kernel-mode components that extend the object namespace. Components that are running in kernel mode already have this privilege inherently; it is not necessary to assign them the privilege.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| SeCreateSymbolicLinkPrivilege   | Create symbolic links                                          | Required to create a symbolic link.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| SeCreateTokenPrivilege          | Create a token object                                          | Allows a process to create a token which it can then use to get access to any local resources when the process uses NtCreateToken() or other token-creation APIs.<br>When a process requires this privilege, we recommend using the LocalSystem account (which already includes the privilege), rather than creating a separate user account and assigning this privilege to it.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| SeDebugPrivilege                | Debug programs                                                 | Required to debug and adjust the memory of a process owned by another account.<br>With this privilege, the user can attach a debugger to any process or to the kernel. Developers who are debugging their own applications do not need this user right. Developers who are debugging new system components need this user right. This user right provides complete access to sensitive and critical operating system components.                                                                                                                                                                                                                                                                                                                                                                                                                                |
| SeEnableDelegationPrivilege     | Enable computer and user accounts to be trusted for delegation | Required to mark user and computer accounts as trusted for delegation.<br>With this privilege, the user can set the **Trusted for Deleg**ation setting on a user or computer object.<br>The user or object that is granted this privilege must have write access to the account control flags on the user or computer object. A server process running on a computer (or under a user context) that is trusted for delegation can access resources on another computer using the delegated credentials of a client, as long as the account of the client does not have the **Account cannot be delegated** account control flag set.                                                                                                                                                                                                                      |
| SeImpersonatePrivilege          | Impersonate a client after authentication                      | With this privilege, the user can impersonate other accounts.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| SeIncreaseBasePriorityPrivilege | Increase scheduling priority                                   | Required to increase the base priority of a process.<br>With this privilege, the user can use a process with Write property access to another process to increase the execution priority assigned to the other process. A user with this privilege can change the scheduling priority of a process through the Task Manager user interface.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| SeIncreaseQuotaPrivilege        | Adjust memory quotas for a process                             | Required to increase the quota assigned to a process. <br>With this privilege, the user can change the maximum memory that can be consumed by a process.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| SeIncreaseWorkingSetPrivilege   | Increase a process working set                                 | Required to allocate more memory for applications that run in the context of users.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| SeLoadDriverPrivilege           | Load and unload device drivers                                 | Required to load or unload a device driver.<br>With this privilege, the user can dynamically load and unload device drivers or other code in to kernel mode. This user right does not apply to Plug and Play device drivers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| SeLockMemoryPrivilege           | Lock pages in memory                                           | Required to lock physical pages in memory. <br>With this privilege, the user can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Exercising this privilege could significantly affect system performance by decreasing the amount of available random access memory (RAM).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| SeMachineAccountPrivilege       | Add workstations to domain                                     | With this privilege, the user can create a computer account.<br>This privilege is valid only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| SeManageVolumePrivilege         | Perform volume maintenance tasks                               | Required to run maintenance tasks on a volume, such as remote defragmentation.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| SeProfileSingleProcessPrivilege | Profile single process                                         | Required to gather profiling information for a single process. <br>With this privilege, the user can use performance monitoring tools to monitor the performance of non-system processes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SeRelabelPrivilege              | Modify an object label                                         | Required to modify the mandatory integrity level of an object.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| SeRemoteShutdownPrivilege       | Force shutdown from a remote system                            | Required to shut down a system using a network request.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| SeRestorePrivilege              | Restore files and directories                                  | Required to perform restore operations. This privilege causes the system to grant all write access control to any file, regardless of the ACL specified for the file. Any access request other than write is still evaluated with the ACL. Additionally, this privilege enables you to set any valid user or group SID as the owner of a file. The following access rights are granted if this privilege is held:<br>WRITE\_DAC<br>WRITE\_OWNER<br>ACCESS\_SYSTEM\_SECURITY<br>FILE\_GENERIC\_WRITE<br>FILE\_ADD\_FILE<br>FILE\_ADD\_SUBDIRECTORY<br>DELETE<br>With this privilege, the user can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories and determines which users can set any valid security principal as the owner of an object. |
| SeSecurityPrivilege             | Manage auditing and security log                               | Required to perform a number of security-related functions, such as controlling and viewing audit events in security event log.<br>With this privilege, the user can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys.<br>A user with this privilege can also view and clear the security log.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| SeShutdownPrivilege             | Shut down the system                                           | Required to shut down a local system.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| SeSyncAgentPrivilege            | Synchronize directory service data                             | This privilege enables the holder to read all objects and properties in the directory, regardless of the protection on the objects and properties. By default, it is assigned to the Administrator and LocalSystem accounts on domain controllers. <br>With this privilege, the user can synchronize all directory service data. This is also known as Active Directory synchronization.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| SeSystemEnvironmentPrivilege    | Modify firmware environment values                             | Required to modify the nonvolatile RAM of systems that use this type of memory to store configuration information.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| SeSystemProfilePrivilege        | Profile system performance                                     | Required to gather profiling information for the entire system. <br>With this privilege, the user can use performance monitoring tools to monitor the performance of system processes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| SeSystemtimePrivilege           | Change the system time                                         | Required to modify the system time.<br>With this privilege, the user can change the time and date on the internal clock of the computer. Users that are assigned this user right can affect the appearance of event logs. If the system time is changed, events that are logged will reflect this new time, not the actual time that the events occurred.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SeTakeOwnershipPrivilege        | Take ownership of files or other objects                       | Required to take ownership of an object without being granted discretionary access. This privilege allows the owner value to be set only to those values that the holder may legitimately assign as the owner of an object.<br>With this privilege, the user can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads.                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| SeTcbPrivilege                  | Act as part of the operating system                            | This privilege identifies its holder as part of the trusted computer base.<br>This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| SeTimeZonePrivilege             | Change the time zone                                           | Required to adjust the time zone associated with the computer's internal clock.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SeTrustedCredManAccessPrivilege | Access Credential Manager as a trusted caller                  | Required to access Credential Manager as a trusted caller.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| SeUndockPrivilege               | Remove computer from docking station                           | Required to undock a laptop.<br>With this privilege, the user can undock a portable computer from its docking station without logging on.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| SeUnsolicitedInputPrivilege     | Not applicable                                                 | Required to read unsolicited input from a [*terminal*](/windows/win32/secgloss/t-gly#_security_terminal_gly) device.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |

-   **Restricted SID Count** \[Type = UInt32\]: Number of [restricted SIDs](/windows/win32/api/securitybaseapi/nf-securitybaseapi-createrestrictedtoken) in the token. Applicable to only specific **Object Types**.

## Security Monitoring Recommendations

For 4656(S, F): A handle to an object was requested.

For kernel objects, this event and other auditing events have little to no security relevance and are hard to parse or analyze. There is no recommendation for auditing them, unless you know exactly what you need to monitor at the Kernel objects level.

For other types of objects, the following recommendations apply.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have a pre-defined “**Process Name**” for the process reported in this event, monitor all events with “**Process Name**” not equal to your defined value.

-   You can monitor to see if “**Process Name**” is not in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

<!-- -->

-   If you have a pre-defined list of restricted substrings or words in process names (for example, “**mimikatz**” or “**cain.exe**”), check for these substrings in “**Process Name**.”

-   If **Object Name** is a sensitive or critical object for which you need to monitor any access attempt, monitor all [4656](event-4656.md) events.

-   If **Object Name** is a sensitive or critical object for which you need to monitor specific access attempts (for example, only write actions), monitor for all [4656](event-4656.md) events with the corresponding **Access Request Information\\Accesses** values.

-   If you need to monitor files and folders with specific Resource Attribute values, monitor for all [4656](event-4656.md) events with specific **Resource Attributes** field values.

    For file system objects, we recommend that you monitor these **Access Request Information\\Accesses** rights (especially for Failure events):

    -   WriteData (or AddFile)

    -   AppendData (or AddSubdirectory or CreatePipeInstance)

    -   WriteEA

    -   DeleteChild

    -   WriteAttributes

    -   DELETE

    -   WRITE\_DAC

    -   WRITE\_OWNER