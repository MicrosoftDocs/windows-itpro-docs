---
title: 4663(S) An attempt was made to access an object. 
description: Describes security event 4663(S) An attempt was made to access an object.
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

# 4663(S): An attempt was made to access an object.


<img src="images/event-4663.png" alt="Event 4663 illustration" width="530" height="589" hspace="10" align="left" />

***Subcategories:***&nbsp;[Audit File System](audit-file-system.md), [Audit Kernel Object](audit-kernel-object.md), [Audit Registry](audit-registry.md), and [Audit Removable Storage](audit-removable-storage.md)

***Event Description:***

This event indicates that a specific operation was performed on an object. The object could be a file system, kernel, or registry object, or a file system object on removable storage or a device.

This event generates only if object’s [SACL](/windows/win32/secauthz/access-control-lists) has required ACE to handle specific access right use.

The main difference with “[4656](event-4656.md): A handle to an object was requested.” event is that 4663 shows that access right was used instead of just requested and 4663 doesn’t have Failure events.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4663</EventID> 
 <Version>1</Version> 
 <Level>0</Level> 
 <Task>12800</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-18T22:13:54.770429700Z" /> 
 <EventRecordID>273866</EventRecordID> 
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
 <Data Name="HandleId">0x1bc</Data> 
 <Data Name="AccessList">%%4417 %%4418</Data> 
 <Data Name="AccessMask">0x6</Data> 
 <Data Name="ProcessId">0x458</Data> 
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

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made an attempt to access an object. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made an attempt to access an object.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](/windows/security/identity-protection/access-control/security-identifiers), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **Object Server** \[Type = UnicodeString\]: has “**Security**” value for this event.

-   **Object Type** \[Type = UnicodeString\]: The type of object that was accessed during the operation.

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

-   **Handle ID** \[Type = Pointer\]: hexadecimal value of a handle to **Object Name**. This field can be used for correlation with other events, for example with **Handle ID** field in “[4656](event-4656.md)(S, F): A handle to an object was requested.” This parameter might not be captured in the event, and in that case appears as “0x0”.

-   **Resource Attributes** \[Type = UnicodeString\] \[Version 1\]: attributes associated with the object. For some objects, the field does not apply and “-“ is displayed.

    For example, for a file, the following might be displayed: S:AI(RA;ID;;;;WD;("Impact\_MS",TI,0x10020,3000))

    -   Impact\_MS: Resource Property ***ID***.

    -   3000: Recourse Property ***Value***.

<img src="images/impact-property.png" alt="Impact property illustration" width="886" height="592" />

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process that accessed the object. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

**Access Request Information:**

-   **Accesses** \[Type = UnicodeString\]: the list of access rights which were used by **Subject\\Security ID**. These access rights depend on **Object Type**. The following table contains information about the most common access rights for file system objects. Access rights for registry objects are often similar to file system objects, but the table contains a few notes about how they vary.

