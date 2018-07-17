
<!-- Prevent users from turning on browser syncing -->
>*Supported versions: Microsoft Edge on Windows 10*<br> 
>*Default setting:  Enabled or not configured (Prevented/turned off)*

[!INCLUDE [prevent-users-to-turn-on-browser-syncing-shortdesc](../shortdesc/prevent-users-to-turn-on-browser-syncing-shortdesc.md)]

### Allowed values
|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Allowed/turned on. Users can sync the browser settings.  | |
|Enabled or not configured<br>**(default)** |1 |1 |Prevented/turned off. | |
---

### Configuration options
<!-- put the grids in a document that categorizes the policies  -->
| **Do not sync browser settings** | **Prevent users from turning on browser syncing** | **Result** |
| --- | --- | --- |
| 0/disabled or not configured (default) – Turned on; users can make changes | 0/disabled (default) | Microsoft Edge syncs browser settings automatically. |
| 0/disabled or not configured (default) – Turned on; users can make changes | 1/enabled or not configured | Microsoft Edge syncs browser settings automatically. |
| 2/enabled – Prevented/turned off | 0/disabled (default) | Prevents syncing of browser setting, but gives users the choice to turn it on. |
| 2/enabled – Turned off | 1/enabled or not configured | Prevents browser setting sync and prevents users from turning on syncing. |
| 0/disabled or not configured (default) – Turned on; users can make changes | N/A | Turn on Sync your Settings option by default and allow users to make changes. |
---

#### If you want to prevent syncing of browser settings and prevent users from turning it on:
1. Enable the Do not sync browser settings policy.
2. Enable or don’t configure this policy (Prevented/turned off).

#### If you want to prevent syncing of browser settings and give users a choice to turn on syncing:
1. Enable the Do not sync browser settings policy.
2. Disable this policy (Allowed/turned on).

#### If you want syncing turned off by default but not disabled:
1. Enable the Do not sync browser setting policy.
2. Select the _Allow users to turn “browser” syncing_ option.

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent users from turning on browser syncing
- **GP name:** ???
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** ???.admx

#### MDM settings
- **MDM name:** Experience/[PreventUsersFromTurningOnBrowserSyncing]()
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/PreventUsersFromTurningOnBrowserSyncing 
- **Data type:** String

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\??? 
- **Value name:** ???
- **Value type:** REG_SZ

### Related policies
[Do not sync browser settings](../available-policies.md#do-not-sync-browser-settings): [!INCLUDE [do-not-sync-browser-settings-shortdesc](../shortdesc/do-not-sync-browser-settings-shortdesc.md)].

### Related topics
[About sync setting on Microsoft Edge on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices)


<hr>