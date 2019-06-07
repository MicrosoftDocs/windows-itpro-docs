---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Configure Pop-up Blocker -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled (Turned off)*

[!INCLUDE [configure-pop-up-blocker-shortdesc](../shortdesc/configure-pop-up-blocker-shortdesc.md)]

### Supported values

|       Group Policy        |  MDM  | Registry |                   Description                   |                 Most restricted                  |
|---------------------------|:-----:|:--------:|-------------------------------------------------|:------------------------------------------------:|
|      Not configured       | Blank |  Blank   |     Users can choose to use Pop-up Blocker.     |                                                  |
| Disabled<br>**(default)** |   0   |    0     |    Turned off. Allow pop-up windows to open.    |                                                  |
|          Enabled          |   1   |    1     | Turned on. Prevent pop-up windows from opening. | ![Most restricted value](../images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Pop-up Blocker
- **GP name:** AllowPopups
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowPopups](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowpopups)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPopups 
- **Data type:** Integer

### Registry
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main
- **Value name:** AllowPopups
- **Value type:** REG_SZ

<hr>
