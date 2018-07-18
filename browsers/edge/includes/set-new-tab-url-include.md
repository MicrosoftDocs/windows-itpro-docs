<!-- ## Set New Tab page URL
>*Supported versions: Microsoft Edge on Windows 10, next major version*<br> -->
>*Default setting:  Disabled or not configured (Blank)*

[!INCLUDE [set-new-tab-url-shortdesc](../shortdesc/set-new-tab-url-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |Blank |Blank |Load the default New tab page. |
|Enabled - String |String |String |Enter a URL in string format, for example, https://www.msn.com.<p>Prevent users from changing the New tab page. |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Set New Tab page URL
- **GP name:** SetNewTabPageURL
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SetNewTabPageURL](../new-policies.md#set-new-tab-page-url)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetNewTabPageURL 
- **Data type:** String

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings 
- **Value name:** NewTabPageUR
- **Value type:** REG_SZ


### Related policies

[Allow web content on New Tab page](../new-policies.md#allowwebcontentonnewtabpage):  [!INCLUDE [allow-web-content-on-new-tab-page-shortdesc](../shortdesc/allow-web-content-on-new-tab-page-shortdesc.md)]


<hr>