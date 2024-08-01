---
title: USMT Requirements
description: While the User State Migration Tool (USMT) doesn't have many requirements, these tips and tricks can help smooth the migration process.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 04/30/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# USMT requirements

## Supported operating systems

The User State Migration Tool (USMT) doesn't have any explicit RAM or CPU speed requirements for either the source or destination computers. If the computer complies with the system requirements of the operating system, it also complies with the requirements for USMT. An intermediate store location large enough to hold all of the migrated data and settings is needed. The same amount of hard disk space is also needed on the destination computer for the migrated files and settings.

The following table lists the operating systems supported in USMT.

| Operating<br>Systems | ScanState<br>(Source<br>Device)| LoadState<br>(Destination<br>Device)|
|--- |--- |--- |
|Windows 7|✅|❌|
|Windows 8|✅|❌|
|Windows 10|✅|✅|
|Windows 11|✅|✅|

> [!NOTE]
>
> - 32-bit operating system can be migrated to a 64-bit operating system. However, a 64-bit operating system can't be migrated to a 32-bit operating system.
>
> - Gathering data from a source device using **ScanState** for a version of Windows that is out of support is supported. However, restoring data to a destination device using **LoadState** to a version of Windows that is out of support isn't supported.

## Unsupported scenarios

- USMT doesn't support any of the Windows Server operating systems.
- USMT doesn't support Microsoft Entra joined devices as either a source or destination device.
- USMT might work with Microsoft Entra hybrid joined devices, but it's not a tested scenario so therefore unsupported.
- USMT doesn't support migrating settings for Microsoft Store apps.
- USMT shouldn't be used for migrating between previous versions of Windows. USMT is only meant to:
  - Migrate to a currently supported version of Windows
  - Migrate between currently supported versions of Windows, assuming the version of Windows being migrated to is newer or the same as the previous version of Windows being migrated from.

For more information about previous releases of the USMT tools, see [User State Migration Tool (USMT) overview](/previous-versions/windows/hh825227(v=win.10)).

## Windows PE

- **Must use latest version of Windows PE.** For more info, see [What's New in Windows PE](/windows-hardware/manufacture/desktop/whats-new-in-windows-pe-s14).

## Credentials

- **Run as administrator.**

  When the **ScanState** and **LoadState** tools are run, they must be run from an elevated command prompt to ensure that all specified users are migrated. If USMT isn't run from an elevated prompt, only the user profile that is logged on is included in the migration.

To open an elevated command prompt:

1. Select **Start**.
1. Enter `cmd` in the search function.
1. **cmd** or **Command Prompt** is displayed.
1. Right-click **cmd** or **Command Prompt**, and then select **Run as administrator**.
1. If the current user isn't already an administrator, it prompts to enter administrator credentials.

> [!IMPORTANT]
>
> USMT must run using an account with full administrative permissions, including the following privileges:
>
> - SeBackupPrivilege (Back up files and directories)
> - SeDebugPrivilege (Debug programs)
> - SeRestorePrivilege (Restore files and directories)
> - SeSecurityPrivilege (Manage auditing and security log)
> - SeTakeOwnership Privilege (Take ownership of files or other objects)

## Config.xml

### Specify the `/c` option and \<ErrorControl\> settings in the `Config.xml` file

USMT fails if it can't migrate a file or setting, unless the `/c` option is specified. When the `/c` option is specified, USMT logs an error each time it encounters a file that is in use that didn't migrate, but the migration isn't to be interrupted. In USMT, which types of errors should allow the migration to continue and which should cause the migration to fail can be specified in the `Config.xml` file. For more information about error reporting, and the **\<ErrorControl\>** element, see [Config.xml file](usmt-configxml-file.md#errorcontrol), [Log files](usmt-log-files.md), and [XML elements library](usmt-xml-elements-library.md).

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

- [Plan the migration](usmt-plan-your-migration.md).
- [Estimate migration store size](usmt-estimate-migration-store-size.md).
- [User State Migration Tool (USMT) overview articles](usmt-topics.md).
