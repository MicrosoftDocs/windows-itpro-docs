<!-- Configure Open Microsoft Edge With -->

>*Supported versions: Microsoft Edge on Windows 10, next major version*<br>
>*Default setting:  Enabled (A specific page or pages)*

[!INCLUDE [configure-open-microsoft-edge-with-shortdesc](../shortdesc/configure-open-microsoft-edge-with-shortdesc.md)]

**Version 1703 or later:**<br>If you don't want to send traffic to Microsoft, use the \<about:blank\> value, which honors both domain and non domain-joined devices when it's the only configured URL.

**Version 1810:**<br>When you enable this policy and select an option, and also enable the Configure Start Pages policy, Microsoft Edge ignores the Configure Start Page policy.<p>

### Allowed values

|Group Policy  |MDM |Registry |Description |
|---|---|---|---|
|Not configured |Blank |Blank |If you don't configure this policy and you enable the Disable Lockdown of Start Pages policy, users can change or customize the Start page. |
|Enabled |0 |0 |Loads the Start page. |
|Enabled |1 |1 |Load the New tab page. |
|Enabled |2 |2 |Load the previous pages. |
|Enabled<br>**(default)** |3 |3 |Load a specific page or pages. |
---

### Configuration combinations
| **Configure Open Microsoft Edge With** | **Configure Start Pages** | **Disabled Lockdown of Start Pages** | **Results** |
| --- | --- | --- | --- |
| Enabled (applies to all options) | Enabled – String | Enabled (all configured start pages are editable) | Load URLs defined in the Configure Open Microsoft Edge With policy, and allow users to make changes. |
| Disabled or not configured | Enabled – String | Enabled (any Start page configured in the Configured Start Pages policy) |  Load any start page and let users make changes .|
| Enabled (Start page) | Enabled – String | Blank or not configured | Load Start page(s) and prevent users from making changes. |
| Enabled (New tab page) | Enabled – String | Blank or not configured | Load New tab page and prevent users from making changes. |
| Enabled (Previous pages) | Enabled – String | Blank or not configured | Load previously opened pages and prevent users from making changes. |
| Enabled (A specific page or pages) | Enabled – String | Blank or not configured | Load a specific page or pages and prevent users from making changes. |
| Enabled (A specific page or pages) | Enabled – String | Enabled (any Start page configured in Configure Start Pages policy) | Load a specific page or pages and let users make changes. |
---


If you want to make changes to this policy:<ol><li>Set the Disabled Lockdown of Start Pages to not configured.</li><li>Make changes to the Configure Open Microsoft With policy.</li><li>Enable the Disabled Lockdown of Start Pages.</li></ol>

#### Load URLs defined in the Configure Open Microsoft Edge With policy, and let users make changes.

1. Enable the **Configure Open Microsoft Edge With** policy. Applies to all options for this policy. <p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Enable the **Disabled Lockdown of Start Pages** policy by selecting *All configured start pages are editable*.

---

#### Load any start page and let users make changes.

1. Disable or don't configure the **Configure Open Microsoft Edge With** policy.

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets in the following format:<p> \<support.contoso.com\>\<support.microsoft.com\>

3. Enable the **Disabled Lockdown of Start Pages** policy by selecting *Start pages are not editable*.

---

#### Load Start page(s) and prevent users from making changes.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *Start page*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---

#### Load New tab page and prevent users from making changes.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *New tab page*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---

#### Load previously opened pages and prevent users from making changes.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *Previous pages*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---

#### Load a specific page or pages and prevent users from making changes.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *A specific page or pages*.<p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Disable or don't configure the **Disabled Lockdown of Start Pages** policy.

---

#### Load a specific page or pages and let users make changes.

1. Enable the **Configure Open Microsoft Edge With** policy by selecting *A specific page or pages*. <p>

2. In the **Configure Start Pages** policy, enter URLs to the pages, separating multiple pages by using angle brackets:<p>\<support.contoso.com\>\<support.microsoft.com\>

3. Enable **Disabled Lockdown of Start Pages** by selecting *Start pages are not editable*.


### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Open Microsoft Edge With
- **GP name:** ConfigureOpenMicrosoftEdgeWith
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureOpenEdgeWith](../new-policies.md#configure-open-microsoft-edge-with)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureOpenEdgeWith
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** ConfigureOpenEdgeWith
- **Value type:** REG_DWORD

### Related policies

- [Configure Start Pages](../new-policies.md#configure-start-pages-include): [!INCLUDE [configure-start-pages-shortdesc](../shortdesc/configure-start-pages-shortdesc.md)]

- [Disable Lockdown of Start Pages](../new-policies.md#disable-lockdown-of-start-pages-include): [!INCLUDE [disable-lockdown-of-start-pages-shortdesc](../shortdesc/disable-lockdown-of-start-pages-shortdesc.md)]

### Scenarios



---