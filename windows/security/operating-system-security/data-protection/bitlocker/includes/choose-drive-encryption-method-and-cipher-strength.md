---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Choose drive encryption method and cipher strength

With this policy you can configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually.

Recommended settings:

- For fixed and operating system drives: `XTS-AES` algorithm
- For removable drives: `AES-CBC 128-bit` or `AES-CBC 256-bit`

If you disable or do not configure this policy setting, BitLocker uses the default encryption method of `XTS-AES 128-bit`.

> [!WARNING]
> This policy doesn't apply to encrypted drives. Encrypted drives utilize their own algorithm, which is set by the drive during partitioning.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[EncryptionMethodByDriveType](/windows/client-management/mdm/bitlocker-csp#encryptionmethodbydrivetype)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
