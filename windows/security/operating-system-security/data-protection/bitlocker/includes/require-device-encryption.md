---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Require device encryption

This policy setting determines whether BitLocker is required:

- If enabled, encryption is triggered on all drives silently or non-silently based on [Allow warning for other disk encryption](../configure.md?tabs=os#allow-warning-for-other-disk-encryption) policy
- If disabled, BitLocker isn't turned off for the system drive, but it stops prompting the user to turn BitLocker on.

> [!NOTE]
> Typically, BitLocker follows the [Choose drive encryption method and cipher strength](../configure.md?tabs=os#choose-drive-encryption-method-and-cipher-strength) policy configuration. However, this policy setting will be ignored for self-encrypting fixed drives and self-encrypting OS drives.

Encryptable fixed data volumes are treated similarly to OS volumes, but they must meet other criteria to be encryptable:

- It must not be a dynamic volume
- It must not be a recovery partition
- It must not be a hidden volume
- It must not be a system partition
- It must not be backed by virtual storage
- It must not have a reference in the BCD store

> [!NOTE]
> Only full disk encryption is supported when using this policy for silent encryption. For non-silent encryption, encryption type will depend on the [*Enforce drive encryption type on operating system drives*](../configure.md?tabs=fixed#enforce-drive-encryption-type-on-operating-system-drives) and [*Enforce drive encryption type on fixed data drives*](../configure.md?tabs=fixed#enforce-drive-encryption-type-on-fixed-data-drives) policies configured on the device.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RequireDeviceEncryption](/windows/client-management/mdm/bitlocker-csp#requiredeviceencryption) |
| **GPO** | Not available |
