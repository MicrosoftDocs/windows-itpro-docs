---
title: What does USMT migrate
description: Learn how User State Migration Tool (USMT) is designed so that an IT engineer can precisely define migrations using the USMT .xml scripting language.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/18/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# What does USMT migrate?

## Default migration scripts

The User State Migration Tool (USMT) is designed so that an IT engineer can precisely define migrations using the USMT **.xml** scripting language. USMT provides the following sample scripts:

- **MigApp.XML** - Rules to migrate application settings.

- **MigDocs.XML** - Rules that use the **MigXmlHelper.GenerateDocPatterns** helper function, which can be used to automatically find user documents on a computer without the need to author extensive custom migration **.xml** files.

- **MigUser.XML** - Rules to migrate user profiles and user data.

  `MigUser.xml` gathers everything in a user's profile and then does a file extension- based search of most of the system for other user data. If data doesn't match either of these criteria, the data isn't migrated. Usually, this file describes a core migration.

  The following data doesn't migrate with `MigUser.xml`:

  - Files outside the user profile that don't match one of the file extensions in `MigUser.xml`.
  - Access control lists (ACLs) for folders outside the user profile.

## User data

This section describes the user data that USMT migrates by default, using the `MigUser.xml` file. It also defines how to migrate access control lists (ACLs).

