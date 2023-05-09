---
title: USMT Requirements (Windows 10)
description: While the User State Migration Tool (USMT) doesn't have many requirements, these tips and tricks can help smooth the migration process.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# USMT requirements

## Supported operating systems

The User State Migration Tool (USMT) 10.0 doesn't have any explicit RAM or CPU speed requirements for either the source or destination computers. If your computer complies with the system requirements of the operating system, it also complies with the requirements for USMT. You need an intermediate store location large enough to hold all of the migrated data and settings, and the same amount of hard disk space on the destination computer for the migrated files and settings.

The following table lists the operating systems supported in USMT.

|Operating Systems|ScanState (source computer)|LoadState (destination computer)|
|--- |--- |--- |
|32-bit versions of Windows 7|✔️|✔️|
|64-bit versions of Windows 7|✔️|✔️|
|32-bit versions of Windows 8|✔️|✔️|
|64-bit versions of Windows 8|✔️|✔️|
|32-bit versions of Windows 10|✔️|✔️|
|64-bit versions of Windows 10|✔️|✔️|

> [!NOTE]
> You can migrate a 32-bit operating system to a 64-bit operating system. However, you cannot migrate a 64-bit operating system to a 32-bit operating system.

## Unsupported scenarios

- USMT doesn't support any of the Windows Server® operating systems.
- USMT for Windows 10 shouldn't be used for migrating between previous versions of Windows. USMT for Windows 10 is only meant to migrate to Windows 10 or between Windows 10 versions. For more information about previous releases of the USMT tools, see [User State Migration Tool (USMT) overview](/previous-versions/windows/hh825227(v=win.10)).

## Windows PE

- **Must use latest version of Windows PE.** For example, to migrate to Windows 10, you'll need Windows PE 5.1. For more info, see [What's New in Windows PE](/windows-hardware/manufacture/desktop/whats-new-in-windows-pe-s14).

## Credentials

- **Run as administrator**
    When manually running the **ScanState** and **LoadState** tools on Windows 7, Windows 8, or Windows 10 you must run them from an elevated command prompt to ensure that all specified users are migrated. If you don't run USMT from an elevated prompt, only the user profile that is logged on will be included in the migration.

To open an elevated command prompt:

1. Select **Start**.
2. Enter `cmd` in the search function.
3. Depending on the OS you're using, **cmd** or **Command Prompt** is displayed.
4. Right-click **cmd** or **Command Prompt**, and then select **Run as administrator**.
5. If the current user isn't already an administrator, you'll be prompted to enter administrator credentials.

> [!IMPORTANT]
> You must run USMT using an account with full administrative permissions, including the following privileges:
>
> - SeBackupPrivilege (Back up files and directories)
> - SeDebugPrivilege (Debug programs)
> - SeRestorePrivilege (Restore files and directories)
> - SeSecurityPrivilege (Manage auditing and security log)
> - SeTakeOwnership Privilege (Take ownership of files or other objects)

## Config.xml

### Specify the `/c` option and &lt;ErrorControl&gt; settings in the `Config.xml` file

USMT will fail if it can't migrate a file or setting, unless you specify the `/c` option. When you specify the `/c` option, USMT logs an error each time it encounters a file that is in use that didn't migrate, but the migration won't be interrupted. In USMT, you can specify in the `Config.xml` file, which types of errors should allow the migration to continue, and which should cause the migration to fail. For more information about error reporting, and the **&lt;ErrorControl&gt;** element, see [Config.xml file](usmt-configxml-file.md#errorcontrol), [Log files](usmt-log-files.md), and [XML elements library](usmt-xml-elements-library.md).

## LoadState

### Install applications before running the LoadState command

Install all applications on the destination computer before restoring the user state. Installing applications before running the `LoadState.exe` command ensures that migrated settings are preserved.

## Hard-disk requirements

Ensure that there's enough available space in the migration-store location and on the source and destination computers. For more information, see [Estimate Migration Store Size](usmt-estimate-migration-store-size.md).

## User prerequisites

This documentation assumes that IT professionals using USMT understand command-line tools. The documentation also assumes that IT professionals using USMT to author MigXML rules understand the following concepts:

- The navigation and hierarchy of the Windows registry.
- The files and file types that applications use.
- The methods to extract application and setting information manually from applications created by internal software-development groups and non-Microsoft software publishers.
- XML-authoring basics.

## Related articles

- [Plan your migration](usmt-plan-your-migration.md)
- [Estimate migration store size](usmt-estimate-migration-store-size.md)
- [User State Migration Tool (USMT) overview topics](usmt-topics.md)
