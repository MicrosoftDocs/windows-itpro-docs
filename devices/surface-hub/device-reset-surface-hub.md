---
title: Reset or recover a Surface Hub
description: Describes the reset and recovery processes for the Surface Hub, and provides instructions.
ms.assetid: 44E82EEE-1905-464B-A758-C2A1463909FF
ms.reviewer: 
manager: dansimp
keywords: reset Surface Hub, recover
ms.prod: surface-hub
ms.sitesec: library
author: dansimp
ms.author: 
- dansimp
- v-tea
ms.topic: article
ms.date: 07/29/2019
ms.localizationpriority: medium
---

# Reset or recover a Surface Hub

This article describes how to reset or recover a Microsoft Surface Hub.  

[Resetting the Surface Hub](#reset-a-surface-hub) returns its operating system to the last cumulative Windows update, and removes all local user files and configuration information. The information that is removed includes the following:

- The device account
- Account information for the device's local administrators
- Domain-join or Azure AD-join information
- Mobile Device Management (MDM) enrollment information
- Configuration information that was set by using MDM or the Settings app

[Recovering a Surface Hub from the cloud](#recover-a-surface-hub-from-the-cloud) also removes this information. In addition, the Surface Hub downloads a new operating system image and installs it. You can specify whether the recovery process preserves other information that is stored on the Surface Hub.

## Reset a Surface Hub

You may have to reset your Surface Hub for reasons such as the following:

- You are re-purposing the device for a new meeting space and want to reconfigure it.
- You want to change how you locally manage the device.
- The user name or password for the device account or the Administrator account has been lost.
- After you install an update, the performance of the device decreases.

During the reset process, if you see a blank screen for long periods of time, please wait and do not take any action.

> [!WARNING]
> The device reset process may take up to six hours. Do not turn off or unplug the Surface Hub until the process has finished. If you interrupt the process, the device becomes inoperable. The device requires warranty service in order to become functional again.

1. On your Surface Hub, open **Settings**.

   ![Image that shows Settings app for Surface Hub.](images/sh-settings.png)

1. Select **Update & Security**.

   ![Image that shows Update & Security group in Settings app for Surface Hub.](images/sh-settings-update-security.png)

1. Select **Recovery**, and then, under **Reset device**, select **Get started**.

   ![Image that shows the Reset device option in Settings app for Surface Hub.](images/sh-settings-reset-device.png)

   After the reset process finishes, the Surface Hub starts the [first run program](first-run-program-surface-hub.md) again. If the reset process encounters a problem, it rolls the Surface Hub back to the previously-existing operating system image and then displays the Welcome screen.

<span id="cloud-recovery" />

## Recover a Surface Hub from the cloud

If for some reason the Surface Hub becomes unusable, you can still recover it from the cloud without assistance from Microsoft Support. The Surface Hub can download a fresh operating system image from the cloud, and use that image to reinstall its operating system.

You may have to use this type of recovery process under the following circumstances:

- [The Surface Hub or its related accounts have entered an unstable state](#recover-a-surface-hub-in-a-bad-state)
- [The Surface Hub is locked](#recover-a-locked-surface-hub)

>[!IMPORTANT]
>The **Recover from the cloud** process requires an open internet connection (no proxy or other authentications). An ethernet connection is recommended.

### Recover a Surface Hub in a bad state

If the device account gets into an unstable state or if the administrator account encounters problems, you can use the Settings app to start the cloud recovery process. You should only use the cloud recovery process when the [device reset](#reset-a-surface-hub) process doesn't fix the problem.

1. On your Surface Hub, select **Settings** &gt; **Update & security** &gt; **Recovery**.

1. Under **Recover from the cloud**, select **Restart now**.

   ![recover from the cloud](images/recover-from-the-cloud.png)

### Recover a locked Surface Hub

On rare occasions, a Surface Hub may encounter an error while cleaning up user and app data at the end of a session. When this happens, the device automatically restarts and tries the operation again. But if this operation fails repeatedly, the device automatically locks to protect user data. To unlock it, you must [reset the device](#reset-a-surface-hub) or, if that doesn't work, recover it from the cloud.

1. Locate the power switch on the bottom of Surface Hub. The power switch is next to the power cord connection. For more information about the power switch, see the [Surface Hub Site Readiness Guide (PDF)](surface-hub-site-readiness-guide.md).

1. While the Surface Hub displays the Welcome screen, use the power switch to turn off the Surface Hub.

1. Use the power switch to turn the Surface Hub back on. The device starts and displays the Surface Hub Logo screen. When you see spinning dots under the Surface Hub Logo, use the power switch to turn the Surface Hub off again.  

1. Repeat step 3 three times, or until the Surface Hub displays the “Preparing Automatic Repair” message. After it displays this message, the Surface Hub displays the Windows RE screen.

1. Select **Advanced Options**.

1. Select **Recover from the cloud**. (Optionally, you can select **Reset**. However, **Recover from the cloud** is the recommended approach.)

   ![Recover from the cloud](images/recover-from-cloud.png)
1. If you are prompted to enter the Bitlocker key, do one of the following:

   - To preserve the information that Bitlocker protects on the Surface Hub, enter the Bitlocker key.
   - To discard the protected information, select **Skip this drive**  

1. When you are prompted, select **Reinstall**.

    ![Reinstall](images/reinstall.png)

1. To repartition the disk, select **Yes**.

   ![Repartition](images/repartition.png)

   First, the recovery process downloads the operating system image from the cloud.  

   ![downloading 97&](images/recover-progress.png)

   When the download finishes, the recovery process restores the Surface Hub according to the options that you selected.

## Related topics

[Manage Microsoft Surface Hub](manage-surface-hub.md)

[Microsoft Surface Hub administrator's guide](surface-hub-administrators-guide.md)
