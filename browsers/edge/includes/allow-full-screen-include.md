<!-- ## Allow fullscreen mode 
>*Supported versions: Microsoft Edge on Windows 10, next major version*<br> -->
>*Default setting:  Enabled or not configured (Allowed)*


[!INCLUDE [allow-fullscreen-mode-shortdesc](../shortdesc/allow-fullscreen-mode-shortdesc.md)]  

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented/not allowed |![Most restricted value](../images/check-gn.png) |
|Enabled<br>**(default)** |1 |1 |Allowed | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow fullscreen mode
- **GP name:** AllowFullScreenMode
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowFullscreen](../new-policies.md#allow-fullscreen-mode)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowFullscreen 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Main 
- **Value name:** AllowFullScreenMode
- **Value type:** REG_DWORD

<hr>
