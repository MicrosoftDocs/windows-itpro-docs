---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Allow Extensions -->
>*Supported versions: Microsoft Edge on Windows 10, version 1607 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-extensions-shortdesc](../shortdesc/allow-extensions-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled |0 |0 |Prevented | 
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | 
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Extensions
- **GP name:** AllowExtensions 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowextensions)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowExtensions 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Extensions
- **Value name:** ExtensionsEnabled
- **Value type:** REG_DWORD

### Related topics

[!INCLUDE [microsoft-browser-extension-policy-shortdesc](../shortdesc/microsoft-browser-extension-policy-shortdesc.md)]

<hr>
