---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Require digits

Use this policy setting to configure the use of digits in the PIN:

- If you enable this policy setting, Windows requires the user to include at least one digit in their PIN
- If you disable this policy setting, Windows doesn't allow the user to include digits in their PINs
- If you don't configure this policy setting, Windows allows, but doesn't require, digits in the PIN

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexitydigits](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexitydigits)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexitydigits](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexitydigits) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity** |
