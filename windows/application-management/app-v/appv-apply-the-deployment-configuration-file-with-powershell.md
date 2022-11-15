---
title: Apply deployment config file via Windows PowerShell (Windows 10/11)
description: How to apply the deployment configuration file by using Windows PowerShell for Windows 10/11.
author: aczechowski
ms.prod: windows-client
ms.date: 06/15/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
ms.technology: itpro-apps
---
# How to apply the deployment configuration file by using Windows PowerShell

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

When you add or set a package to a computer running the App-V client before it's been published, a dynamic deployment configuration file is applied to it. The dynamic deployment configuration file configures the default settings for the package that all users share on the computer running the App-V client. This section will tell you how to use a deployment configuration file.

## Apply the deployment configuration file with Windows PowerShell

> [!NOTE]
> The following example cmdlet uses the following two file paths for the package and configuration files:
> 
> * C:\\Packages\\Contoso\\MyApp.appv
> * C:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml
> 
> If your package and configuration files use different file paths than the example, feel free to replace them as needed.

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





## Related articles

* [Operations for App-V](appv-operations.md)
