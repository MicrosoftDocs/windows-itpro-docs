---
title: USMT Requirements (Windows 10)
description: USMT Requirements
ms.assetid: 2b0cf3a3-9032-433f-9622-1f9df59d6806
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 05/03/2017
ms.topic: article
---

# USMT Requirements


## In This Topic


-   [Supported Operating Systems](#bkmk-1)
-   [Windows PE](#windows-pe)
-   [Credentials](#credentials)
-   [Config.xml](#configxml)
-   [LoadState](#loadstate)
-   [Hard Disk Requirements](#bkmk-3)
-   [User Prerequisites](#bkmk-userprereqs)

## <a href="" id="bkmk-1"></a>Supported Operating Systems


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

USMT does not support any of the Windows Server® operating systems, Windows 2000, Windows XP, or any of the starter editions for Windows Vista or Windows 7.

USMT for Windows 10 should not be used for migrating from Windows 7 to Windows 8.1. It is meant to migrate to Windows 10.
For more information about previous releases of the USMT tools, see [User State Migration Tool (USMT) 4.0 User’s Guide](https://go.microsoft.com/fwlink/p/?LinkId=246564). 

## Windows PE

-   **Must use latest version of Window PE.** For example, to migrate to Windows 10, you'll need Windows PE 5.1. For more info, see [What's New in Windows PE](https://msdn.microsoft.com/library/windows/hardware/dn938350.aspx).

## Credentials

-  **Run as administrator**
    When manually running the **ScanState** and **LoadState** tools on Windows 7, Windows 8 or Windows 10 you must run them from an elevated command prompt to ensure that all specified users are migrated. If you do not run USMT from an elevated prompt, only the user profile that is logged on will be included in the migration.

To open an elevated command prompt:

1. Click **Start**.
2. Enter **cmd** in the search function.
3. Depending on the OS you are using, **cmd** or **Command Prompt** is displayed.
3. Right-click **cmd** or **Command Prompt**, and then click **Run as administrator**.
4. If the current user is not already an administrator, you will be prompted to enter administrator credentials.

**Important**<BR>
You must run USMT using an account with full administrative permissions, including the following privileges:

- SeBackupPrivilege (Back up files and directories)
- SeDebugPrivilege (Debug programs)
- SeRestorePrivilege (Restore files and directories)
- SeSecurityPrivilege (Manage auditing and security log)
- SeTakeOwnership Privilege (Take ownership of files or other objects)


## Config.xml

-  **Specify the /c option and &lt;ErrorControl&gt; settings in the Config.xml file.**<BR>
    USMT will fail if it cannot migrate a file or setting, unless you specify the **/c** option. When you specify the **/c** option, USMT logs an error each time it encounters a file that is in use that did not migrate, but the migration will not be interrupted. In USMT, you can specify in the Config.xml file which types of errors should allow the migration to continue, and which should cause the migration to fail. For more information about error reporting, and the **&lt;ErrorControl&gt;** element, see [Config.xml File](usmt-configxml-file.md), [Log Files](usmt-log-files.md), and [XML Elements Library](usmt-xml-elements-library.md).

## LoadState

-  **Install applications before running the LoadState command.**<BR>
    Install all applications on the destination computer before restoring the user state. This ensures that migrated settings are preserved.

## <a href="" id="bkmk-3"></a>Hard-Disk Requirements


Ensure that there is enough available space in the migration-store location and on the source and destination computers. For more information, see [Estimate Migration Store Size](usmt-estimate-migration-store-size.md).

## <a href="" id="bkmk-userprereqs"></a>User Prerequisites


This documentation assumes that IT professionals using USMT understand command-line tools. The documentation also assumes that IT professionals using USMT to author MigXML rules understand the following:

-   The navigation and hierarchy of the Windows registry.
-   The files and file types that applications use.
-   The methods to extract application and setting information manually from applications created by internal software-development groups and non-Microsoft software vendors.
-   XML-authoring basics.

## Related topics


[Plan Your Migration](usmt-plan-your-migration.md)<BR>
[Estimate Migration Store Size](usmt-estimate-migration-store-size.md)<BR>
[User State Migration Tool (USMT) Overview Topics](usmt-topics.md)<BR>

 

 





