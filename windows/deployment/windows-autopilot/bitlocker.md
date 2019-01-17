---
title: Setting the BitLocker encryption algorithm for Autopilot devices
description: Microsoft Intune provides a comprehensive set of configuration options to manage BitLocker on Windows 10 devices. 
keywords: Autopilot, BitLocker, encryption, 256-bit, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
ms.localizationpriority: medium
author: greg-lindsay
ms.author: greg-lindsay
---

# Setting the BitLocker encryption algorithm for Autopilot devices

With Windows Autopilot, you can configure the BitLocker encryption settings to be applied before automatic encryption is started. This ensures that the default encrytion algorithm is not applied automatically when this is not the desired setting. Other BitLocker policies that must be applied prior to encryption can also be delivered before automatic BitLocker encryption begins. 

The BitLocker encryption algorithm is used when BitLocker is first enabled, and sets the strength to which full volume encryption should occur. Available encryption algorithms are: AES-CBC 128-bit, AES-CBC 256-bit, XTS-AES 128-bit or XTS-AES 256-bit encryption. The default value is XTS-AES 128-bit encryption. See [BitLocker CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/bitlocker-csp) for information about the recommended encryption algorithms to use.

An example of encryption settings is shown below.

   ![BitLocker encryption settings](images/bitlocker-encryption.png)

Note that a device which is encrypted automatically will need to be decrypted prior to changing the encyption algorithm.

To ensure the desired BitLocker encryption algorithm is set before automatic encryption occurs for Autopilot devices:

1. Configure the [encryption method settings](https://docs.microsoft.com/intune/endpoint-protection-windows-10#windows-encryption) in the Windows 10 Endpoint Protection profile to the desired encryption algorithm. 
2. [Assign the policy](https://docs.microsoft.com/intune/device-profile-assign) to your Autopilot device group. 
    - **IMPORTANT**: The encryption policy must be assigned to **devices** in the group, not users.
3. Enable the Autopilot [Enrollment Status Page](https://docs.microsoft.com/windows/deployment/windows-autopilot/enrollment-status) (ESP) for these devices. This is a critical step because if the ESP is not enabled, the policy will not apply when the device boots.
 
## Requirements

Windows 10, version 1809 or later.

## See also

[Bitlocker overview](https://docs.microsoft.com/en-us/windows/security/information-protection/bitlocker/bitlocker-overview)
