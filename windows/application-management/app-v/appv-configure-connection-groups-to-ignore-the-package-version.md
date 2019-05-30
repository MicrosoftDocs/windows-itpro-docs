---
title: How to make a connection group ignore the package version (Windows 10)
description: How to make a connection group ignore the package version.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/18/2018
ms.topic: article
---
# How to make a connection group ignore the package version

> Applies to: Windows 10, version 1607

You can use Application Virtualization (App-V) to configure a connection group to use any version of a package, simplifying package upgrades and reducing the number of connection groups you need to create.

You can also configure a connection group to accept any version of a package, so that you can upgrade the package without having to disable the connection group.

- If the connection group has access to multiple versions of a package, App-V will use the latest version.

- If the connection group contains an optional package with an incorrect version, App-V ignores the package and won’t block the connection group’s virtual environment from being created.

- If the connection group contains a non-optional package that has an incorrect version, App-V won't be able to create the connection group’s virtual environment.

## Make a connection group ignore the package version with the App-V Server Management Console

1. In the Management Console, select **Connection Groups**.

2. Select the correct connection group from the Connection Groups library.

3. Select **Edit** in the Connected Packages pane.

4. Select the **Use Any Version** check box next to the package name, then select **Apply**.

For more about adding or upgrading packages, see [How to add or upgrade packages by using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md).

## Make a connection group ignore the package version from the App-V client on a stand-alone computer

1. Create the connection group XML document.

2. Set the **Package** tag attribute **VersionID** to an asterisk (<strong>*</strong>) to upgrade the package.

3. Enter the following cmdlet (including the path to the connection group XML document) to add the connection group:

    ```PowerShell
    Add-AppvClientConnectionGroup
    ```

    For more information about how to use the **Add-AppvClientConnectionGroup** cmdlet, see [**Add-AppvClientConnectionGroup**](https://docs.microsoft.com/powershell/module/appvclient/add-appvclientconnectiongroup?view=win10-ps).

4. When you upgrade a package, use the following cmdlets to remove the old package, add the upgraded package, and publish the upgraded package:

    - [**Remove-AppvClientPackage**](https://docs.microsoft.com/powershell/module/appvclient/remove-appvclientpackage?view=win10-ps)
    - [**Add-AppvClientPackage**](https://docs.microsoft.com/powershell/module/appvclient/add-appvclientpackage?view=win10-ps)
    - [**Publish-AppvClientPackage**](https://docs.microsoft.com/powershell/module/appvclient/publish-appvclientpackage?view=win10-ps)

For more information, see [How to manage App-V packages running on a stand-alone computer by using Windows PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md).





## Related topics

- [Managing connection groups](appv-managing-connection-groups.md)
