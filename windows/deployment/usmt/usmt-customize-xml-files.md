---
title: Customize USMT XML Files
description: Learn how to customize USMT XML files. Also, learn about the migration XML files that are included with USMT.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/20/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Customize USMT XML files

## Overview

If you want the ScanState and LoadState tools to use any of the migration **.xml** files, specify these files at the command line using the `/i` option. Because the ScanState and LoadState tools need the **.xml** files to control the migration, specify the same set of **.xml** files for both the `ScanState.exe` and `LoadState.exe` commands. However, the `Config.xml` file with the `/config` option doesn't need to be specified, unless some of the migrated files and settings from the store need to be excluded. For example, you might want to migrate the My Documents folder to the store but not to the destination computer. To achieve this scenario, modify the `Config.xml` file and specify the updated file with the `LoadState.exe` command. The `LoadState.exe` command then migrates only the files and settings that you want to migrate.

If you leave out an **.xml** file from the `LoadState.exe` command, all of the data in the store that was migrated with the missing **.xml** files are migrated. However, the migration rules that were specified with the `ScanState.exe` command don't apply. For example, if you leave out an **.xml** file, and it contains a rerouting rule such as:

`MigsysHelperFunction.RelativeMove("c:\data", "%CSIDL_PERSONAL%")`

USMT doesn't reroute the files, and they're migrated to `C:\data`.

To modify the migration, do one or more of the following.

- **Modify the migration .xml files.** If you want to exclude a portion of a component, modify the **.xml** files. For example, to migrate C:\\ but exclude all of the .mp3 files, or to move data to a new location on the destination computer. To modify these files, you must be familiar with the migration rules and syntax. If you want ScanState and LoadState to use these files, specify them at the command line when each command is entered.

- **Create a custom .xml file.** You can also create a custom **.xml** file to migrate settings for another application, or to change the migration behavior to suit your needs. For ScanState and LoadState to use this file, specify them on both command lines.

- **Create and modify a Config.xml file.** Create and modify a `Config.xml` file if you want to exclude an entire component from the migration. For example, you can use a `Config.xml` file to exclude the entire My Documents folder, or exclude the settings for an application. Excluding components using a `Config.xml` file is easier than modifying the migration **.xml** files because you don't need to be familiar with the migration rules and syntax. In addition, using a `Config.xml` file is the only way to exclude the operating system settings from being migrated.

For more information about excluding data, see the [Exclude Files and Settings](usmt-exclude-files-and-settings.md) article.

## Migration .xml files

This section describes the migration **.xml** files that are included with USMT. Each file contains migration rules that control which components are migrated and where they're migrated to on the destination computer.

> [!NOTE]
>
> You can use the asterisk (\*) wildcard character in each of these files. However, you can't use a question mark (?) as a wildcard character.

- **The MigApp.xml file.** Specify this file with both the `ScanState.exe` and `LoadState.exe` commands to migrate application settings.

- **The MigDocs.xml file.** Specify this file with both the ScanState and LoadState tools to migrate all user folders and files that are found by the **MigXmlHelper.GenerateDocPatterns** helper function. This helper function finds user data that resides on the root of any drive and in the Users directory. However, it doesn't find and migrate any application data, program files, or any files in the Windows directory. You can modify the `MigDocs.xml` file.

- **The MigUser.xml file.** Specify this file with both the `ScanState.exe` and `LoadState.exe` commands to migrate user folders, files, and file types. You can modify the `MigUser.xml` file. This file doesn't contain rules that migrate specific user accounts. The only way to specify which user accounts to migrate is on the command line using the ScanState and the LoadState user options.

> [!NOTE]
>
> Don't use the `MigUser.xml` and `MigDocs.xml` files together. For more information, see the [Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md) and [USMT best practices](usmt-best-practices.md) articles.

## Custom .xml files

You can create custom **.xml** files to customize the migration for your unique needs. For example, you might want to create a custom file to migrate a line-of-business application or to modify the default migration behavior. If you want `ScanState.exe` and `LoadState.exe` to use this file, specify it with both commands. For more information, see the [Custom XML examples](usmt-custom-xml-examples.md) article.

## The Config.xml file

