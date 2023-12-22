---
author: paolomatarazzo
ms.author: paoloma
ms.date: 12/19/2023
ms.topic: include
---

### Require lowercase letters

Use this policy setting to configure the use of lowercase letters in the PIN:

- If you enable this policy setting, Windows requires the user to include at least one lowercase letter in their PIN
- If you disable this policy setting, Windows doesn't allow the user to include lowercase letters in their PIN
- If you don't configure this policy setting, Windows allows, but doesn't require, lowercase letters in the PIN

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexitylowercaseletters](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexitylowercaseletters)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexitylowercaseletters](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexitylowercaseletters) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity** |
