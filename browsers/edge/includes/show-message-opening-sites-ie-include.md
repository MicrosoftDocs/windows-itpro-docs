<!-- ## Show message when opening sites in Internet Explorer -->
>*Supported versions: Microsoft Edge on Windows 10, version 1607 and later*<br>
>*Default setting:  Disabled or not configured (No additional message)*

<!-- RS5 update: add option for showing interstitial page with stay in Edge link (Koch) -->
[!INCLUDE [show-message-when-opening-sites-in-ie-shortdesc](../shortdesc/show-message-when-opening-sites-in-ie-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |No additional message displays. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Shows an additional message stating that a site has opened in IE11. | |
|Enabled |2 |2 |Shows an additional message with a "Keep going in Microsoft Edge" link. | |
---

### Configuration combinations

| **Show message when opening sites in Internet Explorer** | **Configure the Enterprise Mode Site List** | **Send all intranet sites to Internet Explorer, or both.** | **Results** |
| --- | --- | --- | --- |
| Disabled or not configured (default) | Disabled or not configured (default) | Disabled or not configured (default) |   |
| Disabled or not configured | Disabled or not configured (default) | Enabled (only intranet sites open in IE11) |   |
| Disabled or not configured | Enabled (turned on) | Disabled or not configured (default) |   |
| Disabled or not configured | Enabled (turned on) | Enabled (only intranet sites open in IE11) |   |
| Enabled (shows an additional message) | Disabled or not configured (default) | Disabled or not configured (default) |   |
| Enabled (shows an additional message) | Enabled (turned on) | Disabled or not configured (default) |   |
| Enabled (shows an additional message) | Enabled (turned on) | Enabled (only intranet sites open in IE11) |   |
| Enabled (shows an additional message) | Disabled or not configured (default) | Enabled (only intranet sites open in IE11) |   |
| Enabled (shows the Keep going link) | Disabled or not configured (default) | Disabled or not configured (default) |   |
| Enabled (shows the Keep going link) | Enabled (turned on) | Disabled or not configured (default) |   |
| Enabled (shows the Keep going link) | Enabled (turned on) | Enabled (only intranet sites open in IE11) |   |
| Enabled (shows the Keep going link) | Disabled or not configured (default) | Enabled (only intranet sites open in IE11) |   |
---


### ADMX info and settings
#### ADMX info 
- **GP English name:** Show message when opening sites in Internet Explorer 
- **GP name:** ShowMessageWhenOpeningSitesInInternetExplorer
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ShowMessageWhenOpeningSitesInInternetExplorer](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-showmessagewhenopeningsitesininternetexplorer)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ShowMessageWhenOpeningSitesInInternetExplorer
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main
- **Value name:** ShowMessageWhenOpeningSitesInInternetExplorer
- **Value type:** REG_DWORD

### Related policies

- [Configure the Enterprise Mode Site List](../available-policies.md#configure-the-enterprise-mode-site-list): [!INCLUDE [configure-enterprise-mode-site-list-shortdesc](../shortdesc/configure-enterprise-mode-site-list-shortdesc.md)]

- [Send all intranet sites to Internet Explorer 11](../available-policies.md#send-all-intranet-sites-to-internet-explorer-11): [!INCLUDE [send-all-intranet-sites-to-ie-shortdesc](../shortdesc/send-all-intranet-sites-to-ie-shortdesc.md)]

### Scenarios

Customer has all Intranet sites redirect from Edge to IE, and as website owners find their sites no longer require IE, they override the setting for that specific site to no longer redirect it to IE.

As part of this, we have a GPO in place for our website owners to not hide the page Edge displays saying they were redirected.  Before the Fall Creators Update, that page looked something like this:

Note the option to “Keep going in Microsoft Edge” at the bottom which would allow our website owners to be able to continue to their site in Edge to test.
 
Meaning that our website owners can no longer test their websites in Edge due to our GPO redirecting all internal sites to IE.  So now they can’t test to let us know if their site will work in Edge.   Is this by design?  If so, is there a work around that Microsoft would suggest for our users? 

<hr>