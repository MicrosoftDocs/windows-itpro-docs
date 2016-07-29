---
title: How to Enable Only Administrators to Publish Packages by Using an ESD
description: How to Enable Only Administrators to Publish Packages by Using an ESD
author: jamiejdt
ms.assetid: bbc9fda2-fc09-4d72-8d9a-e83d2fcfe234
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Enable Only Administrators to Publish Packages by Using an ESD


Starting in App-V 5.0 SP3, you can configure the App-V client so that only administrators (not end users) can publish or unpublish packages. In earlier versions of App-V, you could not prevent end users from performing these tasks.

**To enable only administrators to publish or unpublish packages**

1.  Navigate to the following Group Policy Object node:

    **Computer Configuration &gt; Policies &gt; Administrative Templates &gt; System &gt; App-V &gt; Publishing**.

2.  Enable the **Require publish as administrator** Group Policy setting.

    To alternatively use PowerShell to set this item, see [How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#bkmk-admins-pub-pkgs).

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

 

 





