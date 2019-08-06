---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Allow Microsoft Compatibility List -->
>*Supported versions: Microsoft Edge on Windows 10, version 1607 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-microsoft-compatibility-list-shortdesc](../shortdesc/allow-microsoft-compatibility-list-shortdesc.md)]

### Supported values

|                Group Policy                | MDM | Registry | Description |                 Most restricted                  |
|--------------------------------------------|:---:|:--------:|-------------|:------------------------------------------------:|
|                  Disabled                  |  0  |    0     |  Prevented  | ![Most restricted value](../images/check-gn.png) |
| Enabled or not configured<br>**(default)** |  1  |    1     |   Allowed   |                                                  |

---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Microsoft Compatibility List
- **GP name:** AllowCVList
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowMicrosoftCompatibilityList](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowmicrosoftcompatibilitylist)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowMicrosoftCompatibilityList 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\BrowserEmulation
- **Value name:** MSCompatibilityMode
- **Value type:** REG_DWORD

<hr>
