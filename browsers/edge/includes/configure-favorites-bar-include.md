---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ##Configure Favorites Bar --> 
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Not configured (Hidden but shown on the Start and New Tab pages)*


[!INCLUDE [allow-favorites-bar-shortdesc](../shortdesc/configure-favorites-bar-shortdesc.md)]


### Supported values


|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Not configured **(default)** |Blank |Blank |Hidden but shown on the Start and New Tab pages.<p><p>Favorites Bar toggle (in Settings) = **Off** and enabled letting users make changes. | 
|Disabled |0 |0 |Hidden on all pages.<ul><li>Favorites Bar toggle (in Settings) = **Off** and disabled preventing users from making changes</li><li>Show bar/Hide bar option (in the context menu) = hidden</li></ul>  | 
|Enabled |1 |1 |Shown on all pages.<ul><li>Favorites Bar toggle (in Settings) = **On** and disabled preventing users from making changes</li><li>Show bar/Hide bar option (in the context menu) = hidden</li></ul>  |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Favorites Bar
- **GP name:** ConfigureFavoritesBar
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureFavoritesBar](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureFavoritesBar 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** ConfigureFavoritesBar
- **Value type:** REG_DWORD

<hr>
