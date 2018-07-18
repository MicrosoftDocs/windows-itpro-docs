
<!-- Prevent users from turning on browser syncing
>*Supported versions: Microsoft Edge on Windows 10, next major version*<br>  -->
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
| Disabled or not configured (0 default) – Turned on. Let users make changes | Disabled (0 default) | Sync browser settings automatically. |
| Disabled or not configured (0 default) – Turned on. Let users make changes | Enabled or not configured (1) | Sync browser settings automatically. |
| Enabled (2) – Prevented/turned off  | Disabled (0 default) | Prevent syncing of browser settings and let users choose to turn it on. |
| Enabled (2) – Turned off | Enabled or not configured (1) | Prevent syncing of browser settings and prevents users from turning on syncing. |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent users from turning on browser syncing
- **GP name:** PreventUsersFromTurningOnBrowserSyncing
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Experience/[PreventUsersFromTurningOnBrowserSyncing](../new-policies.md#prevent-users-from-turning-on-browser-syncing)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Experience/PreventUsersFromTurningOnBrowserSyncing 
- **Data type:** String

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge 
- **Value name:** 
- **Value type:** 

### Related policies
[Do not sync browser settings](../available-policies.md#do-not-sync-browser-settings): [!INCLUDE [do-not-sync-browser-settings-shortdesc](../shortdesc/do-not-sync-browser-settings-shortdesc.md)].

### Related topics
[About sync setting on Microsoft Edge on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices)


<hr>