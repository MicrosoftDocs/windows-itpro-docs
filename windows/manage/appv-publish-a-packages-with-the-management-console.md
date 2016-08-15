---
title: How to Publish a Package by Using the Management Console (Windows 10)
description: How to Publish a Package by Using the Management Console
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Publish a Package by Using the Management Console

Applies to: Windows 10, version 1607

Use the following procedure to publish an App-V package. Once you publish a package, computers that are running the App-V client can access and run the applications in that package.

**Note**  
The ability to enable only administrators to publish or unpublish packages (described below) is supported starting in App-V 5.0 SP3.

 

**To publish an App-V package**

1.  In the App-V Management console. Click or right-click the name of the package to be published. Select **Publish**.

2.  Review the **Status** column to verify that the package has been published and is now available. If the package is available, the status **published** is displayed.

    If the package is not published successfully, the status **unpublished** is displayed, along with error text that explains why the package is not available.

**To enable only administrators to publish or unpublish packages**

1.  Navigate to the following Group Policy Object node:

    **Computer Configuration &gt; Administrative Templates &gt; System &gt; App-V &gt; Publishing**.

2.  Enable the **Require publish as administrator** Group Policy setting.

    To alternatively use PowerShell to set this item, see [How to Manage App-V Packages Running on a Stand-Alone Computer by Using PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#bkmk-admins-pub-pkgs).

    **Have a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)

[How to Configure Access to Packages by Using the Management Console](appv-configure-access-to-packages-with-the-management-console.md)

 

 





