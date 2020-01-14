---
title: Update HoloLens
description: Check your HoloLens' build number, update, and roll back updates.
keywords: how-to, update, roll back, HoloLens, check build, build number
ms.prod: hololens
ms.sitesec: library
author: scooley
ms.author: scooley
ms.topic: article
ms.localizationpriority: medium
ms.date: 11/27/2019
audience: ITPro
ms.reviewer: 
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Update HoloLens

HoloLens uses Windows Update, just like other Windows 10 devices. Your HoloLens will automatically download and install system updates whenever it is plugged-in to power and connected to the Internet, even when it is in standby.

This article will walk through HoloLens tools for:

- viewing your current operating system version (build number)
- checking for updates
- manually updating HoloLens
- rolling back to an older update

## Check your operating system version (build number)

You can verify the system version number, (build number) by opening the Settings app and selecting **System** > **About**.

## Check for updates and manually update

You can check for updates any time in settings.  To see available updates and check for new updates:

1. Open the **Settings** app.
1. Navigate to **Update & Security** > **Windows Update**.
1. Select **Check for updates**.

If an update is available, it will start downloading the new version. After the download is complete, select the **Restart Now** button to trigger the installation. If your device is below 40% and not plugged in, restarting will not start installing the update.

While your HoloLens is installing the update, it will display spinning gears and a progress indicator. Do not turn off your HoloLens during this time. It will restart automatically once it has completed the installation.

HoloLens applies one update at a time.  If your HoloLens is more than one version behind the latest you may need to run through the update process multiple times to get it fully up to date.

## Go back to a previous version - HoloLens 2

In some cases, you might want to go back to a previous version of the HoloLens software. You can do this by using the Advanced Recovery Companion to reset your HoloLens to the earlier version.

> [!NOTE]
> Going back to an earlier version deletes your personal files and settings.

To go back to a previous version of HoloLens 2, follow these steps:

1. Make sure that you don't have any phones or Windows devices plugged in to your PC.
1. On your PC, download the [Advanced Recovery Companion](https://www.microsoft.com/p/advanced-recovery-companion/9p74z35sfrs8?activetab=pivot:overviewtab) from the Microsoft Store.
1. Download the [most recent HoloLens 2 release](https://aka.ms/hololens2download).
1. When you have finished these downloads, open **File explorer** > **Downloads**. Right-click the zipped folder that you just downloaded, and select **Extract all** > **Extract** to unzip it.
1. Connect your HoloLens to your PC using a USB-A to USB-C cable. (Even if you've been using other cables to connect your HoloLens, this one works best.)
1. The Advanced Recovery Companion automatically detects your HoloLens. Select the **Microsoft HoloLens** tile.
1. On the next screen, select **Manual package selection** and then select the installation file contained in the folder that you unzipped in step 4. (Look for a file with the .ffu extension.)
1. Select **Install software**, and follow the instructions.

## Go back to a previous version - HoloLens (1st Gen)

In some cases, you might want to go back to a previous version of the HoloLens software. You can do this by using the Windows Device Recovery Tool to reset your HoloLens to the earlier version.

> [!NOTE]
> Going back to an earlier version deletes your personal files and settings.

To go back to a previous version of HoloLens 1, follow these steps:

1. Make sure that you don't have any phones or Windows devices plugged in to your PC.
1. On your PC, download the [Windows Device Recovery Tool (WDRT)](https://support.microsoft.com/help/12379).
1. Download the [HoloLens Anniversary Update recovery package](https://aka.ms/hololensrecovery).
1. When the downloads finish, open **File explorer** > **Downloads**. Right-click the zipped folder you just downloaded, and select **Extract all** > **Extract** to unzip it.
1. Connect your HoloLens to your PC using the micro-USB cable that it came with. (Even if you've been using other cables to connect your HoloLens, this one works best.)
1. The WDRT will automatically detect your HoloLens. Select the **Microsoft HoloLens** tile.
1. On the next screen, select **Manual package selection** and choose the installation file contained in the folder you unzipped in step 4. (Look for a file with the .ffu extension.)
1. Select **Install software**, and follow the instructions.

> [!NOTE]
> If the WDRT doesn't detect your HoloLens, try restarting your PC. If that doesn't work, select **My device was not detected**, select **Microsoft HoloLens**, and then follow the instructions.

## Windows Insider Program on HoloLens

Want to see the latest features in HoloLens?  If so, join the Windows Insider Program; you'll get access to preview builds of HoloLens software updates before they're available to the general public.

[Get Windows Insider preview for Microsoft HoloLens](hololens-insider.md).
