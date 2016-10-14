---
title: Manage Microsoft Surface Hub
description: How to manage your Surface Hub after finishing the first-run program.
ms.assetid: FDB6182C-1211-4A92-A930-6C106BCD5DC1
keywords: manage Surface Hub
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: surfacehub
author: TrudyHa
localizationpriority: medium
---

# Manage Microsoft Surface Hub

After initial setup of Microsoft Surface Hub, the device’s settings and configuration can be modified or changed in a couple ways:

-   **Local management** - Every Surface Hub can be configured locally using the **Settings** app on the device. To prevent unauthorized users from changing settings, the Settings app requires admin credentials to open the app.
-   **Remote management** - Surface Hub allow IT admins to manage settings and policies using a mobile device management (MDM) provider, such as Microsoft Intune, System Center Configuration Manager, and other third-party providers. Additionally, admins can monitor Surface Hubs using Microsoft Operations Management Suite (OMS). 

> [!NOTE]
> These management methods are not mutually exclusive. Devices can be both locally and remotely managed if you choose. However, MDM policies and settings will overwrite any local changes when the Surface Hub syncs with the management server.


## Surface Hub-only settings

Surface Hubs have many settings that are common to other Windows devices, but also have settings which are only configurable on Surface Hubs.

| Setting | Location | Description |
| ------- | -------- | ----------- |
| Device account | This device > Accounts | Set or change the Surface Hub's device account. |
| Device account sync status | This device > Accounts | Check the sync status of the device account’s mail and calendar on the Surface Hub. |
| Password rotation | This device > Accounts | Choose whether to let the Surface Hub automatically rotate the device account's password. |
| Change admin account password  | This device > Accounts | Change the password for the local admin account. This is only available if you configured the device to use a local admin during first run. |
| Configure Operations Management Suite (OMS) | This device > Device management | Set up monitoring for your Surface Hub using OMS. |
| Open the Windows Store app | This device > Apps & features | The Windows Store app is only available to admins through the Settings app. |
| Skype for Business domain name | This device > Calling | Configure a domain name for your Skype for Business server. |
| Default microphone and speaker settings | This device > Calling | Configure a default microphone and speaker for calls, and a default speaker for media playback. |
| Turn off wireless projection using Miracast | This device > Wireless projection | Choose whether presenters can wirelessly project to the Surface Hub using Miracast. |
| Require a PIN for wireless projection | This device > Wireless projection | Choose whether people are required to enter a PIN before they use wireless projection. |
| Wireless projection (Miracast) channel | This device > Wireless projection | Set the channel for Miracast projection. |
| Meeting info shown on the welcome screen | This device > Welcome screen | Choose whether meeting organizer, time, and subject show up on the welcome screen. |
| Welcome screen background |  This device > Welcome screen | Choose a background image for the welcome screen. |
| Turn on screen with motion sensors | This device > Session & clean up | Choose whether the screen turns on when motion is detected. |
| Session time out | This device > Session & clean up | Choose how long the device needs to be inactive before returning to the welcome screen. |
| Sleep time out | This device > Session & clean up | Choose how long the device needs to be inactive before going to sleep mode. |
| Friendly name | This device > About | Set the Surface Hub name that people will see when connecting wirelessly. |
| Maintenance hours | Update & security > Windows Update > Advanced options | Configure when updates can be installed. |
| Configure Windows Server Update Services (WSUS) server | Update & security > Windows Update > Advanced options | Change whether Surface Hub receives updates from a WSUS server instead of Windows Update. |
| Save BitLocker key | Update & security > Recovery | Backup your Surface Hub's BitLocker key to a USB drive. |
| Collect logs | Update & security > Recovery | Save logs to a USB drive to send to Microsoft later. | 


## In this section

| Topic | Description |
| ----- | ----------- |
| [Remote Surface Hub management](remote-surface-hub-management.md) |Topics related to managing your Surface Hub remotely. Include install apps, managing settings with MDM and monitoring with Operations Management Suite. |
| [Manage Surface Hub settings](manage-surface-hub-settings.md) |Topics related to managing Surface Hub settings: accessibility, device account, device reset, fully qualified domain name, Windows Update settings, and wireless network |
| [Save your BitLocker key](https://technet.microsoft.com/itpro/surface-hub/save-bitlocker-key-surface-hub) | Every Surface Hub is automatically set up with BitLocker drive encryption software. Microsoft strongly recommends that you make sure you back up your BitLocker recovery keys.|
| [End a meeting with I’m done](https://technet.microsoft.com/itpro/surface-hub/i-am-done-finishing-your-surface-hub-meeting) | At the end of a meeting, users can tap I'm Done to clean up any sensitive data and prepare the device for the next meeting.|
| [Connect other devices and display with Surface Hub](https://technet.microsoft.com/itpro/surface-hub/connect-and-display-with-surface-hub) | You can connect other device to your Surface Hub to display content.|
| [Using a room control system]( https://technet.microsoft.com/itpro/surface-hub/use-room-control-system-with-surface-hub) | Room control systems can be used with your Microsoft Surface Hub.|

