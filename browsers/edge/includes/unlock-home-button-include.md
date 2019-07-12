---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Unlock Home Button -->  
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting: Disabled or not configured (Home button is locked)*

[!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry |                  Description                  |
|---------------------------------------------|:---:|:--------:|-----------------------------------------------|
| Disabled or not configured<br>**(default)** |  0  |    0     | Locked, preventing users from making changes. |
|                   Enabled                   |  1  |    1     |     Unlocked, letting users make changes.     |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Unlock Home Button
- **GP name:** UnlockHomeButton
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[UnlockHomeButton](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/UnlockHomeButton
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** UnlockHomeButton
- **Value type:** REG_DWORD

### Related policies

- [Configure Home Button](../available-policies.md#configure-home-button): [!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)] 

- [Set Home Button URL](../available-policies.md#set-home-button-url): [!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]


<hr>
