---
title: Provision PCs with common settings (Windows 10)
description: Create a provisioning package to apply common settings to a PC running Windows 10. 
ms.assetid: 66D14E97-E116-4218-8924-E2A326C9367E
keywords: ["runtime provisioning", "provisioning package"]
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerms
ms.author: jdecker
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Provision PCs with common settings for initial deployment (desktop wizard)


**Applies to**

-   Windows 10

This topic explains how to create and apply a provisioning package that contains common enterprise settings to a device running all desktop editions of Windows 10 except Windows 10 Home.

You can apply a provisioning package on a USB drive to off-the-shelf devices during setup, making it fast and easy to configure new devices. 

## Advantages
-   You can configure new devices without reimaging.

-   Works on both mobile and desktop devices.

-   No network connectivity required.

-   Simple to apply.

[Learn more about the benefits and uses of provisioning packages.](provisioning-packages.md)

## What does the desktop wizard do?

The desktop wizard helps you configure the following settings in a provisioning package:

- Set device name
- Upgrade product edition
- Configure the device for shared use
- Remove pre-installed software
- Configure Wi-Fi network 
- Enroll device in Active Directory or Azure Active Directory 
- Create local administrator account 
- Add applications and certificates

>[!WARNING]
>You must run Windows Configuration Designer on Windows 10 to configure Azure Active Directory enrollment using any of the wizards.

Provisioning packages can include management instructions and policies, installation of specific apps, customization of network connections and policies, and more. 

> [!TIP]
> Use the desktop wizard to create a package with the common settings, then switch to the advanced editor to add other settings, apps, policies, etc.
>
>![open advanced editor](../images/icd-simple-edit.png)

## Create the provisioning package

Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](provisioning-install-icd.md)

1. Open Windows Configuration Designer (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

2. Click **Provision desktop devices**.

  ![ICD start options](../images/icd-create-options-1703.png)   

3. Name your project and click **Finish**. The pages for desktop provisioning will walk you through the following steps.

  ![ICD desktop provisioning](../images/icd-desktop-1703.png)
  
> [!IMPORTANT]
> When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

## Configure settings


<table>
<tr><td style="width:45%" valign="top">![step one](../images/one.png)![set up device](../images/set-up-device.png)</br></br>Enter a name for the device.</br></br>(Optional) Select a license file to upgrade Windows 10 to a different edition. [See the permitted upgrades.](https://technet.microsoft.com/itpro/windows/deploy/windows-10-edition-upgrades)</br></br>Toggle **Yes** or **No** to **Configure devices for shared use**. This setting optimizes Windows 10 for shared use scenarios. [Learn more about shared PC configuration.](../set-up-shared-or-guest-pc.md)</br></br>You can also select to remove pre-installed software from the device. </td><td>![device name, upgrade to enterprise, shared use, remove pre-installed software](../images/set-up-device-details-desktop.png)</td></tr>
<tr><td style="width:45%" valign="top">![step two](../images/two.png)  ![set up network](../images/set-up-network.png)</br></br>Toggle **On** or **Off** for wireless network connectivity. If you select **On**, enter the SSID, the network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.</td><td>![Enter network SSID and type](../images/set-up-network-details-desktop.png)</td></tr>
<tr><td style="width:45%" valign="top">![step three](../images/three.png)  ![account management](../images/account-management.png)</br></br>Enable account management if you want to configure settings on this page. </br></br>You can enroll the device in Active Directory, enroll in Azure Active Directory, or create a local administrator account on the device</br></br>To enroll the device in Active Directory, enter the credentials for a least-privileged user account to join the device to the domain.</br></br>Before you use a Windows Configuration Designer wizard to configure bulk Azure AD enrollment, [set up Azure AD join in your organization](https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup). The **maximum number of devices per user** setting in your Azure AD tenant determines how many times the bulk token that you get in the wizard can be used. To enroll the device in Azure AD, select that option and enter a friendly name for the bulk token you will get using the wizard. Set an expiration date for the token (maximum is 180 days from the date you get the token). Click **Get bulk token**. In the **Let's get you signed in** window, enter an account that has permissions to join a device to Azure AD, and then the password. Click **Accept** to give Windows Configuration Designer the necessary permissions. </br></br>To create a local administrator account, select that option and enter a user name and password. </br></br>**Important:** If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in.  </td><td>![join Active Directory, Azure AD, or create a local admin account](../images/account-management-details.png)</td></tr>
<tr><td style="width:45%" valign="top">![step four](../images/four.png) ![add applications](../images/add-applications.png)</br></br>You can install multiple applications, both Windows desktop applications (Win32) and Universal Windows Platform (UWP) apps, in a provisioning package. The settings in this step vary according to the application that you select. For help with the settings, see [Provision PCs with apps](provision-pcs-with-apps.md). </td><td>![add an application](../images/add-applications-details.png)</td></tr>
<tr><td style="width:45%" valign="top">![step five](../images/five.png) ![add certificates](../images/add-certificates.png)</br></br>To provision the device with a certificate, click **Add a certificate**. Enter a name for the certificate, and then browse to and select the certificate to be used.</td><td>![add a certificate](../images/add-certificates-details.png)</td></tr> 
<tr><td style="width:45%" valign="top">  ![finish](../images/finish.png)</br></br>You can set a password to protect your provisioning package. You must enter this password when you apply the provisioning package to a device.</td><td>![Protect your package](../images/finish-details.png)</td></tr>
</table>

After you're done, click **Create**. It only takes a few seconds. When the package is built, the location where the package is stored is displayed as a hyperlink at the bottom of the page.

 **Next step**: [How to apply a provisioning package](provisioning-apply-package.md)   


## Learn more

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)

 
## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [NFC-based device provisioning](../mobile-devices/provisioning-nfc.md)
- [Use the package splitter tool](../mobile-devices/provisioning-package-splitter.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)





