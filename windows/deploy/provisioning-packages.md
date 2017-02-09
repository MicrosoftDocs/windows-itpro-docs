---
title: Provisioning packages (Windows 10)
description: With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.
ms.assetid: 287706E5-063F-4AB5-902C-A0DF6D0730BC
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Provisioning packages for Windows 10


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. Using Windows provisioning, an IT administrator can easily specify desired configuration and settings required to enroll the devices into management and then apply that configuration to target devices in a matter of minutes. It is best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers. 

A provisioning package (.ppkg) is a container for a collection of configuration settings. With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.

Provisioning packages are simple enough that with a short set of written instructions, a student or non-technical employee can use them to configure their device. This can result in a significant reduction in the time required to configure multiple devices in your organization.

The [Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit) includes the Imaging and Configuration Designer (ICD), a tool for configuring provisioning packages. 

## New in Windows 10, Version 1607

Windows ICD for Windows 10, Version 1607, simplifies common provisioning scenarios. 

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

> [!NOTE]
> Windows ICD in Windows 10, Version 1607, also provides a wizard to create provisioning packages for school PCs. To learn more, see [Set up students' PCs to join domain](https://technet.microsoft.com/edu/windows/index).

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

The following table describes what you can configure using the wizards in the Windows Configuration Designer to create provisioning packages.



>[!NOTE]
>After you start a project using a Windows Configuration Designer wizard, you can switch to the advanced editor to configure additional settings in the provisioning package. 

The following table provides some examples of what you can configure using the Windows Configuration Designer advanced editor to create provisioning packages.

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
 

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( https://go.microsoft.com/fwlink/p/?LinkId=619012).

## Learn more

-   Watch the video: [Provisioning Windows 10 Devices with New Tools](https://go.microsoft.com/fwlink/p/?LinkId=615921)

-   Watch the video: [Windows 10 for Mobile Devices: Provisioning Is Not Imaging](https://go.microsoft.com/fwlink/p/?LinkId=615922)

## Related topics

- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Imaging and Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Provision PCs with apps and certificates for initial deployments (advanced provisioning)](provision-pcs-with-apps-and-certificates.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [NFC-based device provisioning](provisioning-nfc.md)
- [Windows ICD command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)





 

 





