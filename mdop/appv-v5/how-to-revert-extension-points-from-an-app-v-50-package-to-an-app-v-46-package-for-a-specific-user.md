ms.reviewer: 
title: How to Revert Extension Points From an App-V 5.0 Package to an App-V 4.6 Package for a Specific User
description: How to Revert Extension Points From an App-V 5.0 Package to an App-V 4.6 Package for a Specific User
ms.assetid: f1d2ab1f-0831-4976-b49f-169511d3382a
author: dansimp
ms.assetid: f1d2ab1f-0831-4976-b49f-169511d3382a
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---

# How to Revert Extension Points From an App-V 5.0 Package to an App-V 4.6 Package for a Specific User

*Note:** App-V 4.6 has exited Mainstream support.

Use the following procedure to revert an App-V 5.0 package to the App-V file format using the user configuration file.

**To revert a package**

1.  Ensure that App-V 4.6 package is published to the users but the FTAs and shortcuts have been assumed by App-V 5.0 package using the following migration method, [How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.0 for a Specific User](how-to-migrate-extension-points-from-an-app-v-46-package-to-app-v-50-for-a-specific-user.md).

    In the **userConfiguration** section of the deployment configuration file for the converted package, to set the policy, make the following update to the **userConfiguration** section: **ManagingAuthority TakeoverExtensionPointsFrom46="false" PackageName=&lt;Package ID&gt;**

2.  From an elevated command prompt, type:

    PS&gt;**Publish-AppVClientPackage $pkg –DynamicUserConfigurationPath** &lt;path to user configuration file&gt;

3.  Perform a publishing refresh, or wait for the next scheduled publishing refresh for the App-V 4.6. Open the application using FTAs or shortcuts. The Application should now open using App-V 4.6 SP2.

    **Note**  
    If you do not need the App-V 5.0 package anymore, you can unpublish the App-V 5.0 package and the extension points will automatically revert to App-V 4.6.



~~~
**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).
~~~

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)












