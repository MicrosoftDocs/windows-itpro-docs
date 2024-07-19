---
title: Determine What to Migrate
description: Determine migration settings for standard or customized for the User State Migration Tool (USMT).
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

# Determine what to migrate

By default, User State Migration Tool (USMT) migrates the items listed in [What does USMT migrate?](usmt-what-does-usmt-migrate.md), depending on the migration **.xml** files that are specified. These default settings are often enough for a basic migration.

However, when considering what settings to migrate, also consider:

- What settings the user can configure, if any.
- What settings should be standardized.

Many organizations use their migration as an opportunity to create and begin enforcing a better-managed environment. Some of the settings that users can configure on unmanaged computers prior to the migration can be locked on the new, managed computers. For example, standard wallpaper and desktop configuration are some of the items that can be standardized.

To reduce complexity and increase standardization, the organization should consider creating a *standard operating environment (SOE)*. An SOE is a combination of hardware and software that is distributed to all users. Creating an SOE means selecting:

- A baseline for all computers, including standard hardware drivers.
- Core operating system features.
- Core productivity applications, especially if they are under volume licensing.
- Core utilities.
- A standard set of security features, as outlined in the organization's corporate policy.

Using an SOE can vastly simplify the migration and reduce overall deployment challenges.

## In this section

| Link | Description |
|--- |--- |
|[Identify users](usmt-identify-users.md)|Use command-line options to specify which users to migrate and how they should be migrated.|
|[Identify applications settings](usmt-identify-application-settings.md)|Determine which applications need to be migrated and prepare a list of application settings to be migrated.|
|[Identify operating system settings](usmt-identify-operating-system-settings.md)|Use migration to create a new standard environment on each of the destination computers.|
|[Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md)|For the following items that need to be migrated:<br><ul><li>File types.</li><li>Files.</li><li>Folders.</li><li>Settings.</li></ul> determine where these items might be located. For example:<ul><li>Standard default OS locations.</li><li>Organization-specified locations.</li><li>Non-standard locations.</li></ul>|

## Related articles

- [What does USMT migrate?](usmt-what-does-usmt-migrate.md).
