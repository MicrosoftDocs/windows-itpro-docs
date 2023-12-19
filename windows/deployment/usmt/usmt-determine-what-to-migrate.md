---
title: Determine What to Migrate
description: Determine migration settings for standard or customized for the User State Migration Tool (USMT).
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/19/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Determine what to migrate

By default, User State Migration Tool (USMT) migrates the items listed in [What does USMT migrate?](usmt-what-does-usmt-migrate.md), depending on the migration .xml files you specify. These default settings are often enough for a basic migration.

However, when considering what settings to migrate, you should also consider:

- What settings the user can configure, if any.
- What settings should be standardized.

Many organizations use their migration as an opportunity to create and begin enforcing a better-managed environment. Some of the settings that users can configure on unmanaged computers prior to the migration can be locked on the new, managed computers. For example, standard wallpaper, Internet Explorer security settings, and desktop configuration are some of the items you can choose to standardize.

To reduce complexity and increase standardization, your organization should consider creating a *standard operating environment (SOE)*. An SOE is a combination of hardware and software that you distribute to all users. Creating an SOE means selecting:

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
|[Identify applications settings](usmt-identify-application-settings.md)|Determine which applications you want to migrate and prepare a list of application settings to be migrated.|
|[Identify operating system settings](usmt-identify-operating-system-settings.md)|Use migration to create a new standard environment on each of the destination computers.|
|[Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md)|Determine and locate the following locations:<ul><li>Standard.</li><li>Company-specified.</li><li>Non-standard.</li></ul>of the following items: <ul><li>File types.</li><li>Files.</li><li>Folders.</li><li>Settings.</li></ul> that you want to migrate.|

## Related articles

- [What does USMT migrate?](usmt-what-does-usmt-migrate.md).
