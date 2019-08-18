---
title: How to Modify App-V 5.0 Client Configuration Using the ADMX Template and Group Policy
description: How to Modify App-V 5.0 Client Configuration Using the ADMX Template and Group Policy
author: dansimp
ms.assetid: 79d03a2b-2586-4ca7-bbaa-bdeb0a694279
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Modify App-V 5.0 Client Configuration Using the ADMX Template and Group Policy


Use the App-V 5.0 ADMX template to configure App-V 5.0 client settings using the ADMX Template and Group Policy.

**To modify App-V 5.0 client configuration using Group Policy**

1.  To modify the App-V 5.0 client configuration, locate the **ADMXTemplate** files that are available with App-V 5.0.

    **Note**  
    Use the following link to download the App-V 5.0 **ADMX Templates**: <https://go.microsoft.com/fwlink/p/?LinkId=393941>.

     

2.  On the computer where you manage group Policy, typically the domain controller, copy the template **.admx** file to the following directory: **&lt;Installation Drive&gt; \\ Windows \\ PolicyDefinitions**.

    Next, on the same computer, copy the **.adml** file to the following directory: **&lt;InstallationDrive&gt; \\ Windows \\ PolicyDefinitions \\ en-US**.

3.  After you have copied the files open the Group Policy Management Console, to modify the policies associated with your App-V 5.0 clients browse to **Computer Configuration** / **Policies** / **Administrative Templates** / **System** / **App-V**.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying App-V 5.0](deploying-app-v-50.md)

[About Client Configuration Settings](about-client-configuration-settings.md)

 

 