| Access                                                                                 | Hex Value,<br>Schema Value  | Description         |
|----------------------------------------------------------------------------------------|-----------------------------|---------------------|
| ReadData (or ListDirectory) <br><br>(For registry objects, this is “Query key value.”) | 0x1,<br>%%4416              | **ReadData -** For a file object, the right to read the corresponding file data. For a directory object, the right to read the corresponding directory data.<br>**ListDirectory -** For a directory, the right to list the contents of the directory.                                                                                                                                                                                                                       |
| WriteData (or AddFile) <br><br>(For registry objects, this is “Set key value.”)        | 0x2,<br>%%4417              | **WriteData -** For a file object, the right to write data to the file. For a directory object, the right to create a file in the directory (**FILE\_ADD\_FILE**).<br>**AddFile -** For a directory, the right to create a file in the directory.                                                                                                                                                                                                                                                            |
| AppendData (or AddSubdirectory or CreatePipeInstance)                                  | 0x4,<br>%%4418              | **AppendData -** For a file object, the right to append data to the file. (For local files, write operations will not overwrite existing data if this flag is specified without **FILE\_WRITE\_DATA**.) For a directory object, the right to create a subdirectory (**FILE\_ADD\_SUBDIRECTORY**). <br>**AddSubdirectory -** For a directory, the right to create a subdirectory.<br>**CreatePipeInstance -** For a named pipe, the right to create a pipe.                                                                                                                                                                                                                                                              |
| ReadEA<br>(For registry objects, this is “Enumerate sub-keys.”)                        | 0x8,<br>%%4419               | The right to read extended file attributes.                                                                                                                             |
| WriteEA                                                                                | 0x10,<br>%%4420              | The right to write extended file attributes.                                                                                                                                                                                                                                               |
| Execute/Traverse                                                                       | 0x20,<br>%%4421               | **Execute** - For a native code file, the right to execute the file. This access right given to scripts may cause the script to be executable, depending on the script interpreter.<br>**Traverse -** For a directory, the right to traverse the directory. By default, users are assigned the **BYPASS\_TRAVERSE\_CHECKING**&thinsp; [privilege](/windows/win32/secauthz/privileges), which ignores the **FILE\_TRAVERSE**&thinsp; [access right](/windows/win32/secauthz/access-rights-and-access-masks). See the remarks in [File Security and Access Rights](/windows/win32/fileio/file-security-and-access-rights) for more information.                                                       |
| DeleteChild                                                                            | 0x40,<br>%%4422               | For a directory, the right to delete a directory and all the files it contains, including read-only files.                                                                                                                                                                                                                               |
| ReadAttributes                                                                         | 0x80,<br>%%4423               | The right to read file attributes.                                                                                                                                                                              |
| WriteAttributes                                                                        | 0x100,<br>%%4424              | The right to write file attributes.                                                                                                                                     |
| DELETE                                                                                 | 0x10000,<br>%%1537            | The right to delete the object.                                                                                                                                         |
| READ\_CONTROL                                                                          | 0x20000,<br>%%1538            | The right to read the information in the object's security descriptor, not including the information in the system access control list (SACL).                                                                                                                                                                                                    |
| WRITE\_DAC                                                                             | 0x40000,<br>%%1539            | The right to modify the discretionary access control list (DACL) in the object's security descriptor.                                                                                                                                                                                                                      |
| WRITE\_OWNER                                                                           | 0x80000,<br>%%1540            | The right to change the owner in the object's security descriptor                                                                                                                                                                                                                                    |
| SYNCHRONIZE                                                                            | 0x100000,<br>%%1541           | The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.                                                                                                                                                                               |
| ACCESS\_SYS\_SEC                                                                       | 0x1000000,<br>%%1542          | The ACCESS\_SYS\_SEC access right controls the ability to get or set the SACL in an object's security descriptor.                                                                                                                                                                                                                                           |

> Table 15. File System objects access rights.

-   **Access Mask** \[Type = HexInt32\]: hexadecimal mask for the requested or performed operation. For more information, see the preceding table.

## Security Monitoring Recommendations

For 4663(S): An attempt was made to access an object.

For kernel objects, this event and other auditing events have little to no security relevance and are hard to parse or analyze. There is no recommendation for auditing them, unless you know exactly what you need to monitor at the Kernel objects level.

For other types of objects, the following recommendations apply.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you have critical file system objects for which you need to monitor all access attempts, monitor this event for **Object Name**.

-   If you have critical file system objects for which you need to monitor certain access attempts (for example, write actions), monitor this event for **Object Name** in relation to **Access Request Information\\Accesses**.

-   If you have file system objects with specific attributes, for which you need to monitor access attempts, monitor this event for **Resource Attributes**.

-   If **Object Name** is a sensitive or critical registry key for which you need to monitor specific access attempts (for example, only write actions), monitor for all [4663](event-4663.md) events with the corresponding **Access Request Information\\Accesses**.

<!-- -->

-   If you have a pre-defined “**Process Name**” for the process reported in this event, monitor all events with “**Process Name**” not equal to your defined value.

-   You can monitor to see if “**Process Name**” is not in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

<!-- -->

-   If you have a pre-defined list of restricted substrings or words in process names (for example, “**mimikatz**” or “**cain.exe**”), check for these substrings in “**Process Name**.”

-   For file system objects, we recommend that you monitor for these **Access Request Information\\Accesses** rights:

    -   WriteData (or AddFile)

    -   AppendData (or AddSubdirectory or CreatePipeInstance)

    -   WriteEA

    -   DeleteChild

    -   WriteAttributes

    -   DELETE

    -   WRITE\_DAC

    -   WRITE\_OWNER