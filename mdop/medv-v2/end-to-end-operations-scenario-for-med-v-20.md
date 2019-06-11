---
title: End-to-End Operations Scenario for MED-V 2.0
description: End-to-End Operations Scenario for MED-V 2.0
author: levinec
ms.assetid: 1d87f5f3-9fc5-4731-8bd1-c155714f34ee
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# End-to-End Operations Scenario for MED-V 2.0


This sample scenario for Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 helps you deploy and manage MED-V by using multiple scenarios end-to-end. You can think of this sample scenario as a case study that helps put the individual scenarios and procedures in context.

This section provides basic information and directions for creating, deploying, and managing MED-V workspaces as an end-to-end solution in your enterprise.

## MED-V Operations Step-by-step Scenario


The step-by-step procedures that you follow in a MED-V operations scenario include the following:

-   [Creating a Windows Virtual PC Image for MED-V](creating-a-windows-virtual-pc-image-for-med-v.md#bkmk-creatingavirtualmachinebyusingmicrosoftvirtualpc) reviews how to create and configure a Windows Virtual PC image for MED-V. Before you can deliver a MED-V workspace to users, you must first prepare a virtual hard disk (VHD) that you use to build the MED-V workspace installer package for MED-V.

-   [Creating a Windows Virtual PC Image for MED-V](creating-a-windows-virtual-pc-image-for-med-v.md#bkmk-installingwindowsxpontovpc) reviews how to install the Windows XP SP3 operating system on your Windows Virtual PC image. MED-V requires that Windows XP SP3 is installed on the Windows Virtual PC image before you build the MED-V workspace.

-   [Creating a Windows Virtual PC Image for MED-V](creating-a-windows-virtual-pc-image-for-med-v.md#bkmk-installingnet) reviews how to manually install the .NET Framework 3.5 SP1 and the update KB959209 into the Windows Virtual PC image that you prepare for use with MED-V. MED-V requires the .NET Framework 3.5 SP1, and the update [KB959209](https://go.microsoft.com/fwlink/?LinkId=204950) (https://go.microsoft.com/fwlink/?LinkId=204950) addresses several known application compatibility issues.

-   [Creating a Windows Virtual PC Image for MED-V](creating-a-windows-virtual-pc-image-for-med-v.md#bkmk-applypatchestovpc) reviews how to update your Windows XP image with the latest software updates and other hotfixes necessary or important for running MED-V.

-   [Creating a Windows Virtual PC Image for MED-V](creating-a-windows-virtual-pc-image-for-med-v.md#bkmk-installintegration) reviews how to install the integration components package in your Windows XP image. These provide features that improve the interaction between the virtual environment and the physical computer.

-   [Installing Applications on a Windows Virtual PC Image](installing-applications-on-a-windows-virtual-pc-image.md) reviews how you can install certain kinds of software on your Windows XP image that are helpful when you are running MED-V, such as an electronic software distribution system and antivirus software.

-   [Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md) discusses how to configure the image by using Sysprep to make sure that it is ready for use with MED-V. The prepared MED-V image is then used to create your MED-V workspace package.

-   [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md) reviews how to build the MED-V workspace package that you deploy throughout your enterprise. You deploy the MED-V workspace package to install the MED-V workspace on end-user computers. A MED-V workspace is the Windows XP desktop environment from which end users interact with the virtual machine provided by MED-V.

-   [Testing the MED-V Workspace Package](testing-the-med-v-workspace-package.md) discusses how to create a test environment in which you can test the functionality of the MED-V workspace package, such as first time setup settings and application publishing. After you have completed testing your MED-V workspace package and have verified that it is functioning as intended, you can deploy it throughout your enterprise.

-   [Deploying the MED-V Workspace Package](deploying-the-med-v-workspace-package.md) discusses how to deploy the MED-V workspace either by using an electronic software distribution system or in a Windows 7 image. Or if you prefer, this section also shows you how you can deploy the MED-V workspace manually.

-   [Monitor MED-V Workspaces](monitor-med-v-workspaces.md) reviews how to monitor the deployment of MED-V workspaces to determine whether first time setup completed successfully. Monitoring the success of first time setup is important because MED-V is not in a usable state until first time setup has completed successfully. This section also shows you can set up your environment to detect those network changes that can affect MED-V.

-   [Manage MED-V Workspace Applications](manage-med-v-workspace-applications.md) reviews how to install and remove or publish and unpublish applications on a deployed MED-V workspace. This section also shows how to manually update software in a MED-V workspace and how to manage automatic updates. The MED-V workspace is a virtual machine that contains a separate operating system whose automatic software update process must be managed exactly like the physical computers in your enterprise.

-   [Manage MED-V URL Redirection](manage-med-v-url-redirection.md) reviews how to add and remove web address redirection settings on the deployed MED-V workspace. You can add or remove URL redirection information through the registry or by rebuilding the MED-V workspace. You can also use the wizard on the MED-V Workspace Packager to manage web address redirection.

-   [Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md) reviews how to view and edit MED-V configuration settings by using the MED-V Workspace Packager. This section lists all the configurable MED-V registry keys and includes the type, default, and description of each. This section also includes information about how to manage printers in MED-V workspaces. In MED-V 2.0, printer redirection gives users a consistent printing experience between the MED-V virtual machine and the host computer.

## Related topics


[Operations for MED-V](operations-for-med-v.md)

[End-to-End Planning Scenario for MED-V 2.0](end-to-end-planning-scenario-for-med-v-20.md)

[End-to-End Deployment Scenario for MED-V 2.0](end-to-end-deployment-scenario-for-med-v-20.md)

 

 





