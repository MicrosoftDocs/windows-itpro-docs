---
title: Windows updates (Surface Hub)
description: You can manage Windows updates on your Microsoft Surface Hub by setting the maintenance window, deferring updates, or using Windows Server Update Services (WSUS).
ms.assetid: A737BD50-2D36-4DE5-A604-55053D549045
keywords: manage Windows updates, Surface Hub, Windows Server Update Services, WSUS
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Windows updates (Surface Hub)


You can manage Windows updates on your Microsoft Surface Hub by setting the maintenance window, deferring updates, or using Windows Server Update Services (WSUS).

### Maintenance window

A default maintenance window is set for all new Surface Hubs:

-   Start time: 3:00 AM
-   Duration: 1 hour

Most Windows updates are downloaded and installed automatically by Surface Hub. You can change the maintenance window to limit when the device can be automatically rebooted after a Windows update installation. For those updates that require a reboot of the device, the update installation will be postponed until the maintenance window begins. If a meeting is scheduled to start during the maintenance window, or if the Surface Hub sensors detect that the device is being used, the pending installation will be postponed to the next maintenance window.

>**Note**: If an update installation has been pending for 28 days, on the 28th day the update will be forcibly installed. The device will ignore meetings or sensor status and reboot during the maintenance window.

 

To change the default maintenance window:

1.  Open the Settings app.
2.  Navigate to **Update and Security** &gt; **Advanced Options**.
3.  Under **Maintenance hours**, click **Change**.

### Deferring Windows updates

You can choose to defer downloading or installing updates that install new Windows features. When you do, new Windows features won’t be downloaded or installed for up to several months. Deferring updates doesn’t affect security updates, which will be downloaded and installed as usual.

To defer Windows feature updates:

1.  Open the Settings app.
2.  Navigate to **Update and Security** &gt; **Advanced Options**.
3.  Click on the checkbox for **Defer upgrades**.

### Using WSUS

You can use WSUS to manage the download and installation of Windows updates on your Surface Hub.

To connect a Surface Hub to a WSUS server:

1.  Open the Settings app.
2.  Navigate to **Update and Security** &gt; **Advanced Options**.
3.  Click on the checkbox for **Configure Windows Server Update Services (WSUS) server**.
4.  Check the box for **Use WSUS Server to download updates** and enter the WSUS endpoint.

## Related topics


[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)

 

 





