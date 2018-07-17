<!-- ## Allow Start and New Tab page preload (aka: AllowStartAndNewTabPagePreload) -->
>*Supported versions: Microsoft Edge on Windows 10, version 1802*<br>
>*Default setting:  Enabled or not configured (Allow preloading)*

[!INCLUDE [allow-tab-preloading-shortdesc](../shortdesc/allow-tab-preloading-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Enabled or not configured<br>**(default)** |0 |0 |Allow preloading of the Start and New Tab page. | |
|Disabled |1 |1 |Prevent/not allowed. |![Most restricted value](../images/check-gn.png) |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Start and New Tab page preload
- **GP name:** AllowTabPreloading
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowTabPreloading](../new-policies.md#allow-microsoft-edge-to-start-and-load-the-start-and-new-tab-page-at-windows-startup-and-each-time-microsoft-edge-is-closed)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowTabPreloading 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader
- **Value name:** AllowTabPreloading
- **Value type:** REG_DWORD

<hr>
