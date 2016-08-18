---
title: Enable the App-V in-box client (Windows 10)
description: How to enable the App-V in-box client installed with Windows 10.
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Enable the App-V in-box client

**Applies to**
-   Windows 10, version 1607

The App-V client is the component that runs virtualized applications on user devices. The client enables users to interact with icons and file names to start virtualized applications. The client can also get virtual application content from the management server.

With Windows 10, version 1607, the App-V client is installed automatically. You need to enable the client to allow user devices to access and run virtual applications. You can enable the client with the Group Policy editor or with Windows PowerShell.

**To enable the App-V client with Group Policy:**

1.  Open the device’s **Group Policy Editor**.

2.  Navigate to **Computer Configuration** > **Administrative Templates** > **System** > **App-V**.

3.  Run **Enables App-V Client** and then select **Enabled** on the screen that appears.

4.  Restart the device.

**To enable the App-V client with Windows PowerShell:**

1.  Open Windows PowerShell.

2.  Type `Enable-Appv` and press ENTER.

3.  Restart the device.

4.  To verify that the App-V client is enabled on the device, type `Get-AppvStatus` and press ENTER.


For information about configuring the App-V client, see:

- [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md)

- [How to Modify Client Configuration by Using Windows PowerShell](appv-modify-client-configuration-with-powershell.md)

- [Using the client management console](appv-using-the-client-management-console.md)

- [How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server](appv-configure-the-client-to-receive-updates-from-the-publishing-server.md) 

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).