---
title: Unlock Windows Holographic for Business features
description: When you upgrade to Windows Holographic for Business, HoloLens provides extra features that are designed for business.
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 9/16/2019
ms.reviewer: 
manager: jarrettr
appliesto:
- HoloLens (1st gen)
---

# Unlock Windows Holographic for Business features

Microsoft HoloLens is available in the *Development Edition*, which runs Windows Holographic (an edition of Windows 10 that is designed for HoloLens), and in the [Commercial Suite](hololens-commercial-features.md), which provides extra features designed for business.

When you purchase the Commercial Suite, you receive a license that upgrades Windows Holographic to Windows Holographic for Business. You can apply this license to the device either by using the organization's [mobile device management (MDM) provider](#edition-upgrade-by-using-mdm) or a [provisioning package](#edition-upgrade-by-using-a-provisioning-package).

> [!TIP]
> In Windows 10, version 1803, you can check that the HoloLens has been upgraded to the business edition by selecting **Settings** > **System**.

## Edition upgrade by using MDM

The enterprise license can be applied by any MDM provider that supports the [WindowsLicensing configuration service provider (CSP)](https://msdn.microsoft.com/library/windows/hardware/dn904983.aspx). The latest version of the Microsoft MDM API will support WindowsLicensing CSP.

For step-by-step instructions for upgrading HoloLens by using Microsoft Intune, see [Upgrade devices running Windows Holographic to Windows Holographic for Business](https://docs.microsoft.com/intune/holographic-upgrade).

 On other MDM providers, the specific steps for setting up and deploying the policy might vary.

## Edition upgrade by using a provisioning package

Provisioning packages are files created by the Windows Configuration Designer tool that apply a specified configuration to a device.

### Create a provisioning package that upgrades the Windows Holographic edition

1. [Create a provisioning package for HoloLens.](hololens-provisioning.md)
1. Go to **Runtime settings** > **EditionUpgrade**, and select **EditionUpgradeWithLicense**.

    ![Upgrade edition with license setting selected](images/icd1.png)

1. Find the XML license file that was provided when you purchased the Commercial Suite.

    > [!NOTE]
    > You can configure [additional settings in the provisioning package](hololens-provisioning.md).

1. On the **File** menu, select **Save**. 

1. Read the warning that project files may contain sensitive information and click **OK**.

    > [!IMPORTANT]
    > When you build a provisioning package, you may include sensitive information in the project files and provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when no longer needed.

1. On the **Export** menu, select **Provisioning package**.

1. Change **Owner** to **IT Admin**, which sets the precedence of this provisioning package to be higher than others applied to this device from different sources, and then select **Next**.

1. Set a value for **Package Version**.

    > [!TIP]
    > You can make changes to existing packages and change the version number to update previously applied packages.

1. On **Select security details for the provisioning package**, select **Next**.

1. Select **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows ICD uses the project folder as the output location.

    Optionally, you can select **Browse** to change the default output location.

1. Select **Next**.

1. Select **Build** to start building the package. The build page displays the project information, and the progress bar indicates the build status.

1. When the build completes, select **Finish**.

### Apply the provisioning package to HoloLens

1. Using the USB cable, connect the device to a PC. Start the device, but do not continue past the **fit** page of the initial setup experience (the first page with the blue box). On the PC, HoloLens shows up as a device in File Explorer.

    > [!NOTE]
    > If the HoloLens device is running Windows 10, version 1607 or earlier, open File Explorer by briefly pressing and releasing the **Volume Down** and **Power** buttons simultaneously on the device.

1. In File Explorer, drag and drop the provisioning package (.ppkg) onto the device storage.

1. While HoloLens is still on the **fit** page, briefly press and release the **Volume Down** and **Power** buttons simultaneously again.

1. HoloLens asks you if you trust the package and would like to apply it. Confirm that you trust the package.

1. You will see whether the package was applied successfully or not. If it was not applied successfully, you can fix your package and try again. If successful, proceed with device setup.
