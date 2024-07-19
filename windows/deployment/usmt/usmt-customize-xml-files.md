---
title: Customize USMT XML Files
description: Learn how to customize USMT XML files. Also, learn about the migration XML files that are included with USMT.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Customize USMT XML files

## Overview

To use any of the migration **.xml** files with the **ScanState** and **LoadState** tools, specify these files at the command line using the `/i` option. Because the **ScanState** and **LoadState** tools need the **.xml** files to control the migration, specify the same set of **.xml** files for both the `ScanState.exe` and `LoadState.exe` commands. However, the `Config.xml` file with the `/config` option doesn't need to be specified, unless some of the migrated files and settings from the store need to be excluded. For example, to migrate the **Documents** folder to the store but not to the destination computer. To achieve this scenario, modify the `Config.xml` file and specify the updated file with the `LoadState.exe` command. The `LoadState.exe` command then only migrates the desired files and settings.

If an **.xml** file is left out from the `LoadState.exe` command, all of the data in the store that was migrated with the missing **.xml** files are migrated. However, the migration rules that were specified with the `ScanState.exe` command don't apply. For example, if an **.xml** file is left out, and it contains a rerouting rule such as:

`MigsysHelperFunction.RelativeMove("c:\data", "%CSIDL_PERSONAL%")`

USMT doesn't reroute the files, and they're migrated to `C:\data`.

To modify the migration, do one or more of the following.

- **Modify the migration .xml files.** To exclude a portion of a component, modify the **.xml** files. For example, to migrate C:\\ but exclude all of the **.mp3** files, or to move data to a new location on the destination computer. To modify these files, familiarity with the migration rules and syntax is a must. For **ScanState** and **LoadState** to use these files, specify them at the command line when each command is entered.

- **Create a custom .xml file.** A custom **.xml** file can also be created to migrate settings for another application, or to change the migration behavior to suit the organization's needs. For **ScanState** and **LoadState** to use this file, specify them on both command lines.

- **Create and modify a Config.xml file.** Create and modify a `Config.xml` file to exclude an entire component from the migration. For example, a `Config.xml` file can be used to exclude the entire **Documents** folder, or exclude the settings for an application. Excluding components using a `Config.xml` file is easier than modifying the migration **.xml** files because familiarity with the migration rules and syntax isn't needed. In addition, using a `Config.xml` file is the only way to exclude the operating system settings from being migrated.

For more information about excluding data, see the [Exclude Files and Settings](usmt-exclude-files-and-settings.md) article.

## Migration .xml files

This section describes the migration **.xml** files that are included with USMT. Each file contains migration rules that control which components are migrated and where they're migrated to on the destination computer.

> [!NOTE]
>
> The asterisk (\*) wildcard character can be used in each of these files. However, a question mark (?) can't be used as a wildcard character.

- **The MigApp.xml file.** Specify this file with both the `ScanState.exe` and `LoadState.exe` commands to migrate application settings.

- **The MigDocs.xml file.** Specify this file with both the **ScanState** and **LoadState** tools to migrate all user folders and files that are found by the **MigXmlHelper.GenerateDocPatterns** helper function. This helper function finds user data that resides on the root of any drive and in the Users directory. However, it doesn't find and migrate any application data, program files, or any files in the Windows directory. The `MigDocs.xml` file can be modified.

- **The MigUser.xml file.** Specify this file with both the `ScanState.exe` and `LoadState.exe` commands to migrate user folders, files, and file types. The `MigUser.xml` file can be modified. This file doesn't contain rules that migrate specific user accounts. The only way to specify which user accounts to migrate is on the command line by using the [ScanState User options](usmt-scanstate-syntax.md#user-options) and the [LoadState User options](usmt-loadstate-syntax.md#user-options).

> [!NOTE]
>
> Don't use the `MigUser.xml` and `MigDocs.xml` files together. For more information, see the [Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md) and [USMT best practices](usmt-best-practices.md) articles.

## Custom .xml files

Custom **.xml** files can be created to customize the migration for the organization's unique needs. For example, a custom **.xml** file can be created to migrate a line-of-business application or to modify the default migration behavior. For `ScanState.exe` and `LoadState.exe` to use this file, specify it with both commands. For more information, see the [Custom XML examples](usmt-custom-xml-examples.md) article.

## The Config.xml file

The `Config.xml` file is an optional file that is created using the `/genconfig` option with the `ScanState.exe` command. This file should be created and modified to exclude certain components from the migration. In addition, this file must be created and modified to exclude any of the operating system settings from being migrated. The `Config.xml` file format is different from the migration **.xml** files because it doesn't contain any migration rules. It contains only a list of the operating system components, applications, and the user documents that can be migrated. For an example, see the [Config.xml File](usmt-configxml-file.md) article. For this reason, excluding components using the `Config.xml` file is easier than modifying the migration **.xml** files. With the `Config.xml`, familiarity with the migration rules and syntax isn't. However, wildcard characters can't be used in a `Config.xml` file.

To include all of the default components, a `Config.xml` file doesn't need to be created. Alternatively, if the default migration behavior defined in the `MigApp.xml`, `MigDocs.xml`, and `MigUser.xml` files are satisfactory, and only some components need to be excluded, a `Config.xml` file can be created. The other **.xml** files can be left in their original state.

When the `ScanState.exe` command is run with the `/genconfig` option, `ScanState.exe` reads the other **.xml** files that are specified using the `/i` option to create a custom list of components that can be migrated from the computer. This file contains only operating system components, applications, and the user document sections that are in both of the **.xml** files and that are installed on the computer when the `ScanState.exe` command is run with the `/genconfig` option. Therefore, this file should be created on a source computer that contains all of the components, applications, and settings that are present on the destination computers. Creating the file on the source computer ensures that this file contains every component that can be migrated. The components are organized into sections: \<Applications\>, \<WindowsComponents\>, and \<Documents\>. To choose not to migrate a component, change its entry to `migrate="no"`.

After this file is created, it only needs to be specified with the `ScanState.exe` command using the `/Config` option for it to affect the migration. However, if additional data that was migrated to the store needs to be excluded, modify the `Config.xml` file and specify the updated file with the `LoadState.exe` command. For example, if the **Documents** folder is collected in the store, but the **Documents** folder doesn't need to be migrated to a destination computer, the `Config.xml` file can be modified to indicate `migrate="no"` before the `LoadState.exe` command runs, and the file aren't be migrated. For more information about the precedence that takes place when excluding data, see the [Exclude files and settings](usmt-exclude-files-and-settings.md) article.

In addition, note the following functionality with the `Config.xml` file:

- If a parent component is removed from the migration in the `Config.xml` file by specifying `migrate="no"`, all of its child components are automatically removed from the migration, even if the child component is set to `migrate="yes"`.

- If mistakenly two lines of code exist for the same component where one line specifies `migrate="no"` and the other line specifies `migrate="yes"`, the component is migrated.

- In USMT, there are several migration policies that can be configured in the `Config.xml` file. For example, additional **\<ErrorControl\>**, **\<ProfileControl\>**, and **\<HardLinkStoreControl\>** options can be configured. For more information, see the [Config.xml File](usmt-configxml-file.md) article.

> [!NOTE]
>
> To exclude a component from the `Config.xml` file, set the **migrate** value to **"no"**. Deleting the XML tag for the component from the `Config.xml` file doesn't exclude the component from the migration.

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
