---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.prod: edge
ms:topic: include
---

<!-- ## Configure additional search engines -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Disabled or not configured (Prevented)*

[!INCLUDE [configure-additional-search-engines-shortdesc](../shortdesc/configure-additional-search-engines-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Prevented. Use the search engine specified in App settings.<p><p>If you enabled this policy and now want to disable it, all previously configured search engines get removed. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Allowed. Add up to five additional search engines and set any one of them as the default.<p><p>For each search engine added you must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).  |  |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure additional search engines
- **GP name:** ConfigureAdditionalSearchEngines
- **GP element:** ConfigureAdditionalSearchEngines_Prompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureAdditionalSearchEngines](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-configureadditionalsearchengines)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\OpenSearch
- **Value name:** ConfigureAdditionalSearchEngines
- **Value type:** REG_SZ

### Related policies

- [Set default search engine](../available-policies.md\#set-default-search-engine): [!INCLUDE [set-default-search-engine-shortdesc](../shortdesc/set-default-search-engine-shortdesc.md)]

- [Allow search engine customization](../available-policies.md#allow-search-engine-customization): [!INCLUDE [allow-search-engine-customization-shortdesc](../shortdesc/allow-search-engine-customization-shortdesc.md)]


### Related topics

- [!INCLUDE [microsoft-browser-extension-policy-shortdesc](../shortdesc/microsoft-browser-extension-policy-shortdesc.md)]

- [Search provider discovery](https://docs.microsoft.com/microsoft-edge/dev-guide/browser/search-provider-discovery): Rich search integration is built into the Microsoft Edge address bar, including search suggestions, results from the web, your browsing history, and favorites. 

<hr>
