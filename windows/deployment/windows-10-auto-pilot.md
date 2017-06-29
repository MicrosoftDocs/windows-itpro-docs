---
title: Overview of Windows AutoPilot
description: This topic goes over Auto-Pilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: DaniHalfin
---

# Overview of Windows AutoPilot

**Applies to**

-   Windows 10

Windows AutoPilot is a collection of technologies used to setup and pre-configure new devices, getting them ready for productive use. In addition, you can use Windows AutoPilot to reset, repurpose and recover devices.</br>
This solution enables the IT department to achieve the above with little to no infrastructure to manage, with a process that's easy and simple.

## Benefits of Windows AutoPilot

Traditionally, IT Pros spend a lot of time on building and customizing images that will later be deployed to devices with a perfectly good OS already installed on them. Windows AutoPilot introduces a new approach.

From the users' perspective, it only takes a few simple operations to make their device ready to use. 

From the IT Pros' perspective, the only interaction required from the end-user, is to connect to a network and to verify their credentials. Everything past that is automated.

Windows AutoPilot allows you to:
* Automatically join devices to Azure Active Directory
* Auto-enroll devices into MDM services, such as Intune ([*Requires an Azure AD Premium subscription*](#prerequisites))
* Restrict the Administrator account creation
* Create and auto-assign devices to configuration groups based on the devices' profile
* Customize OOBE content specific to the organization

### Prerequisites

* [Devices must be registered to the organization](#registering-devices-to-your-organization)
* Devices have to be pre-installed with Windows 10, version 1703 or later
* Devices must have access to the internet
* [Azure AD premium P1 or P2](https://www.microsoft.com/cloud-platform/azure-active-directory-features)
* Microsoft Intune or other MDM services to manage your devices

## Windows AutoPilot Scenarios

### Cloud-Driven

The Cloud-Driven scenario enables you to pre-register devices through the Windows AutoPilot Deployment Program. Your devices will be fully configured with no additional intervention required on the users' side. 

#### The Windows AutoPilot Deployment Program experience

The end user unboxes and turns on a new device. What follows are a few simple configuration steps:
* Select a language and keyboard layout
* Connect to the network
* Provide email address (the email of the user's Azure Active Directory account) and password

Multiple additional settings are skipped here, since the device automatically recognizes that [it belongs to an organization](#registering-devices-to-your-organization). Following this process the device is joined to Azure Active Directory, enrolled in Microsoft Intune (or any other MDM service).

MDM enrollment ensures policies are applied, apps are installed and setting are configured on the device. Windows Update for Business applies the latest updates to ensure the device is up to date.

</br>
<iframe width="560" height="315" align="center" src="https://www.youtube.com/embed/4K4hC5NchbE" frameborder="0" allowfullscreen></iframe>

#### Registering devices to your organization

In order to register devices, you will need to acquire their hardware ID and register it. We are actively working with various hardware vendors to enable them to provide the required information to you, or upload it on your behalf. 

If you would like to capture that information by yourself, the following PowerShell script will generate a text file with the device's hardware ID.

```PowerShell
$wmi = Get-WMIObject -Namespace root/cimv2/mdm/dmmap -Class MDM_DevDetail_Ext01 -Filter "InstanceID='Ext' AND ParentID='./DevDetail'"
$wmi.DeviceHardwareData | Out-File "$($env:COMPUTERNAME).txt"
```
>[!NOTE]
>This PowerShell script requires elevated permissions. The output format might not fit the upload method. Check out the [Microsoft Store for Business](/microsoft-store/add-profile-to-devices) or [Partner Center](https://msdn.microsoft.com/partner-center/autopilot) for additional guidance.

By uploading this information to the Microsoft Store for Business or Partner Center admin portal, you'll be able to assign devices to your organization.
Additional options and customization is available through these portals to pre-configure the devices.

Options available for Windows 10, Version 1703:
* Skipping Work or Home usage selection (*Automatic*)
* Skipping OEM registration, OneDrive and Cortana (*Automatic*)
* Skipping privacy settings
* Preventing the account used to set-up the device from getting local administrator permissions

Additional options we are working on for the next Windows 10 release:
* Skipping EULA
* Personalizing the setup experience
* MDM Support

To see additional details on how to customize the OOBE experience and how to follow this process, see guidance for [Microsoft Store for Business](/microsoft-store/add-profile-to-devices) or [Partner Center](https://msdn.microsoft.com/partner-center/autopilot).

### IT-Driven

If you are planning to use to configure these devices with traditional on-premises or cloud-based solutions, the [Windows Configuration Designer](https://www.microsoft.com/store/p/windows-configuration-designer/9nblggh4tx22) can be used to help automate the process. This is more suited to scenarios in which you require a higher level of control over the provisioning process. For more information on creating provisioning packages with WCD, see [Create a provisioning package for Windows 10](/windows/configuration/provisioning-packages/provisioning-create-package).

### Teacher-Driven

If you're an IT Pro or a technical staff member at a school, your scenario might be simpler. The [Set Up School PCs](http://www.microsoft.com/store/p/set-up-school-pcs/9nblggh4ls40) app can be used to quickly set up PCs for students and will get you to a productive state faster and simpler. Please see [Use the Set up School PCs app](https://docs.microsoft.com/education/windows/use-set-up-school-pcs-app) for all the details.

## Ensuring your device can be auto-enrolled to MDM

In order for your devices to be auto-enrolled into MDM management, MDM auto-enrollment needs to be configured in Azure AD. To do that with Intune, please follow [Enroll Windows devices for Microsoft Intune](https://docs.microsoft.com/intune/windows-enroll). For other MDM vendors, please consult your vendor for further details.

>[!NOTE]
>MDM Auto-enrollment requires an Azure AD Premium P1 or P2 subscription.