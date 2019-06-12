---
title: Installing and Uninstalling Custom Compatibility Databases in Compatibility Administrator (Windows 10)
description: The Compatibility Administrator tool enables the creation and the use of custom-compatibility and standard-compatibility databases.
ms.assetid: 659c9d62-5f32-433d-94aa-12141c01368f
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Installing and Uninstalling Custom Compatibility Databases in Compatibility Administrator


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Compatibility Administrator tool enables the creation and the use of custom-compatibility and standard-compatibility databases. Both the custom databases and the standard databases store the known compatibility fixes, compatibility modes, and AppHelp messages. They also store the required application-matching information for installation on your local computers.

By default, the Windows® operating system installs a System Application Fix database for use with the Compatibility Administrator. This database can be updated through Windows Update, and is stored in the %WINDIR% \\AppPatch directory. Your custom databases are automatically stored in the %WINDIR% \\AppPatch\\Custom directory and are installed by using the Sdbinst.exe tool provided with the Compatibility Administrator.

**Important**  
Application Compatibility Toolkit (ACT) installs a 32-bit and a 64-bit version of the Compatibility Administrator tool. You must use the 32-bit version to work with custom databases for 32-bit applications and the 64-bit version to work with custom databases for 64-bit applications.

In addition, you must deploy your databases to your organization’s computers before the included fixes will have any effect on the application issue. For more information about deploying your database, see [Using the Sdbinst.exe Command-Line Tool](using-the-sdbinstexe-command-line-tool.md).

 

## Installing a Custom Database


Installing your custom-compatibility database enables you to fix issues with your installed applications.

**To install a custom database**

1.  In the left-side pane of Compatibility Administrator, click the custom database to install to your local computers.

2.  On the **File** menu, click **Install**.

    The Compatibility Administrator installs the database, which appears in the **Installed Databases** list.

    The relationship between your database file and an included application occurs in the registry. Every time you start an application, the operating system checks the registry for compatibility-fix information and, if found, retrieves the information from your customized database file.

## Uninstalling a Custom Database


When a custom database is no longer necessary, either because the applications are no longer used or because the vendor has provided a fix that resolves the compatibility issues, you can uninstall the custom database.

**To uninstall a custom database**

1.  In the **Installed Databases** list, which appears in the left-side pane of Compatibility Administrator, click the database to uninstall from your local computers.

2.  On the **File** menu, click **Uninstall**.

## Related topics
[Compatibility Administrator User's Guide](compatibility-administrator-users-guide.md)
