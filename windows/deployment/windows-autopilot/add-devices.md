---
title: Adding devices
ms.reviewer: 
manager: laurawi
description: How to add devices to Windows Autopilot
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Adding devices to Windows Autopilot

**Applies to**

- Windows 10

Before deploying a device using Windows Autopilot, the device must be registered with the Windows Autopilot deployment service. Ideally, this would be performed by the OEM, reseller, or distributor from which the devices were purchased, but this can also be done by the organization by collecting the hardware identity and uploading it manually.

## OEM registration

When you purchase devices directly from an OEM, that OEM can automatically register the devices with the Windows Autopilot deployment service.  For the list of OEMs that currently support this, see the "Participant device manufacturers and resellers" section of the [Windows Autopilot information page](https://aka.ms/windowsautopilot).

Before an OEM can register devices on behalf of an organization, the organization must grant the OEM permission to do so.  This process is initiated by the OEM, with approval granted by an Azure AD global administrator from the organization.  See the "Customer Consent" section of the [Customer consent page](https://docs.microsoft.com/windows/deployment/windows-autopilot/registration-auth#oem-authorization).

## Reseller, distributor, or partner registration

Customers may purchase devices from resellers, distributors, or other partners.  As long as these resellers, distributors, and partners are part of the [Cloud Solution Partners (CSP) program](https://partner.microsoft.com/en-us/cloud-solution-provider), they too can register devices on behalf of the customer.  

As with OEMs, CSP partners must be granted permission to register devices on behalf of an organization.  This follows the process described on the [Customer consent page](https://docs.microsoft.com/windows/deployment/windows-autopilot/registration-auth#csp-authorization).  The CSP partner initiates a request to establish a relationship with the organization, with approval granted by a global administrator from the organization.  Once approved, CSP partners add devices using [Partner Center](https://partner.microsoft.com/en-us/pcv/dashboard/overview), either directly through the web site or via available APIs that can automate the same tasks.

Windows Autopilot does not require delegated administrator permissions when establishing the relationship between the CSP partner and the organization.  As part of the approval process performed by the global administrator, the global administrator can choose to uncheck the "Include delegated administration permissions" checkbox.

## Automatic registration of existing devices

If an existing device is already running a supported version of Windows 10 semi-annual channel and enrolled in an MDM service such an Intune, that MDM service can ask the device for the hardware ID (also known as a hardware hash).  Once it has that, it can automatically register the device with Windows Autopilot.

For instructions on how to do this with Microsoft Intune, see [Create an Autopilot deployment profile](https://docs.microsoft.com/intune/enrollment-autopilot#create-an-autopilot-deployment-profile) documentation describing the "Convert all targeted devices to Autopilot" setting. 

Also note that when using the [Windows Autopilot for existing devices](https://docs.microsoft.com/windows/deployment/windows-autopilot/existing-devices) scenario, it is not necessary to pre-register the devices with Windows Autopilot.  Instead, a configuration file (AutopilotConfigurationFile.json) containing all the Windows Autopilot profile settings is used; the device can be registered with Windows Autopilot after the fact using the same "Convert all targeted devices to Autopilot" setting.

## Manual registration

To perform manual registration of a device, you must first capture its hardware ID (also known as a hardware hash).  Once this process has completed, the resulting hardware ID can be uploaded to the Windows Autopilot service.  Because this process requires booting the device into Windows 10 in order to obtain the hardware ID, this is intended primarily for testing and evaluation scenarios.

## Device identification

To define a device to the Windows Autopilot deployment service, a unique hardware ID for the device needs to be captured and uploaded to the service. While this step is ideally done by the hardware vendor (OEM, reseller, or distributor), automatically associating the device with an organization, it is also possible to do this through a harvesting process that collects the device from within a running Windows 10 installation.

The hardware ID, also commonly referred to as a hardware hash, contains several details about the device, including its manufacturer, model, device serial number, hard drive serial number, and many other attributes that can be used to uniquely identify that device.

Note that the hardware hash also contains details about when it was generated, so it will change each time it is generated. When the Windows Autopilot deployment service attempts to match a device, it considers changes like that, as well as more substantial changes such as a new hard drive, and is still able to match successfully. But substantial changes to the hardware, such as a motherboard replacement, would not match, so a new hash would need to be generated and uploaded.

### Collecting the hardware ID from existing devices using Microsoft Endpoint Configuration Manager

Microsoft Endpoint Configuration Manager automatically collects the hardware hashes for existing Windows 10 devices. For more information, see [Gather information from Configuration Manager for Windows Autopilot](https://docs.microsoft.com/configmgr/comanage/how-to-prepare-win10#windows-autopilot). You can extract the hash information from Configuration Manager into a CSV file.

> [!Note]
> Before uploading the CSV file on Intune, please make sure that the first row contains the device serial number, Windows product ID, hardware hash, group tag, and assigned user. If there is header information on the top of CSV file, please delete that header information. See details at [Enroll Windows devices in Intune](https://docs.microsoft.com/intune/enrollment/enrollment-autopilot).

### Collecting the hardware ID from existing devices using PowerShell

The hardware ID, or hardware hash, for an existing device is available through Windows Management Instrumentation (WMI), as long as that device is running a supported version of Windows 10 semi-annual channel. To help gather this information, as well as the serial number of the device (useful to see at a glance the machine to which it belongs), a PowerShell script called [Get-WindowsAutoPilotInfo.ps1 has been published to the PowerShell Gallery website](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo).

To use this script, you can download it from the PowerShell Gallery and run it on each computer, or you can install it directly from the PowerShell Gallery. To install it directly and capture the hardware hash from the local computer, use the following commands from an elevated Windows PowerShell prompt:

```powershell
md c:\\HWID
Set-Location c:\\HWID
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
Install-Script -Name Get-WindowsAutoPilotInfo
Get-WindowsAutoPilotInfo.ps1 -OutputFile AutoPilotHWID.csv
```

The commands can also be run remotely, as long as WMI permissions are in place and WMI is accessible through the Windows Firewall on that remote computer. See the [Get-WindowsAutoPilotInfo](https://www.powershellgallery.com/packages/Get-WindowsAutoPilotInfo) script’s help (using “Get-Help Get-WindowsAutoPilotInfo.ps1”) for more information about running the script.

>[!IMPORTANT]
>Do not connect devices to the Internet prior to capturing the hardware ID and creating an Autopilot device profile. This includes collecting the hardware ID, uploading the .CSV into MSfB or Intune, assigning the profile, and confirming the profile assignment. Connecting the device to the Internet before this process is complete will result in the device downloading a blank profile that is stored on the device until it is explicity removed. In Windows 10 version 1809, you can clear the cached profile by restarting OOBE. In previous versions, the only way to clear the stored profile is to re-install the OS, reimage the PC, or run **sysprep /generalize /oobe**. <br>
>After Intune reports the profile ready to go, only then should the device be connected to the Internet.

>[!NOTE]
>If OOBE is restarted too many times it can enter a recovery mode and fail to run the Autopilot configuration. You can identify this scenario if OOBE displays multiple configuration options on the same page, including language, region, and keyboard layout. The normal OOBE displays each of these on a separate page. The following value key tracks the count of OOBE retries: <br>
>**HKCU\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\UserOOBE** <br>
>To ensure OOBE has not been restarted too many times, you can change this value to 1.

## Registering devices

<img src="./images/image2.png" width="511" height="249" />


Once the hardware IDs have been captured from existing devices, they can be uploaded through a variety of means. See the detailed documentation for each available mechanism.

-   [Microsoft Intune](https://docs.microsoft.com/intune/enrollment-autopilot).  This is the preferred mechanism for all customers.
-   [Partner Center](https://msdn.microsoft.com/partner-center/autopilot).  This is used by CSP partners to register devices on behalf of customers.
-   [Microsoft 365 Business & Office 365 Admin](https://support.office.com/article/Create-and-edit-AutoPilot-profiles-5cf7139e-cfa1-4765-8aad-001af1c74faa).  This is typically used by small and medium businesses (SMBs) who manage their devices using Microsoft 365 Business.
-   [Microsoft Store for Business](https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles).  You might already be using MSfB to manage your apps and settings.

A summary of each platform's capabilities is provided below.<br>
<br>
<table>
<tr>
<td BGCOLOR="#a0e4fa"><B><font color="#000000">Platform/Portal</font></td>
<td BGCOLOR="#a0e4fa"><B><font color="#000000">Register devices?</font></td>
<td BGCOLOR="#a0e4fa"><B><font color="#000000">Create/Assign profile</font></td>
<td BGCOLOR="#a0e4fa"><B><font color="#000000">Acceptable DeviceID</font></td>
</tr>

<tr>
<td>OEM Direct API</td>
<td>YES - 1000 at a time max</td>
<td>NO</td>
<td>Tuple or PKID</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/partner-center/autopilot">Partner Center</a></td>
<td>YES - 1000 at a time max</td>
<td>YES<b><sup>34</sup></b></td>
<td>Tuple or PKID or 4K HH</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/intune/enrollment-autopilot">Intune</a></td>
<td>YES - 500 at a time max<b><sup>1</sup></b></td> 
<td>YES<b><sup>12</sup></b></td> 
<td>4K HH</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/microsoft-store/add-profile-to-devices#manage-autopilot-deployment-profiles">Microsoft Store for Business</a></td>
<td>YES - 1000 at a time max</td>
<td>YES<b><sup>4</sup></b></td>
<td>4K HH</td>
</tr>

<tr>
<td><a href="https://docs.microsoft.com/microsoft-365/business/create-and-edit-autopilot-profiles">Microsoft 365 Business</a></td>
<td>YES - 1000 at a time max</td>
<td>YES<b><sup>3</sup></b></td>
<td>4K HH</td>
</tr>

</table>

><b><sup>1</sup></b>Microsoft recommended platform to use<br>
><b><sup>2</sup></b>Intune license required<br>
><b><sup>3</sup></b>Feature capabilities are limited<br>
><b><sup>4</sup></b>Device profile assignment will be retired from MSfB and Partner Center in the coming months<br>


Also see the following topics for more information about device IDs:
- [Device identification](#device-identification)
- [Windows Autopilot device guidelines](https://docs.microsoft.com/windows/deployment/windows-autopilot/autopilot-device-guidelines)
- [Add devices to a customer account](https://docs.microsoft.com/partner-center/autopilot)


## Summary

When deploying new devices using Windows Autopilot, the following steps are required:

1.  [Register devices](#registering-devices). Ideally, this step is performed by the OEM, reseller, or distributor from which the devices were purchased, but this can also be done by the organization by collecting the hardware identity and uploading it manually.
2.  [Configure device profiles](profiles.md), specifying how the device should be deployed and what user experience should be presented.
3.  Boot the device. When the device is connected to a network with internet access, it will contact the Windows Autopilot deployment service to see if the device is registered, and if it is, it will download profile settings such as the [Enrollment Status page](enrollment-status.md), which are used to customize the end user experience.

## Other configuration settings

- [Bitlocker encryption settings](bitlocker.md): You can configure the BitLocker encryption settings to be applied before automatic encryption is started.