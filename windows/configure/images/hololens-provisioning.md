---
title: Configure HoloLens using a provisioning package (HoloLens)
description: Windows provisioning makes it easy for IT administrators to configure devices without imaging.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Configure HoloLens using a provisioning package test

Windows provisioning makes it easy for IT administrators to configure devices without imaging. The [Windows Configuration Designer app](https://www.microsoft.com/store/apps/9nblggh4tx22) in the Windows Store provides a wizard to help you create provisioning packages for Microsoft HoloLens.

The Windows Configuration Designer app can be installed on a PC running Windows 10, version 1703. Localized versions of the app aren't currently available. If you want to create provisioning packages on a PC running earlier versions of Windows or you want to use a localized tool, you can install Configuration Designer from the Assessment and Deployment Kit (ADK) for Windows 10. [Learn how to install Windows Configuration Designer.](https://technet.microsoft.com/itpro/windows/deploy/provisioning-install-icd)

Some of the HoloLens configurations that you can apply in a provisioning package: 
- Upgrade to Windows Holographic for Business
- Set up a local account
- Set up a Wi-Fi connection
- Apply certificates to the device
- Configure the first-run experience for HoloLens 
- Enable **Developer mode**
- Enroll the device in Azure Active Directory (AD)

>[!NOTE]
>Settings in a provisioning package will only be applied if the provisioning package includes an edition upgrade license to Windows Holographic for Business or if [the device has already been upgraded to Windows Holographic for Business](hololens-upgrade-enterprise.md).

<span id="simple" />
## Create a provisioning package for HoloLens (simple)

Open Windows Configuration Designer and, on the Start page, choose **Provision HoloLens devices** to configure the most common settings for HoloLens.

>[!TIP]
>You can use the wizard for the available settings, and then click **Switch to advanced editor** to configure additional settings.

<table>
<tr><td valign="top">![step one](images/one.png)![set up device](images/set-up-device.png)</br></br>Select an enterprise license file to upgrade to Windows Holographic for Business (not required if the device has already been upgraded). </br></br>Next, select the first-run sections that you don't want shown to users. You can also configure the region and timezone for the device. </td><td>![upgrade to enterprise, configure oobe](images/set-up-device-details.png)</td></tr>
<tr><td valign="top">![step two](images/two.png)  ![set up network](images/set-up-network.png)</br></br>Toggle **On** or **Off** for wireless network connectivity. If you select **On**, enter the SSID, the network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.</td><td>![Enter network SSID and type](images/set-up-network-details.png)</td></tr>
<tr><td valign="top">![step three](images/three.png)  ![account management](images/account-management.png)</br></br>You can enroll the device in Azure AD, create a local account on the device, or skip account configuration.</br></br>To enroll the device in Azure AD, select that option and enter a friendly name for the bulk token you will get using the wizard. (Something about expiry) Click **Get bulk token** (then what?)</br></br>To create a local account, select that option and enter a user name and password. </br></br>**Important:** If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in. If the user account is locked out, you must [perform a full device recovery](https://developer.microsoft.com/windows/holographic/reset_or_recover_your_hololens#perform_a_full_device_recovery). </td><td>![join Azure AD, create a local account, or skip](images/account-management-details.png)</td></tr>
<tr><td valign="top">![step four](images/four.png) ![add certificates](images/add-certificates.png)</br></br>To provision the device with a certificate, click **Add a certificate**. Enter a name for the certificate, and then browse to and select the certificate to be used.</td><td>![add a certificate](images/add-certificates-details.png)</td></tr> 
<tr><td valign="top">![step five](images/five.png)  ![developer setup](images/developer-setup.png)</br></br>Toggle **On** or **Off** for Developer Mode.</td><td>![enable developer mode](images/developer-setup-details.png)</td></tr>
<tr><td valign="top">![step six](images/six.png)  ![finish](images/finish.png)</br></br>You can set a password to protect your provisioning package. You must enter this password when you apply the provisioning package to a device.</td><td>![Protect your package](images/finish-details.png)</td></tr>
</table>


<span id="advanced" />
## Create a provisioning package for HoloLens (advanced)



1. On the Windows Configuration Designer start page, select **Advanced provisioning** (or click **Switch to advanced editor** in the wizard).

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

>- MTP Enabled -- ability to plug a device in via USB cable to access file
>    - No longer need to do the initial button combo to enable provisioning.
>    - The button combo is still needed to apply the package however

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

In Windows ICD, when you create a provisioning package for Windows Holographic, the settings in **Available customizations** are based on [CSPs that are supported in Windows Holographic](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/configuration-service-provider-reference#hololens). The following table describes settings that you might want to configure for HoloLens.

![Common runtime settings for HoloLens](images/icd-settings.png)

| Setting | Description |
| --- | --- |
| **Accounts**  | Create a local account. HoloLens currently supports a single user only. Creating multiple local accounts in a provisioning package is not supported. <br><br>**IMPORTANT**<br>If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in. If the user account is locked out, you must [perform a full device recovery](https://developer.microsoft.com/windows/holographic/reset_or_recover_your_hololens#perform_a_full_device_recovery). |
| **Certificates** | Deploy a certificate to HoloLens.  |
| **ConnectivityProfiles** | Deploy a Wi-Fi profile to HoloLens.   |
| **EditionUpgrade** | [Upgrade to Windows Holographic for Business.](hololens-upgrade-enterprise.md)  |
| **Policies** | Allow or prevent developer mode on HoloLens.  |

>[!NOTE]
>App installation (**UniversalAppInstall**) using a provisioning package is not currently supported for HoloLens.



<span id="bulk-aadj" />
## Bulk enroll HoloLens devices in Azure Active Directory


