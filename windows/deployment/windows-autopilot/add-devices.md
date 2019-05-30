---
title: Adding devices
description: How to add devices to Windows Autopilot
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Adding devices to Windows Autopilot

**Applies to**

-   Windows 10

Before deploying a device using Windows Autopilot, the device must be registered with the Windows Autopilot deployment service. Ideally, this would be performed by the OEM, reseller, or distributor from which the devices were purchased, but this can also be done by the organization by collecting the hardware identity and uploading it manually.

## Manual registration

To perform manual registration of a device, you must caputure its hardware ID (also known as a hardware hash) and upload this to the Windows Autopilot deployment service. See the topics below for detailed information on how to collect and upload hardware IDs.

>[!IMPORTANT]
>Do not connect devices to the Internet prior to capturing the hardware ID and creating an Autopilot device profile. This includes collecting the hardware ID, uploading the .CSV into MSfB or Intune, assigning the profile, and confirming the profile assignment. Connecting the device to the Internet before this process is complete will result in the device downloading a blank profile that is stored on the device until it is explicity removed. In Windows 10 version 1809, you can clear the cached profile by restarting OOBE. In previous versions, the only way to clear the stored profile is to re-install the OS, reimage the PC, or run **sysprep /generalize /oobe**. <br>
>After Intune reports the profile ready to go, only then should the device be connected to the Internet.

Also note that if OOBE is restarted too many times it can enter a recovery mode and fail to run the Autopilot configuration. You can identify this scenario if OOBE displays multiple configuration options on the same page, including language, region, and keyboard layout. The normal OOBE displays each of these on a separate page. The following value key tracks the count of OOBE retries:

**HKCU\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\UserOOBE** 

To ensure OOBE has not been restarted too many times, you can change this value to 1.

## Device identification

To define a device to the Windows Autopilot deployment service, a unique hardware ID for the device needs to be captured and uploaded to the service. While this step is ideally done by the hardware vendor (OEM, reseller, or distributor), automatically associating the device with an organization, it is also possible to do this through a harvesting process that collects the device from within a running Windows 10 version 1703 or later installation.

The hardware ID, also commonly referred to as a hardware hash, contains several details about the device, including its manufacturer, model, device serial number, hard drive serial number, and many other attributes that can be used to uniquely identify that device.

Note that the hardware hash also contains details about when it was generated, so it will change each time it is generated. When the Windows Autopilot Deployment Service attempts to match a device, it considers changes like that, as well as more substantial changes such as a new hard drive, and is still able to match successfully. But substantial changes to the hardware, such as motherboard replacement, would not match, so the device would need to be re-uploaded.

## Collecting the hardware ID from existing devices using PowerShell

The hardware ID, or hardware hash, for an existing device is available through Windows Management Instrumentation (WMI), as long as that device is running Windows 10 version 1703 or later. To help gather this information, as well as the serial number of the device (useful to see at a glance the machine to which it belongs), a PowerShell script called [Get-WindowsAutoPilotInfo.ps1 has been published to the PowerShell Gallery website](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo).

To use this script, you can download it from the PowerShell Gallery and run it on each computer, or you can install it directly from the PowerShell Gallery. To install it directly and capture the hardware hash from the local computer, use the following commands from an elevated Windows PowerShell prompt:

```powershell
md c:\\HWID
Set-Location c:\\HWID
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
Install-Script -Name Get-WindowsAutoPilotInfo
Get-WindowsAutoPilotInfo.ps1 -OutputFile AutoPilotHWID.csv
```

The commands can also be run remotely, as long as WMI permissions are in place and WMI is accessible through the Windows Firewall on that remote computer. See the Get-WindowsAutoPilotInfo script’s help (using “Get-Help Get-WindowsAutoPilotInfo.ps1”) for more information about running the script.

>[!NOTE]
>If you will connect to the device remotely to collect the hardware ID, see the information at the top of this page about device connectivity to the Internet. 

## Collecting the hardware ID from existing devices using System Center Configuration Manager

Starting with System Center Configuration Manager current branch version 1802, the hardware hashes for existing Windows 10 version 1703 and higher devices are automatically collected by Configuration Manager. See the [What’s new in version 1802](https://docs.microsoft.com/sccm/core/plan-design/changes/whats-new-in-version-1802#report-on-windows-autopilot-device-information) documentation for more details.

## Registering devices

Once the hardware IDs have been captured from existing devices, they can be uploaded through a variety of means. See the detailed documentation for each available mechanism:

For guidance on how to register devices, configure and apply deployment profiles, follow one of the available administration options:

-   [Microsoft Intune](https://docs.microsoft.com/intune/enrollment-autopilot)

-   [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles)

-   [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-AutoPilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa)

-   [Partner Center](https://msdn.microsoft.com/partner-center/autopilot)

For those using Microsoft Intune, devices should normally be uploaded via Intune; for those using Microsoft 365 Business, its administrative portal would be used. For [Cloud Solution Provider (CSP)](https://partnercenter.microsoft.com/en-us/partner/cloud-solution-provider) partners uploading devices on the behalf of a customer that they are authorized to manage, Partner Center can be used. For any other scenario, the Microsoft Store for Business is available.
