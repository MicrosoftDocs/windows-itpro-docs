---
title: How to Use an App-V 4.6 Application From an App-V Application (Windows 10)
description: How to Use an App-V 4.6 Application From an App-V Application
author: jamiejdt
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# How to Use an App-V 4.6 Application From an App-V Application


Use the following procedure to run an App-V 4.6 application with App-V applications on a standalone client.

**Note**  
This procedure assumes that you are running the latest version of App-V 4.6.

**To run applications on a standalone client**

1.  Select two applications in your environment that can be opened from one another. For example, Microsoft Outlook and Adobe Acrobat Reader. You can access an email attachment created using Adobe Acrobat.

2.  Convert the packages, or create a new package for either of the applications using the App-V format. For more information about converting packages see, [How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V Package for All Users on a Specific Computer](appv-migrate-extension-points-from-an-appv-46-sp2-package-to-a-converted-appv-51-package-for-all-users-on-a-specific-computer.md) or [How to Migrate Extension Points From an App-V 4.6 Package to App-V for a Specific User](appv-migrate-extension-points-from-an-appv-46-sp2-package-to-appv-51-for-a-specific-user.md).

3.  Add and provision the package using the App-V management console. For more information adding and provisioning packages see, [How to Add or Upgrade Packages by Using the Management Console](appv-add-or-upgrade-packages-with-the-management-console.md) and [How to Configure Access to Packages by Using the Management Console](appv-configure-access-to-packages-with-the-management-console.md).

4.  The converted application now runs using App-V and you can open one application from the other. For example, if you converted a Microsoft Office package to an App-V package and Adobe Acrobat is still running as an App-V 4.6 package, you can open an Adobe Acrobat Reader attachment using Microsoft Outlook.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)

 

 





