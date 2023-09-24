---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Enable use of BitLocker authentication requiring preboot keyboard input on slates

This policy setting allows users to turn on authentication options that require user input from the pre-boot environment, even if the platform lacks pre-boot input capability. The Windows touch keyboard (such as that used by tablets) isn't available in the pre-boot environment where BitLocker requires additional information such as a PIN or Password. If you enable this policy setting, devices must have an alternative means of pre-boot input (such as an attached USB keyboard). If this policy is not enabled, the Windows Recovery Environment must be enabled on tablets to support the entry of the BitLocker recovery password. When the Windows Recovery Environment is not enabled and this policy is not enabled, you cannot turn on BitLocker on a device that uses the Windows touch keyboard. Note that if you do not enable this policy setting, options in the "Require additional authentication at startup" policy might not be available on such devices. These options include:  - Configure TPM startup PIN: Required/Allowed  - Configure TPM startup key and PIN: Required/Allowed  - Configure use of passwords for operating system drives.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnablePrebootInputProtectorsOnSlates](/windows/client-management/mdm/bitlocker-csp#systemdrivesenableprebootinputprotectorsonslates) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
