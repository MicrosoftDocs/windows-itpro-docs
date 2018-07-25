<!-- ##Configure Favorites Bar --> 
>*Supported versions: Microsoft Edge on Windows 10, new major release*<br>  
>*Default setting:  Not configured (Hidden)*


[!INCLUDE [allow-favorites-bar-shortdesc](../shortdesc/configure-favorites-bar-shortdesc.md)]


### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Not configured<br>**(default)** |Blank |Blank |Hide the favorites bar but show it on the Start and New tab pages. The favorites bar toggle, in Settings, is set to Off but enabled allowing users to make changes. | 
|Disabled |0 |0 |Hide the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to Off and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu. | 
|Enabled |1 |1 |Show the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to On and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu. | 
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Favorites Bar
- **GP name:** ConfigureFavoritesBar
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureFavoritesBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configurefavoritesbar)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureFavoritesBar 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** ConfigureFavoritesBar
- **Value type:** REG_DWORD

<hr>