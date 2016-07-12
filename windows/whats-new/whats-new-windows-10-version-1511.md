---
title: What's new in Windows 10, version 1511 (Windows 10)
description: This topic lists new and updated topics in the What's new in Windows 10 documentation for Windows 10 and Windows 10 Mobile.
ms.assetid: 75F285B0-09BE-4821-9B42-37B9BE54CEC6
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: TrudyHa
---

# What's new in Windows 10, version 1511

Below is a list of some of the new and updated features in Windows 10, version 1511.

## Deployment

### Provisioning devices using Windows Imaging and Configuration Designer (ICD)

With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image. Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. Using Windows Provisioning, an IT administrator can easily specify desired configuration and settings required to enroll the devices into management (through a wizard-driven user interface) and then apply that configuration to target devices in a matter of minutes. It is best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers. 


## Security

### Easier certificate management


For Windows 10-based devices, you can use your MDM server to directly deploy client authentication certificates using Personal Information Exchange (PFX), in addition to enrolling using Simple Certificate Enrollment Protocol (SCEP), including certificates to enable Windows Hello for Business in your enterprise. You'll be able to use MDM to enroll, renew, and delete certificates. As in Windows Phone 8.1, you can use the [Certificates app](http://go.microsoft.com/fwlink/p/?LinkId=615824) to review the details of certificates on your device. [Learn how to install digital certificates on Windows 10 Mobile.](~/keep-secure/installing-digital-certificates-on-windows-10-mobile.md)

### Microsoft Passport

In Windows 10, [Microsoft Passport](~/keep-secure/manage-identity-verification-using-microsoft-passport.md) replaces passwords with strong two-factor authentication that consists of an enrolled device and a Windows Hello (biometric) or PIN.

Microsoft Passport lets users authenticate to a Microsoft account, an Active Directory account, a Microsoft Azure Active Directory (AD) account, or non-Microsoft service that supports Fast ID Online (FIDO) authentication. After an initial two-step verification during Microsoft Passport enrollment, a Microsoft Passport is set up on the user's device and the user sets a gesture, which can be Windows Hello or a PIN. The user provides the gesture to verify identity; Windows then uses Microsoft Passport to authenticate users and help them to access protected resources and services. 


## Management

Windows 10 provides mobile device management (MDM) capabilities for PCs, laptops, tablets, and phones that enable enterprise-level management of corporate-owned and personal devices.

### MDM support


MDM policies for Windows 10 align with the policies supported in Windows 8.1 and are expanded to address even more enterprise scenarios, such as managing multiple users who have Microsoft Azure Active Directory (Azure AD) accounts, full control over the Windows Store, VPN configuration, and more. 

MDM support in Windows 10 is based on [Open Mobile Alliance (OMA)](http://go.microsoft.com/fwlink/p/?LinkId=533885) Device Management (DM) protocol 1.2.1 specification.

Corporate-owned devices can be enrolled automatically for enterprises using Azure AD. [Reference for Mobile device management for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=533172)

### Unenrollment


When a person leaves your organization and you unenroll the user account or device from management, the enterprise-controlled configurations and apps are removed from the device. You can unenroll the device remotely or the person can unenroll by manually removing the account from the device.

When a personal device is unenrolled, the user's data and apps are untouched, while enterprise information such as certificates, VPN profiles, and enterprise apps are removed.

### Infrastructure


Enterprises have the following identity and management choices.

| Area | Choices |
|---|---|                                                                                                                                                                            
| Identity          | Active Directory; Azure AD                                                                                                                                                  |
| Grouping          | Domain join; Workgroup; Azure AD join                                                                                                                                       |
| Device management | Group Policy; System Center Configuration Manager; Microsoft Intune; other MDM solutions; Exchange ActiveSync; Windows PowerShell; Windows Management Instrumentation (WMI) |

 

**Note**  
With the release of Windows Server 2012 R2, Network Access Protection (NAP) was deprecated and the NAP client has now been removed in Windows 10. For more information about support lifecycles, see [Microsoft Support Lifecycle](http://go.microsoft.com/fwlink/p/?LinkID=613512).

 
### Device lockdown


Do you need a computer that can only do one thing? For example:

-   A device in the lobby that customers can use to view your product catalog.

-   A portable device that drivers can use to check a route on a map.

-   A device that a temporary worker uses to enter data.

You can configure a persistent locked down state to [create a kiosk-type device](https://technet.microsoft.com/en-us/itpro/windows/manage/set-up-a-device-for-anyone-to-use). When the locked-down account is logged on, the device displays only the app that you select.

You can also [configure a lockdown state](https://technet.microsoft.com/en-us/itpro/windows/manage/lock-down-windows-10-to-specific-apps) that takes effect when a given user account logs on. The lockdown restricts the user to only the apps that you specify.

Lockdown settings can also be configured for device look and feel, such as a theme or a [custom layout on the Start screen](https://technet.microsoft.com/en-us/itpro/windows/manage/windows-10-start-layout-options-and-policies).

## Updates


With Windows 10, your enterprise will have more choice and flexibility in applying operating system updates. You can manage and control updates to devices running Windows 10 Pro and Windows 10 Enterprise using MDM policies.

While Windows Update provides updates to unmanaged devices, most enterprises prefer to manage and control the flow of updates using their device management solution. You can choose to apply the latest updates as soon as they are available, or you can set a source and schedule for updates that works for your specific requirements.

For more information about updating Windows 10, see [Windows 10 servicing options for updates and upgrades](../manage/introduction-to-windows-10-servicing.md).


 

 





