---
title: How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.0 Package for All Users on a Specific Computer
description: How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.0 Package for All Users on a Specific Computer
ms.assetid: 3ae9996f-71d9-4ca1-9aab-25b599158e55
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

# How to Migrate Extension Points From an App-V 4.6 Package to a Converted App-V 5.0 Package for All Users on a Specific Computer

**Note:** App-V 4.6 has exited Mainstream support.

Use the following procedure to migrate extension points from an App-V 4.6 package to a App-V 5.0 package using the deployment configuration file.

**Note**  
The following procedure does not require an App-V 5.0 management server.

 

**To migrate extension points from a package from an App-V 4.6 package to a converted App-V 5.0 package using the deployment configuration file**

1.  Locate the directory that contains the deployment configuration file for the package you want to migrate. To set the policy, make the following update to the **userConfiguration** section:

    **ManagingAuthority TakeoverExtensionPointsFrom46="true" PackageName=&lt;Package ID&gt;**

    The following is an example of content from a deployment configuration file:

    &lt;?xml version="1.0" ?&gt;

    &lt;DeploymentConfiguration

    xmlns="http://schemas.microsoft.com/appv/2010/deploymentconfiguration" PackageId=&lt;Package ID&gt; DisplayName=&lt;Display Name&gt;

    &lt;MachineConfiguration/&gt;

    &lt;UserConfiguration&gt;

    &lt;ManagingAuthority TakeoverExtensionPointsFrom46="true"

    PackageName=&lt;Package ID&gt;

    &lt;/UserConfiguration&gt;

    &lt;/DeploymentConfiguration&gt;

2.  To add the App-V 5.0 package, in an elevated PowerShell command prompt type:

    PS&gt;**$pkg= Add-AppvClientPackage** **–Path** &lt;Path to package location&gt; -**DynamicDeploymentConfiguration** &lt;Path to the deployment configuration file&gt;

    PS&gt;**Publish-AppVClientPackage $pkg**

3.  To test the migration, open the virtual application using asscoaited FTAs or shortcuts. The application opens with App-V 5.0. Both, the App-V 4.6 package and the converted App-V 5.0 package are published to the user, but the FTAs and shortcuts for the applications have been assumed by the App-V 5.0 package.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[How to Revert Extension Points from an App-V 5.0 Package to an App-V 4.6 Package For All Users on a Specific Computer](how-to-revert-extension-points-from-an-app-v-50-package-to-an-app-v-46-package-for-all-users-on-a-specific-computer.md)

[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





