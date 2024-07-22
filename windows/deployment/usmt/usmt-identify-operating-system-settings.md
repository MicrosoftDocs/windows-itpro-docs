---
title: Identify Operating System Settings
description: Identify which system settings need to be migrated. The User State Migration Tool (USMT) can then be used to select settings and keep the default values for all others.
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

# Identify operating system settings

When the migration is being planned, which operating system settings need to be migrated should be identified. Additionally, to what extent a new standard environment should be created on each of the computers should also be identified. User State Migration Tool (USMT) enables migrating select settings and keep the default values for all others. The operating system settings include the following parameters:

- **Appearance**

  The appearance factor includes items such as wallpaper, colors, sounds, and the location of the taskbar.

- **Action**

  The action factor includes items such as:

  - The key-repeat rate.
  - Whether double-clicking a folder opens it in a new window or the same window.
  - Whether single-clicking or double-clicking an item opens it.

- **Internet**

  The Internet factor includes the settings needed to connect to the Internet and controls how the browser operates. The settings include items such as the home page URL, favorites, bookmarks, cookies, security settings, and proxy settings. These settings might not be supported in all browsers.

- **Mail**

  The mail factor includes the information needed to connect the mail server, the signature file, views, mail rules, local mail, and contacts. These settings might not be supported in all email applications.

To help determine which settings to migrate, consider any previous migration experiences and the results of any conducted surveys and tests. Also consider the number of help-desk calls related to operating-system settings from the past, and are able to handle in the future. Also decide how much of the new operating-system functionality needs to be taken advantage of.

Settings that should be migrated include:

- Settings that allow users need to get their jobs done.
- Settings that make the work environment comfortable.
- Settings that will reduce help-desk calls after the migration.

Although it's easy to dismiss migrating user preferences, the factor should be considered of users spending time restoring items such as:

- Wallpaper.
- Screen savers.
- Other customizable user-interface features.

Most users don't remember how these settings were applied. Although these items aren't critical to migration success, migrating these items increases user productivity and overall satisfaction of the migration process.

> [!NOTE]
>
> For more information about how to change the operating-system settings that are migrated, see [User State Migration Tool (USMT) how-to articles](usmt-how-to.md).

For information about the operating-system settings that USMT migrates, see [What does USMT migrate?](usmt-what-does-usmt-migrate.md)

## Related articles

- [Determine What to Migrate](usmt-determine-what-to-migrate.md).
