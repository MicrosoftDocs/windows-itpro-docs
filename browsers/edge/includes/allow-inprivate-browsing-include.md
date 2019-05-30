---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ## Allow InPrivate browsing -->
>*Supported versions: Microsoft Edge on Windows 10, version 1511 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*


[!INCLUDE [allow-inprivate-browsing-shortdesc](../shortdesc/allow-inprivate-browsing-shortdesc.md)]


### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented |![Most restricted value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | |
---  

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow InPrivate browsing
- **GP name:** AllowInPrivate 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowInPrivate](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowinprivate)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowInPrivate 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main 
- **Value name:** AllowInPrivate
- **Value type:** REG_DWORD

<hr>
