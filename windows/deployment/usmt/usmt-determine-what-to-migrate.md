---
title: Determine What to Migrate (Windows 10)
description: Determine migration settings for standard or customized for the User State Migration Tool (USMT) 10.0.
ms.assetid: 01ae1d13-c3eb-4618-b39d-ee5d18d55761
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Determine What to Migrate

By default, User State Migration Tool (USMT) 10.0 migrates the items listed in [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md), depending on the migration .xml files you specify. These default settings are often enough for a basic migration.

However, when considering what settings to migrate, you should also consider what settings you would like the user to be able to configure, if any, and what settings you would like to standardize. Many organizations use their migration as an opportunity to create and begin enforcing a better-managed environment. Some of the settings that users can configure on unmanaged computers prior to the migration can be locked on the new, managed computers. For example, standard wallpaper, Internet Explorer security settings, and desktop configuration are some of the items you can choose to standardize.

To reduce complexity and increase standardization, your organization should consider creating a *standard operating environment (SOE)*. An SOE is a combination of hardware and software that you distribute to all users. This means selecting a baseline for all computers, including standard hardware drivers; core operating system features; core productivity applications, especially if they are under volume licensing; and core utilities. This environment should also include a standard set of security features, as outlined in the organization’s corporate policy. Using a standard operating environment can vastly simplify the migration and reduce overall deployment challenges.

## In This Section

| Link | Description |
|--- |--- |
|[Identify Users](usmt-identify-users.md)|Use command-line options to specify which users to migrate and how they should be migrated.|
|[Identify Applications Settings](usmt-identify-application-settings.md)|Determine which applications you want to migrate and prepare a list of application settings to be migrated.|
|[Identify Operating System Settings](usmt-identify-operating-system-settings.md)|Use migration to create a new standard environment on each of the destination computers.|
|[Identify File Types, Files, and Folders](usmt-identify-file-types-files-and-folders.md)|Determine and locate the standard, company-specified, and non-standard locations of the file types, files, folders, and settings that you want to migrate.|

## Related topics

[What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)
