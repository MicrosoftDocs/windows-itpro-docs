---
title: 4818(S) Proposed Central Access Policy does not grant the same access permissions as the current Central Access Policy. (Windows 10)
description: Describes security event 4818(S) Proposed Central Access Policy does not grant the same access permissions as the current Central Access Policy.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4818(S): Proposed Central Access Policy does not grant the same access permissions as the current Central Access Policy.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4818.png" alt="Event 4818 illustration" width="727" height="725" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Central Policy Staging](audit-central-access-policy-staging.md)

***Event Description:***

This event generates when Dynamic Access Control Proposed [Central Access Policy](https://technet.microsoft.com/library/hh831425.aspx) is enabled and access was not granted by Proposed Central Access Policy.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4818</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12813</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-30T16:37:29.473472100Z" /> 
 <EventRecordID>1049324</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="524" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-2104</Data> 
 <Data Name="SubjectUserName">Auditor</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x1e5f21</Data> 
 <Data Name="ObjectServer">Security</Data> 
 <Data Name="ObjectType">File</Data> 
 <Data Name="ObjectName">C:\\Finance Documents\\desktop.ini</Data> 
 <Data Name="HandleId">0xc64</Data> 
 <Data Name="ProcessId">0x4</Data> 
 <Data Name="ProcessName" /> 
 <Data Name="AccessReason">%%1538: %%1801 D:(A;ID;0x1200a9;;;BU) %%1541: %%1801 D:(A;ID;0x1200a9;;;BU) %%4416: %%1801 D:(A;ID;0x1200a9;;;BU) %%4419: %%1801 D:(A;ID;0x1200a9;;;BU) %%4423: %%1801 D:(A;ID;0x1200a9;;;BU)</Data> 
 <Data Name="StagingReason">%%1538: %%1814Finance Documents Rule %%1541: %%1814Finance Documents Rule %%4416: %%1814Finance Documents Rule %%4419: %%1814Finance Documents Rule %%4423: %%1814Finance Documents Rule</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012, Windows 8.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made an access request. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made an access request.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **Object Server** \[Type = UnicodeString\]: has “**Security**” value for this event.

-   **Object Type** \[Type = UnicodeString\]: The type of an object that was accessed during the operation. Always “**File**” for this event.

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

-   **Object Name** \[Type = UnicodeString\]: full path and name of the file or folder for which access was requested.

-   **Handle ID** \[Type = Pointer\]: hexadecimal value of a handle to **Object Name**. This field can help you correlate this event with other events that might contain the same Handle ID, for example, “[4663](event-4663.md)(S): An attempt was made to access an object.” This parameter might not be captured in the event, and in that case appears as “0x0”.

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process through which the access was requested. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

**Current Central Access Policy results:**

-   **Access Reasons** \[Type = UnicodeString\]: the list of access check results for Current Access Policy. The format of the result is:<br><br>
REQUESTED\_ACCESS: RESULT ACE\_WHICH\_PROVIDED\_OR\_DENIED\_ACCESS.

The possible REQUESTED\_ACCESS values are listed in the table below.

## Table of file access codes

| Access                                                | Hexadecimal Value  | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|-------------------------------------------------------|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ReadData (or ListDirectory)                           | 0x1                | **ReadData -** For a file object, the right to read the corresponding file data. For a directory object, the right to read the corresponding directory data.<br>**ListDirectory -** For a directory, the right to list the contents of the directory.                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| WriteData (or AddFile)                                | 0x2                | **WriteData -** For a file object, the right to write data to the file. For a directory object, the right to create a file in the directory (**FILE\_ADD\_FILE**).<br>**AddFile -** For a directory, the right to create a file in the directory.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| AppendData (or AddSubdirectory or CreatePipeInstance) | 0x4                | **AppendData -** For a file object, the right to append data to the file. (For local files, write operations will not overwrite existing data if this flag is specified without **FILE\_WRITE\_DATA**.) For a directory object, the right to create a subdirectory (**FILE\_ADD\_SUBDIRECTORY**). <br>**AddSubdirectory -** For a directory, the right to create a subdirectory.<br>**CreatePipeInstance -** For a named pipe, the right to create a pipe.                                                                                                                                                                                                                                                              |
| ReadEA                                                | 0x8                | The right to read extended file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| WriteEA                                               | 0x10               | The right to write extended file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Execute/Traverse                                      | 0x20               | **Execute** - For a native code file, the right to execute the file. This access right given to scripts may cause the script to be executable, depending on the script interpreter.<br>**Traverse -** For a directory, the right to traverse the directory. By default, users are assigned the **BYPASS\_TRAVERSE\_CHECKING**&thinsp; [privilege](https://msdn.microsoft.com/library/windows/desktop/aa379306(v=vs.85).aspx), which ignores the **FILE\_TRAVERSE**&thinsp; [access right](https://msdn.microsoft.com/library/windows/desktop/aa374902(v=vs.85).aspx). See the remarks in [File Security and Access Rights](https://msdn.microsoft.com/library/windows/desktop/aa364399(v=vs.85).aspx) for more information. |
| DeleteChild                                           | 0x40               | For a directory, the right to delete a directory and all the files it contains, including read-only files.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ReadAttributes                                        | 0x80               | The right to read file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| WriteAttributes                                       | 0x100              | The right to write file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| DELETE                                                | 0x10000            | The right to delete the object.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| READ\_CONTROL                                         | 0x20000            | The right to read the information in the object's security descriptor, not including the information in the system access control list (SACL).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| WRITE\_DAC                                            | 0x40000            | The right to modify the discretionary access control list (DACL) in the object's security descriptor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| WRITE\_OWNER                                          | 0x80000            | The right to change the owner in the object's security descriptor                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| SYNCHRONIZE                                           | 0x100000<br> | The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ACCESS\_SYS\_SEC                                      | 0x1000000          | The ACCESS\_SYS\_SEC access right controls the ability to get or set the SACL in an object's security descriptor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

-   RESULT:

    -   Granted by

    -   Denied by

    -   Granted by ACE on parent folder

    -   Not granted due to missing – after this sentence you will typically see missing user rights, for example SeSecurityPrivilege.

    -   Unknown or unchecked

-   ACE\_WHICH\_PROVIDED\_OR\_DENIED\_ACCESS:

    -   Ownership – if access was granted because of ownership of an object.

    -   User Right name, for example SeSecurityPrivilege.

    -   The [Security Descriptor Definition Language](event-5145.md#sddl-values-for-access-control-entry) (SDDL) value for the Access Control Entry (ACE) that granted or denied access.

**Proposed Central Access Policy results that differ from the current Central Access Policy results:**

-   **Access Reasons** \[Type = UnicodeString\]: the list of access check results for Proposed Central Access Policy. Here you will see only ***denied*** requests. The format of the result is:<br><br>

REQUESTED\_ACCESS: NOT Granted by RULE\_NAME Rule.

The possible REQUESTED\_ACCESS values are listed in the table below:

| Access                                                | Hexadecimal Value  | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|-------------------------------------------------------|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ReadData (or ListDirectory)                           | 0x1                | **ReadData -** For a file object, the right to read the corresponding file data. For a directory object, the right to read the corresponding directory data.<br>**ListDirectory -** For a directory, the right to list the contents of the directory.                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| WriteData (or AddFile)                                | 0x2                | **WriteData -** For a file object, the right to write data to the file. For a directory object, the right to create a file in the directory (**FILE\_ADD\_FILE**).<br>**AddFile -** For a directory, the right to create a file in the directory.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| AppendData (or AddSubdirectory or CreatePipeInstance) | 0x4                | **AppendData -** For a file object, the right to append data to the file. (For local files, write operations will not overwrite existing data if this flag is specified without **FILE\_WRITE\_DATA**.) For a directory object, the right to create a subdirectory (**FILE\_ADD\_SUBDIRECTORY**). <br>**AddSubdirectory -** For a directory, the right to create a subdirectory.<br>**CreatePipeInstance -** For a named pipe, the right to create a pipe.                                                                                                                                                                                                                                                              |
| ReadEA                                                | 0x8                | The right to read extended file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| WriteEA                                               | 0x10               | The right to write extended file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Execute/Traverse                                      | 0x20               | **Execute** - For a native code file, the right to execute the file. This access right given to scripts may cause the script to be executable, depending on the script interpreter.<br>**Traverse -** For a directory, the right to traverse the directory. By default, users are assigned the **BYPASS\_TRAVERSE\_CHECKING**&thinsp; [privilege](https://msdn.microsoft.com/library/windows/desktop/aa379306(v=vs.85).aspx), which ignores the **FILE\_TRAVERSE**&thinsp; [access right](https://msdn.microsoft.com/library/windows/desktop/aa374902(v=vs.85).aspx). See the remarks in [File Security and Access Rights](https://msdn.microsoft.com/library/windows/desktop/aa364399(v=vs.85).aspx) for more information. |
| DeleteChild                                           | 0x40               | For a directory, the right to delete a directory and all the files it contains, including read-only files.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ReadAttributes                                        | 0x80               | The right to read file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| WriteAttributes                                       | 0x100              | The right to write file attributes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| DELETE                                                | 0x10000            | The right to delete the object.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| READ\_CONTROL                                         | 0x20000            | The right to read the information in the object's security descriptor, not including the information in the system access control list (SACL).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| WRITE\_DAC                                            | 0x40000            | The right to modify the discretionary access control list (DACL) in the object's security descriptor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| WRITE\_OWNER                                          | 0x80000            | The right to change the owner in the object's security descriptor                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| SYNCHRONIZE                                           | 0x100000<br> | The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ACCESS\_SYS\_SEC                                      | 0x1000000          | The ACCESS\_SYS\_SEC access right controls the ability to get or set the SACL in an object's security descriptor.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

-   RULE\_NAME: the name of Central Access Rule which denied the access.

## Security Monitoring Recommendations

For 4818(S): Proposed Central Access Policy does not grant the same access permissions as the current Central Access Policy.

-   This event typically used for troubleshooting and testing of Proposed Central Access Policies for Dynamic Access Control.

