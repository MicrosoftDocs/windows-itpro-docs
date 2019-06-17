---
title: How to Apply the Deployment Configuration File by Using PowerShell
description: How to Apply the Deployment Configuration File by Using PowerShell
author: dansimp
ms.assetid: 5df5d5bc-6c72-4087-8b93-d6d4b502a1f4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Apply the Deployment Configuration File by Using PowerShell


The dynamic deployment configuration file is applied when a package is added or set to a computer running the App-V 5.0 client before the package has been published. The file configures the default settings for package for all users on the computer running the App-V 5.0 client. This section describes the steps used to use a deployment configuration file. The procedure is based on the following example and assumes the following package and configuration files exist on a computer:

**c:\\Packages\\Contoso\\MyApp.appv**

**c:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml**

**To Apply the Deployment Configuration File Using PowerShell**

-   To specify a new default set of configurations for all users who will run the package on a specific computer, using a PowerShell console type the following:

    **Add-AppVClientPackage –Path c:\\Packages\\Contoso\\MyApp.appv -DynamicDeploymentConfiguration c:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml**

    **Note**  
    This command captures the resulting object into $pkg. If the package is already present on the computer, the **Set-AppVclientPackage** cmdlet can be used to apply the deployment configuration document:

    **Set-AppVClientPackage –Name Myapp –Path c:\\Packages\\Contoso\\MyApp.appv -DynamicDeploymentConfiguration c:\\Packages\\Contoso\\DynamicConfigurations\\deploymentconfig.xml**



~~~
**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).
~~~

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)









