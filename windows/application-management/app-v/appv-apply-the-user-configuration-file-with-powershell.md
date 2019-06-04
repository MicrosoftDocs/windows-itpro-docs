---
title: How to apply the user configuration file by using Windows PowerShell (Windows 10)
description: How to apply the user configuration file by using Windows PowerShell (Windows 10).
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/15/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# How to apply the user configuration file by using Windows PowerShell

>Applies to: Windows 10, version 1607

When you publish a package to a specific user, you'll also need to specify a dynamic user configuration file to tell that package how to run.

## Apply a user configuration file

Here's how to specify a user-specific configuration file:

>[!NOTE]
>The following example cmdlets use this example file path for its package:
    >
    >* C:\\Packages\\Contoso\\MyApp.appv.
    >
>If your package file uses a different file path than the example, feel free to replace it as needed.

1. Enter the following cmdlet in Windows PowerShell to add the package to the computer:

    ```PowerShell
    Add-AppVClientPackage C:\Packages\Contoso\MyApp.appv
    ```
2. Enter the following cmdlet to publish the package to the user and specify the updated the dynamic user configuration file:

    ```PowerShell
    Publish-AppVClientPackage $pkg -DynamicUserConfigurationPath C:\Packages\Contoso\config.xml
    ```





## Related topics

* [Operations for App-V](appv-operations.md)
