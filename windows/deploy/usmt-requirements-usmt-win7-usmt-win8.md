---
title: USMT Requirements (Windows 10)
description: USMT Requirements
ms.assetid: 2b0cf3a3-9032-433f-9622-1f9df59d6806
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: CFaw
---

# USMT Requirements


## In This Topic


-   [Supported Operating Systems](#BKMK_1)

-   [Software Requirements](#BKMK_2)

-   [Hard Disk Requirements](#BKMK_3)

-   [User Prerequisites](#BKMK_UserPrereqs)

## Supported Operating Systems


The User State Migration Tool (USMT) 10.0 does not have any explicit RAM or CPU speed requirements for either the source or destination computers. If your computer complies with the system requirements of the operating system, it also complies with the requirements for USMT. You need an intermediate store location large enough to hold all of the migrated data and settings, and the same amount of hard disk space on the destination computer for the migrated files and settings.

The following table lists the operating systems supported in USMT.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating Systems</th>
<th align="left">ScanState (source computer)</th>
<th align="left">LoadState (destination computer)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows® XP Professional</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows XP Professional x64 Edition</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>32-bit versions of Windows Vista</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>64-bit versions of Windows Vista</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>32-bit versions of Windows 7</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>64-bit versions of Windows 7</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>32-bit versions of Windows 8</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>64-bit versions of Windows 8</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>32-bit versions of Windows 10</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>64-bit versions of Windows 10</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
</tbody>
</table>

 

**Note**  
You can migrate a 32-bit operating system to a 64-bit operating system. However, you cannot migrate a 64-bit operating system to a 32-bit operating system.

USMT does not support any of the Windows Server® operating systems, Windows 2000, or any of the starter editions for Windows XP, Windows Vista, or Windows 7. In addition, USMT only supports migration from Windows XP with Service Pack 3.

 

## Software Requirements


-   **Must use latest version of Window PE.** For example, to migrate to Windows 10, you'll need Windows PE 5.1. For more info, see [What's New in Windows PE](../p_adk_online/whats-new-in-windows-pe-s14.md).

-   **Must run in Administrator Mode** When manually running the **ScanState** and **LoadState** tools on Windows 7, Windows 8 or Windows 10 you must run them in Administrator mode from an account with administrative credentials to ensure that all specified users are migrated. This is because User Access Control (UAC) is enabled by default. If you do not run USMT in Administrator mode, only the user profile that is logged on will be included in the migration.

    To run in Administrator mode:

    1.  Click **Start**.

    2.  Click **All Programs**.

    3.  Click **Accessories**.

    4.  Right-click **Command Prompt**.

    5.  Click **Run as administrator**.

    6.  At the command prompt, type the `ScanState` or `LoadState` command.

    **Important**  
    You must run USMT in Administrator mode from an account with full administrative permissions, including the following privileges:

    -   SeBackupPrivilege (Back up files and directories)

    -   SeDebugPrivilege (Debug programs)

    -   SeRestorePrivilege (Restore files and directories)

    -   SeSecurityPrivilege (Manage auditing and security log)

    -   SeTakeOwnership Privilege (Take ownership of files or other objects)

     

-   **Specify the /c option and &lt;ErrorControl&gt; settings in the Config.xml file.** USMT will fail if it cannot migrate a file or setting, unless you specify the **/c** option. When you specify the **/c** option, USMT logs an error each time it encounters a file that is in use that did not migrate, but the migration will not be interrupted. In USMT, you can specify in the Config.xml file which types of errors should allow the migration to continue, and which should cause the migration to fail. For more information about error reporting, and the **&lt;ErrorControl&gt;** element, see [Config.xml File](configxml-file-usmt-win7-usmt-win8.md), [Log Files](log-files-usmt-win7-usmt-win8.md), and [XML Elements Library](xml-elements-library-usmt-win7-usmt-win8.md).

-   **Install applications before running the LoadState command.** Install all applications on the destination computer before restoring the user state. This ensures that migrated settings are preserved.

## Hard-Disk Requirements


Ensure that there is enough available space in the migration-store location and on the source and destination computers. For more information, see [Estimate Migration Store Size](estimate-migration-store-size-usmt-win7-usmt-win8.md).

## User Prerequisites


This documentation assumes that IT professionals using USMT understand command-line tools. The documentation also assumes that IT professionals using USMT to author MigXML rules understand the following:

-   The navigation and hierarchy of the Windows registry.

-   The files and file types that applications use.

-   The methods to extract application and setting information manually from applications created by internal software-development groups and non-Microsoft software vendors.

-   XML-authoring basics.

## Related topics


[Plan Your Migration](plan-your-migration-usmt-win7-usmt-win8.md)

[Estimate Migration Store Size](estimate-migration-store-size-usmt-win7-usmt-win8.md)

[User State Migration Tool (USMT) Overview Topics](user-state-migration-tool--usmt--overview-topics.md)

 

 





