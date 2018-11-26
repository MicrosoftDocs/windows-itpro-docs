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
ms.date: 11/26/2018
---

# How to control USB devices and other removable media using Intune

**Applies to:** [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)


You can configure Intune settings to reduce threats from removable storage such as USB devices, including:   

- [Block prohibited removeable storage](#block-prohibited-removable-storage)
- [Protect authorized removable storage](#protect-authorized-removable-storage)

Protecting allowed removeable storage requires [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 
We recommend enabling real-time protection for improved scanning performance, especially for large storage devices.  
If real-time protection is enabled, files are scanned before they are accessed and executed. The scanning scope includes all files, including those on mounted removable devices such as USB drives.
You can optionally [run a PowerShell script to perform a custom scan](https://aka.ms/scanusb) of a USB drive after it is mounted.

> [!NOTE]
> These threat reduction measures help prevent malware from coming into your environment. To protect enterprise data from leaving your environment, you can also configure data loss prevention measures. For data loss prevention on Windows 10 devices, you can configure [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) and [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure), which will encrypt company data even if it is stored on a personal device.

## Controlling device installation and usage

You can control device installation :

- Prevent installation of all removeable storage devices 
  In this scenario, users are blocked from installing any removeable storage device. 

- Prevent installation of other prohibited devices 
  In this scenario, the administrator wants to allow standard users to install most devices but prevent them from installing devices included on a list of prohibited devices. You can create a list of prohibited devices so that users can install any device except those that you specify. 

- Allow users to install only authorized devices 
  In this scenario, the administrator wants to allow users to install only the devices included on a list of authorized devices.

- Control the use of removable media storage devices 
  In this scenario, the administrator wants to prevent standard users from writing data to removable storage devices, or devices with removable media, such as a USB memory drive or a CD or DVD burner. To complete this scenario, you configure a computer policy to allow read access, but deny write access to your sample device and to any CD or DVD burner device on your computer. 

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

## Block or allow specific device IDs and setup classes

Alternatively, you can create a custom profile in Intune and configure [DeviceInstallation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation) policies to prevent or allow the instalation of specific types of devices.  

## Protect authorized removable storage 

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