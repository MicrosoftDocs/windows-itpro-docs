---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Prevent memory overwrite on restart

This policy setting is used to control whether the computer's memory is overwritten when the device restarts. BitLocker secrets include key material used to encrypt data.

- If you enable this policy setting, memory isn't overwritten when the computer restarts. Preventing memory overwrite may improve restart performance but increases the risk of exposing BitLocker secrets.
- If you disable or do not configure this policy setting, BitLocker secrets are removed from memory when the computer restarts.

> [!NOTE]
> This policy setting applies only when BitLocker protection is enabled.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
