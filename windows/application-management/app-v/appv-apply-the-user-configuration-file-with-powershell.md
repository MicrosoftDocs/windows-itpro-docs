---
title: How to Apply the User Configuration File by Using Windows PowerShell (Windows 10)
description: How to Apply the User Configuration File by Using Windows PowerShell
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# How to apply the user configuration file by using Windows PowerShell

>Applies to: Windows 10, version 1607

The dynamic user configuration file is applied when a package is published to a specific user and determines how the package will run.

Use the following procedure to specify a user-specific configuration file. The following procedure is based on the example:

* C:\\Packages\\Contoso\\MyApp.appv

## Apply a user configuration file

Use the following procedure to specify a user-specific configuration file.

>[!NOTE]
>The following procedure uses the following example file path for its package:
    >
    >* C:\\Packages\\Contoso\\MyApp.appv.
    >
>f your package file uses a different file path than the example, feel free to replace it.

1. Enter the following cmdlet to add the package to the computer using the Windows PowerShell console:

    ```PowerShell
    Add-AppVClientPackage C:\Packages\Contoso\MyApp.appv
    ```
2. Enter the following cmdlet to publish the package to the user and specify the updated the dynamic user configuration file:

    ```PowerShell
    Publish-AppVClientPackage $pkg -DynamicUserConfigurationPath c:\Packages\Contoso\config.xml
    ```

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](https://appv.uservoice.com/forums/280448-microsoft-application-virtualization).

## Related topics

* [Operations for App-V](appv-operations.md)
