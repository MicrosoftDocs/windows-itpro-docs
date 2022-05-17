---
title: How to publish a package by using the Management console (Windows 10/11)
description: Learn how the Management console in App-V can help you enable admin controls as well as publish App-V packages.
author: aczechowski
ms.prod: w10
ms.date: 09/27/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
---

# How to publish a package by using the Management console

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

Use the following procedure to publish an App-V package. Once you publish a package, computers running the App-V client can access and run the applications in that package.

> [!NOTE]
> The ability to enable only administrators to publish or unpublish packages (described below) is supported starting in App-V 5.0 SP3.

## Publish an App-V package

1. In the App-V Management console. Select or right-click the name of the package to be published. Select **Publish**.

2. Review the **Status** column to verify that the package has been published and is now available. If the package is available, the status **published** is displayed.

    If the package is not published successfully, the status **unpublished** is displayed, along with error text that explains why the package is not available.

## Enable only administrators to publish or unpublish packages

1. Navigate to the following Group Policy Object node:

    **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **App-V** &gt; **Publishing**.

2. Enable the **Require publish as administrator** Group Policy setting.

    To instead use Windows PowerShell to set this item, see [Understanding pending packages: UserPending and GlobalPending](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#about-pending-packages-userpending-and-globalpending).





## Related articles

* [Operations for App-V](appv-operations.md)
* [How to configure access to packages by using the Management console](appv-configure-access-to-packages-with-the-management-console.md)
