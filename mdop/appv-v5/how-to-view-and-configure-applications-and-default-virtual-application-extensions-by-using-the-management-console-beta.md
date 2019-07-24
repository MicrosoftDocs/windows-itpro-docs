---
title: How to View and Configure Applications and Default Virtual Application Extensions by Using the Management Console
description: How to View and Configure Applications and Default Virtual Application Extensions by Using the Management Console
author: msfttracyp
ms.assetid: c77e6662-7a18-4da1-8da8-b58068b65fa1
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to View and Configure Applications and Default Virtual Application Extensions by Using the Management Console


Use the following procedure to view and configure default package extensions.

**To view and configure default virtual application extensions**

1.  To view the package that you want to configure, open the App-V 5.0 Management Console. Select the package that you want to configure, right-click the package name and select **edit default configuration**.

2.  To view the applications contained in the specified package, in the **Default Configuration** pane, click **Applications**. To view the shortcuts for that package, click **Shortcuts**. To view the file type associations for that package, click **File Types**.

3.  To enable the application extensions, select **ENABLE**.

    To enable shortcuts, select **ENABLE SHORTCUTS**. To add a new shortcut for the selected application, right-click the application in the **SHORTCUTS** pane and select **Add new shortcut**. To remove a shortcut, right-click the application in the **SHORTCUTS** pane and select **Remove Shortcut**. To edit an existing shortcut, right-click the application and select **Edit Shortcut**.

4.  To view any other application extensions, click **Advanced** and click **Export Configuration**. Type in a filename and click **Save**. You can view all application extensions associated with the package using the configuration file.

5.  To edit other application extensions, modify the configuration file and click **Import and Overwrite this Configuration**. Select the modified file and click **Open**. In the dialog box, click **Overwrite** to complete the process.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





