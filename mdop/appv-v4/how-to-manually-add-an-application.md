---
title: How to Manually Add an Application
description: How to Manually Add an Application
author: dansimp
ms.assetid: c635b07a-5c7f-4ab2-ba18-366457146cb9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Manually Add an Application


When adding an application to the Application Virtualization Management Server, it is recommended that you import it. You can add an application manually, but you must provide the precise, detailed information about the application called for in this section.

**To manually add a new application**

1.  In the left pane, right-click the **Applications** node and choose **New Application**.

2.  In the **New Application Wizard**, complete the **General Information** dialog box:

    1.  **Application Name**—Type the name you want the users to see.

    2.  **Version**—Type the application version.

    3.  **Enabled**—This box must be selected to stream the application after you create it.

    4.  **Description**—Type an optional description for administrative use.

    5.  **OSD Path**—Browse the network to the application's Open Software Descriptor (OSD) file. This file must be in a shared network folder.

    6.  **Icon Path**—Browse to the application's ICO file.

    7.  **Application License Group**—If you have set up license groups, you can assign the application to one by selecting it in the pull-down list.

    8.  **Server Group**—If you have multiple Application Virtualization Servers, you can assign the application to one by selecting it in the pull-down list.

3.  Click **Next**.

4.  In the **Select Package** dialog box, select the related package and click **Next**.

5.  On the **Published Shortcuts** screen, select the boxes for the locations where you would like the application shortcuts to appear on the client computers and click **Next**.

6.  In the **File Associations** screen, you can add new type file associations to this application. To do so, click **Add**, enter the extension (without a preceding dot), enter a description, and click **OK**.

7.  Click **Next**.

8.  In the **Access Permissions** dialog box, click **Add**.

9.  In the **Add/Edit User Group** dialog box, navigate to the user group. You can also enter the domain and group by typing the information in the respective fields. When you finish, click **OK**. You can add other groups with the same pages.

10. Click **Next**.

11. On the **Summary** screen, you can review the import settings. Click **Finish** to add the application, click **Back** to change the information, or click **Cancel**.

## Related topics


[How to Manage Applications in the Server Management Console](how-to-manage-applications-in-the-server-management-console.md)

 

 





