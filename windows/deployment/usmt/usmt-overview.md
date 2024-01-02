---
title: User State Migration Tool (USMT) overview
description: Learn about using User State Migration Tool (USMT) to streamline and simplify user state migration during large deployments of Windows operating systems.
ms.prod: windows-client
ms.technology: itpro-deploy
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.date: 01/02/2024
ms.topic: overview
ms.collection:
  - highpri
  - tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# User State Migration Tool (USMT) overview

You can use User State Migration Tool (USMT) to streamline and simplify user state migration during large deployments of Windows operating systems. USMT captures user accounts, user files, operating system settings, and application settings, and then migrates them to a new Windows installation. You can use USMT for both PC replacement and PC refresh migrations. For more information, see [Common migration scenarios](usmt-common-migration-scenarios.md).

USMT enables you to do the following actions:

- Configure your migration according to your business needs by using the migration rule (.xml) files to control exactly which files and settings are migrated and how they're migrated. For more information about how to modify these files, see [USMT XML reference](usmt-xml-reference.md).

- Fit your customized migration into your automated deployment process by using the **ScanState** and **LoadState** tools, which control collecting and restoring the user files and settings. For more information, see [User State Migration Tool (USMT) command-line syntax](usmt-command-line-syntax.md).

- Perform offline migrations. You can run migrations offline by using the ScanState command in Windows Preinstallation Environment (WinPE) or you can perform migrations from previous installations of Windows contained in **Windows.old** directories. For more information about migration types, see [Choose a migration store Type](usmt-choose-migration-store-type.md) and [Offline migration reference](offline-migration-reference.md).

## Benefits

USMT provides the following benefits to businesses that are deploying Windows operating systems:

- Safely migrates user accounts, operating system and application settings.
- Lowers the cost of deploying Windows by preserving user state.
- Reduces end-user downtime required to customize desktops and find missing files.
- Reduces help-desk calls.
- Reduces the time needed for the user to become familiar with the new operating system.
- Increases employee satisfaction with the migration experience.

## Limitations

USMT is intended for administrators who are performing large-scale automated deployments. If you're only migrating the user states of a few computers, you can use [PCmover Express](https://go.microsoft.com/fwlink/?linkid=620915). PCmover isn't a free utility. PCmover Express is a tool created by Microsoft's partner, Laplink.

There are some scenarios in which the use of USMT isn't recommended. These scenarios include:

- Migrations that require end-user interaction.
- Migrations that require customization on a machine-by-machine basis.

## Related articles

- [User State Migration Tool (USMT) technical reference](usmt-technical-reference.md).
