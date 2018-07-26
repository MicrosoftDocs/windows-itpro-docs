
<!-- Allow Prelaunch 
>*Supported versions: Microsoft Edge on Windows 10, next major update to Windows*<br>  -->
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-prelaunch-shortdesc](../shortdesc/allow-prelaunch-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented/not allowed |![Most restrictive value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | |
---
### Configuration options

For more details about configuring the prelaunch and preload options, see [Prelaunch Microsoft Edge and preload tabs in the background](../group-policies/prelaunch-preload-gp.md).


### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Prelaunch
- **GP name:** AllowPreLaunch
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowPrelaunch](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowprelaunch)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowPrelaunch 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\ 
- **Value name:** AllowPrelaunch
- **Value type:** REG_DWORD

<hr>