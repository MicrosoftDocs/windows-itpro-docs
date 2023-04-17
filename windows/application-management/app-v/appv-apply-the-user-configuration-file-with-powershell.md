---
title: How to apply the user configuration file by using Windows PowerShell (Windows 10/11)
description: How to apply the user configuration file by using Windows PowerShell (Windows 10/11).
author: aczechowski
ms.prod: windows-client
ms.date: 06/15/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
ms.technology: itpro-apps
---
# How to apply the user configuration file by using Windows PowerShell

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

When you publish a package to a specific user, you'll also need to specify a dynamic user configuration file to tell that package how to run.

## Apply a user configuration file

Here's how to specify a user-specific configuration file:

> [!NOTE]
> The following example cmdlets use this example file path for its package:
> 
> * C:\\Packages\\Contoso\\MyApp.appv.
> 
> If your package file uses a different file path than the example, feel free to replace it as needed.

1. Enter the following cmdlet in Windows PowerShell to add the package to the computer:

    ```PowerShell
    Add-AppVClientPackage C:\Packages\Contoso\MyApp.appv
    ```
2. Enter the following cmdlet to publish the package to the user and specify the updated the dynamic user configuration file:

    ```PowerShell
    Publish-AppVClientPackage $pkg -DynamicUserConfigurationPath C:\Packages\Contoso\config.xml
    ```





## Related articles

* [Operations for App-V](appv-operations.md)
