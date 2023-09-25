---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Require device encryption

This policy setting determines whether BitLocker is required on a drive.\
If you disable the policy, BitLocker isn't turned off for the system drive, but it stops prompting the user to turn BitLocker on.

Encryptable fixed data volumes are treated similarly to OS volumes. However, fixed data volumes must meet other criteria to be considered encryptable:

- It must not be a dynamic volume
- It must not be a recovery partition
- It must not be a hidden volume
- It must not be a system partition
- It must not be backed by virtual storage
- It must not have a reference in the BCD store

> [!NOTE]
> Only full disk encryption is supported when using this policy for silent encryption. For non-silent encryption, encryption type will depend on the [*Enforce drive encryption type on operating system drives*](../policy-settings.md?tabs=fixed#enforce-drive-encryption-type-on-operating-system-drives) and [*Enforce drive encryption type on fixed data drives*](../policy-settings.md?tabs=fixed#enforce-drive-encryption-type-on-fixed-data-drives) policies configured on the device.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RequireDeviceEncryption](/windows/client-management/mdm/bitlocker-csp#requiredeviceencryption) |
| **GPO** | Not available |
