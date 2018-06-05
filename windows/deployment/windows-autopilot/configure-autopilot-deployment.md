---
title: Configure Autopilot deployment
description: How to configure Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: coreyp-at-msft
ms.author: coreyp
ms.date: 06/01/18
---

# Configure Autopilot deployment

**Applies to**

-   Windows 10

## Deploying new devices

When deploying new devices using Windows Autopilot, a common set of steps are required:

1.  Register devices with the Windows Autopilot Deployment Service. Ideally, this step would be performed by the OEM, reseller, or distributor from which the devices were purchased, but this can also be done by the organization by collecting the hardware identity and uploading it manually.

2.  Assign a profile of settings to each device, specifying how the device should be deployed and what user experience should be presented.

3.  Boot the device. When the device is connected to a network with internet access, it will contact the Windows Autopilot Deployment Service to see if the device is registered, and if it is, it will download the profile settings which are used to customize the end user experience.

<img src="./media/image2.png" width="511" height="249" />

### Device identification

To define a device to the Windows Autopilot deployment service, a unique hardware ID for the device needs to be captured and uploaded to the service. While this step is ideally done by the hardware vendor (OEM, reseller, or distributor), automatically associating the device with an organization, it is also possible to do this through a harvesting process that collects the device from within a running Windows 10 version 1703 or later installation.

The hardware ID, also commonly referred to as a hardware hash, contains several details about the device, including its manufacturer, model, device serial number, hard drive serial number, and many other attributes that can be used to uniquely identify that device.

Note that the hardware hash also contains details about when it was generated, so it will change each time it is generated. When the Windows Autopilot Deployment Service attempts to match a device, it considers changes like that, as well as more substantial changes such as a new hard drive, and is still able to match successfully. But substantial changes to the hardware, such as motherboard replacement, would not match, so the device would need to be re-uploaded.

#### Collecting the hardware ID from existing devices using PowerShell

The hardware ID, or hardware hash, for an existing device is available through Windows Management Instrumentation (WMI), as long as that device is running Windows 10 version 1703 or later. To help gather this information, as well as the serial number of the device (useful to see at a glance the machine to which it belongs), a PowerShell script called [Get-WindowsAutoPilotInfo.ps1 has been published to the PowerShell Gallery website](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo).

To use this script, you can download it from the PowerShell Gallery and run it on each computer, or you can install it directly from the PowerShell Gallery. To install it directly and capture the hardware hash from the local computer, these commands can be used:

*md c:\\HWID*

*Set-Location c:\\HWID*

*Set-ExecutionPolicy Unrestricted*

*Install-Script -Name Get-WindowsAutoPilotInfo*

*Get-WindowsAutoPilotInfo.ps1 -OutputFile AutoPilotHWID.csv*

Note that you must run this PowerShell script with administrator privileges (elevated). It can also be run remotely, as long as WMI permissions are in place and WMI is accessible through the Windows Firewall on that remote computer. See the Get-WindowsAutoPilotInfo script’s help (using “Get-Help Get-WindowsAutoPilotInfo.ps1”) for more information.

#### Collecting the hardware ID from existing devices using System Center Configuration Manager

Starting with System Center Configuration Manager current branch version 1802, the hardware hashes for existing Windows 10 version 1703 and higher devices are automatically collected by Configuration Manager. See the [What’s new in version 1802](https://docs.microsoft.com/en-us/sccm/core/plan-design/changes/whats-new-in-version-1802#report-on-windows-autopilot-device-information) documentation for more details.

#### Uploading hardware IDs

Once the hardware IDs have been captured from existing devices, they can be uploaded through a variety of means. See the detailed documentation for each available mechanism:

For guidance on how to register devices, configure and apply deployment profiles, follow one of the available administration options:

-   [Microsoft Intune](https://docs.microsoft.com/intune/enrollment-autopilot)

-   [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles)

-   [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-AutoPilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa)

-   [Partner Center](https://msdn.microsoft.com/partner-center/autopilot)

For those using Microsoft Intune, devices should normally be uploaded via Intune; for those using Microsoft 365 Business, its administrative portal would be used. For [Cloud Solution Provider (CSP)](https://partnercenter.microsoft.com/en-us/partner/cloud-solution-provider) partners uploading devices on the behalf of a customer that they are authorized to manage, Partner Center can be used. For any other scenario, the Microsoft Store for Business is available.

### Windows Autopilot profiles

For each device that has been defined to the Windows Autopilot Deployment Service, a profile of settings needs to be applied to specify the exact behavior of that device when it is deployed. The following profile settings are available:

-   **Skip Cortana, OneDrive and OEM registration setup pages**. All devices registered with Autopilot will automatically skip these pages during the out-of-box experience (OOBE) process.

-   **Automatically setup for work or school**. All devices registered with Autopilot will automatically be considered work or school devices, so this question will not be asked during the OOBE process.

-   **Sign in experience with company brand**. Instead of presenting a generic Azure Active Directory sign-in page, all devices registered with Autopilot will automatically present a customized sign-in page with the organization’s name, logon, and additional help text, as configured in Azure Active Directory. See [Add company branding to your directory](https://docs.microsoft.com/azure/active-directory/customize-branding#add-company-branding-to-your-directory) to customize these settings.

-   **Skip privacy settings**. This optional Autopilot profile setting enables organizations to not ask about privacy settings during the OOBE process. This is typically desirable so that the organization can configure these settings via Intune or other management tool.

-   **Disable local admin account creation on the device**. Organizations can decide whether the user setting up the device should have administrator access once the process is complete.

-   **Skip End User License Agreement (EULA)**. Starting in Windows 10 version 1709, organizations can decide to skip the EULA page presented during the OOBE process. This means that organizations accept the EULA terms on behalf of their users.

-   **Disable Windows consumer features**. Starting in Windows 10 version 1803, organizations can disable Windows consumer features so that the device does not automatically install any additional Microsoft Store apps when the user first signs into the device. See the [MDM documentation](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsconsumerfeatures) for more details.

Missing something in this topic? Windows 10 users, tell us what you want on [Feedback Hub](feedback-hub://?referrer=techDocsUcPage&tabid=2&contextid=897&newFeedback=true&topic=windows-10-autopilot-demo-vm.md). 