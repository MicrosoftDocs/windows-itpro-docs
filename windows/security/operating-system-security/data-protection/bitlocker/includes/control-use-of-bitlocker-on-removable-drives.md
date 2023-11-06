---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Control use of BitLocker on removable drives

This policy setting controls the use of BitLocker on removable data drives.

When this policy setting is enabled, you can select property settings that control how users can configure BitLocker:

- Choose **Allow users to apply BitLocker protection on removable data drives** to permit the user to run the BitLocker setup wizard on a removable data drive
- Choose **Allow users to suspend and decrypt BitLocker on removable data drives** to permit the user to remove BitLocker encryption from the drive or suspend the encryption while maintenance is performed

If you disable this policy setting, users can't use BitLocker on removable disk drives.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesConfigureBDE](/windows/client-management/mdm/bitlocker-csp#removabledrivesconfigurebde) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |
