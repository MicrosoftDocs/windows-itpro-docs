---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Disallow standard users from changing the PIN or password

This policy allows configuration of whether standard users are allowed to change the PIN or password that is used to protect the operating system drive, if they can provide the existing PIN first.

If you enable this policy, standard users can't change BitLocker PINs or passwords.
If you disable or don't configure this policy, standard users can change BitLocker PINs and passwords.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesDisallowStandardUsersCanChangePIN](/windows/client-management/mdm/bitlocker-csp#systemdrivesdisallowstandarduserscanchangepin) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
