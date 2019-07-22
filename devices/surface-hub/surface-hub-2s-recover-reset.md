---
title: "Reset and recovery for Surface Hub 2S"
description: "Learn how to recover and reset Surface Hub 2S."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 06/20/2019
ms.localizationpriority: Normal
---

# Reset and recovery for Surface Hub 2S

If you encounter problems with Surface Hub 2S, you can reset the device to factory settings or recover using a USB drive.

To begin, sign into Surface Hub 2S with admin credentials, open the **Settings** app, select **Update & security**, and then select **Recovery**.

## Reset device

1. To reset, select **Get Started**.
2. When the **Ready to reset this device** window appears, select **Reset**. Surface Hub 2S reinstalls the operating system from the recovery partition and may take up to one hour to complete.
3. Run **the first time Setup program** to reconfigure the device.
4. If you manage the device using Intune or other mobile device manager (MDM) solution, retire and delete the previous record and re-enroll the new device. For more information, see [Remove devices by using wipe, retire, or manually unenrolling the device](https://docs.microsoft.com/intune/devices-wipe).

![*Reset and recovery for Surface Hub 2S*](images/sh2-reset.png)<br>
*Figure 1. Reset and recovery for Surface Hub 2S.* 

## Recover Surface Hub 2S using USB recovery drive

New in Surface Hub 2S, you can now reinstall the device using a recovery image.

### Recover from USB drive

Surface Hub 2S lets you reinstall the device using a recovery image, which allows you to reinstall the device to factory settings if you lost the Bitlocker key or no longer have admin credentials to the Settings app.

1. Begin with a USB 3.0 drive with 8 GB or 16 GB of storage, formatted as FAT32.
2. Download recovery image from the [Surface Recovery website](https://support.microsoft.com/en-us/surfacerecoveryimage?devicetype=surfacehub2s) onto the USB drive and connect it to any USB-C or USB A port on Surface Hub 2S.
3. Turn off the device. While holding down the Volume down button, press the Power button. Keep holding both buttons until you see the Windows logo. Release the Power button but continue to hold the Volume until the Install UI begins.

![*Use Volume down and power buttons to initiate recovery*](images/sh2-keypad.png) <br>

4. In the language selection screen, select the display language for your Surface Hub 2S.
5. Choose **Recover from a drive** and **Fully clean the drive** and then select **Recover**. If prompted for a BitLocker key, select **Skip this drive**. Surface Hub 2S reboots several times and takes approximately 30 minutes to complete the recovery process.
Remove the USB drive when the first time setup screen appears.

## Recover a locked Surface Hub

On rare occasions, Surface Hub 2S may encounter an error during cleanup of user and app data at the end of a session. If this occurs, the device will automatically reboot and resume data cleanup. But if this operation fails repeatedly, the device will be automatically locked to protect user data.

**To unlock Surface Hub 2S:** <br>
Reset or recover the device from Windows Recovery Environment (Windows RE). For more information, see [What is Windows RE?](https://technet.microsoft.com/library/cc765966.aspx)

> [!NOTE]
> To enter recovery mode, you need to physically unplug and replug the power cord three times. 