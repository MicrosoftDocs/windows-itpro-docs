---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Configure Password Manager -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Enabled (Allowed/users can change the setting)*

[!INCLUDE [configure-password-manager-shortdesc](../shortdesc/configure-password-manager-shortdesc.md)]

### Supported values

|       Group Policy       |  MDM  | Registry |                      Description                       |                 Most restricted                  |
|--------------------------|:-----:|:--------:|--------------------------------------------------------|:------------------------------------------------:|
|      Not configured      | Blank |  Blank   | Users can choose to save and manage passwords locally. |                                                  |
|         Disabled         |   0   |    no    |                      Not allowed.                      | ![Most restricted value](../images/check-gn.png) |
| Enabled<br>**(default)** |   1   |   yes    |                        Allowed.                        |                                                  |

---

Verify not allowed/disabled settings:
1. Click or tap **More** (…) and select **Settings** > **View Advanced settings**.
2. Verify the settings **Save Password** is toggled off or on and is greyed out.

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Password Manager
- **GP name:** AllowPasswordManager
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowPasswordManager](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-allowpasswordmanager)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPasswordManager 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main 
- **Value name:** FormSuggest Passwords
- **Value type:** REG_SZ

<hr>
