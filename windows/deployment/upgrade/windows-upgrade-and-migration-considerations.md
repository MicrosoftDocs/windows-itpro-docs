---
title: Windows Upgrade and Migration Considerations
description: Discover the Microsoft tools that can be used to move files and settings between installations including special considerations for performing an upgrade or migration.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 08/30/2024
---

# Windows upgrade and migration considerations

Files and application settings can be migrated to new hardware running the Windows operating system, or they can be maintained during an operating system upgrade on the same computer. This article summarizes the Microsoft tools that can be used to move files and settings between installations in addition to special considerations for performing an upgrade or migration.

## Upgrade from a previous version of Windows

Earlier versions of Windows can be upgraded to later versions. As part of the upgrade experience, the newer version of Windows can be installed while retaining applications, files, and settings as they were in the previous version of Windows. If a custom installation of Windows is performed instead of an upgrade, applications and settings aren't maintained. Personal files and all Windows files and directories are moved to a **Windows.old** folder. The data can be accessed in the **Windows.old** folder after Windows Setup is complete.

## Migrate files and settings

The [User State Migration Tool (USMT)](../usmt/usmt-overview.md) is available to transfer settings:

- Between two computers running Windows, also known as a *side-by-side* migration.
- On a single computer upgrading the version of Windows when not using an in-place upgrade, also known as a *wipe-and-load* or *refresh* migration.

USMT only transfers the program settings, not the programs themselves. USMT is an application intended for administrators who are performing large-scale automated deployments, but it can also be used in smaller migrations.

### Migrate with the User State Migration Tool

USMT can be used to automate migration during large deployments of the Windows operating system. USMT uses XML files that define migration rules. The migration rules can be configured to control exactly what USMT migrates and how it migrates the items. For example, USMT can migrate:

- User accounts, including which specific accounts to migrate.
- User files, including which specific files to migrate.
- Operating system settings, including which specific operating system settings to migrate.
- Settings for some applications, including which specific application settings to migrate.

USMT can be used for the following scenarios:

- **Side-by-side** - migration where one device is replaced with a different device.
- **Wipe-and-load**/**refresh** - migration where Windows is upgraded on a single device.

> [!IMPORTANT]
>
> USMT only supports devices that are joined to a local Active Directory domain. USMT doesn't support Microsoft Entra joined devices.

## Upgrade and migration considerations

When upgrading or migrating to a new version of Windows, be aware of the following issues and considerations:

### Application compatibility

For more information about application compatibility in Windows, see [Compatibility for Windows 11](/windows/compatibility/windows-11/).

### Multilingual Windows image upgrades

USMT doesn't support cross-language upgrades when performing multilingual Windows upgrades. If upgrading or migrating an operating system with multiple language packs installed, only the system default user interface (UI) language can be upgraded or migrated to. For example, if English is the default but a Spanish language pack is installed, only English can be upgraded or migrated to.

If a single-language Windows image that matches the system default UI language of a multilingual operating system is being used for a *wipe-and-load*/*refresh* migration, the migration works. However, all of the language packs are removed. The language packs will need to be reinstalled after the upgrade is completed.

### Errorhandler.cmd

If using **Errorhandler.cmd** when upgrading from an earlier version of Windows, copy **Errorhandler.cmd** into the `%WINDIR%\Setup\Scripts` directory on the original installation of Windows. Copying **Errorhandler.cmd** into the `%WINDIR%\Setup\Scripts` directory on the original installation of Windows makes sure that if there are errors during the down-level phase of Windows Setup, the commands in **Errorhandler.cmd** run. For more information, see [Run a script if Windows Setup encounters a fatal error (ErrorHandler.cmd)](/windows-hardware/manufacture/desktop/add-a-custom-script-to-windows-setup#run-a-script-if-windowssetup-encounters-a-fatal-error-errorhandlercmd).

## Related content

- [User State Migration Tool (USMT) overview](../usmt/usmt-overview.md).
- [Windows upgrade paths](windows-upgrade-paths.md).
- [Windows edition upgrade](windows-edition-upgrades.md).
