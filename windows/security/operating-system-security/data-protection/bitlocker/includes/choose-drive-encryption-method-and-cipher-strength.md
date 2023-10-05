---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/05/2023
ms.topic: include
---

### Choose drive encryption method and cipher strength

With this policy, you can configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually.

Recommended settings: `XTS-AES` algorithm for all drives. The choice of key size, 128 bit or 256 bit depends on the performance of the device. For more performant hard drives and CPU, choose 256-bit key, for less performant ones use 128.

> [!IMPORTANT]
> Key size might be required by regulators or industry.

If you disable or don't configure this policy setting, BitLocker uses the default encryption method of `XTS-AES 128-bit`.

> [!NOTE]
> This policy doesn't apply to encrypted drives. Encrypted drives utilize their own algorithm, which is set by the drive during partitioning.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[EncryptionMethodByDriveType](/windows/client-management/mdm/bitlocker-csp#encryptionmethodbydrivetype)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
