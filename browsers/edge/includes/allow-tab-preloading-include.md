---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Allow Microsoft Edge to load the Start and New Tab pages in the background at Windows startup and each time Microsoft Edge is closed (aka: AllowStartAndNewTabPagePreload)  -->  
>*Supported versions: Microsoft Edge on Windows 10, version 1802*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-tab-preloading-shortdesc](../shortdesc/allow-tab-preloading-shortdesc.md)]

### Supported values

|                Group Policy                | MDM | Registry |                Description                |                 Most restricted                  |
|--------------------------------------------|:---:|:--------:|-------------------------------------------|:------------------------------------------------:|
|                  Disabled                  |  0  |    0     |                Prevented.                 | ![Most restricted value](../images/check-gn.png) |
| Enabled or not configured<br>**(default)** |  1  |    1     | Allowed. Preload Start and New Tab pages. |                                                  |

---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Microsoft Edge to load the Start and New Tab pages in the background at Windows startup and each time Microsoft Edge is closed
- **GP name:** AllowTabPreloading
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowTabPreloading](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowTabPreloading 
- **Data type:** Integer

#### Registry settings
- **Path:** HKCU\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main
- **Create Value name:** AllowPrelaunch
- **Value type:** REG_DWORD
- **DWORD Value:** 1

<hr>
