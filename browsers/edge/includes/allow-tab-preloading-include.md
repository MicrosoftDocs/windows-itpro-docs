<!-- ## Allow Microsoft Edge to start and load the Start and New Tab pages in the background at Windows startup and each time Microsoft Edge is closed (aka: AllowStartAndNewTabPagePreload)  -->  
>*Supported versions: Microsoft Edge on Windows 10, version 1802*<br> 
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-tab-preloading-shortdesc](../shortdesc/allow-tab-preloading-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Enabled or not configured<br>**(default)** |0 |0 |Allowed. Preload Start and New tab pages. | |
|Disabled |1 |1 |Prevented/not allowed. |![Most restricted value](../images/check-gn.png) |
---

### Configuration options

For more details about configuring the prelaunch and preload options, see [Prelaunch Microsoft Edge and preload tabs in the background](../group-policies/prelaunch-preload-gp.md).

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Microsoft Edge to start and load the Start and New Tab pages in the background at Windows startup and each time Microsoft Edge is closed
- **GP name:** AllowTabPreloading
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowTabPreloading](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowtabpreloading)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowTabPreloading 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader
- **Value name:** AllowTabPreloading
- **Value type:** REG_DWORD

<hr>
