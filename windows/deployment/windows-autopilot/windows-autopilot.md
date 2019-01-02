---
title: Overview of Windows Autopilot
description: This topic goes over Windows Autopilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 01/02/2019
---

# Overview of Windows Autopilot

**Applies to**

-   Windows 10

Windows Autopilot is a collection of technologies used to set up and pre-configure new devices, getting them ready for productive use. In addition, you can use Windows Autopilot to reset, repurpose and recover devices.</br>
This solution enables an IT department to achieve the above with little to no infrastructure to manage, with a process that's easy and simple.

Windows Autopilot is designed to simplify all parts of the lifecycle of Windows devices, for both IT and end users, from initial deployment through the eventual end of life. Leveraging cloud-based services, it can reduce the overall costs for deploying, managing, and retiring devices by reducing the amount of time that IT needs to spend on these processes and the amount of infrastructure that they need to maintain, while ensuring ease of use for all types of end users.

<img src="images/image1.png">

When initially deploying new Windows devices, Windows Autopilot leverages the OEM-optimized version of Windows 10 that is preinstalled on the device, saving organizations the effort of having to maintain custom images as well as drivers for every model of device being used. Instead of re-imaging the device, that existing Windows 10 installation can be transformed into a “business-ready” state, applying settings and policies, installing apps, and even changing the edition of Windows 10 being used (e.g. from Windows 10 Pro to Windows 10 Enterprise, to support advanced features).

Once deployed, Windows 10 devices can be managed by tools such as Microsoft Intune, Windows Update for Business, System Center Configuration Manager, and other similar tools. Windows Autopilot can help with device re-purposing scenarios, leveraging Windows Autopilot Reset to quickly prepare a device for a new user, as well as in break/fix scenarios to enable a device to quickly be brought back to a business-ready state.

## Windows Autopilot walkthrough

The following video shows the process of setting up Windows Autopilot:

</br>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/KYVptkpsOqs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

## Benefits of Windows Autopilot

Traditionally, IT pros spend a lot of time on building and customizing images that will later be deployed to devices with a perfectly good OS already installed on them. Windows Autopilot introduces a new approach.

From the users' perspective, it only takes a few simple operations to make their device ready to use.

From the IT pros' perspective, the only interaction required from the end user, is to connect to a network and to verify their credentials. Everything past that is automated.

## Windows Autopilot Scenarios

### Cloud-Driven

The Cloud-Driven scenario enables you to pre-register devices through the Windows Autopilot Deployment Program. Your devices will be fully configured with no additional intervention required on the users' side.

#### The Windows Autopilot Deployment Program experience

