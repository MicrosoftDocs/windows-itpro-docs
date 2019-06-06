---
title: How to Create a Connection Group
description: How to Create a Connection Group
author: dansimp
ms.assetid: 221e2eed-7ebb-42e3-b3d6-11c37c0578e6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create a Connection Group


Use these steps to create a connection group by using the App-V Management Console. To use PowerShell to create connection groups, see [How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell](how-to-manage-connection-groups-on-a-stand-alone-computer-by-using-powershell51.md).

When you place packages in a connection group, their package root paths are merged. If you remove packages, only the remaining packages maintain the merged root.

**To create a connection group**

1.  In the App-V 5.1 Management Console, select **CONNECTION GROUPS** to display the Connection Groups library.

2.  Select **ADD CONNECTION GROUP** to create a new connection group.

3.  In the **New Connection Group** pane, type a description for the group.

4.  Click **EDIT** in the **CONNECTED PACKAGES** pane to add a new application to the connection group.

5.  In the **PACKAGES Entire Library** pane, select the application to be added, and click the arrow to add the application.

    To remove an application, select the application to be removed in the **PACKAGES IN** pane and click the arrow.

    To reprioritize the applications in your connection group, use the arrows in the **PACKAGES IN** pane.

    **Important**  
    By default, the Active Directory Domain Services access configurations that are associated with a specific application are not added to the connection group. To transfer the Active Directory access configuration, select **ADD PACKAGE ACCESS TO GROUP ACCESS**, which is located in the **PACKAGES IN** pane.

     

6.  After adding all the applications and configuring Active Directory access, click **Apply**.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)

[Managing Connection Groups](managing-connection-groups51.md)

 

 





