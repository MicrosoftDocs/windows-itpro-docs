---
title: Configure HoloLens using a provisioning package (HoloLens)
description: Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Configure HoloLens using a provisioning package

Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. The Windows Assessment and Deployment Kit (ADK) for Windows 10 includes the Imaging and Configuration Designer (ICD), a tool for configuring images and runtime settings which are then built into provisioning packages. 

Some of the HoloLens configurations that you can apply in a provisioning package: 
- Upgrade to Windows Holographic Enterprise
- Set up a local account
- Set up a Wi-Fi connection
- Apply certificatess to the device

To install Windows ICD and create provisioning packages, you must [install the Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit).

When you run ADKsetup.exe for Windows 10, version 1607, select **Configuration Designer** from the **Select the features you want to install** dialog box.

![Choose Configuration Designer](images/adk-install.png)

> [!NOTE]
> In previous versions of the Windows 10 ADK, you had to install additional features for Windows ICD to run. Starting in version 1607, you can install Windows ICD without other ADK features.


## Create a provisioning package for HoloLens

>[!NOTE]
>Settings in a provisioning package will only be applied if the provisioning package includes an edition upgrade license to Windows Holographic Enterprise or if [the device has already been upgraded to Windows Holographic Enterprise](hololens-upgrade-enterprise.md).

1. On the Windows ICD start page, select **Advanced provisioning**.

2. In the **Enter project details** window, specify a name for your project and the location for your project. Optionally, enter a brief description to describe your project.

3. Click **Next**.

4. In the **Choose which settings to view and configure** window, select **Windows 10 Holographic**, and then click **Next**.

6. Click **Finish**.

7. Expand **Runtime settings** and customize the package with any of the settings [described below](#what-you-can-configure).

    >[!IMPORTANT]
    >If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in. If the user account is locked out, you must [perform a full device recovery](https://developer.microsoft.com/windows/holographic/reset_or_recover_your_hololens#perform_a_full_device_recovery).

8. On the **File** menu, click **Save**. 

4. Read the warning that project files may contain sensitive information, and click **OK**.

    >[!IMPORTANT]
    >When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.
    
3. On the **Export** menu, click **Provisioning package**.

4. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next**.

5. Set a value for **Package Version**.

    >[!TIP]
    >You can make changes to existing packages and change the version number to update previously applied packages.

6. On the **Select security details for the provisioning package**, click **Next**.

7. Click **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows ICD uses the project folder as the output location.

    Optionally, you can click Browse to change the default output location.

8. Click **Next**.

9. Click **Build** to start building the package. The project information is displayed in the build page and the progress bar indicates the build status.

10. When the build completes, click **Finish**. 


## Apply a provisioning package to HoloLens

1. Connect the device via USB to a PC and start the device, but do not continue past the **fit** page of OOBE (the first page with the blue box).

2. Briefly press and release the **Volume Down** and **Power** buttons simultaneously.

3. HoloLens will show up as a device in File Explorer on the PC.

4. In File Explorer, drag and drop the provisioning package (.ppkg) onto the device storage.

5. Briefly press and release the **Volume Down** and **Power** buttons simultaneously again while on the **fit** page.

6. The device will ask you if you trust the package and would like to apply it. Confirm that you trust the package.

7. You will see whether the package was applied successfully or not. If it failed, you can fix your package and try again. If it succeeded, proceed with OOBE.

>[!NOTE]
>If the device was purchased before August 2016, you will need to sign into the device with aa Microsoft account, get the latest OS update, and then reset the OS in order to apply the provisioning package.

## What you can configure

Provisioning packages make use of configuration service providers (CSPs). If you're not familiar with CSPs, see [Introduction to configuration service providers (CSPs) for IT pros](https://technet.microsoft.com/itpro/windows/manage/how-it-pros-can-use-configuration-service-providers).

In Windows ICD, when you create a provisioning package for Windows Holographic, the settings in **Available customizations** are based on [CSPs that are supported in Windows Holographic](https://msdn.microsoft.co/library/windows/hardware/dn920025.aspx#HoloLens). The following table describes settings that you might want to configure for HoloLens.

![Common runtime settings for HoloLens](images/icd-settings.png)

| Setting | Description |
| --- | --- |
| **Accounts**  | Create a local account. HoloLens currently supports a single user only. Creating multiple local accounts in a provisioning package is not supported. <br><br>**IMPORTANT**<br>If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in. If the user account is locked out, you must [perform a full device recovery](https://developer.microsoft.com/windows/holographic/reset_or_recover_your_hololens#perform_a_full_device_recovery). |
| **Certificates** | Deploy a certificate to HoloLens.  |
| **ConnectivityProfiles** | Deploy a Wi-Fi profile to HoloLens.   |
| **EditionUpgrade** | [Upgrade to Windows Holographic Enterprise.](hololens-upgrade-enterprise.md)  |
| **Policies** | Allow or prevent developer mode on HoloLens.  |

>[!NOTE]
>App installation (**UniversalAppInstall**) using a provisioning package is not currently supported for HoloLens.




