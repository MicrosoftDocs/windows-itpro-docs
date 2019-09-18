---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Do not sync -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured (Allowed/turned on)*

[!INCLUDE [do-not-sync-shortdesc](../shortdesc/do-not-sync-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry |                                     Description                                      |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|--------------------------------------------------------------------------------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     |          Allowed/turned on. Users can choose what to sync to their device.           |                                                  |
|                   Enabled                   |  2  |    2     | Prevented/turned off. Disables the *Sync your Settings* toggle and prevents syncing. | ![Most restricted value](../images/check-gn.png) |

---

### ADMX info and settings
#### ADMX info
- **GP English name:** Do not sync
- **GP name:** AllowSyncMySettings
- **GP path:** Windows Components/Sync your settings
- **GP ADMX file name:** SettingSync.admx

#### MDM settings
- **MDM name:** Experience/[AllowSyncMySettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowsyncmysettings)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\Windows\SettingSync
- **Value name:** DisableSettingSyn
- **Value type:** REG_DWORD

### Related topics
[About sync setting on Microsoft Edge on Windows 10 devices](https://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices): Learn about what settings are synced.


<hr>
