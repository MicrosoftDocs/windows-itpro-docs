---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Allow Developer Tools -->
>*Supported versions: Microsoft Edge on Windows 10, version 1511 or later*<br>
>*Default setting:  Enabled (Allowed)*

[!INCLUDE [allow-developer-tools-shortdesc](../shortdesc/allow-developer-tools-shortdesc.md)]


### Supported values

| Group Policy | MDM | Registry | Description |                 Most restricted                  |
|--------------|:---:|:--------:|-------------|:------------------------------------------------:|
|   Disabled   |  0  |    0     |  Prevented  | ![Most restricted value](../images/check-gn.png) |
|   Enabled    |  1  |    1     |   Allowed   |                                                  |

---


### ADMX info and settings

#### ADMX info
- **GP English name:**  Allow Developer Tools
- **GP name:**  AllowDeveloperTools
- **GP path:**  Windows Components/Microsoft Edge
- **GP ADMX file name:**  MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowDeveloperTools](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowdevelopertools)
- **Supported devices:** Desktop
- **URI full Path:**    ./Vendor/MSFT/Policy/Config/Browser/AllowDeveloperTools
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\F12
- **Value name:**   AllowDeveloperTools
- **Value type:** REG_DWORD

<hr>    
