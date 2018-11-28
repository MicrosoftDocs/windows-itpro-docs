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
ms.date: 11/27/2018
---

# How to control USB devices and other removable media using Intune

**Applies to:** [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)


You can configure Intune settings to reduce threats from removable storage such as USB devices, including:   

- [Block prohibited removeable storage]
- [Protect authorized removable storage]

> [!NOTE]
> These threat reduction measures help prevent malware from coming into your environment. To protect enterprise data from leaving your environment, you can also configure data loss prevention measures. For example, on Windows 10 devices you can configure [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) and [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure), which will encrypt company data even if it is stored on a personal device, or use the [Storage/RemovableDiskDenyWriteAccess CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-storage#storage-removablediskdenywriteaccess) to deny write access to removeable disks.

## Controlling device installation and usage

The following table describes different sceanrios for controlling device installation and usage.

| Control  | Description |
|----------|-------------|
| [Block installation of any removeable storage device](#block-prohibited-removable-storage) | Users cannot install any removeable storage device. |
| [Protect authorized removeable storage devices](#protect-authorized-removable-storage) | Identify and block malicious files on authorized removeable storage devices. |
| [Block or allow specific devices](#block-or-allow-specific-device-ids-and-setup-classes)   | Users can install most devices but not a list of prohibited devices. |


## Block prohibited removeable storage

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com/).
2. Click **Intune** > **Device configuration** > **Profiles** > **Create profile**. 

   ![Create device configuration profile](images/create-device-configuration-profile.png)

3. Use the following settings: 

   - Name: Windows 10 Device Configuration 
   - Description: Block removeable storage and USB connections 
   - Platform: Windows 10 and later 
   - Profile type: Device restrictions 

   ![Create profile](images/create-profile.png)

4. Click **Configure** > **General**.  

5. For **Removable storage** and **USB connection (mobile only)**, choose **Block**.

   ![General settings](images/general-settings.png)

6. Click **OK** to close **General** settings and **Device restrictions**.

7. Click **Create** to save the profile.

## Protect authorized removable storage 
  
If removable devices are allowed on devices (either fully or partially), you can add protection to identify and block malicious files.

Enable Windows Defender Antivirus Scanning: Protecting authorized removeable storage with Windows Defender Antivirus requires [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 
If real-time protection is enabled, files are scanned before they are accessed and executed. 
The scanning scope includes all files, including those on mounted removable devices such as USB drives.
You can optionally [run a PowerShell script to perform a custom scan](https://aka.ms/scanusb) of a USB drive after it is mounted. 
However, we recommend enabling real-time protection for improved scanning performance, especially for large storage devices.  

Enable EG-ASR “Block untrusted and unsigned processes that run from USB”:End-users might plug in removable devices that are infected with malware. 
In order to prevent infections, a company can block files from usb devices which are not signed or are untrusted. Alternatively, companies can leverage the audit feature of ASR to monitor the USB activity of untrusted and unsigned processes that execute on a USB device.  This can be done through the EG-ASR “Block untrusted and unsigned processes that run from USB” Rule. 
With this rule, admins can prevent unsigned or untrusted executable files from running from USB removable drives, including SD cards. Blocked file types include: Executable files (such as .exe, .dll, or .scr) and Script files (such as a PowerShell .ps, VisualBasic .vbs, or JavaScript .js file)

These settings require [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 

1. Sign in to the [Microsoft Azure portal](https://portal.azure.com/).
2. Click **Intune** > **Device configuration** > **Profiles** > **Create profile**. 

   ![Create device configuration profile](images/create-device-configuration-profile.png)

3. Use the following settings:

   - Name: Type a name for the profile 
   - Description: Type a description 
   - Platform: Windows 10 or later 
   - Profile type: Endpoint protection 

   ![Create enpoint protection profile](images/create-endpoint-protection-profile.png)

4. Click **Configure** > **Windows Defender Exploit Guard** > **Attack Surface Reduction**. 

5. For **Unsigned and untrusted processes that run from USB**, choose **Block**. 

   ![Block untrusted processes](images/block-untrusted-processes.png)

6. Click **OK** to close **Attack Surface Reduction**, **Windows Defender Exploit Guard**, and **Endpoint protection**.

7. Click **Create** to save the profile.

## Block or allow specific device IDs and setup classes

Alternatively, you can create a custom profile in Intune and configure [DeviceInstallation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation) policies to prevent or allow the installation of specific types of devices.  

### Device installation in Windows
Windows uses two types of identifiers to control device installation and configuration: 

- Device identification strings
- Device setup classes

#### Device identification strings
There are two types of device identification strings: hardware IDs and compatible IDs.

Hardware IDs are the identifiers that provide the most exact match between a device and a driver package. The first string in the list of hardware IDs is referred to as the device ID, because it matches the exact make, model, and revision of the device. The other hardware IDs in the list match the details of the device less exactly. For example, a hardware ID might identify the make and model of the device but not the specific revision. This scheme allows Windows to use a driver for a different revision of the device, if the driver for the correct revision is not available.

Windows uses compatible IDs to select a device driver if the operating system cannot find a match with the device ID or any of the other hardware IDs. Compatible IDs are listed in the order of decreasing suitability. These strings are optional, and, when provided, they are very generic, such as Disk. When a match is made using a compatible ID, you can typically use only the most basic functions of the device.

When you install a device, such as a printer, a USB storage device, or a keyboard, Windows searches for driver packages that match the device you are attempting to install. During this search, Windows assigns a "rank" to each driver package it discovers with at least one match to a hardware or compatible ID. The rank indicates how well the driver matches the device. Lower rank numbers indicate better matches between the driver and the device. A rank of zero represents the best possible match. A match with the device ID to one in the driver package results in a lower (better) rank than a match to one of the other hardware IDs. Similarly, a match to a hardware ID results in a better rank than a match to any of the compatible IDs. After Windows ranks all of the driver packages, it installs the one with the lowest overall rank. 

Some physical devices create one or more logical devices when they are installed. Each logical device might handle part of the functionality of the physical device. For example, a multi-function device, such as an all-in-one scanner/fax/printer, might have a different device identification string for each function.

You must allow or prevent all of the device identification strings for that device. For example, if a user attempts to install a multifunction device and you did not allow or prevent all of the identification strings for both physical and logical devices, you could get unexpected results from the installation attempt.

#### Device setup classes

[Device setup classes](https://docs.microsoft.com/windows-hardware/drivers/install/device-setup-classes) are another type of identification string. The manufacturer assigns the device setup class to a device in the device driver package. The device setup class groups devices that are installed and configured in the same way. For example, all CD drives belong to the CDROM device setup class, and they use the same co-installer when installed. A long number called a globally unique identifier (GUID) represents each device setup class. When Windows starts, it builds an in-memory tree structure with the GUIDs for all of the detected devices. Along with the GUID for the device setup class of the device itself, Windows may need to insert into the tree the GUID for the device setup class of the bus to which the device is attached.

When you use device setup classes to allow or prevent users from installing device drivers, you must specify the GUIDs for all of the device's device setup classes, or you might not achieve the results you want. The installation might fail (if you want it to succeed) or it might succeed (if you want it to fail).

For example, a multi-function device, such as an all-in-one scanner/fax/printer, has a GUID for a generic multi-function device, a GUID for the printer function, a GUID for the scanner function, and so on. The GUIDs for the individual functions are "child nodes" under the multi-function device GUID. To install a child node, Windows must also be able to install the parent node. You must allow installation of the device setup class of the parent GUID for the multi-function device in addition to any child GUIDs for the printer and scanner functions.

