---
title: Using UE-V with Application Virtualization applications
description: Using UE-V with Application Virtualization applications
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---


# Using UE-V with Application Virtualization applications

**Applies to**
-   Windows 10, version 1607

User Experience Virtualization (UE-V) supports Microsoft Application Virtualization (App-V) applications without any required modifications to either the App-V package or the UE-V template. However, an additional step is required because you cannot run the UE-V template generator directly on a virtualized App-V application. Instead, you must install the application locally, generate the template, and then apply the template to the virtualized application. UE-V supports App-V for Windows 10 packages and App-V 5.0 packages.

## UE-V settings synchronization for App-V applications


UE-V monitors when an application opens by the program name and, optionally, by file version numbers and product version numbers, whether the application is installed locally or virtually by using App-V. When the application starts, UE-V monitors the App-V process, applies any settings that are stored in the user's settings storage path, and then enables the application to start normally. UE-V monitors App-V applications and automatically translates the relevant file and registry paths to the virtualized location as opposed to the physical location outside the App-V computing environment.

 **To implement settings synchronization for a virtualized application**

1.  Run the UE-V template generator to collect the settings of the locally installed application whose settings you want to synchronize between computers. This process creates a settings location template. If you use a built-in template such as a Microsoft Office template, skip this step. For more information about using the UE-V template generator, see [Deploy UE-V for custom applications](uev-deploy-uev-for-custom-applications.md).

2.  Install the App-V application package if you have not already done so.

3.  Publish the template to the location of your settings template catalog or manually install the template by using the `Register-UEVTemplate` Windows PowerShell cmdlet.

    **Note**  
    If you publish the newly created template to the settings template catalog, the client does not receive the template until the sync provider updates the settings. To manually start this process, open **Task Scheduler**, expand **Task Scheduler Library**, expand **Microsoft**, and expand **UE-V**. In the results pane, right-click **Template Auto Update**, and then click **Run**.

     

4.  Start the App-V package.






## Related topics


[Administering UE-V](uev-administering-uev.md)

 

 





