---
title: How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console (Windows 10/11)
description: How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console
author: aczechowski
ms.prod: windows-client
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.technology: itpro-apps
---

# How to Transfer Access and Configurations to Another Version of a Package by Using the Management Console

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

Use the following procedure to transfer the access and default package configurations to another version of a package by using the management console.

**To transfer access and configurations to another version of a package**

1.  To view the package that you want to configure, open the App-V Management Console. Select the package to which you'll transfer the new configuration, right-click the package and select **transfer default configuration from** or **transfer access and configurations from**, depending on the configuration that you want to transfer.

2.  To transfer the configuration, in the **Select Previous Version** dialog box, select the package that contains the settings that you want to transfer, and then click **OK**.

    If you select **transfer default configuration from**, then only the underlying dynamic deployment configuration will be transferred.

    If you select **transfer access and configurations from**, then all access permissions, and the configuration settings, will be copied.



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles

[Operations for App-V](appv-operations.md)
