---
title: 5145(S, F) A network share object was checked to see whether client can be granted desired access. (Windows 10)
description: Describes security event 5145(S, F) A network share object was checked to see whether client can be granted desired access.
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

# 5145(S, F): A network share object was checked to see whether client can be granted desired access.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-5145.png" alt="Event 5145 illustration" width="591" height="671" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Detailed File Share](audit-detailed-file-share.md)

***Event Description:***

This event generates every time network share object (file or folder) was accessed.

*Important*: Failure events are generated only when access is denied at the file share level. No events are generated if access was denied on the file system (NTFS) level.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5145</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12811</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-17T23:54:48.941761700Z" /> 
 <EventRecordID>267092</EventRecordID> 
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
 <Data Name="SubjectLogonId">0x38d34</Data> 
 <Data Name="ObjectType">File</Data> 
 <Data Name="IpAddress">fe80::31ea:6c3c:f40d:1973</Data> 
 <Data Name="IpPort">56926</Data> 
 <Data Name="ShareName">\\\\\*\\Documents</Data> 
 <Data Name="ShareLocalPath">\\??\\C:\\Documents</Data> 
 <Data Name="RelativeTargetName">Bginfo.exe</Data> 
 <Data Name="AccessMask">0x100081</Data> 
 <Data Name="AccessList">%%1541 %%4416 %%4423</Data> 
 <Data Name="AccessReason">%%1541: %%1801 D:(A;;FA;;;WD) %%4416: %%1801 D:(A;;FA;;;WD) %%4423: %%1801 D:(A;;FA;;;WD)</Data> 
 </EventData>
 </Event>
