---
title: Restart, reset, or recover HoloLens
ms.reviewer: Both basic and advanced instructions for rebooting or resetting your HoloLens.
description: How to use Advanced Recovery Companion to flash an image to HoloLens 2.
keywords: how-to, reboot, reset, recover, hard reset, soft reset, power cycle, HoloLens, shut down, arc, advanced recovery companion
ms.prod: hololens
ms.sitesec: library
author: mattzmsft
ms.author: mazeller
ms.date: 04/27/2020
ms.custom: 
- CI 111456
- CSSTroubleshooting
ms.topic: article
ms.localizationpriority: high
manager: jarrettr
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Restart, reset, or recover HoloLens

If you're experiencing problems with your HoloLens you may want to try a restart, reset, or even re-flash with device recovery.

Here are some things to try if your HoloLens isn't running well.  This article will guide you through the recommended recovery steps in succession.

This article focuses on the HoloLens device and software, if your holograms don't look right, [this article](hololens-environment-considerations.md) talks about environmental factors that improve hologram quality.

## Restart your HoloLens

First, try restarting the device.

### Perform a safe restart by using Cortana

The safest way to restart the HoloLens is by using Cortana. This is generally a great first-step when experiencing an issue with HoloLens:

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

HoloLens (1st gen) and HoloLens 2 use different tools but both tools will auto-detect your HoloLens and install new software.

All of the data HoloLens needs to reset is packaged in a Full Flash Update (ffu).  This is similar to an iso, wim, or vhd.  [Learn about FFU image file formats.](https://docs.microsoft.com/windows-hardware/manufacture/desktop/wim-vs-ffu-image-file-formats)

### HoloLens 2

The Advanced Recovery Companion is a new app in Microsoft Store restore the operating system image to your HoloLens 2 device. Advanced Recovery Companion erases all your personal data, apps, and settings, and resets TPM.

1. On your computer, get [Advanced Recovery Companion](https://www.microsoft.com/p/advanced-recovery-companion/9p74z35sfrs8?activetab=pivot:overviewtab) from Microsoft Store.
2. Connect HoloLens 2 to your computer.
3. Start Advanced Recovery Companion.
4. On the **Welcome** page, select your device.
5. On the **Device info** page, select **Install software** to install the default package. (If you have a Full Flash Update (FFU) image that you want to install instead, select **Manual package selection**.)
6. Software installation will begin. Do not use the device or disconnect the cable during installation. When you see the **Installation finished** page, you can disconnect and use your device.

#### Manual flashing mode

> [!TIP]
> In the event that a HoloLens 2 gets into a state where Advanced Recovery Companion cannot recognize the device, and it does not boot, try forcing the device into Flashing Mode and recovering it with Advanced Recovery Companion:

1.    Connect the HoloLens 2 to a PC with Advanced Recovery Companion installed.
1.    Press and hold the **Volume Up and Power buttons** until the device reboots.  Release the Power button, but continue to hold the Volume Up button until the third LED is lit.
1.    The device should be visible in **Device Manager** as a **Microsoft HoloLens Recovery** device.
1.    Launch Advanced Recovery Companion, and follow the on-screen prompts to reflash the OS to the HoloLens 2.

#### Downloading ARC without using the app store

If an IT environment prevents the use of the Windows Store app or limits access to the retail store, IT administrators can make this app available through other ‘offline’ deployment paths. 

- This process may also be used for other apps, as seen in step 2. This guide will focus on Advanced Recovery Companion, but my be modified for other offline apps.  

This deployment path can be enabled with the following steps:
1.	Go to the [Store For Business website](https://businessstore.microsoft.com) and sign-in with an Azure AD identity.
1.	Go to **Manage – Settings**, and turn on **Show offline apps** under **Shopping experience** as described at https://businessstore.microsoft.com/manage/settings/shop 
1.	Go to **shop for my group** and search for the [Advanced Recovery Companion](https://businessstore.microsoft.com/store/details/advanced-recovery-companion/9P74Z35SFRS8) app.
1.	Change the **License Type** box to offline and click **Manage**.
1.	Under Download the package for offline use click the second blue **“Download”** button . Ensure the file extension is .appxbundle.
1.	At this stage, if the Desktop PC has Internet access, simply double click and install. 
1.	The IT administrator can also distribute this app through System Center Configuration Manager (SCCM) or Intune.
1.	If the target PC has no Internet connectivity, some additional steps are needed: 
    1.	Select the unencoded license and click **“Generate license”** and under **“Required Frameworks”** click **“Download.”** 
    1.	PCs without internet access will need to use DISM to apply the package with the dependency and license. In an administrator command prompt, type:

      ```console
      C:\WINDOWS\system32>dism /online /Add-ProvisionedAppxPackage /PackagePath:"C:\ARCoffline\Microsoft.AdvancedRecoveryCompanion_1.19050.1301.0_neutral_~_8wekyb3d8bbwe.appxbundle" /DependencyPackagePath:"C:\ARCoffline\Microsoft.VCLibs.140.00.UWPDesktop_14.0.27629.0_x86__8wekyb3d8bbwe.appx" /LicensePath:"C:\ARCoffline\Microsoft.AdvancedRecoveryCompanion_8wekyb3d8bbwe_f72ce112-dd2e-d771-8827-9cbcbf89f8b5.xml" /Region:all
      ```
> [!NOTE]
> The version number in this code example may not match the currently avalible version. You may have also choosen a different download location than in the example given. Please make sure to make any changes as needed.

> [!TIP]
> When planning to use Advanced Recovery Companion to install an ffu offline it may be useful to download your flashing image to be availible, here is the [current image for HoloLens 2](https://aka.ms/hololens2download). 

Other resources:
- https://docs.microsoft.com/microsoft-store/distribute-offline-apps 
- https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-app-package--appx-or-appxbundle--servicing-command-line-options


### HoloLens (1st gen)

If necessary, you can install a completely new operating system on your HoloLens (1st gen) with the Windows Device Recovery Tool.

Before you use this tool, determine if restarting or resetting your HoloLens fixes the problem. The recovery process may take some time.  When you're done, the latest version of the Windows Holographic software approved for your HoloLens will be installed.

To use the tool, you'll need a computer running Windows 10 or later, with at least 4 GB of free storage space.  Please note that you can't run this tool on a virtual machine.

To recover your HoloLens

1. Download and install the [Windows Device Recovery Tool](https://support.microsoft.com/help/12379/windows-10-mobile-device-recovery-tool-faq) on your computer.
1. Connect the HoloLens (1st gen) to your computer using the Micro USB cable that came with your HoloLens.
1. Run the Windows Device Recovery Tool and follow the instructions.

If the HoloLens (1st gen) isn't automatically detected, select **My device was not detected** and follow the instructions to put your device into recovery mode.
