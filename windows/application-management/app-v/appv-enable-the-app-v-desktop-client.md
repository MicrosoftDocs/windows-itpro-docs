---
title: Enable the App-V in-box client (Windows 10)
description: How to enable the App-V in-box client installed with Windows 10.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# Enable the App-V in-box client

>Applies to: Windows 10, version 1607

The App-V client is the component that runs virtualized applications on user devices. Once you enable the client, users can interact with icons and file names to start virtualized applications. The client can also get virtual application content from the management server.

With Windows 10, version 1607, the App-V client is installed automatically. However, you'll still need to enable the client yourself to allow user devices to access and run virtual applications. You can set up the client with the Group Policy editor or with Windows PowerShell.

Here's how to enable the App-V client with Group Policy:

1. Open the device’s **Group Policy Editor**.
2. Navigate to **Computer Configuration** > **Administrative Templates** > **System** > **App-V**.
3. Run **Enables App-V Client**, then select **Enabled**.
4. Restart the device.

Here's how to enable the App-V client with Windows PowerShell:

1. Open Windows PowerShell.
2. Enter **Enable-Appv**, then select the Enter key.
3. Restart the device.
4. To verify that the App-V client is working, enter **Get-AppvStatus**, then select the Enter key.

Check out these articles for more information about how to configure the App-V client:

* [Deploying the App-V Sequencer and configuring the client](appv-deploying-the-appv-sequencer-and-client.md)
* [How to modify client configuration by using Windows PowerShell](appv-modify-client-configuration-with-powershell.md)
* [Using the client management console](appv-using-the-client-management-console.md)
* [How to configure the client to receive package and connection group updates from the Publishing server](appv-configure-the-client-to-receive-updates-from-the-publishing-server.md)



