<!-- ## Set New Tab page URL -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured (Blank)*

[!INCLUDE [set-new-tab-url-shortdesc](../shortdesc/set-new-tab-url-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |Blank |Blank |Microsoft Edge loads the default New tab page. | |
|Enabled - String |String |String |Enter a URL in string format, for example, https://www.msn.com. A custom URL loads for the New tab page. When you enable this policy and disable the Allow web content on New tab page policy, Microsoft Edge opens about:blank.  | |
---

### Configuration combinations

| **Set New Tab page URL** | **Allow web content on New tab page** | **Results** |
| --- | --- | --- |
| Enabled – String | Enabled (default) |   |
| Enabled – String | Disabled | A blank page loads instead of the default New tab page. |
| Enabled – String | Not configured |   |
| Disabled or not configured (default) | Enabled (default) |   |
| Disabled or not configured (default) | Disabled |   |
| Disabled or not configured (default) | Not configured |   |

### ADMX info and settings
#### ADMX info
- **GP English name:** Set New Tab page URL
- **GP name:** SetNewTabPageURL
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SetNewTabPageURL]()
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetNewTabPageURL 
- **Data type:** String

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings 
- **Value name:** NewTabPageUR
- **Value type:** REG_SZ


### Related policies

[Allow web content on New Tab page](https://docs.microsoft.com/en-us/microsoft-edge/deploy/available-policies#allow-web-content-on-new-tab-page):  [!INCLUDE [allow-web-content-on-new-tab-page-shortdesc](../shortdesc/allow-web-content-on-new-tab-page-shortdesc.md)]

<hr>