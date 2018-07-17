
<!-- Allow Prelaunch 
>*Supported versions: Microsoft Edge on Windows 10, next major version*<br>  -->
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-prelaunch-shortdesc](../shortdesc/allow-prelaunch-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented/not allowed |![Most restrictive value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Prelaunch
- **GP name:** AllowPreLaunch
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowPrelaunch](../new-policies.md#allow-prelaunch)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPrelaunch 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\ 
- **Value name:** AllowPrelaunch
- **Value type:** REG_DWORD

<hr>