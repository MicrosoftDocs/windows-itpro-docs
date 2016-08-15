---
title: How to Apply the Deployment Configuration File by Using PowerShell (Windows 10)
description: How to Apply the Deployment Configuration File by Using PowerShell
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Apply the Deployment Configuration File by Using PowerShell

Applies to: Windows 10, version 1607

The dynamic deployment configuration file is applied when a package is added or set to a computer running the App-V client before the package has been published. The file configures the default settings for package for all users on the computer running the App-V client. This section describes the steps used to use a deployment configuration file. The procedure is based on the following example and assumes the following package and configuration files exist on a computer:

**c:\\Packages\\Contoso\\MyApp.appv**

**c:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml**

**To Apply the Deployment Configuration File Using PowerShell**

-   To specify a new default set of configurations for all users who will run the package on a specific computer, using a PowerShell console type the following:

    **Add-AppVClientPackage –Path c:\\Packages\\Contoso\\MyApp.appv -DynamicDeploymentConfiguration c:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml**

    **Note**  
    This command captures the resulting object into $pkg. If the package is already present on the computer, the **Set-AppVclientPackage** cmdlet can be used to apply the deployment configuration document:

    **Set-AppVClientPackage –Name Myapp –Path c:\\Packages\\Contoso\\MyApp.appv -DynamicDeploymentConfiguration c:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml**

     

    **Have a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)

 

 





