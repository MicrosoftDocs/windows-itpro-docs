<!-- ##Configure Favorites Bar -->
>*Supported versions: Microsoft Edge on Windows 10, version 1810*<br>
>*Default setting:  Not configured (Hidden)*


[!INCLUDE [allow-favorites-bar-shortdesc](../shortdesc/configure-favorites-bar-shortdesc.md)]

If you want the favorites bar to show in kiosk mode, … \<action\>

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured<br>**(default)** |Blank |Blank |Hides the favorites bar but show it on the Start and New tab pages. The favorites bar toggle, in Settings, is set to Off but enabled allowing users to make changes. | |
|Disabled |0 |0 |Hides the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to Off and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu. | |
|Enabled |1 |1 |Shows the favorites bar on all pages. Also, the favorites bar toggle, in Settings, is set to On and disabled preventing users from making changes. Microsoft Edge also hides the “show bar/hide bar” option in the context menu. | |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Favorites Bar
- **GP name:** ConfigureFavoritesBar
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureFavoritesBar]()
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureFavoritesBar 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** ConfigureFavoritesBar
- **Value type:** REG_DWORD

### Scenarios

Chrome compete for enterprise policies. IT admin may want to have the bar always
show (perhaps with favorites provisioned via other policy), or to never show it
in their enterprise.

Kiosk mode scenario, where favorites bar is never needed; this policy then
allows the bar to be hidden and never seen. Alternatively, they may always want
to always show the bar, with helpful links for example.

As Commercial (Enterprise and EDU) organizations migrate to Windows 10 IT Admins
and IT Decision Makers are evaluating whether to set Edge as their default
browser. When making the decision they consider browser manageability and
configuration. Today Google Chrome provides a broader flexibility to configure
the browser via policies. With Edge positioned as the modern browser replacement
for IE, at minimum, they expect Edge to have the same level of policy support as
Google Chrome.

As a workaround to the lack of Edge policies IT Admins are directly editing the
registry to manipulate Edge. This practice is not recommended and has
potentially negative consequences that impact Edge reliability. Edge needs to
improve its policy story to help IT Admins easily configure it to meet their
organizations requirements.

<hr>