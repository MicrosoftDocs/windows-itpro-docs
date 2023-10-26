---
title: What does USMT migrate (Windows 10)
description: Learn how User State Migration Tool (USMT) 10.0 is designed so that an IT engineer can precisely define migrations using the USMT .xml scripting language.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/23/2022
ms.topic: article
ms.technology: itpro-deploy
---

# What does USMT migrate?

## Default migration scripts

The User State Migration Tool (USMT) 10.0 is designed so that an IT engineer can precisely define migrations using the USMT .xml scripting language. USMT provides the following sample scripts:

- **MigApp.XML** - Rules to migrate application settings.

- **MigDocs.XML** - Rules that use the **MigXmlHelper.GenerateDocPatterns** helper function, which can be used to automatically find user documents on a computer without the need to author extensive custom migration .xml files.

- **MigUser.XML** - Rules to migrate user profiles and user data.

  `MigUser.xml` gathers everything in a user's profile and then does a file extension- based search of most of the system for other user data. If data doesn't match either of these criteria, the data won't be migrated. Usually, this file describes a core migration.

  The following data doesn't migrate with `MigUser.xml`:

  - Files outside the user profile that don't match one of the file extensions in `MigUser.xml`.
  - Access control lists (ACLs) for folders outside the user profile.

## User data

This section describes the user data that USMT migrates by default, using the `MigUser.xml` file. It also defines how to migrate access control lists (ACLs).

- **Folders from each user profile.** When you specify the `MigUser.xml` file, USMT migrates everything in a user's profiles including the following items:

  - My Documents

  - My Video

  - My Music

  - My Pictures

  - Desktop files

  - Start menu

  - Quick Launch settings

  - Favorites

  > [!IMPORTANT]
  > Starting in Windows 10, version 1607 the USMT does not migrate the Start menu layout. To migrate a user's Start menu, you must export and then import settings using the Windows PowerShell cmdlets **Export-StartLayout** and **Import-StartLayout**. For more information, see [USMT common issues](/troubleshoot/windows-client/deployment/usmt-common-issues#usmt-doesnt-migrate-the-start-layout).

- **Folders from the All Users and Public profiles.** When you specify the `MigUser.xml` file, USMT also migrates the following from the **Public** profile in Windows Vista, Windows 7, Windows 8, or Windows 10:

  - Shared Documents

  - Shared Video

  - Shared Music

  - Shared desktop files

  - Shared Pictures

  - Shared Start menu

  - Shared Favorites

- **File types.** When you specify the `MigUser.xml` file, the **ScanState** tool searches the fixed drives, collects, and then migrates files with any of the following file extensions:

   `.accdb`, `.ch3`, `.csv`, `.dif`, `.doc*`, `.dot*`, `.dqy`, `.iqy`, `.mcw`, `.mdb*`, `.mpp`, `.one*`, `.oqy`, `.or6`, `.pot*`, `.ppa`, `.pps*`, `.ppt*`, `.pre`, `.pst`, `.pub`, `.qdf`, `.qel`, `.qph`, `.qsd`, `.rqy`, `.rtf`, `.scd`, `.sh3`, `.slk`, `.txt`, `.vl*`, `.vsd`, `.wk*`, `.wpd`, `.wps`, `.wq1`, `.wri`, `.xl*`, `.xla`, `.xlb`, `.xls*`

  > [!NOTE]
  > The asterisk (`*`) stands for zero or more characters.

  > [!NOTE]
  > The OpenDocument extensions (`*.odt`, `*.odp`, `*.ods`) that Microsoft Office applications can use aren't migrated by default.

- **Access control lists.** USMT migrates access control lists (ACLs) for specified files and folders from computers running both Windows® XP and Windows Vista. For example, if you migrate a file named `File1.txt` that is **read-only** for **User1** and **read/write** for **User2**, these settings will still apply on the destination computer after the migration.

  > [!IMPORTANT]
  > To migrate ACLs, you must specify the directory to migrate in the MigUser.xml file. Using file patterns like \*.doc will not migrate a directory. The source ACL information is migrated only when you explicitly specify the directory. For example, `<pattern type="File">c:\test docs</pattern>`.

## Operating-system components

USMT migrates operating-system components to a destination computer from computers running Windows 7 and Windows 8

The following components are migrated by default using the manifest files:

- Accessibility settings

- Address book

- Command-prompt settings

- Desktop wallpaper **¹**

- EFS files

- Favorites

- Folder options

- Fonts

- Group membership. USMT migrates users' group settings. The groups to which a user belongs can be found by right-clicking **My Computer** on the Start menu and then selecting **Manage**. When running an offline migration, the use of a **&lt;ProfileControl&gt;** section in the `Config.xml` file is required.

- Windows Internet Explorer® settings **¹**

- Microsoft® Open Database Connectivity (ODBC) settings

- Mouse and keyboard settings

- Network drive mapping

- Network printer mapping **¹**

- Offline files **¹**

- Phone and modem options **¹**

- RAS connection and phone book (.pbk) files

- Regional settings **¹**

- Remote Access

- Taskbar settings **¹**

- User personal certificates (all)

- Windows Mail

- Windows Media Player **¹**

- Windows Rights Management

  **¹** These settings aren't available for an offline migration. For more information, see [Offline migration reference](offline-migration-reference.md).

> [!IMPORTANT]
> This list may not be complete. There may be additional components that are migrated.

> [!NOTE]
> Some settings, such as fonts, aren't applied by the **LoadState** tool until after the destination computer has been restarted. For this reason, restart the destination computer after you run the **LoadState** tool.

## Supported applications

Even though it's not required for all applications, it's good practice to install all applications on the destination computer before restoring the user state. Installing applications before migrating settings helps to ensure that migrated settings aren't overwritten by the application installers.

