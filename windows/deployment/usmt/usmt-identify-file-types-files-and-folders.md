---
title: Identify File Types, Files, and Folders
description: Learn how to identify the file types, files, folders, and settings that you want to migrate when you're planning your migration.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/21/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Identify file types, files, and folders

When planning for your migration, if not using MigDocs.xml, you should identify the file types, files, folders, and settings that you want to migrate. First, you should determine the standard file locations on each computer, such as the **Documents** folder, `C:\Data` , and company-specified locations, such as `\\EngineeringDrafts`. Next, you should determine and locate the non-standard locations. For non-standard locations, consider the following items:

- **File types**: Consider which file types need to be included and excluded from the migration. You can create this list based on common applications used in your organization. Applications normally use specific file name extensions. For example, Microsoft Office Word primarily uses `.doc`, `.docx` and `.dotx` file name extension. However, it also uses other file types, such as templates (`.dot` files), on a less frequent basis.

- **Excluded locations**: Consider the locations on the computer that should be excluded from the migration (for example, `%WINDIR%` and **Program Files**).

- **New locations**: Decide where files should be migrated to on the destination computer, such as the **Documents** folder, a designated folder, or a folder matching the files' name and location on the source computer. For example, shared data might exist on the source machine or documents outside the user profiles on the source system might need to be cleaned up. Identify any data that needs to be redirected to a new location in the Apply phase. Redirection can be accomplished with location modify rules.

Once which files and file types that the end users work with regularly is verified, locate the files and file types. Files might be saved to a single folder or scattered across a drive. A good starting point for finding files types to include is to look at the registered file types on the computer.

To find the registered file types on a computer running a currently supported version of Windows:

1. Right-click the **Start Menu** and select **Settings**.

1. When the **Settings** window opens, select **Apps**.

1. Select **Default apps**.

1. Scroll down and then select **Choose defaults by file type** or **Choose default apps by file type**.

1. In the window that opens, the registered file types are displayed.

For more information about how to change the file types, files, and folders that are migrated when you specify the MigUser.xml file, see [User State Migration Tool (USMT) how-to articles](usmt-how-to.md).

## Related articles

- [Determine what to migrate](usmt-determine-what-to-migrate.md).
