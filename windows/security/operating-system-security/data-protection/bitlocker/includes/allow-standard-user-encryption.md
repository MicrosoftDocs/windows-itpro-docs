---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Allow standard user encryption

With this policy you can enforce the [*Require device encryption*](../configure.md?tabs=os#require-device-encryption) policy for scenarios where the policy is applied while the current logged-on user doesn't have administrative rights.

> [!IMPORTANT]
> The [Allow warning for other disk encryption](../configure.md?tabs=os#allow-warning-for-other-disk-encryption) policy must be disabled to allow standard user encryption.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[AllowStandardUserEncryption](/windows/client-management/mdm/bitlocker-csp#allowstandarduserencryption)|
| **GPO** | Not available |
