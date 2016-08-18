---
title: How to Apply the User Configuration File by Using Windows PowerShell (Windows 10)
description: How to Apply the User Configuration File by Using Windows PowerShell
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Apply the User Configuration File by Using Windows PowerShell

Applies to: Windows 10, version 1607

The dynamic user configuration file is applied when a package is published to a specific user and determines how the package will run.

Use the following procedure to specify a user-specific configuration file. The following procedure is based on the example:

**c:\\Packages\\Contoso\\MyApp.appv**

**To apply a user Configuration file**

1.  To add the package to the computer using the Windows PowerShell console, type the following command:

    `Add-AppVClientPackage c:\Packages\Contoso\MyApp.appv`

2.  Use the following command to publish the package to the user and specify the updated the dynamic user configuration file:

    `Publish-AppVClientPackage $pkg -DynamicUserConfigurationPath c:\Packages\Contoso\config.xml`


## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Operations for App-V](appv-operations.md)
