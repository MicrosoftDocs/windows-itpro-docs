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
ms.date: 11/15/2018
---

# How to control USB devices and other removable media using Intune

**Applies to:** [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)


You can configure Intune settings to reduce threats from removable storage such as USB devices, including:   

- [Block unwanted removeable storage](#block-unwanted-removable-storage)
- [Protect allowed removable storage](#protect-allowed-removable-storage)

Protecting allowed removeable storage requires [enabling real-time protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus). 
We recommend enabling real-time protection for improved scanning performance, especially for large storage devices.  
If real-time protection is enabled, files are scanned before they are accessed and executed. The scanning scope includes all files, including those on mounted removable devices such as USB drives.
You can optionally [run a PowerShell script to perform a custom scan](https://aka.ms/scanusb) of a USB drive after it is mounted.

> [!NOTE]
> These threat reduction measures help prevent malware from coming into your environment. To protect enterprise data from leaving your environment, you can also configure data loss prevention measures. For data loss prevention on Windows 10 devices, you can configure [BitLocker](https://docs.microsoft.com/windows/security/information-protection/bitlocker/bitlocker-overview) and [Windows Information Protection](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/create-wip-policy-using-intune-azure), which will encrypt company data even if it is stored on a personal device.

## Block unwanted removeable storage

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

Alternatively, you can create a custom profile in Intune and configure [DeviceInstallation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-deviceinstallation) policies.  

## Protect allowed removable storage 

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