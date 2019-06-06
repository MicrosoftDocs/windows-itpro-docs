---
title: How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.0 for a Specific User
description: How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.0 for a Specific User
ms.assetid: dad25992-3c75-4b7d-b4c6-c2edf43baaea
ms.reviewer: 
manager: dansimp
ms.author: dansimp
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---

# How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.0 for a Specific User

*Note:** App-V 4.6 has exited Mainstream support.

Use the following procedure to migrate packages created with App-V using the user configuration file.

**To convert a package**

1.  Locate the user configuration file for the package you want to convert. To set the policy, perform the following updates in the **userConfiguration** section: **ManagingAuthority TakeoverExtensionPointsFrom46="true" PackageName=&lt;Package ID&gt;**.

    The following is an example of a user configuration file:

    &lt;?xml version="1.0" ?&gt;

    &lt;UserConfiguration PackageId=&lt;Package ID&gt; DisplayName=&lt;Name of the Package&gt;

    xmlns="http://schemas.microsoft.com/appv/2010/userconfiguration"&gt; &lt;ManagingAuthority TakeoverExtensionPointsFrom46="true"

    PackageName=&lt;Package ID&gt;

    &lt;/UserConfiguration&gt;

2.  To add the App-V 5.0 package type the following in an elavted PowerShell command prompt:

    PS&gt;**$pkg= Add-AppvClientPackage –Path** &lt;Path to package location&gt;

    PS&gt;**Publish-AppVClientPackage $pkg -DynamicUserConfiguration** &lt;Path to the user configuration file&gt;

3.  Open the application using FTAs or shortcuts now. The application should open using App-V 5.0.

    The App-V SP2 package and the converted App-V 5.0 package are published to the user, but the FTAs and shortcuts for the applications have been assumed by the App-V 5.0 package.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





