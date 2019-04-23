---
title: Restore HoloLens 2 using Advanced Recovery Companion 
description: How to use Advanced Recovery Companion to flash an image to HoloLens 2.
ms.prod: hololens
ms.sitesec: library
author: jdeckerms
ms.author: jdecker
ms.topic: article
ms.localizationpriority: medium
---

# Restore HoloLens 2 using Advanced Recovery Companion

>[!TIP]
>If you're having issues with HoloLens (the first device released), see [Restart, reset, or recover HoloLens](https://support.microsoft.com/help/13452/hololens-restart-reset-or-recover-hololens). Advanced Recovery Companion is only supported for HoloLens 2.

>[!WARNING]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The Advanced Recovery Companion is a new app in Microsoft Store that you can use to restore the operating system image to your HoloLens device.

When your HoloLens 2 is unresponsive, not running properly, or is experiencing software or update problems, try these things in order:

1. [Restart](#restart-hololens-2) the HoloLens 2.
2. [Reset](#reset-hololens-2) the HoloLens 2.
3. [Recover](#recover-hololens-2) the HoloLens 2.

>[!IMPORTANT]
>Resetting or recovering your HoloLens will erase all of your personal data, including apps, games, photos, and settings. You won’t be able to restore a backup once the reset is complete.

## Restart HoloLens 2

A device restart can often "fix" a computer issue. First, say "Hey Cortana, restart the device."

If you’re still having problems, press the power button for 4 seconds, until all of the battery indicators fade out. Wait 1 minute, then press the power button again to turn on the device.

If neither of those things works, force restart the device. Hold down the power button for 10 seconds. Release it and wait 30 seconds, then press the power button again to turn on the device.

## Reset HoloLens 2

If the device is still having a problem after restart, use reset to return the HoloLens 2 to factory settings.

To reset your HoloLens 2, go to **Settings > Update > Reset** and select **Reset device**. 

>[!NOTE]
>The battery needs at least 40 percent charge to reset.

## Recover HoloLens 2

If the device is still having a problem after reset, you can use Advanced Recovery Companion to flash the device with a new image.

1. On your computer, get [Advanced Recovery Companion](https://www.microsoft.com/p/advanced-recovery-companion/9p74z35sfrs8?activetab=pivot:overviewtab) from Microsoft Store.
2. Connect HoloLens 2 to your computer.
3. Start Advanced Recovery Companion.
4. On the **Welcome** page, select your device.
5. On the **Device info** page, select **Install software** to install the default package. (If you have a Full Flash Update (FFU) image that you want to install instead, select **Manual package selection**.)
6. Software installation will begin. Do not use the device or disconnect the cable during installation. When you see the **Installation finished** page, you can disconnect and use your device.

>[!NOTE]
>[Learn about FFU image file formats.](https://docs.microsoft.com/windows-hardware/manufacture/desktop/wim-vs-ffu-image-file-formats)
