---
title: "Reset and recovery for Surface Hub 2S"
description: "Learn how to recover and reset Surface Hub 2S."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
manager: laurawi
audience: Admin
ms.topic: article
ms.date: 12/05/2019
ms.localizationpriority: Medium
---

# Reset and recovery for Surface Hub 2S

If you encounter problems with Surface Hub 2S, you can reset the device to factory settings or restore by using a USB drive.

To begin, sign in to Surface Hub 2S with admin credentials, open the **Settings** app, select **Update & security**, and then select **Recovery**.

## Reset the device

1. To reset the device, select **Get Started**.
2. When the **Ready to reset this device** window appears, select **Reset**. 
  
  >[!NOTE]
  >Surface Hub 2S reinstalls the operating system from the recovery partition. This may take up to one hour to complete.
  
3. To reconfigure the device, run the first-time Setup program.
4. If you manage the device using Microsoft Intune or another mobile device management solution, retire and delete the previous record, and then re-enroll the new device. For more information, see [Remove devices by using wipe, retire, or manually unenrolling the device](https://docs.microsoft.com/intune/devices-wipe).

![*Reset and recovery for Surface Hub 2S*](images/sh2-reset.png)<br>
*Figure 1. Reset and recovery for Surface Hub 2S* 

## Recover Surface Hub 2S by using a USB recovery drive

New in Surface Hub 2S, you can now reinstall the device by using a recovery image.

### Recovery from a USB drive

Using Surface Hub 2S, you can reinstall the device by using a recovery image. By doing this, you can reinstall the device to the factory settings if you lost the BitLocker key, or if you no longer have admin credentials to the Settings app.

>[!NOTE]
>Use a USB 3.0 drive with 8 GB or 16 GB of storage, formatted as FAT32.

1. From a separate PC, download the .zip file recovery image from the [Surface Recovery website](https://support.microsoft.com/surfacerecoveryimage?devicetype=surfacehub2s) and then return to these instructions. 
1. Unzip the downloaded file onto the root of the USB drive.  
1. Connect the USB drive to any USB-C or USB-A port on Surface Hub 2S.
1. Turn off the device:
   1. While holding down the Volume down button, press the Power button.
   1. Keep holding both buttons until you see the Windows logo.
   1. Release the Power button but continue to hold the Volume until the Install UI begins.

    ![*Use Volume down and power buttons to initiate recovery*](images/sh2-keypad.png) <br>
   **Figure 2. Volume and Power buttons**

1. On the language selection screen, select the display language for your Surface Hub 2S.
1. Select **Recover from a drive** and **Fully clean the drive**, and then select **Recover**. If you're prompted for a BitLocker key, select **Skip this drive**. Surface Hub 2S reboots several times and takes approximately 30 minutes to complete the recovery process.

When the first-time setup screen appears,remove the USB drive.

## Contact Support

If you have questions or need help, you can [create a support request](https://support.microsoft.com/supportforbusiness/productselection).
