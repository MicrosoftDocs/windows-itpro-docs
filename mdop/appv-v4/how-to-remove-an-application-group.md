---
title: How to Remove an Application Group
description: How to Remove an Application Group
author: eavena
ms.assetid: 3016b373-f5a0-4c82-96e8-e5e7960f0cc4
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Remove an Application Group


You can use the following procedures to remove an application group in the Application Virtualization Server Management Console in one of two ways:

**Caution**  
Deleting a group with its applications deletes those applications from the Application Virtualization Management Server. When you try to do this, you must confirm the deletion in a pop-up window.

 

**To empty and then delete an application group**

1.  In the Application Virtualization Server Management Console, expand **Applications** in the left pane and select the **Application** group you want to remove.

2.  In the right pane, select the applications and application groups you want to keep. You can use the **CTRL** and **Shift** keys to select multiple applications and application groups.

3.  Right-click the selected applications, and choose **Move**.

4.  In the **Select Target** window, navigate to the new location and click **OK**. Repeat this step if you want to move different applications to more than one group.

5.  When you finish moving the applications you want to keep, right-click the application group and choose **Delete**.

6.  Click **Yes** to confirm.

**To delete the group, with all its child groups and its applications**

1.  In the Application Virtualization Server Management Console, expand **Applications** in the left pane.

2.  Right-click the application group you want to remove, and choose **Delete**.

3.  Click **Yes** to confirm.

    **Note**  
    You can select and remove multiple application groups simultaneously. In the right pane, use the **CTRL**-click or **Shift**-click key combinations to select more than one group.

     

## Related topics


[How to Manage Application Groups in the Server Management Console](how-to-manage-application-groups-in-the-server-management-console.md)

[How to Manage Applications in the Server Management Console](how-to-manage-applications-in-the-server-management-console.md)

 

 





