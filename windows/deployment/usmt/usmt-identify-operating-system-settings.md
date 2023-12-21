---
title: Identify Operating System Settings
description: Identify which system settings you want to migrate, then use the User State Migration Tool (USMT) to select settings and keep the default values for all others.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/21/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Identify operating system settings

When planning for your migration, you should identify which operating system settings you want to migrate and to what extent you want to create a new standard environment on each of the computers. User State Migration Tool (USMT) enables you to migrate select settings and keep the default values for all others. The operating system settings include the following parameters:

- **Appearance**

    The appearance factor includes items such as wallpaper, colors, sounds, and the location of the taskbar.

- **Action**

  The action factor includes items such as:

  - The key-repeat rate.
  - Whether double-clicking a folder opens it in a new window or the same window.
  - Whether single-clicking or double-clicking an item opens it.

- **Internet**

    The Internet factor includes the settings that let you connect to the Internet and control how your browser operates. The settings include items such as your home page URL, favorites, bookmarks, cookies, security settings, and proxy settings. These settings might not be supported in all browsers.

- **Mail**

    The mail factor includes the information that you need to connect to your mail server, your signature file, views, mail rules, local mail, and contacts.

To help determine which settings to migrate, consider any previous migration experiences and the results of any conducted surveys and tests. Also consider the number of help-desk calls related to operating-system settings from the past, and are able to handle in the future. Also decide how much of the new operating-system functionality needs to be taken advantage of.

Settings that should be migrated include:

- Settings that allow users need to get their jobs done.
- Settings that make the work environment comfortable.
- Settings that will reduce help-desk calls after the migration.

Although it's easy to dismiss migrating user preferences, you should consider the factor of users spending time restoring items such as:

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
