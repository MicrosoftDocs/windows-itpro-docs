---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Enable use of BitLocker authentication requiring preboot keyboard input on slates

This policy setting allows users to turn on authentication options that require user input from the preboot environment, even if the platform lacks preboot input capability. The Windows touch keyboard (such as that used by tablets) isn't available in the preboot environment where BitLocker requires additional information such as a PIN or Password.

- If you enable this policy setting, devices must have an alternative means of preboot input (such as an attached USB keyboard).
- If this policy isn't enabled, the Windows Recovery Environment must be enabled on tablets to support the entry of the BitLocker recovery password.

It's recommended that administrators enable this policy only for devices that are verified to have an alternative means of preboot input, such as attaching a USB keyboard.

When the Windows Recovery Environment (WinRE) isn't enabled and this policy isn't enabled, BitLocker can't be turned on a device that uses a touch keyboard.

If this policy setting isn't enabled, the following options in the **Require additional authentication at startup** policy might not be available:

- Configure TPM startup PIN: Required and Allowed
- Configure TPM startup key and PIN: Required and Allowed
- Configure use of passwords for operating system drives

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnablePrebootInputProtectorsOnSlates](/windows/client-management/mdm/bitlocker-csp#systemdrivesenableprebootinputprotectorsonslates) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
