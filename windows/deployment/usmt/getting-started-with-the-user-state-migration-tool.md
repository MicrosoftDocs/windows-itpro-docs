---
title: Getting Started with the User State Migration Tool (USMT) (Windows 10)
description: Getting Started with the User State Migration Tool (USMT)
ms.assetid: 506ff1d2-94b8-4460-8672-56aad963504b
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Getting Started with the User State Migration Tool (USMT)
This topic outlines the general process that you should follow to migrate files and settings.

## In this Topic
-   [Step 1: Plan Your Migration](#step-1-plan-your-migration)

-   [Step 2: Collect files and settings from the source computer](#step-2-collect-files-and-settings-from-the-source-computer)

-   [Step 3: Prepare the destination computer and restore files and settings](#step-3-prepare-the-destination-computer-and-restore-files-and-settings)

## Step 1: Plan your migration
1.  [Plan Your Migration](usmt-plan-your-migration.md). Depending on whether your migration scenario is refreshing or replacing computers, you can choose an online migration or an offline migration using Windows Preinstallation Environment (WinPE) or the files in the Windows.old directory. For more information, see [Common Migration Scenarios](usmt-common-migration-scenarios.md).

2.  [Determine What to Migrate](usmt-determine-what-to-migrate.md). Data you might consider migrating includes end-user information, applications settings, operating-system settings, files, folders, and registry keys.

3.  Determine where to store data. Depending on the size of your migration store, you can store the data remotely, locally in a hard-link migration store or on a local external storage device, or directly on the destination computer. For more information, see [Choose a Migration Store Type](usmt-choose-migration-store-type.md).

4.  Use the **/GenMigXML** command-line option to determine which files will be included in your migration, and to determine whether any modifications are necessary. For more information see [ScanState Syntax](usmt-scanstate-syntax.md)

5.  Modify copies of the Migration.xml and MigDocs.xml files and create custom .xml files, if it is required. To modify the migration behavior, such as migrating the **Documents** folder but not the **Music** folder, you can create a custom .xml file or modify the rules in the existing migration .xml files. The document finder, or **MigXmlHelper.GenerateDocPatterns** helper function, can be used to automatically find user documents on a computer without creating extensive custom migration .xml files.

    **Important**  
    We recommend that you always make and modify copies of the .xml files included in User State Migration Tool (USMT) 10.0. Never modify the original .xml files.
    
    You can use the MigXML.xsd file to help you write and validate the .xml files. For more information about how to modify these files, see [USMT XML Reference](usmt-xml-reference.md).

6.  Create a [Config.xml File](usmt-configxml-file.md) if you want to exclude any components from the migration. To create this file, use the [ScanState Syntax](usmt-scanstate-syntax.md) option together with the other .xml files when you use the **ScanState** command. For example, the following command creates a Config.xml file by using the MigDocs and MigApp.xml files:

    `scanstate /genconfig:config.xml /i:migdocs.xml /i:migapp.xml /v:13 /l:scanstate.log`

7.  Review the migration state of the components listed in the Config.xml file, and specify `migrate=no` for any components that you do not want to migrate.

## Step 2: Collect files and settings from the source computer
1.  Back up the source computer.

2.  Close all applications. If some applications are running when you run the **ScanState** command, USMT might not migrate all of the specified data. For example, if Microsoft® Office Outlook® is open, USMT might not migrate PST files.

    **Note**  
    USMT will fail if it cannot migrate a file or setting unless you specify the **/C** option. When you specify the **/C** option, USMT will ignore the errors, and log an error every time that it encounters a file that is being used that USMT did not migrate. You can use the **&lt;ErrorControl&gt;** section in the Config.xml file to specify which errors should be ignored, and which should cause the migration to fail.

3.  Run the **ScanState** command on the source computer to collect files and settings. You should specify all of the .xml files that you want the **ScanState** command to use. For example,

    `scanstate \\server\migration\mystore /config:config.xml /i:migdocs.xml /i:migapp.xml /v:13 /l:scan.log`

    **Note**  
    If the source computer is running Windows 7, or Windows 8, you must run the **ScanState** command in **Administrator** mode. To run in **Administrator** mode, right-click **Command Prompt**, and then click **Run As Administrator**. If the source computer is running Windows XP, you must run the **ScanState** command from an account that has administrative credentials. For more information about the how the **ScanState** command processes and stores the data, see [How USMT Works](usmt-how-it-works.md).

4.  Run the **USMTUtils** command with the **/Verify** option to ensure that the store you created is not corrupted.

## Step 3: Prepare the destination computer and restore files and settings
1.  Install the operating system on the destination computer.

2.  Install all applications that were on the source computer. Although it is not always required, we recommend installing all applications on the destination computer before you restore the user state. This makes sure that migrated settings are preserved.

    **Note**  
    The application version that is installed on the destination computer should be the same version as the one on the source computer. USMT does not support migrating the settings for an older version of an application to a newer version. The exception to this is Microsoft® Office, which USMT can migrate from an older version to a newer version.

3.  Close all applications. If some applications are running when you run the **LoadState** command, USMT might not migrate all of the specified data. For example, if Microsoft Office Outlook is open, USMT might not migrate PST files.

    **Note**  
    Use **/C** to continue your migration if errors are encountered, and use the **&lt;ErrorControl&gt;** section in the Config.xml file to specify which errors should be ignored, and which errors should cause the migration to fail.

4.  Run the **LoadState** command on the destination computer. Specify the same set of .xml files that you specified when you used the **ScanState** command. However, you do not have to specify the Config.xml file, unless you want to exclude some of the files and settings that you migrated to the store. For example, you might want to migrate the My Documents folder to the store, but not to the destination computer. To do this, modify the Config.xml file and specify the updated file by using the **LoadState** command. Then, the **LoadState** command will migrate only the files and settings that you want to migrate. For more information about the how the **LoadState** command processes and migrates data, see [How USMT Works](usmt-how-it-works.md).

    For example, the following command migrates the files and settings:

    `loadstate \\server\migration\mystore /config:config.xml /i:migdocs.xml /i:migapp.xml /v:13 /l:load.log`

    **Note**  
    Run the **LoadState** command in administrator mode. To do this, right-click **Command Prompt**, and then click **Run As Administrator**.

5.  Log off after you run the **LoadState** command. Some settings (for example, fonts, wallpaper, and screen saver settings) will not take effect until the next time that the user logs on.
