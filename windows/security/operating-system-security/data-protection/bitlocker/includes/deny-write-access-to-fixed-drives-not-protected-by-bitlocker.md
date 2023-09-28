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

### Deny write access to fixed drives not protected by BitLocker

This policy setting is used to require encryption of fixed drives prior to granting Write access.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be set whether BitLocker protection is required for fixed data drives to be writable on a computer.|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|See the Reference section for a description of conflicts.|
|**When enabled**|All fixed data drives that aren't BitLocker-protected are mounted as Read-only. If the drive is protected by BitLocker, it's mounted with Read and Write access.|
|**When disabled or not configured**|All fixed data drives on the computer are mounted with Read and Write access.|

#### Reference: Deny write access to fixed drives not protected by BitLocker

This policy setting is applied when BitLocker is turned on.

Conflict considerations include:

1. When this policy setting is enabled, users receive **Access denied** error messages when they try to save data to unencrypted fixed data drives. See the Reference section for additional conflicts.

2. If `BdeHdCfg.exe` is run on a computer when this policy setting is enabled, the following issues could be encountered:

    - If it was attempted to shrink a drive to create the system drive, the drive size is successfully reduced, and a raw partition is created. However, the raw partition isn't formatted. The following error message is displayed: **The new active drive cannot be formatted. You may need to manually prepare your drive for BitLocker.**

    - If it was attempted to use unallocated space to create the system drive, a raw partition will be created. However, the raw partition won't be formatted. The following error message is displayed: **The new active drive cannot be formatted. You may need to manually prepare your drive for BitLocker.**

    - If it was attempted to merge an existing drive into the system drive, the tool fails to copy the required boot file onto the target drive to create the system drive. The following error message is displayed: **BitLocker setup failed to copy boot files. You may need to manually prepare your drive for BitLocker.**

3. If this policy setting is enforced, a hard drive can't be repartitioned because the drive is protected. If computers are being upgrading in an organization from a previous version of Windows, and those computers were configured with a single partition, the required BitLocker system partition should be created before applying this policy setting to the computers.