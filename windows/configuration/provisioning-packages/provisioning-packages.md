---
title: Provisioning packages (Windows 10)
description: With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.
ms.assetid: 287706E5-063F-4AB5-902C-A0DF6D0730BC
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Provisioning packages for Windows 10


**Applies to**

- Windows 10
- Windows 10 Mobile

Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. Using Windows provisioning, an IT administrator can easily specify desired configuration and settings required to enroll the devices into management and then apply that configuration to target devices in a matter of minutes. It is best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers. 

A provisioning package (.ppkg) is a container for a collection of configuration settings. With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.

Provisioning packages are simple enough that with a short set of written instructions, a student or non-technical employee can use them to configure their device. This can result in a significant reduction in the time required to configure multiple devices in your organization.

The [Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit) includes the Windows Configuration Designer, a tool for configuring provisioning packages. Windows Configuration Designer is also available as an [app in the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22). 




## New in Windows 10, version 1703

- The tool for creating provisioning packages is renamed Windows Configuration Designer, replacing the Windows Imaging and Configuration Designer (ICD) tool. The components for creating images have been removed from Windows Configuration Designer, which now provides access to runtime settings only.
- Windows Configuration Designer can still be installed from the Windows ADK. You can also install it from the Microsoft Store.
- Windows Configuration Designer adds more wizards to make it easier to create provisioning packages for specific scenarios. See [What you can configure](#configuration-designer-wizards) for wizard descriptions.
- The wizard **Provision desktop devices** (previously called **Simple provisioning**) now enables joining Azure Active Directory (Azure AD) domains and also allows you to remove non-Microsoft software from Windows desktop devices during provisioning.
- When provisioning packages are applied to a device, a status screen indicates successful or failed provisioning. 
- Windows 10 includes PowerShell cmdlets that simplify scripted provisioning. Using these cmdlets, you can add provisioning packages, remove provisioning packages and generate log files to investigate provisioning errors.
- The **Provision school devices** wizard is removed from Windows Configuration Designer. Instead, use the [Setup School PCs app](https://www.microsoft.com/store/p/set-up-school-pcs/9nblggh4ls40) from the Microsoft Store.
<!-- Provisioning packages can be made available [using NFC and barcodes](provisioning-nfc.md).--> 


## Benefits of provisioning packages


Provisioning packages let you:

- Quickly configure a new device without going through the process of installing a new image.

- Save time by configuring multiple devices using one provisioning package.

- Quickly configure employee-owned devices in an organization without a mobile device management (MDM) infrastructure.

- Set up a device without the device having network connectivity.

Provisioning packages can be:

- Installed using removable media such as an SD card or USB flash drive.

- Attached to an email.

- Downloaded from a network share.

- Deployed in NFC tags or barcodes.

## What you can configure

### Configuration Designer wizards

The following table describes settings that you can configure using the wizards in Windows Configuration Designer to create provisioning packages.


<table><tr><td align="left"><strong>Step</strong></td><td align="left"><strong>Description</strong></td><td><strong>Desktop wizard</strong></td><td align="center"><strong>Mobile wizard</strong></td><td><strong>Kiosk wizard</strong></td><td><strong>HoloLens wizard</strong></td></tr>
<tr><td valign="top">Set up device</td><td valign="top">Assign device name,</br>enter product key to upgrade Windows,</br>configure shared used,</br>remove pre-installed software</td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></br>(Only device name and upgrade key)</td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td></tr>
<tr><td valign="top">Set up network</td><td valign="top">Connect to a Wi-Fi network</td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td></tr>
<tr><td valign="top">Account management</td><td valign="top">Enroll device in Active Directory,</br>enroll device in Azure Active Directory,</br>or create a local administrator account</td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td></tr>
<tr><td valign="top">Bulk Enrollment in Azure AD</td><td valign="top">Enroll device in Azure Active Directory</br></br>Before you use a Windows Configuration Designer wizard to configure bulk Azure AD enrollment, <a href="https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup" data-raw-source="[set up Azure AD join in your organization](https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup)">set up Azure AD join in your organization</a>.</td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td></tr>
<tr><td valign="top">Add applications</td><td valign="top">Install applications using the provisioning package.</td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td></tr>
<tr><td valign="top">Add certificates</td><td valign="top">Include a certificate file in the provisioning package.</td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td></tr>
<tr><td valign="top">Configure kiosk account and app</td><td valign="top">Create local account to run the kiosk mode app,</br>specify the app to run in kiosk mode</td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td></tr>
<tr><td valign="top">Configure kiosk common settings</td><td valign="top">Set tablet mode,</br>configure welcome and shutdown screens,</br>turn off timeout settings</td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td></tr>
<tr><td valign="top">Developer Setup</td><td valign="top">Enable Developer Mode.</td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/crossmark.png" alt="no"/></td><td align="center" valign="top"><img src="../images/checkmark.png" alt="yes"/></td></tr></table>

- [Instructions for the desktop wizard](provision-pcs-for-initial-deployment.md)
- [Instructions for the mobile wizard](../mobile-devices/provisioning-configure-mobile.md)
- [Instructions for the kiosk wizard](../kiosk-single-app.md#wizard)
- [Instructions for the HoloLens wizard](https://docs.microsoft.com/hololens/hololens-provisioning#wizard)


>[!NOTE]
>After you start a project using a Windows Configuration Designer wizard, you can switch to the advanced editor to configure additional settings in the provisioning package. 

### Configuration Designer advanced editor

The following table provides some examples of settings that you can configure using the Windows Configuration Designer advanced editor to create provisioning packages.


|           Customization options            |                                                          Examples                                                           |
|--------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Bulk Active Directory join and device name | Join devices to Active Directory domain and assign device names using hardware-specific serial numbers or random characters |
|                Applications                |                                         Windows apps, line-of-business applications                                         |
|          Bulk enrollment into MDM          |                                    Automatic enrollment into a third-party MDM service\*                                    |
|                Certificates                |                                   Root certification authority (CA), client certificates                                    |
|           Connectivity profiles            |                                                Wi-Fi, proxy settings, Email                                                 |
|            Enterprise policies             |                Security restrictions (password, device lock, camera, and so on), encryption, update settings                |
|                Data assets                 |                                             Documents, music, videos, pictures                                              |
|          Start menu customization          |                                           Start menu layout, application pinning                                            |
|                   Other                    |                     Home and lock screen wallpaper, computer name, domain join, DNS settings, and so on                     |

\* Using a provisioning package for auto-enrollment to System Center Configuration Manager or Configuration Manager/Intune hybrid is not supported. Use the Configuration Manager console to enroll devices.


For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( https://go.microsoft.com/fwlink/p/?LinkId=619012).

## Changes to provisioning in Windows 10, version 1607

>[!NOTE]
>This section is retained for customers using Windows 10, version 1607, on the Current Branch for Business. Some of this information is not applicable in Windows 10, version 1703.

Windows ICD for Windows 10, version 1607, simplified common provisioning scenarios. 

![Configuration Designer options](../images/icd.png)

Windows ICD in Windows 10, version 1607, supported the following scenarios for IT administrators:

* **Simple provisioning** – Enables IT administrators to define a desired configuration in Windows ICD and then apply that configuration on target devices. The simple provisioning wizard makes the entire process quick and easy by guiding an IT administrator through common configuration settings in a step-by-step manner. 

    > [Learn how to use simple provisioning to configure Windows 10 computers.](provision-pcs-for-initial-deployment.md)

* **Advanced provisioning (deployment of classic (Win32) and Universal Windows Platform (UWP) apps, and certificates)** – Allows an IT administrator to use Windows ICD to open provisioning packages in the advanced settings editor and include apps for deployment on end-user devices. 

* **Mobile device enrollment into management** - Enables IT administrators to purchase off-the-shelf retail Windows 10 Mobile devices and enroll them into mobile device management (MDM) before handing them to end-users in the organization. IT administrators can use Windows ICD to specify the management end-point and apply the configuration on target devices by connecting them to a Windows PC (tethered deployment) or through an SD card. Supported management end-points include: 

    * System Center Configuration Manager and Microsoft Intune hybrid (certificate-based enrollment) 
    * AirWatch (password-string based enrollment) 
    * Mobile Iron (password-string based enrollment) 
    * Other MDMs (cert-based enrollment) 

> [!NOTE]
> Windows ICD in Windows 10, version 1607, also provided a wizard to create provisioning packages for school PCs. To learn more, see [Set up students' PCs to join domain](https://technet.microsoft.com/edu/windows/index).

## Learn more

- Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

- Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)

## Related topics

- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)
- [Use Windows Configuration Designer to configure Windows 10 Mobile devices](../mobile-devices/provisioning-configure-mobile.md)













