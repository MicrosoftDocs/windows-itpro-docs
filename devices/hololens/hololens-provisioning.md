---
title: Configure HoloLens by using a provisioning package (HoloLens)

description: Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging.
ms.prod: hololens
ms.sitesec: library
ms.custom: 
- CI 111456
- CSSTroubleshooting
author: dansimp
ms.author: dansimp
ms.topic: article
ms.custom: 
- CI 115190
- CSSTroubleshooting
ms.localizationpriority: medium
ms.date: 03/10/2020
ms.reviewer: Teresa-Motiv
manager: laurawi
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Configure HoloLens by using a provisioning package

[Windows provisioning](https://docs.microsoft.com/windows/configuration/provisioning-packages/provisioning-packages) makes it easy for IT administrators to configure end-user devices without imaging. Windows Configuration Designer is a tool for configuring images and runtime settings which are then built into provisioning packages.

Some of the HoloLens configurations that you can apply in a provisioning package include the following:

- Upgrade to Windows Holographic for Business [here](hololens1-upgrade-enterprise.md)
- Set up a local account
- Set up a Wi-Fi connection
- Apply certificates to the device
- Enable Developer Mode
- Configure Kiosk mode (Detailed instructions for configuring kiosk mode can be found [here](hololens-kiosk.md#use-a-provisioning-package-to-set-up-a-single-app-or-multi-app-kiosk).

## Provisioning package HoloLens wizard

The HoloLens wizard helps you configure the following settings in a provisioning package:

- Upgrade to the enterprise edition

    > [!NOTE]
    > This should only be used for HoloLens 1st gen devices. Settings in a provisioning package are only be applied if the provisioning package includes an edition upgrade license to Windows Holographic for Business or if [the device has already been upgraded to Windows Holographic for Business](hololens1-upgrade-enterprise.md).

- Configure the HoloLens first experience (OOBE)
- Configure the Wi-Fi network
- Enroll the device in Azure Active Directory, or create a local account
- Add certificates
- Enable Developer Mode
- Configure kiosk mode. (Detailed instructions for configuring kiosk mode can be found [here](hololens-kiosk.md##use-a-provisioning-package-to-set-up-a-single-app-or-multi-app-kiosk)).

> [!WARNING]
> You must run Windows Configuration Designer on Windows 10 to configure Azure Active Directory enrollment using any of the wizards.

Provisioning packages can include management instructions and policies, custom network connections and policies, and more.

> [!TIP]
> Use the desktop wizard to create a package with the common settings, then switch to the advanced editor to add other settings, apps, policies, etc.

## Steps for creating provisioning packages

1. **Option 1:** [From Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22). This includes HoloLens 2 capabilities.
2. **Option 2:** [From the Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit). If you install Windows Configuration Designer from the Windows ADK, select **Configuration Designer** from the **Select the features you want to install** dialog box. This option does not include HoloLens 2 capabilities.

> [!NOTE]
> If you know you will be using an offline PC that needs access to Windows Configuration Designer please follow the offline app install [here](https://docs.microsoft.com/hololens/hololens-recovery#downloading-arc-without-using-the-app-store) for Advanced Recovery Companion but making Windows Confiugration Desinger your selection instead. 

### 2. Create the provisioning package

Use the Windows Configuration Designer tool to create a provisioning package.

1. Open Windows Configuration Designer (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

2. Select **Provision HoloLens devices**.

   ![ICD start options](images/icd-create-options-1703.png)

3. Name your project and select **Finish**.

4. Read the instructions on the **Getting started** page and select **Next**. The pages for desktop provisioning walk you through the following steps.
  
> [!IMPORTANT]
> When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

### Configure settings

<table>
<tr><td style="width:45%" valign="top"><a id="one"></a><img src="images/one.png" alt="step one"/><img src="images/set-up-device.png" alt="set up device"/></br></br>Browse to and select the enterprise license file to upgrade the HoloLens edition.</br></br>You can also toggle <strong>Yes</strong> or <strong>No</strong> to hide parts of the first experience.</br></br>To set up the device without the need to connect to a Wi-Fi network, toggle <strong>Skip Wi-Fi setup</strong> to <strong>On</strong>.</br></br>Select a region and timezone in which the device will be used. </td><td><img src="images/set-up-device-details.png" alt="Select enterprise licence file and configure OOBE"/></td></tr>
<tr><td style="width:45%" valign="top"><a id="two"></a><img src="images/two.png" alt="step two"/>  <img src="images/set-up-network.png" alt="set up network"/></br></br>In this section, you can enter the details of the Wi-Fi wireless network that the device should automatically connect to. To do this, select <strong>On</strong>, enter the SSID, the network type (<strong>Open</strong> or <strong>WPA2-Personal</strong>), and (if <strong>WPA2-Personal</strong>) the password for the wireless network.</td><td><img src="images/set-up-network-details-desktop.png" alt="Enter network SSID and type"/></td></tr>
<tr><td style="width:45%" valign="top"><a id="three"></a><img src="images/three.png" alt="step three"/>  <img src="images/account-management.png" alt="account management"/></br></br>You can enroll the device in Azure Active Directory, or create a local account on the device</br></br>Before you use a Windows Configuration Designer wizard to configure bulk Azure AD enrollment, <a href="https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup" data-raw-source="[set up Azure AD join in your organization](https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup)">set up Azure AD join in your organization</a>. The <strong>maximum number of devices per user</strong> setting in your Azure AD tenant determines how many times the bulk token that you get in the wizard can be used. To enroll the device in Azure AD, select that option and enter a friendly name for the bulk token you will get using the wizard. Set an expiration date for the token (maximum is 30 days from the date you get the token). Select <strong>Get bulk token</strong>. In the <strong>Let&#39;s get you signed in</strong> window, enter an account that has permissions to join a device to Azure AD, and then the password. Select <strong>Accept</strong> to give Windows Configuration Designer the necessary permissions. </br></br>To create a local account, select that option and enter a user name and password. </br></br><strong>Important:</strong> <br />(For Windows 10, version 1607 only) If you create a local account in the provisioning package, you must change the password using the <strong>Settings</strong> app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in.  </td><td><img src="images/account-management-details.png" alt="join  Azure AD or create a local  account"/></td></tr>
<tr><td style="width:45%" valign="top"><a id="four"></a><img src="images/four.png" alt="step four"/> <img src="images/add-certificates.png" alt="add certificates"/></br></br>To provision the device with a certificate, click <strong>Add a certificate</strong>. Enter a name for the certificate, and then browse to and select the certificate to be used.</td><td><img src="images/add-certificates-details.png" alt="add a certificate"/></td></tr> 
<tr><td style="width:45%" valign="top"><a id="five"></a><img src="images/five.png" alt="step five"/> <img src="images/developer-setup.png" alt="Developer Setup"/></br></br>Toggle <strong>Yes</strong> or <strong>No</strong> to enable Developer Mode on the HoloLens. <a href="https://docs.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode" data-raw-source="[Learn more about Developer Mode.](https://docs.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)">Learn more about Developer Mode.</a></td><td><img src="images/developer-setup-details.png" alt="Enable Developer Mode"/></td></tr>
<tr><td style="width:45%" valign="top"><a id="six"></a><img src="images/six.png" alt="step six"/> <img src="images/finish.png" alt="finish"/></br></br>Do not set a password to protect your provisioning package. If the provisioning package is protected by a password, provisioning the HoloLens device will fail.</td><td><img src="images/finish-details.png" alt="Protect your package"/></td></tr>
</table>

After you're done, select **Create**. It only takes a few seconds. When the package is built, the location where the package is stored is displayed as a hyperlink at the bottom of the page.

### 3. Create a provisioning package for HoloLens by using advanced provisioning

> [!NOTE]
> A provisioning package that you create in **Advanced provisioning** does not need to include an edition upgrade license to Windows Holographic for Business to succesfully apply to a HoloLens (1st gen). [See more on Windows Holographic for Business for HoloLens (1st gen)](hololens1-upgrade-enterprise.md).

1. On the Windows Configuration Designer start page, select **Advanced provisioning**.
2. In the **Enter project details** window, specify a name for your project and the location for your project. Optionally, enter a brief description to describe your project.

3. Select **Next**.

4. In the **Choose which settings to view and configure** window, select **Windows 10 Holographic**, and then select **Next**.

5. Select **Finish**.

6. Expand **Runtime settings** and customize the package by using any of the settings [described later in this article](#what-you-can-configure).

    > [!IMPORTANT]
    > (For Windows 10, version 1607 only) If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in. If the user account is locked out, you must [perform a full device recovery](https://developer.microsoft.com/windows/mixed-reality/reset_or_recover_your_hololens#perform_a_full_device_recovery).

7. Select **File** > **Save**.

8. Read the warning that project files may contain sensitive information, and select **OK**.

    > [!IMPORTANT]
    > When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.
    
9. Select **Export** > **Provisioning package**.

10. Change **Owner** to **IT Admin**. This sets the precedence of this provisioning package higher than provisioning packages applied to this device from other sources. Select **Next**.

11. Set a value for **Package Version**.

    > [!TIP]
    > You can make changes to existing packages and change the version number to update previously applied packages.

12. On the **Select security details for the provisioning package**, select **Next**.

    > [!WARNING]
    > If you encrypt the provisioning package, provisioning the HoloLens device will fail.  

13. Select **Next** to specify the output location where you want the provisioning package to go once it's built. By default, Windows Configuration Designer uses the project folder as the output location.

    Optionally, you can select **Browse** to change the default output location.

14. Select **Next**.

15. Select **Build** to start building the package. The project information is displayed in the build page and the progress bar indicates the build status.

16. When the build completes, select **Finish**.

<span id="apply" />

## Apply a provisioning package to HoloLens during setup

1. Use the USB cable to connect the device to a PC, and then start the device. Do not continue past the **First interactable moment** page of OOBE.   
    - On HoloLens (1st gen), this page contains a blue box. 
    - On HoloLens 2, this page contains the hummingbird.

2. Briefly press and release the **Volume Down** and **Power** buttons simultaneously. 

3. HoloLens shows up as a device in File Explorer on the PC.

4. In File Explorer, drag and drop the provisioning package (.ppkg) onto the device storage.

5. Briefly press and release the **Volume Down** and **Power** buttons simultaneously again while on the **fit** page.

6. The device asks you if you trust the package and would like to apply it. Confirm that you trust the package.

7. You will see whether the package was applied successfully or not. If it failed, you can fix your package and try again. If it succeeded, proceed with OOBE.

> [!NOTE]
> If the device was purchased before August 2016, you will need to sign in to the device by using a Microsoft account, get the latest operating system update, and then reset the operating system in order to apply the provisioning package.

### 4. Apply a provisioning package to HoloLens after setup

> [!NOTE]
> These steps apply only toWindows 10, version 1809.

On your PC, follow these steps:
1. Create a provisioning package as described at [Create a provisioning package for HoloLens using the HoloLens wizard](hololens-provisioning.md).
2. Connect the HoloLens device to a PC by using a USB cable. HoloLens shows up as a device in File Explorer on the PC.
3. Drag and drop the provisioning package to the Documents folder on the HoloLens.

On your HoloLens, follow these steps:
1. Go to **Settings** > **Accounts** > **Access work or school**. 
2. In **Related Settings**, select **Add or remove a provisioning package**.
3. On the next page, select **Add a package** to launch the file picker and select your provisioning package. If the folder is empty, make sure you select **This Device** and select **Documents**.

After your package has been applied, it shows up in the list of **Installed packages**. To view the package details or to remove the package from the device, select the listed package.

## What you can configure

Provisioning packages make use of configuration service providers (CSPs). If you're not familiar with CSPs, see [Introduction to configuration service providers (CSPs) for IT pros](https://docs.microsoft.com/windows/configuration/provisioning-packages/how-it-pros-can-use-configuration-service-providers).

In Windows Configuration Designer, when you create a provisioning package for Windows Holographic, the settings in **Available customizations** are based on [CSPs that are supported in Windows Holographic](https://docs.microsoft.com/windows/client-management/mdm/configuration-service-provider-reference#csps-supported-in-hololens-devices). The following table describes settings that you might want to configure for HoloLens.

![Common runtime settings for HoloLens](images/icd-settings.png)

| Setting | Description |
| --- | --- |
| **Certificates** | Deploy a certificate to HoloLens.  |
| **ConnectivityProfiles** | Deploy a Wi-Fi profile to HoloLens.   |
| **EditionUpgrade** | [Upgrade to Windows Holographic for Business.](hololens1-upgrade-enterprise.md)  |
| **Policies** | Allow or prevent developer mode on HoloLens. [Policies supported by Windows Holographic for Business](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider#hololenspolicies) |

> [!NOTE]
> HoloLens does not currently support installing apps (**UniversalAppInstall**) by using a provisioning package.

## Next Step: [Enroll your device](hololens-enroll-mdm.md)
