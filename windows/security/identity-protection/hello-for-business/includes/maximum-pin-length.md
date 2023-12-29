---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Maximum PIN length

Maximum PIN length configures the maximum number of characters allowed for the PIN. The largest number you can configure for this policy setting is 127. The lowest number you can configure must be larger than the number configured in the Minimum PIN length policy setting or the number 4, whichever is greater. If you configure this policy setting, the PIN length must be less than or equal to this number.

If you disable or don't configure this policy setting, the PIN length must be less than or equal to 127.

> [!NOTE]
> If the above specified conditions for the maximum PIN length aren't met, default values are used for both the maximum and minimum PIN lengths.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexitymaximumpinlength](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexitymaximumpinlength)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexitymaximumpinlength](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexitymaximumpinlength) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity** |
