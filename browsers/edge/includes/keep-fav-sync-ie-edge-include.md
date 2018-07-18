<!-- ## Keep favorites in sync between Internet Explorer and Microsoft Edge -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Disabled or not configured (Turned off/not syncing)*

[!INCLUDE [keep-favorites-in-sync-between-ie-and-edge-shortdesc](../shortdesc/keep-favorites-in-sync-between-ie-and-edge-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Turned off/not syncing. | |
|Enabled |1 |1 |Turned on/syncing.  |![Most restricted value](../images/check-gn.png) |
---

### Configuration combinations
### Configuration combinations
| **Keep favorites in sync between IE and Microsoft Edge** | **Provision Favorites** | **Outcome** |
| --- | --- | --- |
| Disabled or not configured (default) | Disabled or not configured (default) | **Turned off/not syncing**. Microsoft Edge prevents users from syncing their favorites. |
| Enabled (turned on/syncing) | Disabled or not configured (default) | **Turned on/syncing**. Syncs favorites between Internet Explorer and Microsoft Edge. |
| Enabled (turned on/syncing) | Enabled (provision list of favorites) | **Turned off/not syncing**. Microsoft Edge prevents users from syncing their favorites. |
| Disabled or not configured (default) | Enabled (provision list of Favorites) | **Turned on/syncing**. Syncs favorites between Internet Explorer and Microsoft Edge. |
---

### ADMX info and settings
### ADMX info
- **GP English name:** Keep favorites in sync between Internet Explorer and Microsoft Edge 
- **GP name:** SyncFavoritesBetweenIEAndMicrosoftEdge
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SyncFavoritesBetweenIEAndMicrosoftEdge](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-syncfavoritesbetweenieandmicrosoftedge)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SyncFavoritesBetweenIEAndMicrosoftEdge 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** SyncFavoritesBetweenIEAndMicrosoftEdge
- **Value type:** REG_DWORD

<hr>