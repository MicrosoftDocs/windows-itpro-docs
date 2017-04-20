---
title: How to Create a Connection Group (Windows 10)
description: How to Create a Connection Group
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Create a Connection Group

**Applies to**
-   Windows 10, version 1607

Use these steps to create a connection group by using the App-V Management Console. To use Windows PowerShell to create connection groups, see [How to Manage Connection Groups on a Stand-alone Computer by Using Windows PowerShell](appv-manage-connection-groups-on-a-stand-alone-computer-with-powershell.md).

When you place packages in a connection group, their package root paths are merged. If you remove packages, only the remaining packages maintain the merged root.

**To create a connection group**

1.  In the App-V Management Console, select **CONNECTION GROUPS** to display the Connection Groups library.

2.  Select **ADD CONNECTION GROUP** to create a new connection group.

3.  In the **New Connection Group** pane, type a description for the group.

4.  Click **EDIT** in the **CONNECTED PACKAGES** pane to add a new application to the connection group.

5.  In the **PACKAGES Entire Library** pane, select the application to be added, and click the arrow to add the application.

    To remove an application, select the application to be removed in the **PACKAGES IN** pane and click the arrow.

    To reprioritize the applications in your connection group, use the arrows in the **PACKAGES IN** pane.

    **Important**<br>
    By default, the Active Directory Domain Services access configurations that are associated with a specific application are not added to the connection group. To transfer the Active Directory access configuration, select **ADD PACKAGE ACCESS TO GROUP ACCESS**, which is located in the **PACKAGES IN** pane.

6.  After adding all the applications and configuring Active Directory access, click **Apply**.

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Operations for App-V](appv-operations.md)

[Managing Connection Groups](appv-managing-connection-groups.md)
