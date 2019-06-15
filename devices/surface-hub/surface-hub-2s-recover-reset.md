---
title: "Reset and recovery for Surface Hub 2S"
description: "Learn how to recover and reset Surface Hub 2S."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Reset and recovery for Surface Hub 2S

If you encounter problems with Surface Hub 2S, you can reset the device to factory settings, recover from the cloud, or recover using a USB drive.

To begin, sign into Surface Hub 2S with admin credentials, open the **Settings** app, select **Update & security**, and then select **Recovery**.

## Reset device

1. To reset, click **Get Started**.
2. When the **Ready to reset this device** window appears, click **Reset**. Surface Hub 2S will reinstall the operating system from the recovery partition and may take up to one hour to complete.
3. Run **Setup** to reconfigure the device.
4. If you manage the device using Intune or other mobile device manager (MDM) solution, retire and delete the previous record and re-enroll the new device. For more information, see [Remove devices by using wipe, retire, or manually unenrolling the device](https://docs.microsoft.com/en-us/intune/devices-wipe).


![*Reset and recovery for Surface Hub 2S*](images/sh2-reset.png)<br>
*Figure 1. Reset and recovery for Surface Hub 2S.* 

## Recover from the cloud
1. To recover, click **Restart now**.
1. In advanced startup mode, select the option to recover the device from the cloud. Surface Hub 2S will download the latest available customer image from the cloud and reinstall the operating system.
2. Remain connected to the network during the recovery process.
3. Run **Setup** to reconfigure the device.
4. If you manage the device using Intune or other mobile device manager (MDM) solution, retire and delete the previous record and re-enroll the new device. For more information, see [Remove devices by using wipe, retire, or manually unenrolling the device](https://docs.microsoft.com/en-us/intune/devices-wipe).

**Recover Surface Hub 2S using USB recovery drive**
New in Surface Hub 2S, you can now reinstall the device using a recovery image.
