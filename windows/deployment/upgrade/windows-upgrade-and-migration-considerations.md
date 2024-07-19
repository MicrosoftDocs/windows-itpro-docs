---
title: Windows Upgrade and Migration Considerations (Windows 10)
description: Discover the Microsoft tools you can use to move files and settings between installations including special considerations for performing an upgrade or migration.
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.topic: conceptual
ms.subservice: itpro-deploy
ms.date: 08/09/2023
---

# Windows upgrade and migration considerations
Files and application settings can be migrated to new hardware running the Windows® operating system, or they can be maintained during an operating system upgrade on the same computer. This topic summarizes the Microsoft® tools you can use to move files and settings between installations in addition to special considerations for performing an upgrade or migration.

## Upgrade from a previous version of Windows
You can upgrade from an earlier version of Windows, which means you can install the new version of Windows and retain your applications, files, and settings as they were in your previous version of Windows. If you decide to perform a custom installation of Windows instead of an upgrade, your applications and settings won't be maintained. Your personal files, and all Windows files and directories, will be moved to a Windows.old folder. You can access your data in the Windows.old folder after Windows Setup is complete.

## Migrate files and settings
Migration tools are available to transfer settings from one computer that is running Windows to another. These tools transfer only the program settings, not the programs themselves.

For more information about application compatibility, see the [Application Compatibility Toolkit (ACT)](/previous-versions/windows/server/cc722055(v=ws.10)).

The User State Migration Tool (USMT) 10.0 is an application intended for administrators who are performing large-scale automated deployments. For deployment to a few computers or for individually customized deployments, you can use Windows Easy Transfer.

### Migrate with Windows Easy Transfer
Windows Easy Transfer is a software wizard for transferring files and settings from one computer that is running Windows to another. It helps you select what to move to your new computer, enables you to set which migration method to use, and then performs the transfer. When the transfer has completed, Windows Easy Transfer Reports shows you what was transferred and provides a list of programs you might want to install on your new computer, in addition to links to other programs you might want to download.

With Windows Easy Transfer, files and settings can be transferred using a network share, a USB flash drive (UFD), or the Easy Transfer cable. However, you can't use a regular universal serial bus (USB) cable to transfer files and settings with Windows Easy Transfer. An Easy Transfer cable can be purchased on the Web, from your computer manufacturer, or at an electronics store.

> [!NOTE]
>
> Windows Easy Transfer [is not available in Windows 10](https://support.microsoft.com/help/4026265/windows-windows-easy-transfer-is-not-available-in-windows-10).

### Migrate with the User State Migration Tool
You can use USMT to automate migration during large deployments of the Windows operating system. USMT uses configurable migration rule (.xml) files to control exactly which user accounts, user files, operating system settings, and application settings are migrated and how they're migrated. You can use USMT for both *side-by-side* migrations, where one piece of hardware is being replaced, or *wipe-and-load* (or *refresh*) migrations, when only the operating system is being upgraded.

> [!IMPORTANT]
>
> USMT only supports devices that are joined to a local Active Directory domain. USMT doesn't support Microsoft Entra joined devices.

## Upgrade and migration considerations
Whether you're upgrading or migrating to a new version of Windows, you must be aware of the following issues and considerations:

### Application compatibility
For more information about application compatibility in Windows, see [Windows compatibility cookbook](/windows/compatibility/).

### Multilingual Windows image upgrades
When performing multilingual Windows upgrades, cross-language upgrades aren't supported by USMT. If you're upgrading or migrating an operating system with multiple language packs installed, you can upgrade or migrate only to the system default user interface (UI) language. For example, if English is the default but you have a Spanish language pack installed, you can upgrade or migrate only to English.

If you're using a single-language Windows image that matches the system default UI language of your multilingual operating system, the migration will work. However, all of the language packs will be removed, and you'll have to reinstall them after the upgrade is completed.

### Errorhandler.cmd
When upgrading from an earlier version of Windows, if you intend to use Errorhandler.cmd, you must copy Errorhandler.cmd into the %WINDIR%\\Setup\\Scripts directory on the old installation. This makes sure that if there are errors during the down-level phase of Windows Setup, the commands in Errorhandler.cmd will run.

### Data drive ACL migration
During the configuration pass of Windows Setup, the root access control list (ACL) on drives formatted for NTFS that don't appear to have an operating system will be changed to the default Windows XP ACL format. The ACLs on these drives are changed to enable authenticated users to modify access on folders and files.

Changing the ACLs may affect the performance of Windows Setup if the default Windows XP ACLs are applied to a partition with a large amount of data. Because of these performance concerns, you can change the following registry value to disable this feature:

`Key: HKLM\System\Setup`
`Type: REG_DWORD`
`Value: "DDACLSys_Disabled" = 1`

This feature is disabled if this registry key value exists and is configured to `1`.

## Related articles
[User State Migration Tool (USMT) Overview Topics](../usmt/usmt-topics.md)<BR>
[Windows 10 upgrade paths](windows-10-upgrade-paths.md)<BR>
[Windows 10 edition upgrade](windows-10-edition-upgrades.md)
