---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Prevent changes to Favorites on Microsoft Edge -->
>*Supported versions: Microsoft Edge on Windows 10, version 1709 or later*<br>
>*Default setting:  Disabled or not configured (Allowed/not locked down)*

[!INCLUDE [prevent-changes-to-favorites-shortdesc](../shortdesc/prevent-changes-to-favorites-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry |                                    Description                                    |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|-----------------------------------------------------------------------------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     | Allowed/unlocked.  Users can add, import, and make changes to the Favorites list. |                                                  |
|                   Enabled                   |  1  |    1     |                              Prevented/locked down.                               | ![Most restricted value](/images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent changes to Favorites on Microsoft Edge 
- **GP name:** LockdownFavorites
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[LockdownFavorites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-lockdownfavorites)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/LockdownFavorites 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Favorites
- **Value name:** LockdownFavorites
- **Value type:** REG_DWORD

<hr>
