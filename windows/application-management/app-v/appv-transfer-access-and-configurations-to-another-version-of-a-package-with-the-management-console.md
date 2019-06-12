---
title: How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console (Windows 10)
description: How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
---


# How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console

**Applies to**
-   Windows 10, version 1607

Use the following procedure to transfer the access and default package configurations to another version of a package by using the management console.

**To transfer access and configurations to another version of a package**

1.  To view the package that you want to configure, open the App-V Management Console. Select the package to which you will transfer the new configuration, right-click the package and select **transfer default configuration from** or **transfer access and configurations from**, depending on the configuration that you want to transfer.

2.  To transfer the configuration, in the **Select Previous Version** dialog box, select the package that contains the settings that you want to transfer, and then click **OK**.

    If you select **transfer default configuration from**, then only the underlying dynamic deployment configuration will be transferred.

    If you select **transfer access and configurations from**, then all access permissions, as well as the configuration settings, will be copied.



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Operations for App-V](appv-operations.md)
