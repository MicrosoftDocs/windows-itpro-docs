---
title: Deploying the App-V 5.1 Sequencer and Client
description: Deploying the App-V 5.1 Sequencer and Client
author: dansimp
ms.assetid: 74f32794-4c76-436f-a542-f9e95d89063d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---


# Deploying the App-V 5.1 Sequencer and Client


The Microsoft Application Virtualization (App-V) 5.1 Sequencer and client enable administrators to virtualize and run virtualized applications.

## Deploy the client


The App-V 5.1 client is the component that runs a virtualized application on a target computer. The client enables users to interact with icons and to double-click file types, so that they can start a virtualized application. The client can also obtain the virtual application content from the management server.

[How to Deploy the App-V Client](how-to-deploy-the-app-v-client-51gb18030.md)

[How to Uninstall the App-V 5.1 Client](how-to-uninstall-the-app-v-51-client.md)

[How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer](how-to-deploy-the-app-v-46-and-the-app-v--51-client-on-the-same-computer.md)

## Client Configuration Settings


The App-V 5.1 client stores its configuration in the registry. You can gather some useful information about the client if you understand the format of data in the registry. You can also configure many client actions by changing registry entries.

[About Client Configuration Settings](about-client-configuration-settings51.md)

## Configure the client by using the ADMX template and Group Policy


You can use the Microsoft ADMX template to configure the client settings for the App-V 5.1 client and the Remote Desktop Services client. The ADMX template manages common client configurations by using an existing Group Policy infrastructure and it includes settings for the App-V 5.1 client configuration.

**Important**  
You can obtain the App-V 5.1 ADMX template from the Microsoft Download Center.

 

After you download and install the ADMX template, perform the following steps on the computer that you will use to manage Group Policy. This is typically the Domain Controller.

1.  Save the **.admx** file to the following directory: **Windows \\ PolicyDefinitions**

2.  Save the **.adml** file to the following directory: **Windows \\ PolicyDefinitions \\ &lt;Language Directory&gt;**

After you have completed the preceding steps, you can manage the App-V 5.1 client configuration settings with the **Group Policy Management** console.

The App-V 5.1 client also stores its configuration in the registry. You can gather some useful information about the client if you understand the format of the data in the registry. You can also configure many client actions by changing registry entries.

[How to Modify App-V 5.1 Client Configuration Using the ADMX Template and Group Policy](how-to-modify-app-v-51-client-configuration-using-the-admx-template-and-group-policy.md)

## Deploy the client by using the Shared Content Store mode


The App-V 5.1 Shared Content Store (SCS) mode enables the SCS App-V 5.1 clients to run virtualized applications without saving any of the associated package data locally. All required virtualized package data is transmitted across the network; therefore, you should only use the SCS mode in environments with a fast connection. Both the Remote Desktop Services (RDS) and the standard version of the App-V 5.1 client are supported with SCS mode.

**Important**  
If the App-V 5.1 client is configured to run in the SCS mode, the location where the App-V 5.1 packages are streamed from must be available, otherwise, the virtualized package will fail. Additionally, we do not recommend deployment of virtualized applications to computers that run the App-V 5.1 client in the SCS mode across the internet.

 

Additionally, the SCS is not a physical location that contains virtualized packages. It is a mode that allows the App-V 5.1 client to stream the required virtualized package data across the network.

The SCS mode is helpful in the following scenarios:

-   Virtual desktop infrastructure (VDI) deployments

-   Remote desktop services (RDS) deployments

To use SCS in your environment, you must enable the App-V 5.1 client to run in SCS mode. This setting should be specified during installation. By default, the client is not configured to use SCS mode. You should install the client by using the suggested procedure if you plan to use SCS. However, you can configure an existing App-V 5.1 client to run in SCS mode by entering the following PowerShell command on the computer that runs the App-V 5.1 client:

**set-AppvClientConfiguration -SharedContentStoreMode 1**

There might be cases when the administrator pre-loads some virtual applications on the computer that runs the App-V 5.1 client in SCS mode. This can be accomplished with PowerShell commands to add, publish, and mount the package. For example, if a package is pre-loaded on all computers, the administrator could add, publish, and mount the package by using PowerShell commands. The package would not stream across the network because it would be locally stored.

[How to Install the App-V 5.1 Client for Shared Content Store Mode](how-to-install-the-app-v-51-client-for-shared-content-store-mode.md)

## Deploy the Sequencer


The Sequencer is a tool that is used to convert standard applications into virtual packages for deployment to computers that run the App-V 5.1 client. The Sequencer helps provide a simple and predictable conversion process with minimal changes to prior sequencing workflows. In addition, the Sequencer allows users to more easily configure applications to enable connections of virtualized applications.

For a list of changes in the App-V 5.1 Sequencer, see [About App-V 5.1](about-app-v-51.md).

[How to Install the Sequencer](how-to-install-the-sequencer-51beta-gb18030.md)

## <a href="" id="---------app-v-5-1-client-and-sequencer-logs"></a> App-V 5.1 Client and Sequencer logs


You can use the App-V 5.1 Sequencer log information to help troubleshoot the Sequencer installation and operational events while using App-V 5.1. The Sequencer-related log information can be reviewed with the **Event Viewer**. The following line displays the specific path for Sequencer-related events:

**Event Viewer \\ Applications and Services Logs \\ Microsoft \\ App V**. Sequencer-related events are prepended with **AppV\_Sequencer**. Client-related events are prepended with **AppV\_Client**.

## Other resources for deploying the Sequencer and client


[Deploying App-V 5.1](deploying-app-v-51.md)

[Planning for App-V 5.1](planning-for-app-v-51.md)






 

 





