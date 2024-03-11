---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Expiration

This setting specifies the period of time (in days) that a PIN can be used before the system requires the user to change it. The PIN can be set to expire after any number of days between 1 and 730, or PINs can be set to never expire if the policy is set to 0.

The default value is 0.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexityexpiration](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexityexpiration)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexityexpiration](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexityexpiration) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity**|
