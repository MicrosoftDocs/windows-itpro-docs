---
title: User State Migration Tool (USMT) - Getting Started
description: Plan, collect, and prepare your source computer for migration using the User State Migration Tool (USMT).
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
ms.date: 12/05/2023
---

# Getting started with the User State Migration Tool (USMT)

This article outlines the general process that you should follow to migrate files and settings.

## Step 1: Plan your migration

1. [Plan Your Migration](usmt-plan-your-migration.md). Depending on whether your migration scenario is refreshing or replacing computers, you can choose an online migration or an offline migration using Windows Preinstallation Environment (WinPE) or the files in the Windows.old directory. For more information, see [Common Migration Scenarios](usmt-common-migration-scenarios.md).

1. [Determine What to Migrate](usmt-determine-what-to-migrate.md). Data you might consider migrating includes end-user information, applications settings, operating-system settings, files, folders, and registry keys.

1. Determine where to store data. Depending on the size of your migration store, you can store the data in one of the following locations:

     - Remotely.
     - Locally in a hard-link migration store or on a local external storage device.
     - Directly on the destination computer.

     For more information, see [Choose a Migration Store Type](usmt-choose-migration-store-type.md).

1. Use the `/GenMigXML` command-line option to determine which files are included in your migration, and to determine whether any modifications are necessary. For more information, see [ScanState Syntax](usmt-scanstate-syntax.md)

1. If necessary, modify copies of the `Migration.xml` and `MigDocs.xml` files and create custom .xml files. To modify the migration behavior, such as migrating the **Documents** folder but not the **Music** folder, you can create a custom .xml file or modify the rules in the existing migration .xml files. The document finder, or `MigXmlHelper.GenerateDocPatterns` helper function, can be used to automatically find user documents on a computer without creating extensive custom migration .xml files.

    > [!IMPORTANT]
    >
    > We recommend that you always make and modify copies of the .xml files included in User State Migration Tool (USMT). Never modify the original .xml files.

    You can use the `MigXML.xsd` file to help you write and validate the .xml files. For more information about how to modify these files, see [USMT XML Reference](usmt-xml-reference.md).

1. Create a [Config.xml File](usmt-configxml-file.md) if you want to exclude any components from the migration. To create this file, run the `ScanState.exe` command with the following options:

    - [/genconfig](usmt-scanstate-syntax.md#migration-rule-options).
    - [/i](usmt-scanstate-syntax.md#migration-rule-options) - as arguments specify the .xml files that you plan to use with `ScanState.exe`.

   For example, the following command creates a `Config.xml` file by using the `MigDocs.xml` and `MigApp.xml` files:

    ```cmd
    ScanState.exe /genconfig:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:ScanState.log
    ```

1. Open the `Config.xml` that was generated in the previous step. Review the migration state of each of the components listed in the `Config.xml` file. If necessary, edit the `Config.xml` file  and specify `migrate=no` for any components that you don't want to migrate.

## Step 2: Collect files and settings from the source computer

1. Back up the source computer.

1. Close all applications. If some applications are running when you run the `ScanState.exe` command, USMT might not migrate all of the specified data. For example, if Microsoft Office Outlook is open, USMT might not migrate PST files.

     > [!NOTE]
     >
     > USMT fails if it can't migrate a file or setting unless you specify the `/c` option. When you specify the `/c` option, USMT ignores the errors, and log an error every time that it encounters a file that is being used that USMT didn't migrate. You can use the `<ErrorControl>` section in the `Config.xml` file to specify which errors should be ignored, and which should cause the migration to fail.

1. Run the `ScanState.exe` command on the source computer to collect files and settings. You should specify all of the .xml files that you want the `ScanState.exe` command to use. For example,

     ```cmd
        ScanState.exe \\server\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:ScanState.log
     ```

     > [!NOTE]
     >
     > If the source computer is running Windows 7 or Windows 8, you must run the `ScanState.exe` command in **Administrator** mode. To run in **Administrator** mode, right-click **Command Prompt**, and then select **Run As Administrator**. For more information about how the `ScanState.exe` command processes and stores the data, see [How USMT Works](usmt-how-it-works.md).

1. Run the `UsmtUtils.exe` command with the `/Verify` option to ensure that the store you created isn't corrupted.

## Step 3: Prepare the destination computer and restore files and settings

1. Install the operating system on the destination computer.

1. Install all applications that were on the source computer. Although it isn't always required, we recommend installing all applications on the destination computer before you restore the user state. Installing all applications before restoring user state makes sure that migrated settings are preserved.

     > [!NOTE]
     >
     > The application version that is installed on the destination computer should be the same version as the one on the source computer. USMT doesn't support migrating the settings for an older version of an application to a newer version. The exception for this rule is Microsoft Office. USMT can migrate from an older version of Microsoft Office to a newer version of Microsoft Office.

1. Close all applications. If some applications are running when you run the `LoadState.exe` command, USMT might not migrate all of the specified data. For example, if Microsoft Office Outlook is open, USMT might not migrate PST files.

     > [!NOTE]
     >
     > Use `/c` to continue your migration if errors are encountered, and use the `<ErrorControl>` section in the `Config.xml` file to specify which errors should be ignored, and which errors should cause the migration to fail.

1. Run the `LoadState.exe` command on the destination computer. Specify the same set of .xml files that you specified when you used the `ScanState.exe` command. However, the `Config.xml` file doesn't always need to be specified. The `Config.xml` file only needs to be specified when you wanted to exclude some of the files and settings that you migrated to the store. For example, you might want to migrate the My Documents folder to the store, but not to the destination computer. For example, modify the `Config.xml` file and specify the updated file by using the `LoadState.exe` command. Then, the `LoadState.exe` command migrates only the files and settings that you want to migrate. For more information about how the `LoadState.exe` command processes and migrates data, see [How USMT Works](usmt-how-it-works.md).

    For example, the following command migrates the files and settings:

    ```cmd
    LoadState.exe  \\server\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:LoadState.log
    ```

     > [!NOTE]
     >
     > Run the `LoadState.exe` command in administrator mode. To do this, right-click **Command Prompt**, and then select **Run As Administrator**.

1. Sign out after you run the `LoadState.exe` command. Some settings, such as fonts, wallpaper, and screen saver settings, won't take effect until the next time that the user logs on.
