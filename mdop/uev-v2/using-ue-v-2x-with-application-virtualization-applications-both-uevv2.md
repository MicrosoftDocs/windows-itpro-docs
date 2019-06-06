---
title: Using UE-V 2.x with Application Virtualization Applications
description: Using UE-V 2.x with Application Virtualization Applications
author: levinec
ms.assetid: 4644b810-fc48-4fd0-96e4-2fc6cd64d8ad
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Using UE-V 2.x with Application Virtualization Applications


Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, and 2.1 SP1 support Microsoft Application Virtualization (App-V) applications without any required modifications to either the App-V package or the UE-V template. However, an additional step is required because you cannot run the UE-V Generator directly on a virtualized App-V application. Instead, you must install the application locally, generate the template, and then apply the template to the virtualized application. UE-V supports App-V 4.5, App-V 4.6, and App-V 5.0 packages.

## UE-V settings synchronization for App-V applications


UE-V monitors when an application opens by the program name and, optionally, by file version numbers and product version numbers, whether the application is installed locally or virtually by using App-V. When the application starts, UE-V monitors the App-V process, applies any settings that are stored in the user's settings storage path, and then enables the application to start normally. UE-V monitors App-V applications and automatically translates the relevant file and registry paths to the virtualized location as opposed to the physical location outside the App-V computing environment.

 **To implement settings synchronization for a virtualized application**

1.  Run the UE-V Generator to collect the settings of the locally installed application whose settings you want to synchronize between computers. This process creates a settings location template. If you use a built-in template such as the Microsoft Office 2010 template, skip this step. For more information about running the UE-V Generator, see [Deploy UE-V 2.x for Custom Applications](deploy-ue-v-2x-for-custom-applications-new-uevv2.md#createcustomtemplates).

2.  Install the App-V application package if you have not already done so.

3.  Publish the template to the location of your settings template catalog or manually install the template by using the `Register-UEVTemplate` Windows PowerShell cmdlet.

    **Note**  
    If you publish the newly created template to the settings template catalog, the client does not receive the template until the sync provider updates the settings. To manually start this process, open **Task Scheduler**, expand **Task Scheduler Library**, expand **Microsoft**, and expand **UE-V**. In the results pane, right-click **Template Auto Update**, and then click **Run**.

     

4.  Start the App-V package.






## Related topics


[Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

 

 