> [!NOTE]
> The versions of installed applications must match on the source and destination computers. USMT does not support migrating the settings of an earlier version of an application to a later version, except for Microsoft Office.

> [!NOTE]
> USMT migrates only the settings that have been used or modified by the user. If there is an application setting on the source computer that was not touched by the user, the setting may not migrate.

When you specify the `MigApp.xml` file, USMT migrates the settings for the following applications:

|Product|Version|
|--- |--- |
|Adobe Acrobat Reader|9|
|AOL Instant Messenger|6.8|
|Adobe Creative Suite|2|
|Adobe Photoshop CS|8, 9|
|Adobe ImageReady CS||
|Apple iTunes|6, 7, 8|
|Apple QuickTime Player|5, 6, 7|
|Apple Safari|3.1.2|
|Google Chrome|beta|
|Google Picasa|3|
|Google Talk|beta|
|IBM Lotus 1-2-3|9|
|IBM Lotus Notes|6, 7, 8|
|IBM Lotus Organizer|5|
|IBM Lotus WordPro|9.9|
|Intuit Quicken Deluxe|2009|
|Money Plus Business|2008|
|Money Plus Home|2008|
|Mozilla Firefox|3|
|Microsoft Office|2003, 2007, 2010|
|Microsoft Office Access®|2003, 2007, 2010|
|Microsoft Office Excel®|2003, 2007, 2010|
|Microsoft Office FrontPage®|2003, 2007, 2010|
|Microsoft Office OneNote®|2003, 2007, 2010|
|Microsoft Office Outlook®|2003, 2007, 2010|
|Microsoft Office PowerPoint®|2003, 2007, 2010|
|Microsoft Office Publisher|2003, 2007, 2010|
|Microsoft Office Word|2003, 2007, 2010|
|Opera Software Opera|9.5|
|Microsoft Outlook Express|(only mailbox file)|
|Microsoft Project|2003, 2007|
|Microsoft Office Visio®|2003, 2007|
|RealPlayer Basic|11|
|Sage Peachtree|2009|
|Skype|3.8|
|Windows Live Mail|12, 14|
|Windows Live Messenger|8.5, 14|
|Windows Live MovieMaker|14|
|Windows Live Photo Gallery|12, 14|
|Windows Live Writer|12, 14|
|Windows Mail|(Windows 7 and 8)|
|Microsoft Works|9|
|Yahoo Messenger|9|
|Microsoft Zune™ Software|3|

## What USMT doesn't migrate

The following items are settings that USMT doesn't migrate. If you're having a problem that isn't listed here, see [Common issues](/troubleshoot/windows-client/deployment/usmt-common-issues).

### Application settings

USMT doesn't migrate the following application settings:

- Settings from earlier versions of an application. The versions of each application must match on the source and destination computers. USMT doesn't support migrating the settings of an earlier version of an application to a later version, except for Microsoft Office. USMT can migrate from an earlier version of Microsoft Office to a later version.

- Application settings and some operating-system settings when a local account is created. For example, if you run `/lac` to create a local account on the destination computer, USMT will migrate the user data, but only some of the operating-system settings, such as wallpaper and screensaver settings, and no application settings will migrate.

- Microsoft Project settings, when migrating from Office 2003 to Office 2007 system.

- ICQ Pro settings, if ICQ Pro is installed in a different location on the destination computer. To successfully migrate the settings of ICQ Pro, you must install ICQ Pro in the same location on the destination computer as it was on the source computer. Otherwise, after you run the **LoadState** tool, the application won't start. You may encounter problems when:

  - You change the default installation location on 32-bit destination computers.

  - You attempt to migrate from a 32-bit computer to a 64-bit computer. Attempting to migrate settings between different architectures doesn't work because the ICQ Pro default installation directory is different on the two types of computers. When you install ICQ Pro on a 32-bit computer, the default location is `C:\Program Files\...`. The ICQ Pro default installation directory on an x64-based computer, however, is `C:\Program Files (x86)\...`.

### Operating-System settings

USMT doesn't migrate the following operating-system settings.

- Local printers, hardware-related settings, drivers, passwords, application binary files, synchronization files, DLL files, or other executable files.

- Permissions for shared folders. After migration, you must manually re-share any folders that were shared on the source computer.

- Files and settings migrating between operating systems with different languages. The operating system of the source computer must match the language of the operating system on the destination computer.

- Customized icons for shortcuts may not migrate.

You should also note the following items:

- You should run USMT from an account with administrative credentials. Otherwise, some data won't migrate. When running the **ScanState** and **LoadState** tools, you must run the tools in Administrator mode from an account with administrative credentials. If you don't run USMT in Administrator mode, only the user profile that is logged on will be included in the migration.

- You can use the `/localonly` option to exclude the data from removable drives and network drives mapped on the source computer. For more information about what is excluded when you specify `/localonly`, see [ScanState syntax](usmt-scanstate-syntax.md).

### Start menu layout

Starting in Windows 10, version 1607 the USMT doesn't migrate the Start menu layout. To migrate a user's Start menu, you must export and then import settings using the Windows PowerShell cmdlets **Export-StartLayout** and **Import-StartLayout**. For more information, see [USMT common issues](/troubleshoot/windows-client/deployment/usmt-common-issues#usmt-doesnt-migrate-the-start-layout).

<a name='user-profiles-from-active-directory-to-azure-active-directory'></a>

### User profiles from Active Directory to Microsoft Entra ID

USMT doesn't support migrating user profiles from Active Directory to Microsoft Entra ID.

## Related articles

[Plan your migration](usmt-plan-your-migration.md)
