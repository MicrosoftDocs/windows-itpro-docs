---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Prevent access to the about:flags page -->
>*Supported versions: Microsoft Edge on Windows 10, version 1607 or later*<br>
>*Default setting:  Disabled or not configured (Allowed)*

[!INCLUDE [prevent-access-to-about-flags-page-shortdesc](../shortdesc/prevent-access-to-about-flags-page-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry | Description |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|-------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     |   Allowed   |                                                  |
|                   Enabled                   |  1  |    1     |  Prevented  | ![Most restricted value](/images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent access to the about:flags page in Microsoft Edge
- **GP name:** PreventAccessToAboutFlagsInMicrosoftEdge
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[PreventAccessToAboutFlagsInMicrosoftEdge](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventaccesstoaboutflagsinmicrosoftedge)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventAccessToAboutFlagsInMicrosoftEdge 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** PreventAccessToAboutFlagsInMicrosoftEdge
- **Value type:** REG_DWORD

<hr>
