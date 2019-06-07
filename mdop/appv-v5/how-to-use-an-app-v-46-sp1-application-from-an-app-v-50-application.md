ms.reviewer: 
title: How to Use an App-V 4.6 Application From an App-V 5.0 Application
description: How to Use an App-V 4.6 Application From an App-V 5.0 Application
ms.assetid: 4e78cb32-9c8b-478e-ae8b-c474a7e42487
author: msfttracyp
ms.assetid: 4e78cb32-9c8b-478e-ae8b-c474a7e42487
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---

# How to Use an App-V 4.6 Application From an App-V 5.0 Application

*Note:** App-V 4.6 has exited Mainstream support. The following applies to an App-V 4.6 SP3 package.

Use the following procedure to run an App-V 4.6 application with App-V 5.0 applications on a standalone client.

**To run applications on a standalone client**

1.  Select two applications in your environment that can be opened from one another. For example, Microsoft Outlook and Adobe Acrobat Reader. You can access an email attachment created using Adobe Acrobat.

2.  Convert the packages, or create a new package for either of the applications using the App-V 5.0 format. For more information about converting packages see, [How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.0 Package for All Users on a Specific Computer](how-to-migrate-extension-points-from-an-app-v-46-package-to-a-converted-app-v-50-package-for-all-users-on-a-specific-computer.md) or [How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.0 for a Specific User](how-to-migrate-extension-points-from-an-app-v-46-package-to-app-v-50-for-a-specific-user.md).

3.  Add and provision the package using the App-V 5.0 management console. For more information adding and provisioning packages see, [How to Add or Upgrade Packages by Using the Management Console](how-to-add-or-upgrade-packages-by-using-the-management-console-beta-gb18030.md) and [How to Configure Access to Packages by Using the Management Console](how-to-configure-access-to-packages-by-using-the-management-console-50.md).

4.  The converted application now runs using App-V 5.0 and you can open one application from the other. For example, if you converted a Microsoft Office package to an App-V 5.0 package and Adobe Acrobat is still running as an App-V 4.6 package, you can open an Adobe Acrobat Reader attachment using Microsoft Outlook.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 








