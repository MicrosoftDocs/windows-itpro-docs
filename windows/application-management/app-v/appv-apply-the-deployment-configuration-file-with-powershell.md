---
title: How to apply the deployment configuration file by using Windows PowerShell (Windows 10)
description: How to apply the deployment configuration file by using Windows PowerShell for Windows 10.
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# How to apply the deployment configuration file by using Windows PowerShell

>Applies to: Windows 10, version 1607

The dynamic deployment configuration file is applied when a package is added or set to a computer running the App-V client before the package has been published. The file configures the default settings of the package that all users share on the computer running the App-V client. This section will tell you how to use a deployment configuration file. The procedure is based on the following example and assumes the following package and configuration files exist on a computer:

* C:\\Packages\\Contoso\\MyApp.appv
* C:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml

## Apply the deployment configuration file with Windows PowerShell

>[!NOTE]
>The following procedure is an example that uses the following two file paths for the package and configuration files:
    >
    >* C:\\Packages\\Contoso\\MyApp.appv
    >* C:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml
    >
>If your package and configuration file use different file paths than the example, feel free to replace them as needed.

To specify a new default set of configurations for all users who will run the package on a specific computer, in a Windows PowerShell console, enter the following cmdlet:

```PowerShell
Add-AppVClientPackage -Path C:\Packages\Contoso\MyApp.appv -DynamicDeploymentConfiguration C:\Packages\Contoso\DynamicConfigurations\deploymentconfig.xml
```

>[!NOTE]
>This command captures the resulting object into $pkg. If the package is already present on the computer, the **Set-AppVclientPackage** cmdlet can be used to apply the deployment configuration document:
    >
        ```PowerShell
        Set-AppVClientPackage -Name Myapp -Path C:\Packages\Contoso\MyApp.appv -DynamicDeploymentConfiguration C:\Packages\Contoso\DynamicConfigurations\deploymentconfig.xml
        ```

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](https://appv.uservoice.com/forums/280448-microsoft-application-virtualization).

## Related topics

* [Operations for App-V](appv-operations.md)
