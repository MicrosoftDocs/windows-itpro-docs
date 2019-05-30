---
title: How to apply the deployment configuration file by using Windows PowerShell (Windows 10)
description: How to apply the deployment configuration file by using Windows PowerShell for Windows 10.
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/15/2018
ms.topic: article
---
# How to apply the deployment configuration file by using Windows PowerShell

>Applies to: Windows 10, version 1607

When you add or set a package to a computer running the App-V client before it's been published, a dynamic deployment configuration file is applied to it. The dynamic deployment configuration file configures the default settings for the package that all users share on the computer running the App-V client. This section will tell you how to use a deployment configuration file.

## Apply the deployment configuration file with Windows PowerShell

>[!NOTE]
>The following example cmdlet uses the following two file paths for the package and configuration files:
    >
    >* C:\\Packages\\Contoso\\MyApp.appv
    >* C:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml
    >
>If your package and configuration files use different file paths than the example, feel free to replace them as needed.

To specify a new default set of configurations for all users who will run the package on a specific computer, in a Windows PowerShell console, enter the following cmdlet:

```PowerShell
Add-AppVClientPackage -Path C:\Packages\Contoso\MyApp.appv -DynamicDeploymentConfiguration C:\Packages\Contoso\DynamicConfigurations\deploymentconfig.xml
```

>[!NOTE]
>This command captures the resulting object into $pkg. If the package is already present on the computer, you can use the **Set-AppVclientPackage** cmdlet to apply the deployment configuration document:
>
>  ```PowerShell
>  Set-AppVClientPackage -Name Myapp -Path C:\Packages\Contoso\MyApp.appv -DynamicDeploymentConfiguration C:\Packages\Contoso\DynamicConfigurations\deploymentconfig.xml
>  ```





## Related topics

* [Operations for App-V](appv-operations.md)
