---
title: Deploying the App-V Sequencer and Configuring the Client (Windows 10)
description: Deploying the App-V Sequencer and Configuring the Client
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Deploying the App-V Sequencer and Configuring the Client

Applies to: Windows 10, version 1607

The App-V Sequencer and client enable administrators to virtualize and run virtualized applications.

## Enable the client

The App-V client is the component that runs a virtualized application on a target computer. The client enables users to interact with icons and to double-click file types, so that they can start a virtualized application. The client can also obtain the virtual application content from the management server.

> [!NOTE]  
> In Windows 10, version 1607, App-V is included with the OS. You only need to enable it.

[Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md)

## Client Configuration Settings

The App-V client stores its configuration in the registry. You can gather some useful information about the client if you understand the format of data in the registry. You can also configure many client actions by changing registry entries.

[About Client Configuration Settings](appv-client-configuration-settings.md)

## Configure the client by using the ADMX template and Group Policy

You can use Group Policy to configure the client settings for the App-V client and the Remote Desktop Services client.

Perform the following steps on the computer that you will use to manage Group Policy. This is typically the Domain Controller.

1.  Save the **.admx** file to the following directory: **Windows \\ PolicyDefinitions**

2.  Save the **.adml** file to the following directory: **Windows \\ PolicyDefinitions \\ <Language Directory>**

After you have completed the preceding steps, you can manage the App-V client configuration settings with the **Group Policy Management** console.

[How to Modify App-V Client Configuration Using the ADMX Template and Group Policy](appv-modify-client-configuration-with-the-admx-template-and-group-policy.md)

## Understanding Shared Content Store mode for App-V clients

The App-V Shared Content Store (SCS) mode enables the SCS App-V clients to run virtualized applications without saving any of the associated package data locally. All required virtualized package data is transmitted across the network; therefore, you should only use the SCS mode in environments with a fast connection. Both the Remote Desktop Services (RDS) and the standard version of the App-V client are supported with SCS mode.

> [!IMPORTANT]  
> If the App-V client is configured to run in the SCS mode, the location where the App-V packages are streamed from must be available, otherwise, the virtualized package will fail. Additionally, we do not recommend deployment of virtualized applications to computers that run the App-V client in the SCS mode across the internet.

Additionally, the SCS is not a physical location that contains virtualized packages. It is a mode that allows the App-V client to stream the required virtualized package data across the network.

The SCS mode is helpful in the following scenarios:

-   Virtual desktop infrastructure (VDI) deployments

-   Remote Desktop Services deployments

To use SCS in your environment, you must configure the App-V client to run in SCS mode (it will not use SCS mode by default). 

There might be cases when the administrator pre-loads some virtual applications on the computer that runs the App-V client in SCS mode. This can be accomplished with Windows PowerShell commands to add, publish, and mount the package. For example, if a package is pre-loaded on all computers, the administrator could add, publish, and mount the package by using Windows PowerShell commands. The package would not stream across the network because it would be locally stored.

### Configure the Group Policy setting for the SCS Mode for App-V clients

Use the following steps to locate and configure the Group Policy setting for the SCS Mode for App-V clients.

1.  In the Group Policy Management Console, navigate to **Computer Configuration** > **Administrative Templates** > **System** > **App-V** > **Streaming**.

2.  Enable the **Set the Shared Content Mode (SCS) mode** setting.

### Configure an individual client to use the SCS mode

To configure the App-V client to run in SCS mode, on the client, enter the following Windows PowerShell command:

```
Set-AppvClientConfiguration -SharedContentStoreMode 1
```

## Deploy the Sequencer

The Sequencer is a tool that is used to convert standard applications into virtual packages for deployment to computers that run the App-V client. The Sequencer helps provide a simple and predictable conversion process with minimal changes to prior sequencing workflows. In addition, the Sequencer allows users to more easily configure applications to enable connections of virtualized applications.

For a list of changes in the App-V Sequencer, see [What's new in App-V](appv-about-appv.md#bkmk-seqimprove).

To deploy the sequencer, see [How to Install the Sequencer](appv-install-the-sequencer.md).

## App-V Client and Sequencer logs


You can use the App-V Sequencer log information to help troubleshoot the Sequencer installation and operational events while using App-V. The Sequencer-related log information can be reviewed with the **Event Viewer**. The following line displays the specific path for Sequencer-related events:

**Event Viewer \\ Applications and Services Logs \\ Microsoft \\ App V**. Sequencer-related events are prepended with **AppV\_Sequencer**. Client-related events are prepended with **AppV\_Client**.

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
