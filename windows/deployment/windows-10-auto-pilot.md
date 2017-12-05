---
title: Overview of Windows AutoPilot
description: This topic goes over Windows AutoPilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: DaniHalfin
ms.author: daniha
ms.date: 11/30/2017
---

# Overview of Windows AutoPilot

**Applies to**

-   Windows 10

Windows AutoPilot is a collection of technologies used to set up and pre-configure new devices, getting them ready for productive use. In addition, you can use Windows AutoPilot to reset, repurpose and recover devices.</br>
This solution enables an IT department to achieve the above with little to no infrastructure to manage, with a process that's easy and simple.

## Benefits of Windows AutoPilot

Traditionally, IT pros spend a lot of time on building and customizing images that will later be deployed to devices with a perfectly good OS already installed on them. Windows AutoPilot introduces a new approach.

From the users' perspective, it only takes a few simple operations to make their device ready to use. 

From the IT pros' perspective, the only interaction required from the end user, is to connect to a network and to verify their credentials. Everything past that is automated.

Windows AutoPilot allows you to:
* Automatically join devices to Azure Active Directory (Azure AD)
* Auto-enroll devices into MDM services, such as Microsoft Intune ([*Requires an Azure AD Premium subscription*](#prerequisites))
* Restrict the Administrator account creation
* Create and auto-assign devices to configuration groups based on a device's profile
* Customize OOBE content specific to the organization

### Prerequisites

* [Devices must be registered to the organization](#registering-devices-to-your-organization)
* [Company branding needs to be configured](#configure-company-branding-for-oobe)
* [Network connectivity to cloud services used by Windows AutoPilot](#network-connectivity-requirements)
* Devices have to be pre-installed with Windows 10 Professional, Enterprise or Education, of version 1703 or later
* Devices must have access to the internet
* [Azure AD Premium P1 or P2](https://www.microsoft.com/cloud-platform/azure-active-directory-features)
* Microsoft Intune or other MDM services to manage your devices

## Windows AutoPilot Scenarios

### Cloud-Driven

The Cloud-Driven scenario enables you to pre-register devices through the Windows AutoPilot Deployment Program. Your devices will be fully configured with no additional intervention required on the users' side. 

#### The Windows AutoPilot Deployment Program experience

The end user unboxes and turns on a new device. What follows are a few simple configuration steps:
* Select a language and keyboard layout
* Connect to the network
* Provide email address (the email address of the user's Azure AD account) and password

Multiple additional settings are skipped here, since the device automatically recognizes that [it belongs to an organization](#registering-devices-to-your-organization). Following this process the device is joined to Azure AD, enrolled in Microsoft Intune (or any other MDM service).

MDM enrollment ensures policies are applied, apps are installed and setting are configured on the device. Windows Update for Business applies the latest updates to ensure the device is up to date.

</br>
<iframe width="560" height="315" align="center" src="https://www.youtube.com/embed/4K4hC5NchbE" frameborder="0" allowfullscreen></iframe>

#### Registering devices to your organization

In order to register devices, you will need to acquire their hardware ID and register it. We are actively working with various hardware vendors to enable them to provide the required information to you, or upload it on your behalf. 

If you would like to capture that information by yourself, you can use the [Get-WindowsAutoPilotInfo PowerShell script](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo), which will generate a .csv file with the device's hardware ID.

>[!NOTE]
>This PowerShell script requires elevated permissions.

By uploading this information to the Microsoft Store for Business or Partner Center admin portal, you'll be able to assign devices to your organization.
Additional options and customization is available through these portals to pre-configure the devices.

For information on how to upload device information, see [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#add-devices-and-apply-autopilot-deployment-profile) or [Partner Center](https://msdn.microsoft.com/partner-center/autopilot) guidance.

#### OOBE customization

Deployment profiles are used to configure the Out-Of-the-Box-Experience (OOBE) on devices deployed through the Windows AutoPilot Deployment Program.

These are the OOBE customization options available for Windows 10, starting with version 1703:
* Skipping Work or Home usage selection (*Automatic*)
* Skipping OEM registration, OneDrive and Cortana (*Automatic*)
* Skipping privacy settings
* Skipping EULA (*staring with Windows 10, version 1709*)
* Preventing the account used to set-up the device from getting local administrator permissions

We are working to add additional options to further personalize and streamline the setup experience in future releases.

To configure and apply deployment profiles, see guidance for the various available administration options:
* [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles)
* [Microsoft Intune](https://docs.microsoft.com/intune/enrollment-autopilot)
* [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-AutoPilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa)
* [Partner Center](https://msdn.microsoft.com/partner-center/autopilot)

##### Configure company branding for OOBE

In order for your company branding to appear during the OOBE, you'll need to configure it in Azure Active Directory first.

See [Add company branding to your directory](https://docs.microsoft.com/azure/active-directory/customize-branding#add-company-branding-to-your-directory), to configure these settings. 

#### Network connectivity requirements

The Windows AutoPilot Deployment Program uses a number of cloud services to get your devices to a productive state. This means those services need to be accessible from devices registered as Windows Autopilot devices.

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
>If you're auto-enrolling your devices into Microsoft Intune, or deploying Microsoft Office, make sure you follow the networking guidlines for [Microsoft Intune](https://docs.microsoft.com/en-us/intune/network-bandwidth-use#network-communication-requirements) and [Office 365](https://support.office.com/en-us/article/Office-365-URLs-and-IP-address-ranges-8548a211-3fe7-47cb-abb1-355ea5aa88a2).

### IT-Driven

If you are planning to configure devices with traditional on-premises or cloud-based solutions, the [Windows Configuration Designer](https://www.microsoft.com/store/p/windows-configuration-designer/9nblggh4tx22) can be used to help automate the process. This is more suited to scenarios in which you require a higher level of control over the provisioning process. For more information on creating provisioning packages with Windows Configuration Designer, see [Create a provisioning package for Windows 10](/windows/configuration/provisioning-packages/provisioning-create-package).

### Teacher-Driven

If you're an IT pro or a technical staff member at a school, your scenario might be simpler. The [Set Up School PCs](http://www.microsoft.com/store/p/set-up-school-pcs/9nblggh4ls40) app can be used to quickly set up PCs for students and will get you to a productive state faster and simpler. Please see [Use the Set up School PCs app](https://docs.microsoft.com/education/windows/use-set-up-school-pcs-app) for all the details.

## Ensuring your device can be auto-enrolled to MDM

In order for your devices to be auto-enrolled into MDM management, MDM auto-enrollment needs to be configured in Azure AD. To do that with Intune, please see [Enroll Windows devices for Microsoft Intune](https://docs.microsoft.com/intune/windows-enroll). For other MDM vendors, please consult your vendor for further details.

>[!NOTE]
>MDM auto-enrollment requires an Azure AD Premium P1 or P2 subscription.

Not finding content you need? Windows 10 users, tell us what you want on [Feedback Hub](feedback-hub://?referrer=techDocsUcPage&tabid=2&contextid=897&newFeedback=true&topic=windows-10-auto-pilot.md). 
