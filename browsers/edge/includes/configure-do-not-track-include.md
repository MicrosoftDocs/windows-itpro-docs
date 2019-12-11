---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Configure Do Not Track -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Not configured (Do not send tracking information)*

[!INCLUDE [configure-do-not-track-shortdesc](../shortdesc/configure-do-not-track-shortdesc.md)]

### Supported values

|          Group Policy           |  MDM  | Registry |                                               Description                                               |                 Most restricted                  |
|---------------------------------|:-----:|:--------:|---------------------------------------------------------------------------------------------------------|:------------------------------------------------:|
| Not configured<br>**(default)** | Blank |  Blank   | Do not send tracking information but let users choose to send tracking information to sites they visit. |                                                  |
|            Disabled             |   0   |    0     |                                    Never send tracking information.                                     |                                                  |
|             Enabled             |   1   |    1     |                                       Send tracking information.                                        | ![Most restricted value](../images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Do Not Track
- **GP name:** AllowDoNotTrack
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowDoNotTrack](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowdonottrack)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main
- **Value name:** DoNotTrack
- **Value type:** REG_DWORD

<hr>
