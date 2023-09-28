---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Deny write access to removable drives not protected by BitLocker

This policy setting configures whether BitLocker protection is required for a device to be able to write data to a removable data drive.

If you enable this policy setting:

- all removable data drives that are not BitLocker-protected are mounted as read-only
- if the drive is protected by BitLocker, it's mounted with read and write access
- if the **Deny write access to devices configured in another organization** option is selected, only drives with identification fields matching the computer's identification fields are given write access
  - When a removable data drive is accessed, it's checked for valid identification field and allowed identification fields. These fields are defined by the (*Provide the unique identifiers for your organization*)[] policy setting

If you disable or do not configure this policy setting, all removable data drives on the computer are mounted with read and write access.

> [!NOTE]
> This policy setting is ignored if the policy settings *Removable Disks: Deny write access* is enabled.

> [!IMPORTANT]
> If you enable this policy:
>
> - Use of BitLocker with the *TPM startup key* or *TPM key and PIN* must be disallowed
> - Use of recovery keys must be disallowed

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesRequireEncryption](/windows/client-management/mdm/bitlocker-csp#removabledrivesrequireencryption) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |
