---
title: User State Migration Tool (USMT) overview
description: Learn about using User State Migration Tool (USMT) to streamline and simplify user state migration during large deployments of Windows operating systems.
ms.prod: windows-client
ms.technology: itpro-deploy
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.date: 01/03/2024
ms.topic: overview
ms.collection:
  - highpri
  - tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# User State Migration Tool (USMT) overview

The User State Migration Tool (USMT) can be used to streamline and simplify user state migration during large deployments of Windows operating systems. USMT captures user accounts, user files, operating system settings, and application settings, and then migrates them to a new Windows installation. USMT can be used for both PC replacement and PC refresh migrations. For more information, see [Common migration scenarios](usmt-common-migration-scenarios.md).

USMT enables the following actions:

- Configure the migration according to the organization's business needs by using the migration rule (.xml) files to control exactly which files and settings are migrated and how they're migrated. For more information about how to modify these files, see [USMT XML reference](usmt-xml-reference.md).

- Fit the customized migration into the automated deployment process by using the **ScanState** and **LoadState** tools, which control collecting and restoring the user files and settings. For more information, see [User State Migration Tool (USMT) command-line syntax](usmt-command-line-syntax.md).

- Perform offline migrations. Migrations can be run offline by using the **ScanState** command in Windows Preinstallation Environment (WinPE) or migrations can be performed from previous installations of Windows contained in **Windows.old** directories. For more information about migration types, see [Choose a migration store Type](usmt-choose-migration-store-type.md) and [Offline migration reference](offline-migration-reference.md).

## Benefits

USMT provides the following benefits to businesses that are deploying Windows operating systems:

- Safely migrates user accounts, operating system and application settings.
- Lowers the cost of deploying Windows by preserving user state.
- Reduces end-user downtime required to customize desktops and find missing files.
- Reduces help-desk calls.
- Reduces the time needed for the user to become familiar with the new operating system.
- Increases employee satisfaction with the migration experience.

## Limitations

USMT is intended for administrators who are performing large-scale automated deployments. If the user states of only a few computers are being migrated, [PCmover Express](https://go.microsoft.com/fwlink/?linkid=620915) can be used. PCmover isn't a free utility. PCmover Express is a tool created by Microsoft's partner, Laplink.

There are some scenarios in which the use of USMT isn't recommended. These scenarios include:

- Migrations that require end-user interaction.
- Migrations that require customization on a machine-by-machine basis.

## Related articles

- [User State Migration Tool (USMT) technical reference](usmt-technical-reference.md).
