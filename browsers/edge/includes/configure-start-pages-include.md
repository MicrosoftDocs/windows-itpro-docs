<!-- ## Configure Start Pages -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Blank or not configured (Load pages specified in App settings)*

[!INCLUDE [configure-start-pages-shortdesc](../shortdesc/configure-start-pages-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured |Blank |Blank |Microsoft Edge loads the pages specified in App settings as the default Start pages. | |
|Enabled | | |Enter URLs to the pages, separating multiple pages by using angle brackets in the following format:<p>\<support.contoso.com\>\<support.microsoft.com\><p>**Version 1703 or later:**<br>If you do not want to send traffic to Microsoft, use the \<about:blank\> value, which honors both domain and non-domain-joined devices when it is the only configured URL.<p>**Version 1810:**<br>When you enable the Configure Open Microsoft Edge With policy with an option selected, and you enable the Configure Start Pages policy, Microsoft Edge ignores the Configure Start Page policy. | |
---

### Configuration combinations
| **Configure Open Microsoft Edge With** | **Configure Start Pages** | **Disabled Lockdown of Start Pages** | **Outcome** |
| --- | --- | --- | --- |
| Enabled (applies to all options) | Enabled – String | Enabled (all configured start pages are editable) | [\#1: Load URLs defined in the Configure Open Microsoft Edge With policy, and allow users to edit all configured start pages.](#1-load-the-urls-defined-in-the-configure-open-microsoft-edge-with-policy-and-allow-users-to-edit-all-configured-start-pages) |
| Disabled or not configured | Enabled – String | Enabled (any Start page configured in the Configured Start Pages policy) | [\#2: Load any start page and allow users to edit their Start pages.](#2-load-any-start-page-configured-using-the-configured-start-pages-policy-and-allow-users-to-edit-their-start-pages) |
| Enabled (Start page) | Enabled – String | Blank or not configured | [\#3: Load Start page(s) and prevent users from changing it.](#3-load-the-start-pages-and-prevent-users-from-making-changes) |
| Enabled (New tab page) | Enabled – String | Blank or not configured | [\#4: Load New tab page and prevent users from changing it.](#4-load-the-new-tab-page-and-prevent-users-from-making-changes) |
| Enabled (Previous pages) | Enabled – String | Blank or not configured | [\#5: Load previously opened pages and prevent users from changing it.](#5-load-the-previously-opened-pages-that-were-opened-when-microsoft-edge-last-closed-and-prevent-users-from-making-changes) |
| Enabled (A specific page or pages) | Enabled – String | Blank or not configured | [\#6: Load a specific page or pages and prevent users from changing it.](#6-load-a-specific-page-or-pages-defined-in-the-configure-start-pages-policy-and-prevent-users-from-making-changes) |
| Enabled (A specific page or pages) | Enabled – String | Enabled (any Start page configured in Configure Start Pages policy) | [\#7: Load a specific page or pages and allow users to make changes to their Start page.](#7-load-a-specific-page-or-pages-defined-in-the-configure-start-pages-policy-and-allow-users-to-make-changes-to-their-start-page) |
| N/A | Blank or not configured | N/A | Microsoft Edge loads the pages specified in App settings as the default Start pages. |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Start pages
- **GP name:** HomePages
- **GP element:** HomePagesPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[HomePages](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-homepages)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/HomePages
- **Data type:** String

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** ProvisionedHomePages
- **Value type:** REG_SZ


### Related policies

- [Disable Lockdown of Start Pages](#disable-lockdown-of-start-pages-include): [!INCLUDE [disable-lockdown-of-start-pages-shortdesc](../shortdesc/disable-lockdown-of-start-pages-shortdesc.md)]

- [Configure Start Pages](#configure-start-pages-include): [!INCLUDE [configure-start-pages-shortdesc](../shortdesc/configure-start-pages-shortdesc.md)]

### Scenarios

#### \#1: Load URLs defined in the Configure Open Microsoft Edge With policy, and allow users to edit all configured start pages.

1. Enable the **Configure Open Microsoft Edge With** policy. Applies to all options for this policy. <p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Enable the **Disabled Lockdown of Start Pages** policy by selecting *All configured start pages are editable*.

---

#### \#2: Load any start page and allow users to edit their Start pages.

1. Disable or don't configure the **Configure Open Microsoft Edge With** policy.

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets in the following format:<p> \<support.contoso.com\>\<support.microsoft.com\>

3. Enable the **Disabled Lockdown of Start Pages** policy by selecting *Start pages are not editable*.

---

#### \#3: Load Start page(s) and prevent users from changing it.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *Start page*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---

#### \#4: Load New tab page and prevent users from changing it..

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *New tab page*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---


#### \#5: Load previously opened pages and prevent users from changing it.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *Previous pages*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---


#### \#6: Load a specific page or pages and prevent users from changing it.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *A specific page or pages*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---


#### \#7: Load a specific page or pages and allow users to make changes to their Start page.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *A specific page or pages*. <p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Enable **Disabled Lockdown of Start Pages** by selecting *Start pages are not editable*.

---

<hr>