---
title: How to create a connection group (Windows 10)
description: How to create a connection group with the App-V Management Console.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.topic: article
---
# How to create a connection group

>Applies to: Windows 10, version 1607

Use these steps to create a connection group by using the App-V Management Console. To use Windows PowerShell to create connection groups, see [How to manage connection groups on a stand-alone computer by using Windows PowerShell](appv-manage-connection-groups-on-a-stand-alone-computer-with-powershell.md).

When you place packages in a connection group, their package root paths merge. If you remove packages, only the remaining packages maintain the merged root.

## Create a connection group

1. In the App-V Management Console, select **CONNECTION GROUPS** to display the Connection Groups library.

2. Select **ADD CONNECTION GROUP** to create a new connection group.

3. In the **New Connection Group** pane, enter a description for the group.

4. Select **EDIT** in the **CONNECTED PACKAGES** pane to add a new application to the connection group.

5. In the **PACKAGES Entire Library** pane, select the application to be added, then select the arrow to add the application.

    To remove an application, select the application to be removed in the **PACKAGES IN** pane and select the arrow.

    To reprioritize the applications in your connection group, use the arrows in the **PACKAGES IN** pane.

    >[!IMPORTANT]
    >By default, the Active Directory Domain Services access configurations that are associated with a specific application are not added to the connection group. To transfer the Active Directory access configuration, select **ADD PACKAGE ACCESS TO GROUP ACCESS**, which is located in the **PACKAGES IN** pane.

6. After adding all the applications and configuring Active Directory access, select **Apply**.





## Related topics

- [Operations for App-V](appv-operations.md)
- [Managing connection groups](appv-managing-connection-groups.md)
