---
title: Identify File Types, Files, and Folders (Windows 10)
description: Learn how to identify the file types, files, folders, and settings that you want to migrate when you're planning your migration.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Identify file types, files, and folders

When planning for your migration, if not using MigDocs.xml, you should identify the file types, files, folders, and settings that you want to migrate. First, you should determine the standard file locations on each computer, such as **My Documents** , `C:\Data` , and company-specified locations, such as `\\EngineeringDrafts`. Next, you should determine and locate the non-standard locations. For non-standard locations, consider the following items:

- **File types**. Consider which file types need to be included and excluded from the migration. You can create this list based on common applications used in your organization. Applications normally use specific file name extensions. For example, Microsoft Office Word primarily uses `.doc`, `.docx` and `.dotx` file name extension. However, it also uses other file types, such as templates (`.dot` files), on a less frequent basis.

- **Excluded locations**. Consider the locations on the computer that should be excluded from the migration (for example, `%WINDIR%` and **Program Files**).

- **New locations**. Decide where files should be migrated to on the destination computer, such as **My Documents**, a designated folder, or a folder matching the files' name and location on the source computer. For example, you might have shared data on source machine or you might wish to clean up documents outside the user profiles on the source system. Identify any data that needs to be redirected to a new location in the apply phase. Redirection can be accomplished with location modify rules.

Once you've verified which files and file types that the end users work with regularly, you'll need to locate them. Files may be saved to a single folder or scattered across a drive. A good starting point for finding files types to include is to look at the registered file types on the computer.

To find the registered file types on a computer running Windows 7, Windows 8, Windows 10, or Windows 11:

1. Open **Control Panel**
2. Make sure **View by:** is set to **Category** and then select **Programs**.

3. Select **Default Programs**

4. select **Associate a file type or protocol with a program**.

5. On this screen, the registered file types are displayed.

For more information about how to change the file types, files, and folders that are migrated when you specify the MigUser.xml file, see [User State Migration Tool (USMT) how-to topics](usmt-how-to.md).

## Related articles

[Determine what to migrate](usmt-determine-what-to-migrate.md)
