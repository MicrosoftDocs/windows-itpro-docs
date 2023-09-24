---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Disallow standard users from changing the PIN or password

This policy setting allows you to configure whether or not standard users are allowed to change BitLocker volume PINs, provided they are able to provide the existing PIN first.  If you enable this policy setting, standard users will not be allowed to change BitLocker PINs or passwords. If you disable or do not configure this policy setting, standard users will be permitted to change BitLocker PINs and passwords.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesDisallowStandardUsersCanChangePIN](/windows/client-management/mdm/bitlocker-csp#systemdrivesdisallowstandarduserscanchangepin) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
