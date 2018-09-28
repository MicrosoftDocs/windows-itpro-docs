---
author: shortpatti
ms.author: pashort
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ##Configure Favorites Bar --> 
>*Supported versions: Microsoft Edge on Windows 10, version 1809*  
>*Default setting:  Not configured (Hidden)*


[!INCLUDE [allow-favorites-bar-shortdesc](../shortdesc/configure-favorites-bar-shortdesc.md)]


### Supported values


|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Not configured **(default)** |Blank |Blank |Hidden but shown on the Start and New Tab pages. The Favorites Bar toggle, in Settings, is set to Off but enabled letting users make changes. | 
|Disabled |0 |0 |Hidden on all pages. The Favorites Bar toggle, in Settings, is set to Off and disabled preventing users from making changes. Microsoft Edge also hides the “Show bar/Hide bar” option in the context menu. | 
|Enabled |1 |1 |Shown on all pages. The Favorites Bar toggle, in Settings, is set to On and disabled preventing users from making changes. Microsoft Edge also hides the “Show bar/Hide bar” option in the context menu. |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Favorites Bar
- **GP name:** ConfigureFavoritesBar
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureFavoritesBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureFavoritesBar 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** ConfigureFavoritesBar
- **Value type:** REG_DWORD

<hr>