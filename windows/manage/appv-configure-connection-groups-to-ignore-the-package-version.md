---
title: How to Make a Connection Group Ignore the Package Version (Windows 10)
description: How to Make a Connection Group Ignore the Package Version
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Make a Connection Group Ignore the Package Version

**Applies to**
-   Windows 10, version 1607

Application Virtualization (App-V) lets you configure a connection group to use any version of a package, which simplifies package upgrades and reduces the number of connection groups you need to create.

You can configure a connection group to accept any version of a package, which enables you to upgrade the package without having to disable the connection group:

- If the connection group has access to multiple versions of a package, the latest version is used.

- If the connection group contains an optional package that has an incorrect version, the package is ignored and won’t block the connection group’s virtual environment from being created.

- If the connection group contains a non-optional package that has an incorrect version, the connection group’s virtual environment cannot be created.

## To make a connection group ignore the package version by using the App-V Server Management Console

1. In the Management Console, select **CONNECTION GROUPS**.

2. Select the correct connection group from the Connection Groups library.

3. Click **EDIT** in the CONNECTED PACKAGES pane.

4. Select **Use Any Version** check box next to the package name, and click **Apply**.

For more about adding or upgrading packages, see [How to Add or Upgrade Packages by Using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md).

##  To make a connection group ignore the package version from the App-V client on a stand-alone computer

1. Create the connection group XML document.

2. For the package to be upgraded, set the **Package** tag attribute **VersionID** to an asterisk (**\***).

3. Use the following cmdlet to add the connection group, and include the path to the connection group XML document:

    `Add-AppvClientConnectionGroup`
    
4. When you upgrade a package, use the following cmdlets to remove the old package, add the upgraded package, and publish the upgraded package:

    - RemoveAppvClientPackage
    - Add-AppvClientPackage
    - Publish-AppvClientPackage

For more information, see [How to Manage App-V Packages Running on a Stand-Alone Computer by Using Windows PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md).

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Managing Connection Groups](appv-managing-connection-groups.md)
