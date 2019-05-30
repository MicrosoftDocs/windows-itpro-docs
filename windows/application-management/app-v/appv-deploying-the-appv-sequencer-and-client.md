---
title: Deploying the App-V Sequencer and configuring the client (Windows 10)
description: Deploying the App-V Sequencer and configuring the client
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Deploying the App-V Sequencer and configuring the client

>Applies to: Windows 10, version 1607

The App-V Sequencer and client let administrators to virtualize and run virtual applications.

## Enable the client

The App-V client is the component that runs a virtualized application on a target computer. The client lets users interact with icons and file types, starting virtualized applications. The client can also get the virtual application content from the management server.

>[!NOTE]
>In Windows 10, version 1607, App-V is included with the operating system. You only need to enable it.

[Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md)

## Client configuration settings

The App-V client stores its configuration in the registry. Understanding the format used in the data registry can help you learn useful information about the client. For information about client settings that you can configure through Windows PowerShell or through the registry, see [About client configuration settings](appv-client-configuration-settings.md).

## Configure the client by using the ADMX template and Group Policy

You can use Group Policy to configure the client settings for the App-V client and the Remote Desktop Services client.

To manage the ADMX template, perform the following steps on the computer that you will use to manage Group Policy. This is typically the Domain Controller.

1. Save the **.admx** file to the following directory: ```Windows\PolicyDefinitions```
2. Save the **.adml** file to the following directory: ```Windows\PolicyDefinitions\<Language Directory>```

After you have completed the preceding steps, you can use Group Policy to configure the client settings by using the Group Policy Management Console under **Computer Configuration** > **Administrative Templates** > **System** > **App-V**.

## Understanding Shared Content Store mode for App-V clients

App-V Shared Content Store (SCS) mode lets SCS App-V clients run virtualized applications without having to save any of the associated package data locally. All required virtualized package data is transmitted across the network; therefore, you should only use SCS mode in environments with a fast connection. Both the Remote Desktop Services (RDS) and the standard version of the App-V client are supported with SCS mode.

>[!IMPORTANT]
>If the App-V client is configured to run in the SCS mode, the location where the App-V packages are streamed from must be available, otherwise, the virtualized package will fail. Additionally, we do not recommend deployment of virtualized applications to computers that run the App-V client in the SCS mode across the internet.

Additionally, the SCS is not a physical location that contains virtualized packages. It is a mode that allows the App-V client to stream the required virtualized package data across the network.

The SCS mode is helpful in the following scenarios:

* Virtual desktop infrastructure (VDI) deployments
* Remote Desktop Services deployments

To use SCS in your environment, you must configure the App-V client to run in SCS mode, as it does not use SCS mode by default.

There might be cases when the administrator pre-loads some virtual applications on the computer that runs the App-V client in SCS mode. This can be accomplished with Windows PowerShell commands to add, publish, and mount the package. For example, if a package is pre-loaded on all computers, the administrator could add, publish, and mount the package by using Windows PowerShell commands. The package would not stream across the network because it would be locally stored.

### Configure the Group Policy setting for the SCS Mode for App-V clients

Use the following steps to locate and configure the Group Policy setting for the SCS Mode for App-V clients.

1. In the Group Policy Management Console, navigate to **Computer Configuration** > **Administrative Templates** > **System** > **App-V** > **Streaming**.
2. Enable the **Set the Shared Content Mode (SCS) mode** setting.

### Configure an individual client to use SCS mode

To configure the App-V client to run in SCS mode, on the client, enter the following Windows PowerShell command:

```PowerShell
Set-AppvClientConfiguration -SharedContentStoreMode 1
```

## Deploy the Sequencer

The Sequencer is a tool that is used to convert standard applications into virtual packages for deployment to computers that run the App-V client. The Sequencer helps provide a simple and predictable conversion process with minimal changes to prior sequencing workflows. In addition, the Sequencer allows users to more easily configure applications to enable connections of virtualized applications.

For a list of changes in the App-V Sequencer, see [What's new in App-V](appv-about-appv.md).

To deploy the sequencer, see [How to install the Sequencer](appv-install-the-sequencer.md).

## App-V client and Sequencer logs

You can use the App-V Sequencer log information to troubleshoot Sequencer installation and operational events while using App-V. The Sequencer-related log information can be reviewed with the **Event Viewer**. The following file path is the specific path for Sequencer-related events:

**Event Viewer\Applications and Services Logs\Microsoft\App V**.

>[!NOTE]
>Sequencer-related events are prepended with **AppV\_Sequencer**. Client-related events are prepended with **AppV\_Client**.



