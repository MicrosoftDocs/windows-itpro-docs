---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ## Configure Start Pages -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Blank or not configured (Load pages specified in App settings)*

[!INCLUDE [configure-start-pages-shortdesc](../shortdesc/configure-start-pages-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Not configured |Blank |Blank |Load the pages specified in App settings as the default Start pages. | 
|Enabled |String |String |Enter the URLs of the pages you want to load as the Start pages, separating each page using angle brackets:<p><p>&nbsp;&nbsp;&nbsp;&nbsp;\<support.contoso.com\>\<support.microsoft.com\><p>**Version 1703 or later:**<br>If you do not want to send traffic to Microsoft, use the \<about:blank\> value, which honors both domain and non-domain-joined devices when it's the only configured URL.<p>**Version 1809:**<br>When you enable the Configure Open Microsoft Edge With policy with any option selected, and you enable the Configure Start Pages policy, the Configure Open Microsoft Edge With policy takes precedence, ignoring the Configure Start Pages policy.  | 
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Start pages
- **GP name:** HomePages
- **GP element:** HomePagesPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[HomePages](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-homepages)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/HomePages
- **Data type:** String

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** ProvisionedHomePages
- **Value type:** REG_SZ


### Related policies

- [Disable Lockdown of Start Pages](#disable-lockdown-of-start-pages): [!INCLUDE [disable-lockdown-of-start-pages-shortdesc](../shortdesc/disable-lockdown-of-start-pages-shortdesc.md)]

- [Configure Open Microsoft Edge With](../available-policies.md#configure-open-microsoft-edge-with): [!INCLUDE [configure-open-microsoft-edge-with-shortdesc](../shortdesc/configure-open-microsoft-edge-with-shortdesc.md)]



<hr>
