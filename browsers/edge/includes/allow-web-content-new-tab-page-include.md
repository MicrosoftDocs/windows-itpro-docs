<!-- ## Allow web content on New Tab page -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Enabled (Default New tab page loads)*


[!INCLUDE [allow-web-content-on-new-tab-page-shortdesc](../shortdesc/allow-web-content-on-new-tab-page-shortdesc.md)]


### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured |Blank |Blank |Users can choose what loads in the New tab page. | |
|Disabled |0 |0 |A blank page loads instead of the default New tab page and prevent users from changing it. | |
|Enabled **(default)** |1 |1 |Default New tab page loads. | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow web content on New Tab page
- **GP name:** AllowWebContentOnNewTabPage
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowWebContentOnNewTabPage]()
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowWebContentOnNewTabPage 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\ServiceUI
- **Value name:** AllowWebContentOnNewTabPage
- **Value type:** REG_DWORD

<hr>