---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Deny write access to fixed drives not protected by BitLocker

This policy setting is used to require encryption of fixed drives prior to granting *write* access.

If you enable this policy setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

If you disable or don't configure this policy setting, all fixed data drives on the computer will be mounted with read and write access.

> [!NOTE]
> When this policy setting is enabled, users receive **Access denied** error messages when they try to save data to unencrypted fixed data drives.
>
>
> If the *BitLocker Drive Preparation Tool* `BdeHdCfg.exe` is executed on a computer when this policy setting is enabled, the following issues could be encountered:
>
>  - If you attempt to shrink a drive to create the system drive, the drive size is successfully reduced, and a raw partition is created. However, the raw partition isn't formatted. The following error message is displayed: **The new active drive cannot be formatted. You may need to manually prepare your drive for BitLocker.**
>  - If you attempt to use unallocated space to create the system drive, a raw partition is created. However, the raw partition isn't be formatted. The following error message is displayed: **The new active drive cannot be formatted. You may need to manually prepare your drive for BitLocker.**
>  - If you attempt to merge an existing drive into the system drive, the tool fails to copy the required boot file onto the target drive to create the system drive. The following error message is displayed: **BitLocker setup failed to copy boot files. You may need to manually prepare your drive for BitLocker.**

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[FixedDrivesRequireEncryption](/windows/client-management/mdm/bitlocker-csp#fixeddrivesrequireencryption) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |
