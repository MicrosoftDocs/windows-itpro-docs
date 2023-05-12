---
title: Overview of End User Experience
description: Overview of different notificaiton types and examples of notifications that will be shown to end users.
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
ms.collection:
  - highpri
  - tier2
manager: aaroncz
ms.topic: how-to
ms.technology: itpro-updates
ms.date: 05/12/2023
---
# End User Experience

**Applies to**

- Windows 10
- Windows 11

Below you will find a variety of examples of the different notifications we have when going through the update process for Windows updates. Noting that the experience varies slightly depending on what version of Windows you are running and what policies you have configured.

## Scan notifications 
Devices will scan the Windows Update endpoint roughly every 22 hours to see if a new Windows update is available. Depending on the version of Windows the following notifications may vary slightly, but across them all you will see information in the Settings page and tray icon as to the state of updates being found or not in scan. You may also see toasts when errors occur. 
Scanned, but no update was found
When the end user goes to the settings page and the device has no pending updates they will see something similar to the following where it says that they are up to date. 

Scan is currently in progress 
Scan found an Optional Quality Update Available for the Device 
 
Tray Icon Notifications for devices that are out of date
If the device has not taken the latest quality update for more than 30 days, the end user will see the following Tray icon.
 
If the device has not taken the latest quality update for more than 60 days, the end user will see the following tray icon.
 
## Download notifications 
As you will note, the scan notifications are mostly limitted to the Settings page and to the tray icon. For download, the same is also true. The primary download notifications are below. 
Download in Progress 

Download blocked because the device is on a metered network 
This error we will show both in the Settings page and via a tray icon notification.
 
End User Action Required to Download 
If you are configuring the automatic update option to “Notify to Download” your end user will see something along the line of:
 
Errors 
There are a variety of reasons that your device may fail to download the update. If such occur, your users may see one of the following. 
If the download fails to succeed 
 
If the download requires user consent to occur over a metered network 
 
## Install notifications 
Similar to scan and download, install notifications primarily appear in the Settings page or the tray icon. You may also see toasts when errors occur.
Installation in progress
 
Errors
Installation errors  
 
 
 
Installation blocked by low disc space, end user action needed
 
 
Reminder if installation still has not complete within a few days 
If the installation failed to complete within a few days, the end user will also see notifications on their tray icon that action is needed.
 
User Approval to Install Required
If you have configured automatic update to notify to install, then the end user must take action to install the updates prior to installation beginning. Note, the string is different on varying versions of Windows, but in all cases there is a prompt encouraging the end user to install now. 
 
The will also see such on the tray icon.
 
Once the user gives permission, installation will immediately begin. 

## Restart notifications 
When the device reaches the pending reboot state there are not just Settings page and tray icon notifications, but also dialog and toast notifications as well. Our preferred path for consumers is to do the updates with little to no user interaction, silently downloading, installing, and then restarting when they are away from the computer. However, we also provided capabilities for a more engaged flow – both shown below. 
Reboot pending for a Quality Update
   
Reboot pending for a Feature Update 
 
15 minutes prior to the Quality Update reboot 
 
15 minutes prior to the Feature Update reboot
 
Noting that if the device misses the reboot at the scheduled time, the end user will then be prompted again with the following:
 
For more engaged flows we will also show the following toast: 
 
When the device is reboot pending, the user will also see the tray icon notification that shows it is pending reboot. 
 
Additionally, the start menu will have an indicator next to the power button that the device needs to restart. 
 
## More Notifications 
In addition, for users who want more notifications prior to a restart occurring, they can leverage “Notify me…” under Advanced Options in the Windows Update page in Settings. 
 
If this is selected, users will also see notifications such as:
 
# Compliance Deadline Flow 
The number one recommended policy for commercial customers, especially for 1:1 personal computers is the compliance deadline policy. 
Group Policy (GP): Specify deadlines for automatic updates and restarts 
Configuration Service Provider (CSP) policy: 
o	ConfigureDeadlineForFeatureUpdates
o	ConfigureDeadlineForQualityUpdates
o	ConfigureDeadlineGracePeriod
o	ConfigureDeadlineGracePeriodForFeatureUpdates

Note: We recommend a 2 day deadline and a 5 day grace period for both feature and quality updates. 
When the device reaches pending restart 
The first notification that the end user will see is when the device reaches pending restart after the installation has completed. This is a toast that will show the number of days the user has before the restart is forced (aka the specified Grace Period for that update type). 
 
For Windows 11 devices who have their tenant name specified in Azure, they will see their organization’s name in place of “Your organization”. 
Later on, the user will see a pre-deadline dialog again encouraging the end user to schedule the restart, restart now, or get a reminder. 
 
These dialogs will get more aggressive as deadline approaches. 
 
 
 
You will note that as you get closer to deadline and/or pass deadline, we will start just scheduling the restart and notify the user that they have 15 minutes until the restart will simply be forced. 
Note, if the user does schedule a restart but unfortunately it does not work at that time, they will see a notification along the lines of:
 
