<!-- ## Configure additional search engines -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Disabled or not configured (Not allowed)*

[!INCLUDE [configure-additional-search-engines-shortdesc](../shortdesc/configure-additional-search-engines-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |If you don't configure this policy, Microsoft Edge uses the search engine specified in App settings.<p>If you enabled this policy and now you want to disable it, disabling removes all configured search engines.|![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Add up to five additional search engines and set any one of them as the default.<p>For each search engine added you must specify a link to the OpenSearch XML file that contains, at a minimum, the short name and URL template (HTTPS) of the search engine.  For more information about creating the OpenSearch XML file, see [Search provider discovery](https://developer.microsoft.com/en-us/microsoft-edge/platform/documentation/dev-guide/browser/search-provider-discovery/).  | |
---

### Configuration combinations

| **Set default search engine** | **Allow search engine customization** | **Configure additional search engines** | **Results** |
| --- | --- | --- | --- |
| Not configured (default) | Disabled | Disabled or not configured (default) | Default search engine specified in App settings. Users cannot make changes. |
| Not configured (default) | Enabled or not configured (default) | Disabled or not configured (default) | Default search engine specified in App settings. Users can make changes to the default search engine at any time. |
| Not configured (default) | Disabled | Enabled | ??? |
| Not configured (default) | Enabled or not configured (default) | Enabled | ??? |
| Disabled | Disabled | Disabled or not configured (default) | Users cannot add, remove, or change any of the search engines, but they can set a default search engine. |
| Disabled | Enabled or not configured (default) | Disabled or not configured (default) | Users can add new search engines or change the default search engine, in Settings. |
| Enabled | Disabled | Disabled or not configured (default) | Set the default search engine preventing users from making changes. |
| Enabled | Enabled or not configured (default) | Disabled or not configured (default) | Set the default search engine and allow users to add search engines or make changes. |

#### If you want to use the default search engine in Apps settings and prevent users from making changes.


#### If you want to use the default search engine in Apps setting and let users make changes.


#### ???


#### ???


#### If you don't want users to add, remove, or change any of the search engines, but users can set a default search engine of their own.


#### If you want users to add new search engines or change the default in Settings.


#### If you want to set the default search engine and prevent users from making changes.  


#### If you want to set the default search engine and let users make changes. 



### ADMX info and settings
#### ADMX info
- **GP English name:** Configure additional search engines
- **GP name:** ConfigureAdditionalSearchEngines
- **GP element:** ConfigureAdditionalSearchEngines_Prompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureAdditionalSearchEngines](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-configureadditionalsearchengines)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureAdditionalSearchEngines 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\OpenSearch
- **Value name:** ConfigureAdditionalSearchEngines
- **Value type:** REG_SZ

### Related policies

- [Set default search engine](../available-policies.md\#set-default-search-engine): [!INCLUDE [set-default-search-engine-shortdesc](../shortdesc/set-default-search-engine-shortdesc.md)]

- [Allow search engine customization](../available-policies.md#allow-search-engine-customization): [!INCLUDE [allow-search-engine-customization-shortdesc](../shortdesc/allow-search-engine-customization-shortdesc.md)]


### Related topics

- [Microsoft browser extension policy](https://docs.microsoft.com/en-us/legal/windows/agreements/microsoft-browser-extension-policy): This document describes the supported mechanisms for extending or modifying the behavior or user experience of Microsoft Edge and Internet Explorer, or the content displayed by these browsers. Any technique not explicitly listed in this document is considered **unsupported**.

- [Search provider discovery](https://docs.microsoft.com/en-us/microsoft-edge/dev-guide/browser/search-provider-discovery): Rich search integration is built into the Microsoft Edge address bar, including search suggestions, results from the web, your browsing history, and favorites. 

<hr>