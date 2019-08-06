---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Prevent certificate error overrides --> 

>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Disabled or not configured (Allowed/turned off)*

[!INCLUDE [prevent-certificate-error-overrides-shortdesc](../shortdesc/prevent-certificate-error-overrides-shortdesc.md)]

|                Group Policy                 | MDM | Registry |                                   Description                                   |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|---------------------------------------------------------------------------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     | Allowed/turned on. Override the security warning to sites that have SSL errors. |                                                  |
|                   Enabled                   |  1  |    1     |                              Prevented/turned on.                               | ![Most restricted value](../images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent certificate error overrides
- **GP name:** PreventCertErrorOverrides
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[PreventCertErrorOverrides](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventcerterroroverrides)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventCertErrorOverrides 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Setting
- **Value name:** PreventCertErrorOverrides
- **Value type:** REG_DWORD

<hr>
