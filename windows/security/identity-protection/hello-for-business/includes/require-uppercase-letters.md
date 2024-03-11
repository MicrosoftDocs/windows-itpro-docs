---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Require uppercase letters

Use this policy setting to configure the use of uppercase letters in the PIN:

- If you enable this policy setting, Windows requires the user to include at least one uppercase letter in their PIN
- If you disable this policy setting, Windows doesn't allow the user to include uppercase letters in their PIN
- If you don't configure this policy setting, Windows allows, but doesn't require, uppercase letters in the PIN

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexityuppercaseletters](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexityuppercaseletters)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexityuppercaseletters](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexityuppercaseletters) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity** |
