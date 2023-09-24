---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Deny write access to fixed drives not protected by BitLocker

This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer. If you enable this policy setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access. If you disable or do not configure this policy setting, all fixed data drives on the computer will be mounted with read and write access.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[FixedDrivesRequireEncryption](/windows/client-management/mdm/bitlocker-csp#fixeddrivesrequireencryption) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

