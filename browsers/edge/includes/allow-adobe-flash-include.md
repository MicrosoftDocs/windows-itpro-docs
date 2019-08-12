---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpro
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Allow Adobe Flash -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-adobe-flash-shortdesc](../shortdesc/allow-adobe-flash-shortdesc.md)]

### Supported values

|     Group Policy      | MDM | Registry | Description |
|-----------------------|:---:|:--------:|-------------|
|       Disabled        |  0  |    0     |  Prevented  |
| Enabled **(default)** |  1  |    1     |   Allowed   |

--- 

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Adobe Flash
- **GP name:** AllowFlash
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowFlash](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser\#browser-allowflash)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFlash 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Addons 
- **Value name:** FlashPlayerEnabled
- **Value type:** REG_DWORD

<hr>
