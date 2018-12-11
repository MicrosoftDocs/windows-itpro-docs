---
title: How to control USB devices and other removable media using Intune (Windows 10)
description: You can configure Intune settings to reduce threats from removable storage such as USB devices.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.author: justinha
author: justinha
ms.date: 12/11/2018
---

# How to control USB devices and other removable media using Windows Defender ATP

**Applies to:** [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

Windows Defender ATP enables security administrators to view, prevent, and protect against unauthorized peripherals, such as cameras, removeable storage devices, and so on, from being used to compromise devices (i.e. Threat Infections) or being used to exfiltrate sensitive information (i.e. Data Loss Prevention).  

- [View plug-and-play connected events in Windows Defender ATP advanced hunting](#view-plug-and-play-connected-events) to identify or investigate suspicious usage activity. Based on any WDATP event, you can customize alerts using a custom detection rule. 
- [Prevent or limit peripherals](#prevent-or-limit-peripherals) from being seen by or interacted with devices. Device installation restrictions can also be set to handle an active incident, such as immediately blocking a user or machine’s access to all removable storage. The following policy and configurations let you do this: 
  - Granular configuration to deny write access to removable disks and approve or deny devices by USB vendor code, product code, device IDs, or a combination. 
  - Flexible policy assignment of device installation settings based on an individual or group of Azure Active Directory (Azure AD) users and devices. 
- [Protect against threats](#protect-against-threats) introduced through removable storage devices through enabling: 
  - Windows Defender Anti-Virus real-time protection (RTP) to scan removable storage for malware. 
  - Exploit Guard’s Attack Surface Reduction (ASR) USB Rule to block untrusted and unsigned processes that run from USB.  
  - Direct Memory Access Protection Settings including Kernel DMA Protection for Thunderbolt and Blocking Direct Memory Access until a user logs-on to protect devices against Direct Memory Access (DMA) attacks. 






| Control  | Description |
|----------|-------------|
| [Block installation of any removable storage device](#block-installation-of-any-removable-storage-device) | Users cannot install any removable storage device. |
| [Allow installation of specific device IDs](#allow-installation-of-specific-device-ids)   | Users can install only specifically approved devices. |
| [Protect authorized removable storage devices](#protect-authorized-removable-storage) | Identify and block malicious files on authorized removable storage devices. |

To make sure removable storage is blocked or allowed as expected, we recommend trying these settings with a pilot group of users and devices, and refining the settings as needed before applying them in production. 
You should block everything and allow only the removable storage properties of approved devices (such as vendor ID, and product ID) and limit users who need access because it is possible to spoof removable device properties. 
For more information about controlling USB devices and other removable media, see the [Microsoft Secure blog](https://cloudblogs.microsoft.com/microsoftsecure/).
   

> [!NOTE]
> These threat reduction measures help prevent malware from coming into your environment. To protect enterprise data from leaving your environment, you can also configure data loss prevention measures. For example, on Windows 10 devices you can configure [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) and [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure), which will encrypt company data even if it is stored on a personal device, or use the [Storage/RemovableDiskDenyWriteAccess CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-storage#storage-removablediskdenywriteaccess) to deny write access to removable disks.

## View plug-and-play connected events

## Prevent or limit peripherals

## Protect against threats

## Block installation of any removable storage device

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com/).
2. Click **Intune** > **Device configuration** > **Profiles** > **Create profile**. 

   ![Create device configuration profile](images/create-device-configuration-profile.png)

3. Use the following settings: 

   - Name: Type a name for the profile 
   - Description: Type a description 
   - Platform: Windows 10 and later 
   - Profile type: Device restrictions 

   ![Create profile](images/create-profile.png)

4. Click **Configure** > **General**.  

5. For **Removable storage** and **USB connection (mobile only)**, choose **Block**. **Removable storage** includes USB drives, where **USB connection (mobile only)** excludes USB charging but includes other USB connections on mobile devices only. 

   ![General settings](images/general-settings.png)

6. Click **OK** to close **General** settings and **Device restrictions**.

7. Click **Create** to save the profile.

## Allow installation of specific device IDs

Alternatively, you can create a custom profile in Intune and configure [DeviceInstallation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation) policies to allow or prevent the installation of specific types of removable devices. 

Windows can use device identification strings to control device installation and configuration. 
There are two types of device identification strings: hardware IDs and compatible IDs.

Hardware IDs are the identifiers that provide the most exact match between a device and a driver package. The first string in the list of hardware IDs is referred to as the device ID, because it matches the exact make, model, and revision of the device. The other hardware IDs in the list match the details of the device less exactly. For example, a hardware ID might identify the make and model of the device but not the specific revision. This scheme allows Windows to use a driver for a different revision of the device if the driver for the correct revision is not available.

You can get the hardware ID of a USB device in Device Manager. Locate the USB under Disk drives:

![Disk drives](images/device-manager-disk-drives.png)

Right-click the name of the device, click **Properties** > **Details** and select **Hardware Ids** as the **Property**: 

![Hardware IDs](images/disk-drive-hardware-id.png)

Windows uses compatible IDs to select a device driver if the operating system cannot find a match with the device ID or any of the other hardware IDs. Compatible IDs are listed in the order of decreasing suitability. These strings are optional, and, when provided, they are very generic, such as Disk. When a match is made using a compatible ID, you can typically use only the most basic functions of the device.

Some physical devices create one or more logical devices when they are installed. 
Each logical device might handle part of the functionality of the physical device. 
For example, a multi-function device, such as an all-in-one scanner/fax/printer, might have a different device identification string for each function.
You must allow or prevent all of the device identification strings for that device. 

For a SyncML example that allows installation of specific device IDs, see [DeviceInstallation/AllowInstallationOfMatchingDeviceIDs CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation#deviceinstallation-allowinstallationofmatchingdeviceids).

## Protect authorized removable storage 
  
If removable devices are allowed on devices (either fully or partially), you can add protection to identify and block malicious files.

### Enable Windows Defender Antivirus Scanning 

Protecting authorized removable storage with Windows Defender Antivirus requires [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 
If real-time protection is enabled, files are scanned before they are accessed and executed. 
The scanning scope includes all files, including those on mounted removable devices such as USB drives.
You can optionally [run a PowerShell script to perform a custom scan](https://aka.ms/scanusb) of a USB drive after it is mounted. 
However, we recommend enabling real-time protection for improved scanning performance, especially for large storage devices.  

### Block untrusted and unsigned processes that run from USB attack surface reduction rule

End-users might plug in removable devices that are infected with malware. 
In order to prevent infections, a company can block files that are not signed or are untrusted from USB devices. 
Alternatively, companies can leverage the audit feature of attack surface reduction rules to monitor the activity of untrusted and unsigned processes that execute on a USB device. 
This can be done by setting **Untrusted and unsigned processes that run from USB** to either **Block** or **Audit only**, respectively. 
With this rule, admins can prevent or audit unsigned or untrusted executable files from running from USB removable drives, including SD cards. 
Affected file types include executable files (such as .exe, .dll, or .scr) and script files such as a PowerShell (.ps), VisualBasic (.vbs), or JavaScript (.js) files.

These settings require [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com/).
2. Click **Intune** > **Device configuration** > **Profiles** > **Create profile**. 

   ![Create device configuration profile](images/create-device-configuration-profile.png)

3. Use the following settings:

   - Name: Type a name for the profile 
   - Description: Type a description 
   - Platform: Windows 10 or later 
   - Profile type: Endpoint protection 

   ![Create endpoint protection profile](images/create-endpoint-protection-profile.png)

4. Click **Configure** > **Windows Defender Exploit Guard** > **Attack Surface Reduction**. 

5. For **Unsigned and untrusted processes that run from USB**, choose **Block**. 

   ![Block untrusted processes](images/block-untrusted-processes.png)

6. Click **OK** to close **Attack Surface Reduction**, **Windows Defender Exploit Guard**, and **Endpoint protection**.

7. Click **Create** to save the profile.

## Related topics

- [Configure real-time protection for Windows Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus)
- [DeviceInstallation CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation)
- [Perform a custom scan of a removable device](https://aka.ms/scanusb)
- [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) 
- [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure)



