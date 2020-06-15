---
title: Restart, reset, or recover HoloLens 1
ms.reviewer: Both basic and advanced instructions for rebooting or resetting your HoloLens.
description: How to use Windows Device Recovery Tool to flash an image to HoloLens 1st Gen.
keywords: how-to, reboot, reset, recover, hard reset, soft reset, power cycle, HoloLens, shut down, wdrt, windows device recovery tool
ms.prod: hololens
ms.sitesec: library
author: evmill
ms.author: v-evmill
ms.date: 06/01/2020
ms.custom: 
- CI 111456
- CSSTroubleshooting
ms.topic: article
ms.localizationpriority: high
manager: yannisle
appliesto:
- HoloLens (1st gen)
---

# Restart, reset, or recover HoloLens 1st Gen

If you're experiencing problems with your HoloLens you may want to try a restart, reset, or even re-flash with device recovery.

Here are some things to try if your HoloLens isn't running well.  This article will guide you through the recommended recovery steps in succession.

If you are looking to recover a HoloLens 2, please view the page for [Recovering a HoloLens 2](https://docs.microsoft.com/hololens/hololens-recovery), as there are differences in the processes.

This article focuses on the HoloLens device and software, if your holograms don't look right, [this article](hololens-environment-considerations.md) talks about environmental factors that improve hologram quality.

## Restart

### Perform a safe restart by using Cortana

The safest way to restart the HoloLens is by using Cortana. This is generally an easy first-step when experiencing an issue with HoloLens. 

> [!NOTE]
> Cortana is not avalible on all devices. 
> Cortana is avalible to all HoloLens (1st Gen) devices.
> Cortana is avalible on HoloLens 2 devices on a build prior to the Windows Holograpic, Version 2004 update.

1. Put on your device
1. Make sure it's powered on, a user is logged in, and the device is not waiting for a password to unlock it.
1. Say "Hey Cortana, reboot" or "Hey Cortana, restart."
1. When she acknowledges she will ask you for confirmation. Wait a second for a sound to play after she has finished her question, indicating she is listening to you and then say "Yes."
1. The device will now restart.

### Perform a safe restart by using the power button

If you still can't restart your device, you can try to restart it by using the power button:

1. Press and hold the power button for five seconds.
   1. After one second, you will see all five LEDs illuminate, then slowly turn off from right to left.
   1. After five seconds, all LEDs will be off, indicating the shutdown command was issued successfully.
   1. Note that it's important to stop pressing the button immediately after all the LEDs have turned off.
1. Wait one minute for the shutdown to cleanly succeed. Note that the shutdown may still be in progress even if the displays are turned off.
1. Power on the device again by pressing and holding the power button for one second.

### Perform a safe restart by using Windows Device Portal

> [!NOTE]
> To do this, HoloLens has to be configured as a developer device.  
> Read more about [Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal).

If the previous procedure doesn't work, you can try to restart the device by using [Windows Device Portal](https://docs.microsoft.com/windows/mixed-reality/using-the-windows-device-portal). In the upper right corner, there is an option to restart or shut down the device.

### Perform an unsafe forced restart

If none of the previous methods are able to successfully restart your device, you can force a restart. This method is equivalent to pulling the battery from the HoloLens.  It is a dangerous operation which may leave your device in a corrupt state.  If that happens, you'll have to flash your HoloLens.  

> [!WARNING]
> This is a potentially harmful method and should only be used in the event none of the above methods work.

1. Press and hold the power button for at least 10 seconds.
   - It's okay to hold the button for longer than 10 seconds.
   - It's safe to ignore any LED activity.
1. Release the button and wait for two or three seconds.
1. Power on the device again by pressing and holding the power button for one second.
If you're still having problems, press the power button for 4 seconds, until all of the battery indicators fade out and the screen stops displaying holograms. Wait 1 minute, then press the power button again to turn on the device.

## Reset to factory settings

> [!NOTE]
> The battery needs at least 40 percent charge to reset.

If your HoloLens is still experiencing issues after restarting, try resetting it to factory state.  Resetting your HoloLens keeps the version of the Windows Holographic software that's installed on it and returns everything else to factory settings.

If you reset your device, all your personal data, apps, and settings will be erased, including TPM reset. Resetting will only install the latest installed version of Windows Holographic and you will have to redo all the initialization steps (calibrate, connect to Wi-Fi, create a user account, download apps, and so forth).

1. Launch the Settings app, and then select **Update** > **Reset**.
1. Select the **Reset device** option and read the confirmation message.
1. If you agree to reset your device, the device will restart and display a set of spinning gears with a progress bar.
1. Wait about 30 minutes for this process to complete.
1. The reset will complete and the device will restart into the out-of-the-box experience.

## Re-install the operating system

If the device is still having a problem after rebooting and resetting, you can use a recovery tool on your computer to reinstall the HoloLens' operating system and firmware.  

All of the data HoloLens needs to reset is packaged in a Full Flash Update (ffu).  This is similar to an iso, wim, or vhd.  [Learn about FFU image file formats.](https://docs.microsoft.com/windows-hardware/manufacture/desktop/wim-vs-ffu-image-file-formats)

If necessary, you can install a completely new operating system on your HoloLens (1st gen) with the Windows Device Recovery Tool.

Before you use this tool, determine if restarting or resetting your HoloLens fixes the problem. The recovery process may take some time.  When you're done, the latest version of the Windows Holographic software approved for your HoloLens will be installed.

To use the tool, you'll need a computer running Windows 10 or later, with at least 4 GB of free storage space.  Please note that you can't run this tool on a virtual machine.

### Recover your HoloLens:

1. Download and install the [Windows Device Recovery Tool](https://support.microsoft.com/help/12379/windows-10-mobile-device-recovery-tool-faq) on your computer.
1. Connect the HoloLens (1st gen) to your computer using the Micro USB cable that came with your HoloLens.
1. Run the Windows Device Recovery Tool and follow the instructions.

If the HoloLens (1st gen) isn't automatically detected, select **My device was not detected** and follow the instructions to put your device into recovery mode.

### Manual Flashing Mode:

In the event that your device is not being detected please use the following method to manually place it into flashing mode.

1. Unplug the device from all power sources.
1. If the device is on please hold down the power button until it is completely off.
1. Hold the **Volume Up** button, and breifly tap the **Power button**. 
1. The device should boot and then display only the middle LED light.
1. Plug the device into your PC.
1. Launch Windows Device Recovery Tool.
1. You will need to select *My device was not detected**, and then select **HoloLens**. 
1. Follow the instructions to recover your device.
