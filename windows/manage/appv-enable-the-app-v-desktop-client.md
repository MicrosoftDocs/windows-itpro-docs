---
title: Enable the App-V desktop client (Windows 10)
description: Enable the App-V desktop client
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Enable the App-V desktop client

The App-V client is the component that runs virtualized applications on user devices. The client enables users to interact with icons and file names to start virtualized applications. The client can also get virtual application content from the management server.

With Windows 10, the App-V client is installed automatically. You need to enable the client to allow user devices to access and run virtual applications. You can enable the client with the Group Policy editor or with Windows PowerShell.

**To enable the App-V client with Group Policy:**

1.  Open the device’s **Local Group Policy Editor**.

2.  Navigate to **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **App-V**.

3.  Run **Enables App-V Client** and then select **Enabled** on the screen that appears.

4.  Restart the device.

**To enable the App-V client with Windows PowerShell:**

1.  Open Windows PowerShell.

2.  Type `Enable-Appv` and press Enter.

3.  Restart the device.

4.  To verify that the App-V client is enabled on the device, enter **AppvClientEnabled** or **Get-AppvStatus** in Windows PowerShell.

See [Using the client management console](appv-using-the-client-management-console.md) for information about configuring the App-V client.

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).