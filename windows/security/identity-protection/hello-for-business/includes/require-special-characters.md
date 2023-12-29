---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Require special characters

Scope: Machine

Use this policy setting to configure the use of special characters in the PIN. Special characters include the following set:

``` text
! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~
```

- If you enable this policy setting, Windows requires the user to include at least one special character in their PIN
- If you disable this policy setting, Windows doesn't allow the user to include special characters in their PIN
- If you don't configure this policy setting, Windows allows, but doesn't require, special characters in the PIN

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[devicetenantidpoliciespincomplexityspecialcharacters](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciespincomplexityspecialcharacters)<br><br>`./User/Vendor/MSFT/PassportForWork/{TenantId}/Policies/PINComplexity/`[usertenantidpoliciespincomplexityspecialcharacters](/windows/client-management/mdm/passportforwork-csp#usertenantidpoliciespincomplexityspecialcharacters) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **System** > **PIN Complexity** |
