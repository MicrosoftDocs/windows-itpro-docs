---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Minimum PIN length

Minimum PIN length configures the minimum number of characters required for the PIN. The lowest number you can configure for this policy setting is 4. The largest number you can configure must be less than the number configured in the Maximum PIN length policy setting or the number 127, whichever is the lowest.

If you configure this policy setting, the PIN length must be greater than or equal to this number.
If you disable or don't configure this policy setting, the PIN length must be greater than or equal to 6.

> [!NOTE]
> If the above specified conditions for the minimum PIN length are not met, default values will be used for both the maximum and minimum PIN lengths.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexityminimumpinlength](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexityminimumpinlength)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexityminimumpinlength](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexityminimumpinlength)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity** |
