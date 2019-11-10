---
title: How to Create a Custom Configuration File by Using the App-V 5.0 Management Console
description: How to Create a Custom Configuration File by Using the App-V 5.0 Management Console
author: dansimp
ms.assetid: 0d1f6768-be30-4682-8eeb-aa95918b24c3
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Create a Custom Configuration File by Using the App-V 5.0 Management Console


You can use a dynamic configuration to customize an App-V 5.0 package for a specific user. However, you must first create the dynamic user configuration (.xml) file or the dynamic deployment configuration file before you can use the files. Creation of the file is an advanced manual operation. For general information about dynamic user configuration files, see, [About App-V 5.0 Dynamic Configuration](about-app-v-50-dynamic-configuration.md).

Use the following procedure to create a Dynamic User Configuration file by using the App-V 5.0 Management console.

**To create a Dynamic User Configuration file**

1.  Right-click the name of the package that you want to view and select **Edit active directory access** to view the configuration that is assigned to a given user group. Alternatively, select the package, and click **Edit**.

2.  Using the list of **AD Entities with Access**, select the AD group that you want to customize. Select **Custom** from the drop-down list, if it is not already selected. A link named **Edit** will be displayed.

3.  Click **Edit**. The Dynamic User Configuration that is assigned to the AD Group will be displayed.

4.  Click **Advanced**, and then click **Export Configuration**. Type in a filename and click **Save**. Now you can edit the file to configure a package for a user.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Operations for App-V 5.0](operations-for-app-v-50.md)

 

 