```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that requested access to network share object. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that requested access to network share object.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Network Information:**

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

-   **Source Address** \[Type = UnicodeString\]**:** source IP address from which access was performed.

    -   IPv6 address or ::ffff:IPv4 address of a client.

    -   ::1 or 127.0.0.1 means localhost.

-   **Source Port** \[Type = UnicodeString\]: source TCP or UDP port which was used from remote or local machine to request the access.

    -   0 for local access attempts.

**Share Information:**

-   **Share Name** \[Type = UnicodeString\]**:** the name of accessed network share. The format is: \\\\\*\\SHARE\_NAME.

-   **Share Path** \[Type = UnicodeString\]**:** the full system (NTFS) path for accessed share. The format is: \\\\??\\PATH. Can be empty, for example for **Share Name**: \\\\\*\\IPC$.

-   **Relative Target Name** \[Type = UnicodeString\]**:** relative name of the accessed target file or folder. This file-path is relative to the network share. If access was requested for the share itself, then this field appears as “**\\**”.

**Access Request Information:**

-   **Access Mask** \[Type = HexInt32\]: the sum of hexadecimal values of requested access rights. See “Table 13. File access codes.” for different hexadecimal values for access rights.

-   **Accesses** \[Type = UnicodeString\]: the list of access rights which were requested by **Subject\\Security ID**. These access rights depend on **Object Type**.

## Table of file access codes

| <span id="File_access_codes" class="anchor"></span>Access | Hex Value,<br>Schema Value | Description   |
|-----------------------------------------------------------|----------------------------|---------------|
| ReadData (or ListDirectory)                               | 0x1,<br>%%4416             | **ReadData -** For a file object, the right to read the corresponding file data. For a directory object, the right to read the corresponding directory data.<br>**ListDirectory -** For a directory, the right to list the contents of the directory.                                                                                                                                                                                           |
| WriteData (or AddFile)                                    | 0x2,<br>%%4417             | **WriteData -** For a file object, the right to write data to the file. For a directory object, the right to create a file in the directory (**FILE\_ADD\_FILE**).<br>**AddFile -** For a directory, the right to create a file in the directory.                                                                                                                                                                                               |
| AppendData (or AddSubdirectory or CreatePipeInstance)     | 0x4,<br>%%4418             | **AppendData -** For a file object, the right to append data to the file. (For local files, write operations will not overwrite existing data if this flag is specified without **FILE\_WRITE\_DATA**.) For a directory object, the right to create a subdirectory (**FILE\_ADD\_SUBDIRECTORY**). <br>**AddSubdirectory -** For a directory, the right to create a subdirectory.<br>**CreatePipeInstance -** For a named pipe, the right to create a pipe.                                                                                                                       |
| ReadEA                                                    | 0x8,<br>%%4419             | The right to read extended file attributes.                                                                                                                             |
| WriteEA                                                   | 0x10,<br>%%4420            | The right to write extended file attributes.                                                                                                                            |
| Execute/Traverse                                          | 0x20,<br>%%4421            | **Execute** - For a native code file, the right to execute the file. This access right given to scripts may cause the script to be executable, depending on the script interpreter.<br>**Traverse -** For a directory, the right to traverse the directory. By default, users are assigned the **BYPASS\_TRAVERSE\_CHECKING**&thinsp; [privilege](https://msdn.microsoft.com/library/windows/desktop/aa379306(v=vs.85).aspx), which ignores the **FILE\_TRAVERSE**&thinsp; [access right](https://msdn.microsoft.com/library/windows/desktop/aa374902(v=vs.85).aspx). See the remarks in [File Security and Access Rights](https://msdn.microsoft.com/library/windows/desktop/aa364399(v=vs.85).aspx) for more information.                                            |
| DeleteChild                                               | 0x40,<br>%%4422            | For a directory, the right to delete a directory and all the files it contains, including read-only files.                                                                                                                                                                                                     |
| ReadAttributes                                            | 0x80,<br>%%4423            | The right to read file attributes.                                                                                                                                                                                                                                                                             |
| WriteAttributes                                           | 0x100,<br>%%4424           | The right to write file attributes.                                                                                                                                     |
| DELETE                                                    | 0x10000,<br>%%1537         | The right to delete the object.                                                                                                                                         |
| READ\_CONTROL                                             | 0x20000,<br>%%1538         | The right to read the information in the object's security descriptor, not including the information in the system access control list (SACL).                                                                                                                                                                 |
| WRITE\_DAC                                                | 0x40000,<br>%%1539         | The right to modify the discretionary access control list (DACL) in the object's security descriptor.                                                                                                                                              |
| WRITE\_OWNER                                              | 0x80000,<br>%%1540         | The right to change the owner in the object's security descriptor                                                                                                                                                                                                                                         |
| SYNCHRONIZE                                               | 0x100000,<br>%%1541        | The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.                                                                                                                                  |
| ACCESS\_SYS\_SEC                                          | 0x1000000,<br>%%1542       | The ACCESS\_SYS\_SEC access right controls the ability to get or set the SACL in an object's security descriptor.                                                                                                                                                                               |

> <span id="_Ref433878809" class="anchor"></span>Table 13. File access codes.

**Access Check Results** \[Type = UnicodeString\]: the list of access check results. The format of the result is:<br><br>

REQUESTED\_ACCESS: RESULT ACE\_WHICH\_ ALLOWED\_OR\_DENIED\_ACCESS.

-   REQUESTED\_ACCESS – the name of requested access. See [Table of file access codes](#table-of-file-access-codes), earlier in this topic.

-   RESULT:

    -   Granted by – if access was granted.

    -   Denied by – if access was denied.

-   ACE\_WHICH\_ ALLOWED\_OR\_DENIED\_ACCESS: the Security Descriptor Definition Language (SDDL) value for Access Control Entry (ACE), which granted or denied access.

> **Note**&nbsp;&nbsp;The ** <span id="SDDL" class="anchor"></span>Security Descriptor Definition Language (SDDL)** defines string elements for enumerating information contained in the security descriptor.
> 
> Example:
> 
> *O*:BA*G*:SY*D*:(D;;0xf0007;;;AN)(D;;0xf0007;;;BG)(A;;0xf0007;;;SY)(A;;0×7;;;BA)*S*:ARAI(AU;SAFA;DCLCRPCRSDWDWO;;;WD)
> 
> - *O*: = Owner. SID of specific security principal, or reserved (pre-defined) value, for example: BA (BUILTIN\_ADMINISTRATORS), WD (Everyone), SY (LOCAL\_SYSTEM), etc. 
> See the list of possible values in the table below.

## SDDL values for Access Control Entry

| Value | Description                          | Value | Description                     |
|-------|--------------------------------------|-------|---------------------------------|
| "AO"  | Account operators                    | "PA"  | Group Policy administrators     |
| "RU"  | Alias to allow previous Windows 2000 | "IU"  | Interactively logged-on user    |
| "AN"  | Anonymous logon                      | "LA"  | Local administrator             |
| "AU"  | Authenticated users                  | "LG"  | Local guest                     |
| "BA"  | Built-in administrators              | "LS"  | Local service account           |
| "BG"  | Built-in guests                      | "SY"  | Local system                    |
| "BO"  | Backup operators                     | "NU"  | Network logon user              |
| "BU"  | Built-in users                       | "NO"  | Network configuration operators |
| "CA"  | Certificate server administrators    | "NS"  | Network service account         |
| "CG"  | Creator group                        | "PO"  | Printer operators               |
| "CO"  | Creator owner                        | "PS"  | Personal self                   |
| "DA"  | Domain administrators                | "PU"  | Power users                     |
| "DC"  | Domain computers                     | "RS"  | RAS servers group               |
| "DD"  | Domain controllers                   | "RD"  | Terminal server users           |
| "DG"  | Domain guests                        | "RE"  | Replicator                      |
| "DU"  | Domain users                         | "RC"  | Restricted code                 |
| "EA"  | Enterprise administrators            | "SA"  | Schema administrators           |
| "ED"  | Enterprise domain controllers        | "SO"  | Server operators                |
| "WD"  | Everyone                             | "SU"  | Service logon user              |

- *G*: = Primary Group.
- *D*: = DACL Entries.
- *S*: = SACL Entries.

*DACL/SACL entry format:* entry\_type:inheritance\_flags(ace\_type;ace\_flags;rights;object\_guid;inherit\_object\_guid;account\_sid)

Example: D:(A;;FA;;;WD)

- entry\_type:

“D” - DACL

“S” - SACL

- inheritance\_flags:

"P” - SDDL\_PROTECTED, Inheritance from containers that are higher in the folder hierarchy are blocked.

"AI" - SDDL\_AUTO\_INHERITED, Inheritance is allowed, assuming that "P" Is not also set.

"AR" - SDDL\_AUTO\_INHERIT\_REQ, Child objects inherit permissions from this object.

- ace\_type:

"A" - ACCESS ALLOWED

"D" - ACCESS DENIED

"OA" - OBJECT ACCESS ALLOWED: only applies to a subset of the object(s).

"OD" - OBJECT ACCESS DENIED: only applies to a subset of the object(s).

"AU" - SYSTEM AUDIT

"A" - SYSTEM ALARM

"OU" - OBJECT SYSTEM AUDIT

"OL" - OBJECT SYSTEM ALARM

- ace\_flags:

"CI" - CONTAINER INHERIT: Child objects that are containers, such as directories, inherit the ACE as an explicit ACE.

"OI" - OBJECT INHERIT: Child objects that are not containers inherit the ACE as an explicit ACE.

"NP" - NO PROPAGATE: only immediate children inherit this ace.

"IO" - INHERITANCE ONLY: ace doesn’t apply to this object, but may affect children via inheritance.

"ID" - ACE IS INHERITED

"SA" - SUCCESSFUL ACCESS AUDIT

"FA" - FAILED ACCESS AUDIT
- rights: A hexadecimal string which denotes the access mask or reserved value, for example: FA (File All Access), FX (File Execute), FW (File Write), etc.

| Value                      | Description                     | Value                | Description              |
|----------------------------|---------------------------------|----------------------|--------------------------|
| Generic access rights      | Directory service access rights |
| "GA"                       | GENERIC ALL                     | "RC"                 | Read Permissions         |
| "GR"                       | GENERIC READ                    | "SD"                 | Delete                   |
| "GW"                       | GENERIC WRITE                   | "WD"                 | Modify Permissions       |
| "GX"                       | GENERIC EXECUTE                 | "WO"                 | Modify Owner             |
| File access rights         | "RP"                            | Read All Properties  |
| "FA"                       | FILE ALL ACCESS                 | "WP"                 | Write All Properties     |
| "FR"                       | FILE GENERIC READ               | "CC"                 | Create All Child Objects |
| "FW"                       | FILE GENERIC WRITE              | "DC"                 | Delete All Child Objects |
| "FX"                       | FILE GENERIC EXECUTE            | "LC"                 | List Contents            |
| Registry key access rights | "SW"                            | All Validated Writes |
| "KA"                       | "LO"                            | "LO"                 | List Object              |
| "K"                        | KEY READ                        | "DT"                 | Delete Subtree           |
| "KW"                       | KEY WRITE                       | "CR"                 | All Extended Rights      |
| "KX"                       | KEY EXECUTE                     |                      |                          |

- object\_guid: N/A
- inherit\_object\_guid: N/A
- account\_sid: SID of specific security principal, or reserved value, for example: AN (Anonymous), WD (Everyone), SY (LOCAL\_SYSTEM), etc. See the table above for more details.

For more information about SDDL syntax, see these articles: <https://msdn.microsoft.com/library/cc230374.aspx>, <https://msdn.microsoft.com/library/windows/hardware/aa374892(v=vs.85).aspx>.

## Security Monitoring Recommendations

For 5145(S, F): A network share object was checked to see whether client can be granted desired access.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Monitor this event if the **Network Information\\Source Address** is not from your internal IP range.

-   Monitor this event if the **Network Information\\Source Address** should not be able to connect with the specific computer (**Computer:**).

-   If you have critical files or folders on specific network shares, for which you need to monitor access attempts (Success and Failure), monitor for specific **Share Information\\Share Name** and **Share Information\\Relative Target Name**.

-   If you have domain or local accounts that should only be able to access a specific list of shared files or folders, you can monitor for access attempts outside the allowed list.

-   We recommend that you monitor for these **Access Request Information\\Accesses** rights (especially for Failure):

    -   WriteData (or AddFile)

    -   AppendData (or AddSubdirectory or CreatePipeInstance)

    -   WriteEA

    -   DeleteChild

    -   WriteAttributes

    -   DELETE

    -   WRITE\_DAC

    -   WRITE\_OWNER



