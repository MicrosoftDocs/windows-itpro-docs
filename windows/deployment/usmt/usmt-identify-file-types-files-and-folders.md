---
title: Identify File Types, Files, and Folders
description: Identify the file types, files, folders, and settings that need to be migrated when planning the migration.
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

# Identify file types, files, and folders

When a migration is planned and `MigDocs.xml` isn't being used, the file types, files, folders, and settings that need to be migrated should be identified. First, the standard file locations on each computer, such as the **Documents** folder, `C:\Data` , and organization-specified locations, such as `\\EngineeringDrafts`, should be determined. Next, non-standard locations should be determined and located. For non-standard locations, consider the following items:

- **File types**: Consider which file types need to be included and excluded from the migration. This list can be created based on common applications used in the organization. Applications normally use specific file name extensions. For example, Microsoft Office Word primarily uses `.doc`, `.docx` and `.dotx` file name extension. However, it also uses other file types, such as templates (`.dot` files), on a less frequent basis.

- **Excluded locations**: Consider the locations on the computer that should be excluded from the migration (for example, `%WINDIR%` and **Program Files**).

- **New locations**: Decide where files should be migrated to on the destination computer, such as the **Documents** folder, a designated folder, or a folder matching the files' name and location on the source computer. For example, shared data might exist on the source machine or documents outside the user profiles on the source system might need to be cleaned up. Identify any data that needs to be redirected to a new location in the Apply phase. Redirection can be accomplished with location modify rules.

Once which files and file types that the end users work with regularly is verified, locate the files and file types. Files might be saved to a single folder or scattered across a drive. A good starting point for finding files types to include is to look at the registered file types on the computer.

To find the registered file types on a computer running a currently supported version of Windows:

1. Right-click the **Start Menu** and select **Settings**.

1. When the **Settings** window opens, select **Apps**.

1. Select **Default apps**.

1. Scroll down and then select **Choose defaults by file type** or **Choose default apps by file type**.

1. In the window that opens, the registered file types are displayed.

For more information about how to change the file types, files, and folders that are migrated when the `MigUser.xml` file is specified, see [User State Migration Tool (USMT) how-to articles](usmt-how-to.md).

## Related articles

- [Determine what to migrate](usmt-determine-what-to-migrate.md).