- **Folders from each user profile.** When the `MigUser.xml` file is specified, USMT migrates everything in a user's profiles including the following folder items:

  - Documents.

  - Videos.

  - Music.

  - Pictures.

  - Desktop files.

  - Start menu.

  - Quick Launch settings.

  - Favorites.

  > [!IMPORTANT]
  >
  > USMT doesn't migrate the Start menu layout. To migrate a user's Start menu, settings must be exported and then imported using the Windows PowerShell cmdlets `Export-StartLayout` and **Import-StartLayout**. For more information, see [USMT common issues](/troubleshoot/windows-client/deployment/usmt-common-issues#usmt-doesnt-migrate-the-start-layout).

- **Folders from the All Users and Public profiles.** When the `MigUser.xml` file is specified, USMT also migrates the following from the **Public** profile in Windows:

  - Shared Documents

  - Shared Video

  - Shared Music

  - Shared desktop files

  - Shared Pictures

  - Shared Start menu

  - Shared Favorites

- **File types.** When the `MigUser.xml` file is specified, the **ScanState** tool searches the fixed drives, collects, and then migrates files with any of the following file extensions:

   `.accdb`, `.ch3`, `.csv`, `.dif`, `.doc*`, `.dot*`, `.dqy`, `.iqy`, `.mcw`, `.mdb*`, `.mpp`, `.one*`, `.oqy`, `.or6`, `.pot*`, `.ppa`, `.pps*`, `.ppt*`, `.pre`, `.pst`, `.pub`, `.qdf`, `.qel`, `.qph`, `.qsd`, `.rqy`, `.rtf`, `.scd`, `.sh3`, `.slk`, `.txt`, `.vl*`, `.vsd`, `.wk*`, `.wpd`, `.wps`, `.wq1`, `.wri`, `.xl*`, `.xla`, `.xlb`, `.xls*`

  > [!NOTE]
  >
  > The asterisk (`*`) stands for zero or more characters.

  > [!NOTE]
  >
  > The OpenDocument extensions (`*.odt`, `*.odp`, `*.ods`) that Microsoft Office applications can use aren't migrated by default.

- **Access control lists.** USMT migrates access control lists (ACLs) for specified files and folders from computers running Windows. For example, if a file named `File1.txt` that is **read-only** for **User1** and **read/write** for **User2** is migrated, these settings will still apply on the destination computer after the migration.

  > [!IMPORTANT]
  >
  > To migrate ACLs, the directory to migrate must be specified in the `MigUser.xml` file. Using file patterns like \*.doc won't migrate a directory. The source ACL information is migrated only when the directory is explicitly specified. For example, `<pattern type="File">c:\test docs</pattern>`.

## Operating-system components

USMT migrates operating-system components to a destination computer. The following components are migrated by default using the manifest files:

- Accessibility settings.

- Address book.

- Command-prompt settings.

- Desktop wallpaper. **¹**

- EFS files.

- Favorites.

- Folder options.

- Fonts.

- Group membership. USMT migrates users' group settings. To view what groups a user belongs to:

  1. Right-clicking on the Start menu and then selecting **Computer Management**.
  1. In the **Computer Management** console, expand **System tools** > **Local Users and Groups** > **Groups**.
  1. Inspect the individual groups in the results pane to see what users belong to what groups.

  The use of a **\<ProfileControl\>** section in the `Config.xml` file is required when running an offline migration.

- Microsoft Open Database Connectivity (ODBC) settings.

- Mouse and keyboard settings.

- Network drive mapping.

- Network printer mapping. **¹**

- Offline files. **¹**

- Phone and modem options. **¹**

- RAS connection and phone book (.pbk) files.

- Regional settings. **¹**

- Remote Access.

- Taskbar settings. **¹**

- User personal certificates (all).

- Windows Mail.

- Windows Media Player. **¹**

- Windows Rights Management.

  **¹** These settings aren't available for an offline migration. For more information, see [Offline migration reference](offline-migration-reference.md).

> [!IMPORTANT]
>
> This list might not be complete. There might be additional components that are migrated.

> [!NOTE]
>
> Some settings, such as fonts, aren't applied by the **LoadState** tool until after the destination computer is restarted. For this reason, restart the destination computer after running the **LoadState** tool.

## Supported applications

Even though it isn't required for all applications, it's good practice to install all applications on the destination computer before restoring the user state. Installing applications before migrating settings helps to ensure application installers don't overwrite settings that were migrated.

> [!NOTE]
>
> The versions of installed applications must match on the source and destination computers. USMT doesn't support migrating the settings of an earlier version of an application to a later version, except for Microsoft Office.

> [!NOTE]
>
> USMT only migrates settings that are modified on the source computer. If an application setting isn't modified from the default on the source computer, the setting might not migrate.

When the `MigApp.xml` file is specified, USMT migrates the settings for specific applications defined in the `MigApp.xml` file. Consult the `MigApp.xml` file for applications are supported.

## What USMT doesn't migrate

The following items are settings that USMT doesn't migrate. If having a problem that isn't listed here, see [Common issues](/troubleshoot/windows-client/deployment/usmt-common-issues).

### Application settings

USMT doesn't migrate the following application settings:

- Settings for Microsoft Store applications.

- Settings from earlier versions of an application. The versions of each application must match on the source and destination computers. USMT doesn't support migrating the settings of an earlier version of an application to a later version, except for Microsoft Office. USMT can migrate from an earlier version of Microsoft Office to a later version.

- Application settings and some operating-system settings when a local account is created. For example, if `/lac` is specified to create a local account on the destination computer, USMT migrates the user data, but doesn't migrate:

  - Some operating system settings - Only some operating-system settings, such as wallpaper and screensaver settings, are migrated.
  - Application settings.

### Operating-System settings

USMT doesn't migrate the following operating-system settings.

- Local printers, hardware-related settings, drivers, passwords, application binary files, synchronization files, DLL files, or other executable files.

- Permissions for shared folders. After migration, any folders that were shared on the source computer must be manually re-shared.

- Files and settings migrating between operating systems with different languages. The operating system of the source computer must match the language of the operating system on the destination computer.

- Customized icons for shortcuts might not migrate.

Also note the following items:

- Run USMT from an account with administrative credentials. Otherwise, some data doesn't migrate. When the **ScanState** and **LoadState** tools are run, the tools must be run in Administrator mode from an account with administrative credentials. If USMT isn't run in Administrator mode, only the user profile that is logged on is included in the migration.

- Use the `/localonly` option to exclude the data from removable drives and network drives mapped on the source computer. For more information about what is excluded when `/localonly` is specified, see [ScanState syntax](usmt-scanstate-syntax.md).

### Start menu layout

USMT doesn't migrate the Start menu layout. To migrate a user's Start menu, settings must be exported and then imported using the Windows PowerShell cmdlets `Export-StartLayout` and **Import-StartLayout**. For more information, see [USMT common issues](/troubleshoot/windows-client/deployment/usmt-common-issues#usmt-doesnt-migrate-the-start-layout).

### User profiles from Active Directory to Microsoft Entra ID

- USMT doesn't support migrating user profiles from Active Directory domain joined devices to Microsoft Entra joined devices.
- USMT doesn't support migrating user profiles from Microsoft Entra joined devices to Active Directory domain joined devices.
- USMT doesn't support migrating user profiles between Microsoft Entra joined devices.
- USMT might work when migrating user profiles between Microsoft Entra hybrid joined devices or between Active Directory domain joined devices and Microsoft Entra hybrid joined devices, but it's not a tested scenario so therefore unsupported.

## Related articles

- [Plan the migration](usmt-plan-your-migration.md).
