---
title: How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.1 for a Specific User
description: How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.1 for a Specific User
author: dansimp
ms.assetid: 19da3776-5ebe-41e1-9890-12b84ef3c1c7
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---


# How to Migrate Extension Points From an App-V 4.6 Package to App-V 5.1 for a Specific User


Use the following procedure to migrate packages created with App-V using the user configuration file.

**Note**  
This procedure assumes that you are running the latest version of App-V 4.6.

**To convert a package**

1.  Locate the user configuration file for the package you want to convert. To set the policy, perform the following updates in the **userConfiguration** section: **ManagingAuthority TakeoverExtensionPointsFrom46="true" PackageName=&lt;Package ID&gt;**.

    The following is an example of a user configuration file:

    &lt;?xml version="1.0" ?&gt;

    &lt;UserConfiguration PackageId=&lt;Package ID&gt; DisplayName=&lt;Name of the Package&gt;

    xmlns="http://schemas.microsoft.com/appv/2010/userconfiguration"&gt; &lt;ManagingAuthority TakeoverExtensionPointsFrom46="true"

    PackageName=&lt;Package ID&gt;

    &lt;/UserConfiguration&gt;

2.  To add the App-V 5.1 package, type the following in an elevated PowerShell command prompt window:

    PS&gt;**$pkg= Add-AppvClientPackage –Path** &lt;Path to package location&gt;

    PS&gt;**Publish-AppVClientPackage $pkg -DynamicUserConfiguration** &lt;Path to the user configuration file&gt;

3.  Open the application using FTAs or shortcuts now. The application should open using App-V 5.1.

    The App-V 4.6 package and the converted App-V 5.1 package are published to the user, but the FTAs and shortcuts for the applications have been assumed by the App-V 5.1 package.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)

[How to Revert Extension Points From an App-V 5.1 Package to an App-V 4.6 Package for a Specific User](how-to-revert-extension-points-from-an-app-v-51-package-to-an-app-v-46-package-for-a-specific-user.md)

 

 





