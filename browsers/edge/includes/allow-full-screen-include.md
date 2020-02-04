---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Allow fullscreen mode --> 

>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Enabled or not configured (Allowed)*


[!INCLUDE [allow-fullscreen-mode-shortdesc](../shortdesc/allow-fullscreen-mode-shortdesc.md)]  

### Supported values

|       Group Policy       | MDM | Registry | Description |                 Most restricted                  |
|--------------------------|:---:|:--------:|-------------|:------------------------------------------------:|
|         Disabled         |  0  |    0     |  Prevented  | ![Most restricted value](../images/check-gn.png) |
| Enabled<br>**(default)** |  1  |    1     |   Allowed   |                                                  |

---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow fullscreen mode
- **GP name:** AllowFullScreenMode
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowFullscreen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowfullscreenmode)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFullscreen 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main 
- **Value name:** AllowFullScreenMode
- **Value type:** REG_DWORD

<hr>
