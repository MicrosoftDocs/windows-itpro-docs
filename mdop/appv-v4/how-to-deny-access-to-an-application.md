---
title: How to Deny Access to an Application
description: How to Deny Access to an Application
author: dansimp
ms.assetid: 14f5e201-7265-462c-b738-57938dc3fc30
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Deny Access to an Application


Users must be in an application's **Access Permissions** list to load and use the application. Although the Application Virtualization Server Management Console does not support explicitly denying a user group access to an application, you can remove the user groups from an application’s properties to achieve this.

**To deny access to an application**

1.  For an existing application, click the **Applications** node in the left pane.

2.  Right-click an application in the right pane, and choose **Properties**. Then select the **Access Permissions** tab.

3.  To remove access for a user group, highlight the user group and click **Remove**.

4.  Click **OK**.

    **Note**  
    To control access to applications, you can also limit the application licenses. Setting up the proper user groups in Active Directory Domain Services provides the easiest way to grant and deny access to specific sets of users.

     

## Related topics


[How to Grant Access to an Application](how-to-grant-access-to-an-application.md)

[How to Manage Application Licenses in the Server Management Console](how-to-manage-application-licenses-in-the-server-management-console.md)

[How to Manage Applications in the Server Management Console](how-to-manage-applications-in-the-server-management-console.md)

 

 