The `Config.xml` file is an optional file that you create using the `/genconfig` option with the `ScanState.exe` command. You should create and modify this file if you want to exclude certain components from the migration. In addition, you must create and modify this file if you want to exclude any of the operating system settings from being migrated. The `Config.xml` file format is different from the migration **.xml** files because it doesn't contain any migration rules. It contains only a list of the operating system components, applications, and the user documents that can be migrated. For an example, see the [Config.xml File](usmt-configxml-file.md) article. For this reason, excluding components using the `Config.xml` file is easier than modifying the migration **.xml** files. With the `Config.xml`, you don't need to be familiar with the migration rules and syntax. However, you can't use wildcard characters in a `Config.xml` file.

If you want to include all of the default components, you don't need to create the `Config.xml` file. Alternatively, if you're satisfied with the default migration behavior defined in the `MigApp.xml`, `MigDocs.xml`, and `MigUser.xml` files, and you want to exclude only some components, you can create and modify a `Config.xml` file and leave the other **.xml** files in their original state.

When you run the `ScanState.exe` command with the `/genconfig` option, `ScanState.exe` reads the other **.xml** files that you specify using the `/i` option to create a custom list of components that can be migrated from the computer. This file contains only operating system components, applications, and the user document sections that are in both of the **.xml** files and that are installed on the computer when you run the `ScanState.exe` command with the `/genconfig` option. Therefore, you should create this file on a source computer that contains all of the components, applications, and settings that are present on the destination computers. Creating the file on the source computer ensures that this file contains every component that can be migrated. The components are organized into sections: &lt;Applications&gt;, &lt;WindowsComponents&gt;, and &lt;Documents&gt;. To choose not to migrate a component, change its entry to `migrate="no"`.

After you create this file, you need to specify it only with the `ScanState.exe` command using the `/Config` option for it to affect the migration. However, if additional data that was migrated to the store needs to be excluded, modify the `Config.xml` file and specify the updated file with the `LoadState.exe` command. For example, if you collected the My Documents folder in the store, but you decide that you don't want to migrate the My Documents folder to a destination computer, you can modify the `Config.xml` file to indicate `migrate="no"` before you run the `LoadState.exe` command, and the file aren't be migrated. For more information about the precedence that takes place when excluding data, see the [Exclude files and settings](usmt-exclude-files-and-settings.md) article.

In addition, note the following functionality with the `Config.xml` file:

- If a parent component is removed from the migration in the `Config.xml` file by specifying `migrate="no"`, all of its child components are automatically removed from the migration, even if the child component is set to `migrate="yes"`.

- If you mistakenly have two lines of code for the same component where one line specifies `migrate="no"` and the other line specifies `migrate="yes"`, the component is migrated.

- In USMT, there are several migration policies that can be configured in the `Config.xml` file. For example, you can configure additional **&lt;ErrorControl&gt;**, **&lt;ProfileControl&gt;**, and **&lt;HardLinkStoreControl&gt;** options. For more information, see the [Config.xml File](usmt-configxml-file.md) article.

> [!NOTE]
>
> To exclude a component from the `Config.xml` file, set the **migrate** value to **"no"**. Deleting the XML tag for the component from the `Config.xml` file doesn't exclude the component from your migration.

### Examples

- The following command creates a `Config.xml` file in the current directory, but it doesn't create a store:

    `ScanState.exe /i:MigApp.xml /i:MigDocs.xml /genconfig:Config.xml /v:5`

- The following command creates an encrypted store using the `Config.xml` file and the default migration **.xml** files:

    `ScanState.exe \\server\share\migration\mystore /i:MigApp.xml /i:MigDocs.xml /o /config:Config.xml /v:5 /encrypt /key:"mykey"`

- The following command decrypts the store and migrates the files and settings:

    `LoadState.exe \\server\share\migration\mystore /i:MigApp.xml /i:MigDocs.xml /v:5 /decrypt /key:"mykey"`

## Additional information

- For more information about how to change the files and settings that are migrated, see the [User State Migration Tool (USMT) how-to articles](usmt-how-to.md).
- For more information about each **.xml** element, see the [XML elements library](usmt-xml-elements-library.md) article.
- For answers to common questions, see ".xml files" in the [Frequently asked questions](usmt-faq.yml) article.

## Related articles

- [User State Migration Tool (USMT) command-line syntax](usmt-command-line-syntax.md).
- [USMT resources](usmt-resources.md).
