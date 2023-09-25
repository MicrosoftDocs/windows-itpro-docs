---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Allow Standard User Encryption

With this policy you can enforce the [*RequireDeviceEncryption*](../policy-settings.md?tabs=os#require-device-encryption) policy for scenarios where policy is applied while current logged-on user is non-admin/standard user.

*AllowStandardUserEncryption* policy is tied to [Allow warning for other disk encryption](../policy-settings.md?tabs=os#allow-warning-for-other-disk-encryption) policy being disabled (value `0`).

If *AllowWarningForOtherDiskEncryption* isn't set, or is set to `1`, *RequireDeviceEncryption* policy doesn't try to encrypt drive(s) if a standard user is logged-on.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[AllowStandardUserEncryption](/windows/client-management/mdm/bitlocker-csp#allowstandarduserencryption)|
| **GPO** | Not available |
