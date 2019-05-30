---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Allow printing   -->
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-printing-shortdesc](../shortdesc/allow-printing-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented |![Most restrictive value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow printing
- **GP name:** AllowPrinting
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowPrinting](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowprinting)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPrinting 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main 
- **Value name:** AllowPrinting
- **Value type:** REG_DWORD

<hr>
