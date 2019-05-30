---
title: 4907(S) Auditing settings on object were changed. (Windows 10)
description: Describes security event 4907(S) Auditing settings on object were changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 4907(S): Auditing settings on object were changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-4907.png" alt="Event 4907 illustration" width="643" height="542" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Policy Change](audit-audit-policy-change.md)

***Event Description:***

This event generates when the [SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx) of an object (for example, a registry key or file) was changed.

This event doesn't generate for Active Directory objects.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4907</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13568</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-01T18:18:19.458828800Z" /> 
 <EventRecordID>1049732</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="500" ThreadID="508" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-21-3457937927-2839227994-823803824-1104</Data> 
 <Data Name="SubjectUserName">dadmin</Data> 
 <Data Name="SubjectDomainName">CONTOSO</Data> 
 <Data Name="SubjectLogonId">0x138eb0</Data> 
 <Data Name="ObjectServer">Security</Data> 
 <Data Name="ObjectType">Key</Data> 
 <Data Name="ObjectName">\\REGISTRY\\MACHINE\\SYSTEM\\ControlSet001\\Services\\EventLog\\Internet Explorer</Data> 
 <Data Name="HandleId">0x2f8</Data> 
 <Data Name="OldSd">S:AI</Data> 
 <Data Name="NewSd">S:ARAI(AU;CISA;KA;;;S-1-5-21-3457937927-2839227994-823803824-1104)</Data> 
 <Data Name="ProcessId">0x120c</Data> 
 <Data Name="ProcessName">C:\\Windows\\regedit.exe</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that made a change to object’s auditing settings. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that made a change to object’s auditing settings.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Object**:

-   **Object Server** \[Type = UnicodeString\]: has “**Security**” value for this event.

-   **Object Type** \[Type = UnicodeString\]: The type of an object that was accessed during the operation.

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

-   **Object Name** \[Type = UnicodeString\]: full path and name of the object for which the [SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx) was modified. Depends on **Object Type**. Here are some examples:

    -   The format for **Object Type** = “Key” is: \\REGISTRY\\HIVE\\PATH where:

        -   HIVE:

            -   HKEY\_LOCAL\_MACHINE = \\REGISTRY\\MACHINE

            -   HKEY\_CURRENT\_USER = \\REGISTRY\\USER\\\[USER\_SID\], where \[USER\_SID\] is the SID of current user.

            -   HKEY\_CLASSES\_ROOT = \\REGISTRY\\MACHINE\\SOFTWARE\\Classes

            -   HKEY\_USERS = \\REGISTRY\\USER

            -   HKEY\_CURRENT\_CONFIG = \\REGISTRY\\MACHINE\\SYSTEM\\ControlSet001\\Hardware Profiles\\Current

        -   PATH – path to the registry key.

    -   The format for **Object Type** = “File” is: full path and name of the file or folder for which [SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx) was modified.

-   **Handle ID** \[Type = Pointer\]: hexadecimal value of a handle to **Object Name**. This field can help you correlate this event with other events that might contain the same Handle ID, for example, “[4656](event-4656.md): A handle to an object was requested.” Event for registry keys or with **Handle ID** field in “[4656](event-4656.md)(S, F): A handle to an object was requested.” Event for file system objects. This parameter might not be captured in the event, and in that case appears as “0x0”.

**Process Information:**

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process through which the object’s [SACL](https://msdn.microsoft.com/library/windows/desktop/aa374872(v=vs.85).aspx) was changed. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Process Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

**Auditing Settings:**

-   **Original Security Descriptor** \[Type = UnicodeString\]**:** the old Security Descriptor Definition Language (SDDL) value for the object.

-   **New Security Descriptor** \[Type = UnicodeString\]**:** the new Security Descriptor Definition Language (SDDL) value for the object.

> **Note**&nbsp;&nbsp;The ** Security Descriptor Definition Language (SDDL)** defines string elements for enumerating information contained in the security descriptor.

> Example:

> *O*:BA*G*:SY*D*:(D;;0xf0007;;;AN)(D;;0xf0007;;;BG)(A;;0xf0007;;;SY)(A;;0×7;;;BA)*S*:ARAI(AU;SAFA;DCLCRPCRSDWDWO;;;WD)

> - *O*: = Owner. SID of specific security principal, or reserved (pre-defined) value, for example: BA (BUILTIN\_ADMINISTRATORS), WD (Everyone), SY (LOCAL\_SYSTEM), etc. 
> See the list of possible values in the table below:

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

For 4907(S): Auditing settings on object were changed.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   If you need to monitor events related to specific Windows object types (“**Object Type**”), for example **File** or **Key**, monitor this event for the corresponding “**Object Type**.”

-   If you need to monitor all SACL changes for specific files, folders, registry keys, or other object types, monitor for “**Object Name**” field value which has specific object name.

<!-- -->

-   If you have critical file or registry objects and you need to monitor all modifications (especially changes in SACL), monitor for specific “**Object\\Object Name”**.

-   If you have high-value computers for which you need to monitor all changes for all or specific file or registry objects, monitor for all [4907](event-4907.md) events on these computers**.**

