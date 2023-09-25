---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Allow suspension of BitLocker protection

When enabled, this policy allows the suspension of BitLocker protection. When disabled, it prevents suspending BitLocker protection.

The default value is *enabled*.

> [!NOTE]
> This policy is applicable to Windows insider builds.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[AllowSuspensionOfBitLockerProtection](/windows/client-management/mdm/bitlocker-csp#allowsuspensionofbitlockerprotection)|
| **GPO** | Not available |