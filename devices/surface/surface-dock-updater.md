---
title: Microsoft Surface Dock Updater (Surface)
description: This article provides a detailed walkthrough of Microsoft Surface Dock Updater.
ms.assetid: 1FEFF277-F7D1-4CB4-8898-FDFE8CBE1D5C
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jobotto
---

# Microsoft Surface Dock Updater


This article provides a detailed walkthrough of Microsoft Surface Dock Updater.

The [Microsoft Surface Dock Updater](http://go.microsoft.com/fwlink/p/?LinkId=618121) tool allows you to check the firmware status of a Surface Dock and to manually update the firmware of Surface Dock devices. It is most often used to update Surface Docks prior to deployment of those Surface Docks to end users or as a troubleshooting tool. Microsoft Surface Dock Updater walks you through the process of updating the firmware on one or more Surface Docks, including the required connect and disconnect steps to perform the complete firmware installation.

When you run the Microsoft Surface Dock Updater installer you will be prompted to accept an End User License Agreement (EULA).

**Note**&nbsp;&nbsp;Updating Surface Dock firmware requires connectivity to the Surface Dock, available only on Surface Pro 3, Surface Pro 4, and Surface Book devices. A Surface Pro 3, Surface Pro 4, or Surface Book is required to successfully install Microsoft Surface Dock Updater.

## Update a Surface Dock with Microsoft Surface Dock Updater


After you install the [Microsoft Surface Dock Updater](http://go.microsoft.com/fwlink/p/?LinkId=618121) tool, you can find Microsoft Surface Dock Updater under **All Apps** in your Start menu. Click **Microsoft Surface Dock Updater** to start the application.

To update a Surface Dock with Microsoft Surface Dock Updater, follow these steps:

1.  Click Start to begin the firmware update process. If you do not have a Surface Dock connected, you will be prompted to connect a Surface Dock.

2.  Microsoft Surface Dock Updater checks the status of your Surface Dock firmware.

    -   If the tool determines that the firmware of your Surface Dock is up to date, a **You have the latest firmware for this Surface Dock** message is displayed, as shown in Figure 1.

        ![figure 1](images/surfacedockupdater-fig1-uptodate-568pix.png)

        Figure 1. Your Surface Dock firmware is up to date.

    -   If Microsoft Surface Dock Updater determines that the firmware of your Surface Dock is not up to date, a **This Surface Dock is not running the latest firmware** message is displayed, as shown in Figure 2.

        ![figure 2](images/surfacedockupdater-fig2a-needsupdating.png)

        Figure 2. Your Surface Dock firmware needs to be updated

3.  To begin the firmware update process, click **Update** on the **Surface Dock Firmware** page.

4.  Before the firmware update process begins, you will be prompted for confirmation. Click **OK** to proceed or **Cancel** to return to the **Surface Dock Firmware** page displaying the status of your Surface Dock firmware.

5.  As the firmware update is uploaded to the Surface Dock, a **Progress** page is displayed, as shown in Figure 3. Do not disconnect the Surface Dock while firmware is being uploaded.

    ![figure 3](images/surfacedockupdater-fig3-progress.png)

    Figure 3. Progress of firmware update upload to Surface Dock

6.  After the firmware update has successfully uploaded to the Surface Dock, you are prompted to disconnect and then reconnect the Surface Dock from the Surface device, as shown in Figure 4. The main chipset firmware update will be applied while the Surface Dock is disconnected.

    ![figure 4](images/surfacedockupdater-fig4-disconnect.png)

    Figure 4. Disconnect and reconnect Surface Dock when prompted

7.  When the main chipset firmware update is verified, the DisplayPort chipset firmware update will be uploaded to the Surface Dock. Upon completion, a **Success** page is displayed and you will again be prompted to disconnect the Surface Dock, as shown in Figure 5.

    ![figure 5](images/surfacedockupdater-fig5-success.png)

    Figure 5. Successful upload of Surface Dock firmware

8.  After you disconnect the Surface Dock the DisplayPort firmware update will be installed. This process occurs on the Surface Dock hardware while it is disconnected. The Surface Dock must remain powered for up to 3 minutes after it has been disconnected for the firmware update to successfully install. An **Update in Progress** page is displayed (as shown in Figure 6), with a countdown timer to show the estimated time remaining to complete the firmware update installation.

    ![figure 6](images/surfacedockupdater-fig6-countdown.png)

    Figure 6. Countdown timer to complete firmware installation on Surface Dock

9.  If you want to update multiple Surface Docks in one sitting, you can click the **Update another Surface Dock** button to begin the process on the next Surface Dock.

    **Note**&nbsp;&nbsp;The LED in the Ethernet port of the dock will blink while the update is in progress. Please wait until the LED stops blinking before you unplug your Surface Dock from power.

     

## Troubleshooting Microsoft Surface Dock Updater


If the Surface Dock firmware update process encounters an installation error with either firmware update, the **Encountered an unexpected error** page may be displayed, as shown in Figure 7.

![figure 7](images/surfacedockupdater-fig7-error.png)

Figure 7. Firmware update installation has encountered an error

Microsoft Surface Dock Updater logs its progress into the Event Log, as shown in Figure 8. If you need to troubleshoot an update through this tool, you will find Surface Dock events recorded with the following event IDs:

| Event ID | Event type                                               |
|----------|----------------------------------------------------------|
| 12100    | Up-to-date confirmation                                  |
| 12101    | Event in the main chipset firmware update process        |
| 12102    | Event in the DisplayPort chipset firmware update process |
| 12105    | Error                                                    |

Figure 8. Surface Dock Updater events in Event Viewer

![figure 8](images/surfacedockupdater-fig8-737test.png)


## Related topics


[Manage Surface Dock firmware updates](manage-surface-dock-firmware-updates.md)
