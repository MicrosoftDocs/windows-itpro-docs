---
title: Provisioning packages (Windows 10)
description: With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.
ms.assetid: 287706E5-063F-4AB5-902C-A0DF6D0730BC
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: mobile
author: jdeckerMS
---

# Provisioning packages for Windows 10


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. Using Windows Provisioning, an IT administrator can easily specify desired configuration and settings required to enroll the devices into management (through a wizard-driven user interface) and then apply that configuration to target devices in a matter of minutes. It is best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers. 

With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.

Provisioning packages are simple enough that with a short set of written instructions, a student or non-technical employee can use them to configure their device. This can result in a significant reduction in the time required to configure multiple devices in your organization.

## New in Windows 10, Version 1607

The Windows Assessment and Deployment Kit (ADK) for Windows 10 includes the Imaging and Configuration Designer (ICD), a tool for configuring images and runtime settings which are then built into provisioning packages. Windows ICD for Windows 10, Version 1607, simplifies common provisioning scenarios. 

![Configuration Designer options](images/icd.png)

Windows ICD in Windows 10, Version 1607, supports the following scenarios for IT administrators:

* **Simple provisioning** – Enables IT administrators to define a desired configuration in Windows ICD and then apply that configuration on target devices. The simple provisioning wizard makes the entire process quick and easy by guiding an IT administrator through common configuration settings in a step-by-step manner. 

    > [Learn how to use simple provisioning to configure Windows 10 computers.](provision-pcs-for-initial-deployment.md)

* **Advanced provisioning (deployment of classic (Win32) and Universal Windows Platform (UWP) apps, and certificates)** – Allows an IT administrator to use Windows ICD to open provisioning packages in the advanced settings editor and include apps for deployment on end-user devices. 

    > [Learn how to use advanced provisioning to configure Windows 10 computers with apps and certificates.](provision-pcs-with-apps-and-certificates.md)

* **Mobile device enrollment into management** - Enables IT administrators to purchase off-the-shelf retail Windows 10 Mobile devices and enroll them into mobile device management (MDM) before handing them to end-users in the organization. IT administrators can use Windows ICD to specify the management end-point and apply the configuration on target devices by connecting them to a Windows PC (tethered deployment) or through an SD card. Supported management end-points include: 

    * System Center Configuration Manager and Microsoft Intune hybrid (certificate-based enrollment) 
    * AirWatch (password-string based enrollment) 
    * Mobile Iron (password-string based enrollment) 
    * Other MDMs (cert-based enrollment) 

> **Note:** Windows ICD in Windows 10, Version 1607, also provides a wizard to create provisioning packages for school PCs. To learn more, see [Set up students' PCs to join domain](https://technet.microsoft.com/edu/windows/index).

## Benefits of provisioning packages


Provisioning packages let you:

-   Quickly configure a new device without going through the process of installing a new image.

-   Save time by configuring multiple devices using one provisioning package.

-   Quickly configure employee-owned devices in an organization without a mobile device management (MDM) infrastructure.

-   Set up a device without the device having network connectivity.

Provisioning packages can be:

-   Installed using removable media such as an SD card or USB flash drive.

-   Attached to an email.

-   Downloaded from a network share.

## What you can configure


The following table provides some examples of what can be configured using provisioning packages.

| Customization options    | Examples                                                                                      |
|--------------------------|-----------------------------------------------------------------------------------------------|
| Bulk Active Directory join and device name | Join devices to Active Directory domain and assign device names using hardware-specific serial numbers or random characters |
| Applications             | Windows apps, line-of-business applications                                                   |
| Bulk enrollment into MDM | Automatic enrollment into a third-party MDM service\*                       |
| Certificates             | Root certification authority (CA), client certificates                                        |
| Connectivity profiles    | Wi-Fi, proxy settings, Email                                                                  |
| Enterprise policies      | Security restrictions (password, device lock, camera, and so on), encryption, update settings |
| Data assets              | Documents, music, videos, pictures                                                            |
| Start menu customization | Start menu layout, application pinning                                                        |
| Other                    | Home and lock screen wallpaper, computer name, domain join, DNS settings, and so on           |
\* Using a provisioning package for auto-enrollment to System Center Configuration Manager or Configuration Manager/Intune hybrid is not supported. Use the Configuration Manager console to enroll devices.
 

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( http://go.microsoft.com/fwlink/p/?LinkId=619012).

## Creating a provisioning package


With Windows 10, you can use the Windows Imaging and Configuration Designer (ICD) tool to create provisioning packages. To install Windows ICD and create provisioning packages, you must [install the Windows Assessment and Deployment Kit (ADK) for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=526740).

While running ADKsetup.exe for Windows 10, version 1607, select the following feature from the **Select the features you want to install** dialog box:

-   Configuration Designer

> **Note:** In previous versions of the Windows 10 ADK, you had to install additional features for Windows ICD to run. Starting in version 1607, you can install Windows ICD without other ADK features.

After you install Windows ICD, you can use it to create a provisioning package. For detailed instructions on how to create a provisioning package, see [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkID=629651).

## Applying a provisioning package to a device


Provisioning packages can be applied both during image deployment and during runtime. For information on how to apply a provisioning package to a Windows 10-based device, see [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkID=629651).

## Learn more


[Windows 10: Deployment](http://go.microsoft.com/fwlink/p/?LinkId=533708)

## Related topics

- [Provision PCs with common settings for initial deployment](provision-pcs-for-initial-deployment.md)

- [LProvision PCs with apps and certificates for initial deployments](provision-pcs-with-apps-and-certificates.md)

- [Configure devices without MDM](../manage/configure-devices-without-mdm.md)

 

 





