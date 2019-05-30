---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ## Always show the Books Library in Microsoft Edge -->
>*Supported versions: Microsoft Edge on Windows 10, version 1709 or later*<br>
>*Default setting:  Disabled or not configured*


[!INCLUDE [always-show-books-library-shortdesc](../shortdesc/always-show-books-library-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Show the Books Library only in countries or regions where supported. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Show the Books Library, regardless of the device’s country or region. | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Always show the Books Library in Microsoft Edge
- **GP name:** AlwaysEnableBooksLibrary
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AlwaysEnableBooksLibrary](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-alwaysenablebookslibrary)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AlwaysEnableBooksLibrary 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main
- **Value name:** AlwaysEnableBooksLibrary
- **Value type:** REG_DWORD

<hr>