The Windows Autopilot Deployment Program enables you to:
* Automatically join devices to Azure Active Directory (Azure AD)
* Auto-enroll devices into MDM services, such as Microsoft Intune ([*Requires an Azure AD Premium subscription*](#prerequisites))
* Restrict the Administrator account creation
* Create and auto-assign devices to configuration groups based on a device's profile
* Customize OOBE content specific to the organization

##### Prerequisites

* [Devices must be registered to the organization](#device-registration-and-oobe-customization)
* [Company branding needs to be configured](#configure-company-branding-for-oobe)
* [Network connectivity to cloud services used by Windows Autopilot](#network-connectivity-requirements)
* Devices have to be pre-installed with Windows 10 Professional, Enterprise or Education, of version 1703 or later
* Devices must have access to the internet
* [Azure AD Premium P1 or P2](https://www.microsoft.com/cloud-platform/azure-active-directory-features)
* Microsoft Intune or other MDM services to manage your devices

The end-user unboxes and turns on a new device. What follows are a few simple configuration steps:
* Select a language and keyboard layout
* Connect to the network
* Provide email address (the email address of the user's Azure AD account) and password

Multiple additional settings are skipped here, since the device automatically recognizes that [it belongs to an organization](#registering-devices-to-your-organization). Following this process the device is joined to Azure AD, enrolled in Microsoft Intune (or any other MDM service).

MDM enrollment ensures policies are applied, apps are installed and setting are configured on the device. Windows Update for Business applies the latest updates to ensure the device is up to date.

</br>
<iframe width="560" height="315" align="center" src="https://www.youtube-nocookie.com/embed/4K4hC5NchbE" frameborder="0" allowfullscreen></iframe>

#### Device registration and OOBE customization

To register devices, you will need to acquire their hardware ID and register it. We are actively working with various hardware vendors to enable them to provide the required information to you, or upload it on your behalf.

If you would like to capture that information by yourself, you can use the [Get-WindowsAutopilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutopilotInfo), which will generate a .csv file with the device's hardware ID.

Once devices are registered, these are the OOBE customization options available for Windows 10, starting with version 1703:
* Skipping Work or Home usage selection (*Automatic*)
* Skipping OEM registration, OneDrive and Cortana (*Automatic*)
* Skipping privacy settings
* Skipping EULA (*starting with Windows 10, version 1709*)
* Preventing the account used to set-up the device from getting local administrator permissions

For guidance on how to register devices, configure and apply deployment profiles, follow one of the available administration options:
* [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles)
* [Microsoft Intune](https://docs.microsoft.com/intune/enrollment-autopilot)
* [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-Autopilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa)

##### Configure company branding for OOBE

In order for your company branding to appear during the OOBE, you'll need to configure it in Azure Active Directory first.

See [Add company branding to your directory](https://docs.microsoft.com/azure/active-directory/customize-branding#add-company-branding-to-your-directory), to configure these settings.

##### Configure MDM auto-enrollment in Microsoft Intune

In order for your devices to be auto-enrolled into MDM management, MDM auto-enrollment needs to be configured in Azure AD. To do that with Microsoft Intune, please see [Enroll Windows devices for Microsoft Intune](https://docs.microsoft.com/intune/windows-enroll). For other MDM vendors, please consult your vendor for further details.

>[!NOTE]
>MDM auto-enrollment requires an Azure AD Premium P1 or P2 subscription.

#### Network connectivity requirements

The Windows Autopilot Deployment Program uses a number of cloud services to get your devices to a productive state. This means those services need to be accessible from devices registered as Windows Autopilot devices.

To manage devices behind firewalls and proxy servers, the following URLs need to be accessible:

* https://go.microsoft.com
* https://login.microsoftonline.com
* https://login.live.com
* https://account.live.com
* https://signup.live.com
* https://licensing.mp.microsoft.com
* https://licensing.md.mp.microsoft.com
* ctldl.windowsupdate.com
* download.windowsupdate.com

>[!NOTE]
>Where not explicitly specified, both HTTPS (443) and HTTP (80) need to be accessible.

>[!TIP]
>If you're auto-enrolling your devices into Microsoft Intune, or deploying Microsoft Office, make sure you follow the networking guidelines for [Microsoft Intune](https://docs.microsoft.com/intune/network-bandwidth-use#network-communication-requirements) and [Office 365](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2).

### IT-Driven

If you are planning to configure devices with traditional on-premises or cloud-based solutions, the [Windows Configuration Designer](https://www.microsoft.com/store/p/windows-configuration-designer/9nblggh4tx22) can be used to help automate the process. This is more suited to scenarios in which you require a higher level of control over the provisioning process. For more information on creating provisioning packages with Windows Configuration Designer, see [Create a provisioning package for Windows 10](/windows/configuration/provisioning-packages/provisioning-create-package).


### Self-Deploying

Windows Autopilot self-deploying mode offers truly zero touch provisioning. With this mode, all you need to do is power on a device, plug it into Ethernet, and watch Windows Autopilot fully configure the device. No additional user interaction is required. see [Windows Autopilot Self-Deploying mode (Preview)] (/windows/deployment/windows-autopilot/self-deploying).


### Teacher-Driven

If you're an IT pro or a technical staff member at a school, your scenario might be simpler. The [Set Up School PCs](https://www.microsoft.com/store/p/set-up-school-pcs/9nblggh4ls40) app can be used to quickly set up PCs for students and will get you to a productive state faster and simpler. Please see [Use the Set up School PCs app](https://docs.microsoft.com/education/windows/use-set-up-school-pcs-app) for all the details.

