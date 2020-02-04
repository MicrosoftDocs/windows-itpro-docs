---
title: User State Migration Tool (USMT) Overview (Windows 10)
description: User State Migration Tool (USMT) Overview
ms.assetid: 3b649431-ad09-4b17-895a-3fec7ac0a81f
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 10/16/2017
ms.topic: article
---

# User State Migration Tool (USMT) Overview
You can use User State Migration Tool (USMT) 10.0 to streamline and simplify user state migration during large deployments of Windows operating systems. USMT captures user accounts, user files, operating system settings, and application settings, and then migrates them to a new Windows installation. You can use USMT for both PC replacement and PC refresh migrations. For more information, see [Common Migration Scenarios](usmt-common-migration-scenarios.md).

USMT enables you to do the following:

-   Configure your migration according to your business needs by using the migration rule (.xml) files to control exactly which files and settings are migrated and how they are migrated. For more information about how to modify these files, see [USMT XML Reference](usmt-xml-reference.md).

-   Fit your customized migration into your automated deployment process by using the ScanState and LoadState tools, which control collecting and restoring the user files and settings. For more information, see [User State Migration Tool (USMT) Command-line Syntax](usmt-command-line-syntax.md).

-   Perform offline migrations. You can run migrations offline by using the ScanState command in Windows Preinstallation Environment (WinPE) or you can perform migrations from previous installations of Windows contained in Windows.old directories. For more information about migration types, see [Choose a Migration Store Type](usmt-choose-migration-store-type.md) and [Offline Migration Reference](offline-migration-reference.md).

## Benefits
USMT provides the following benefits to businesses that are deploying Windows operating systems:

-   Safely migrates user accounts, operating system and application settings.

-   Lowers the cost of deploying Windows by preserving user state.

-   Reduces end-user downtime required to customize desktops and find missing files.

-   Reduces help-desk calls.

-   Reduces the time needed for the user to become familiar with the new operating system.

-   Increases employee satisfaction with the migration experience.

## Limitations
USMT is intended for administrators who are performing large-scale automated deployments. If you are only migrating the user states of a few computers, you can use [PCmover Express](https://go.microsoft.com/fwlink/?linkid=620915). PCmover Express is a tool created by Microsoft's partner, Laplink.

There are some scenarios in which the use of USMT is not recommended. These include:

-   Migrations that require end-user interaction.

-   Migrations that require customization on a machine-by-machine basis.

## Related topics
- [User State Migration Tool (USMT) Technical Reference](usmt-technical-reference.md)


 





