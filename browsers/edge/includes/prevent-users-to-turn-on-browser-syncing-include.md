---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- Prevent users from turning on browser syncing -->
>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Enabled or not configured (Prevented/turned off)*

[!INCLUDE [prevent-users-to-turn-on-browser-syncing-shortdesc](../shortdesc/prevent-users-to-turn-on-browser-syncing-shortdesc.md)]

### Supported values
|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled |0 |0 |Allowed/turned on. Users can sync the browser settings.  |
|Enabled or not configured<br>**(default)** |1 |1 |Prevented/turned off. |
---


### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent users from turning on browser syncing
- **GP name:** PreventUsersFromTurningOnBrowserSyncing
- **GP path:** Windows Components/Sync your settings
- **GP ADMX file name:** SettingSync.admx

#### MDM settings
- **MDM name:** Experience/[PreventUsersFromTurningOnBrowserSyncing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-preventusersfromturningonbrowsersyncing)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/PreventUsersFromTurningOnBrowserSyncing
- **Data type:** String


### Related policies
[Do not sync browser settings](../available-policies.md#do-not-sync-browser-settings): [!INCLUDE [do-not-sync-browser-settings-shortdesc](../shortdesc/do-not-sync-browser-settings-shortdesc.md)].

### Related topics
[About sync setting on Microsoft Edge on Windows 10 devices](https://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices)


<hr>
