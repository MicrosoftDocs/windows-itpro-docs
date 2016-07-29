---
title: How to Uninstall the App-V Client (Windows 10)
description: How to Uninstall the App-V Client
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Uninstall the App-V Client


Use the following procedure to uninstall the Microsoft Application Virtualization (App-V) client from a computer. When you uninstall the App-V client all packages published to the computer running the client are also removed. If the uninstall operation does not complete the packages will need to be re-published to the computer running the App-V client.

**Important**  
You should ensure that the App-V client service is running prior to performing the uninstall procedure.

 

**To uninstall the App-V Client**

1.  In Control Panel, double-click **Programs** / **Uninstall a Program**, and then double-click **Microsoft Application Virtualization Client**.

2.  In the dialog box that appears, click **Yes** to continue with the uninstall process.

    **Important**  
    The uninstall process cannot be canceled or interrupted.

     

3.  A progress bar shows the time remaining. When this step finishes, you must restart the computer so that all associated drivers can be stopped to complete the uninstall process.

    **Note**  
    You can also use the command line to uninstall the App-V client with the following switch: **/UNINSTALL**.

     

    **Have a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Deploying App-V](appv-deploying-appv.md)

 

 





