---
title: How to Add or Upgrade Packages by Using the Management Console
description: How to Add or Upgrade Packages by Using the Management Console
author: dansimp
ms.assetid: 62417b63-06b2-437c-8584-523e1dea97c3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Add or Upgrade Packages by Using the Management Console


You can the following procedure to add or upgrade a package to the App-V 5.1 Management Console. To upgrade a package that already exists in the Management Console, use the following steps and import the upgraded package using the same package **Name**.

**To add a package to the Management Console**

1.  Click the **Packages** tab in the navigation pane of the Management Console display.

    The console displays the list of packages that have been added to the server along with status information about each package. When a package is selected, detailed information about the package is displayed in the **PACKAGES** pane.

    Click the **Ungrouped** drop-down list box and specify how the packages are to be displayed in the console. You can also click the associated column header to sort the packages.

2.  To specify the package you want to add, click **Add or Upgrade Packages**.

3.  Type the full path to the package that you want to add. Use the UNC or HTTP path format, for example **\\\\servername\\sharename\\foldername\\packagename.appv** or **http://server.1234/file.appv**, and then click **Add**.

    **Important**  
    You must select a package with the **.appv** file name extension.

     

4.  The page displays the status message **Adding &lt;Packagename&gt;**. Click **IMPORT STATUS** to check the status of a package that you have imported.

    Click **OK** to add the package and close the **Add Package** page. If there was an error during the import, click **Detail** on the **Package Import** page for more information. The newly added package is now available in the **PACKAGES** pane.

5.  Click **Close** to close the **Add or Upgrade Packages** page.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)

 

 





