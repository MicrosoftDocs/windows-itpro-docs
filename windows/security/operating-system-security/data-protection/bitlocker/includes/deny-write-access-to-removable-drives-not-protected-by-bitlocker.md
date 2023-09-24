---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Deny write access to removable drives not protected by BitLocker

This policy setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive. If you enable this policy setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access. If the "Deny write access to devices configured in another organization" option is selected, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" policy setting. If you disable or do not configure this policy setting, all removable data drives on the computer will be mounted with read and write access. Note: This policy setting can be overridden by the policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" policy setting is enabled this policy setting will be ignored.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesRequireEncryption](/windows/client-management/mdm/bitlocker-csp#removabledrivesrequireencryption) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |
