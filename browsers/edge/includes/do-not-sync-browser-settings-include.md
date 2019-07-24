---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Do not sync browser settings  -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured (Allowed/turned on)*

[!INCLUDE [do-not-sync-browser-settings-shortdesc](../shortdesc/do-not-sync-browser-settings-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry |                                                    Description                                                    |
|---------------------------------------------|:---:|:--------:|-------------------------------------------------------------------------------------------------------------------|
| Disabled or not configured<br>**(default)** |  0  |    0     | Allowed/turned on. The “browser” group syncs automatically between user’s devices and lets users to make changes. |
|                   Enabled                   |  2  |    2     |             Prevented/turned off.  The “browser” group does not use the *Sync your Settings* option.              |

---


### ADMX info and settings
#### ADMX info
- **GP English name:** Do not sync browser settings
- **GP name:** DisableWebBrowserSettingSync
- **GP path:** Windows Components/Sync your settings
- **GP ADMX file name:** SettingSync.admx

#### MDM settings
- **MDM name:** [Experience/DoNotSyncBrowserSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-donotsyncbrowsersetting)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/DoNotSyncBrowserSettings
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\Policies\Microsoft\Windows\SettingSync
- **Value name:** DisableWebBrowserSettingSyncUserOverride
- **Value

### Related policies

[Prevent users from turning on browser syncing](../available-policies.md#prevent-users-from-turning-on-browser-syncing): [!INCLUDE [prevent-users-to-turn-on-browser-syncing-shortdesc](../shortdesc/prevent-users-to-turn-on-browser-syncing-shortdesc.md)]



### Related topics

[About sync setting on Microsoft Edge on Windows 10 devices](https://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices)
<p><p>
<hr>
