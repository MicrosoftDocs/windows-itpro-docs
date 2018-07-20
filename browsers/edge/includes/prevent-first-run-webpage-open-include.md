<!-- ## Prevent the First Run webpage from opening on Microsoft Edge -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Disabled or not configured (Allowed)*

[!INCLUDE [prevent-first-run-webpage-from-opening-shortdesc](../shortdesc/prevent-first-run-webpage-from-opening-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Allowed. Microsoft Edge loads the welcome page. | |
|Enabled |1 |1 |Prevented. |![Most restricted value](../images/check-gn.png) |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent the First Run webpage from opening on Microsoft Edge
- **GP name:** PreventFirstRunPage
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[PreventFirstRunPage](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-preventfirstrunpage)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventFirstRunPage 
- **Data type:** Integer

####Registry
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** PreventFirstRunPage
- **Value type:** REG_DWORD

<hr>