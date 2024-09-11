---
title: User State Migration Tool (USMT) - Getting Started
description: Plan, collect, and prepare the source computer for migration using the User State Migration Tool (USMT).
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 08/30/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Getting started with the User State Migration Tool (USMT)

This article outlines the general process to follow to migrate files and settings.

## Step 1: Plan the migration

1. [Plan The Migration](usmt-plan-your-migration.md). Depending on whether the migration scenario is refreshing or replacing computers, an online migration or an offline migration can be chosen. Offline migrations can use either Windows Preinstallation Environment (WinPE) or the files in the **Windows.old** directory. For more information, see [Common Migration Scenarios](usmt-common-migration-scenarios.md).

1. [Determine What to Migrate](usmt-determine-what-to-migrate.md). Data to consider migrating includes end-user information, applications settings, operating-system settings, files, folders, and registry keys.

1. Determine where to store data. Depending on the size of the migration store, data can be stored in one of the following locations:

     - Remotely.
     - Locally in a hard-link migration store or on a local external storage device.
     - Directly on the destination computer.

     For more information, see [Choose a Migration Store Type](usmt-choose-migration-store-type.md).

1. Use the `/GenMigXML` command-line option to determine which files are included in the migration, and to determine whether any modifications are necessary. For more information, see [ScanState Syntax](usmt-scanstate-syntax.md)

1. If necessary, modify copies of the `Migration.xml` and `MigDocs.xml` files and create custom **.xml** files. To modify the migration behavior, such as migrating the **Documents** folder but not the **Music** folder, custom **.xml** file can be created or modify the rules in the existing migration **.xml** files. The document finder, or `MigXmlHelper.GenerateDocPatterns` helper function, can be used to automatically find user documents on a computer without creating extensive custom migration **.xml** files.

    > [!IMPORTANT]
    >
    > Microsoft recommends to always make copies of the **.xml** files included in User State Migration Tool (USMT) and then modify the copies. Never modify the original **.xml** files.

    The `MigXML.xsd` file can be used to help write and validate the **.xml** files. For more information about how to modify these files, see [USMT XML Reference](usmt-xml-reference.md).

1. Create a [Config.xml File](usmt-configxml-file.md) if to exclude any components from the migration. To create this file, run the `ScanState.exe` command with the following options:

    - [/genconfig](usmt-scanstate-syntax.md#migration-rule-options).
    - [/i](usmt-scanstate-syntax.md#migration-rule-options) - as arguments specify the **.xml** files that are being used with `ScanState.exe`.

   For example, the following command creates a `Config.xml` file by using the `MigDocs.xml` and `MigApp.xml` files:

    ```cmd
    ScanState.exe /genconfig:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:ScanState.log
    ```

1. Open the `Config.xml` that was generated in the previous step. Review the migration state of each of the components listed in the `Config.xml` file. If necessary, edit the `Config.xml` file  and specify `migrate=no` for any components that don't need to be migrated.

## Step 2: Collect files and settings from the source computer

1. Back up the source computer.

1. Close all applications. If some applications are running when the `ScanState.exe` command is run, USMT might not migrate all of the specified data. For example, if Microsoft Office Outlook is open, USMT might not migrate PST files.

     > [!NOTE]
     >
     > USMT fails if it can't migrate a file or setting unless the `/c` option is specified. When the `/c` option is specified, USMT ignores the errors, and logs an error every time that it encounters a file that is being used that USMT didn't migrate. The `<ErrorControl>` section in the `Config.xml` file can be used to specify which errors should be ignored, and which should cause the migration to fail.

1. To collect files and settings, run the `ScanState.exe` command on the source computer. All of the **.xml** files that the `ScanState.exe` command needs to use should be specified. For example,

     ```cmd
     ScanState.exe \\server\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:ScanState.log
     ```

     > [!NOTE]
     >
     > The `ScanState.exe` command must be run in **Administrator** mode on the source computer. To run in **Administrator** mode, right-click **Command Prompt**, and then select **Run As Administrator**. For more information about how the `ScanState.exe` command processes and stores the data, see [How USMT Works](usmt-how-it-works.md).

1. To ensure that the created store isn't corrupted, run the `UsmtUtils.exe` command with the `/Verify` option.

## Step 3: Prepare the destination computer and restore files and settings

1. Install the operating system on the destination computer.

1. Install all applications that were on the source computer. Although it isn't always required, Microsoft recommends installing all applications on the destination computer before restoring the user state. Installing all applications before restoring user state makes sure that migrated settings are preserved.

     > [!NOTE]
     >
     > The application version that is installed on the destination computer should be the same version as the one on the source computer. USMT doesn't support migrating the settings for an older version of an application to a newer version. The exception for this rule is Microsoft Office. USMT can migrate from an older version of Microsoft Office to a newer version of Microsoft Office.

1. Close all applications. If some applications are running when the `LoadState.exe` command runs, USMT might not migrate all of the specified data. For example, if Microsoft Office Outlook is open, USMT might not migrate PST files.

     > [!NOTE]
     >
     > Use `/c` to continue the migration if errors are encountered. Use the `<ErrorControl>` section in the `Config.xml` file to specify which errors should be ignored, and which errors should cause the migration to fail.

1. Run the `LoadState.exe` command on the destination computer. Specify the same set of **.xml** files that were specified when the `ScanState.exe` command was used. However, the `Config.xml` file doesn't always need to be specified. The `Config.xml` file only needs to be specified to exclude some of the files and settings that were migrated to the store. For example, the **Documents** folder was migrated to the store, but doesn't need to be migrated to the destination computer. For example, modify the `Config.xml` file and specify the updated file by using the `LoadState.exe` command. Then, the `LoadState.exe` command migrates only the files and settings that need to be migrated. For more information about how the `LoadState.exe` command processes and migrates data, see [How USMT Works](usmt-how-it-works.md).

    For example, the following command migrates the files and settings:

    ```cmd
    LoadState.exe  \\server\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:LoadState.log
    ```

     > [!NOTE]
     >
     > Run the `LoadState.exe` command in administrator mode. To do this, right-click **Command Prompt**, and then select **Run As Administrator**.

1. Sign out after running the `LoadState.exe` command. Some settings, such as fonts, wallpaper, and screen saver settings, won't take effect until the next time that the user logs on.
