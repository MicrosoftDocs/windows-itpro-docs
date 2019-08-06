---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed -->

>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-prelaunch-shortdesc](../shortdesc/allow-prelaunch-shortdesc.md)]

### Supported values

|                Group Policy                | MDM | Registry | Description |                  Most restricted                  |
|--------------------------------------------|:---:|:--------:|-------------|:-------------------------------------------------:|
|                  Disabled                  |  0  |    0     |  Prevented  | ![Most restrictive value](../images/check-gn.png) |
| Enabled or not configured<br>**(default)** |  1  |    1     |   Allowed   |                                                   |

---


### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Microsoft Edge to pre-launch at Windows startup, when the system is idle, and each time Microsoft Edge is closed
- **GP name:** AllowPreLaunch
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowPrelaunch](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPrelaunch 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main 
- **Value name:** AllowPrelaunch
- **Value type:** REG_DWORD

<hr>
