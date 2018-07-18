<!-- ## Allow search engine customization -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-search-engine-customization-shortdesc](../shortdesc/allow-search-engine-customization-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented/not allowed |![Most restricted value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | |
---


### Configuration combinations

| **Set default search engine** | **Allow search engine customization** | **Configure additional search engines** | **Outcome** |
| --- | --- | --- | --- |
| Not configured (default) | Disabled | Disabled or not configured (default) | Default search engine specified in App settings. Users cannot make changes. |
| Not configured (default) | Enabled or not configured (default) | Disabled or not configured (default) | Default search engine specified in App settings. Users can make changes to the default search engine at any time. |
| Disabled | Disabled | Disabled or not configured (default) | Users cannot add, remove, or change any of the search engines, but they can set a default search engine. |
| Disabled | Enabled or not configured (default) | Disabled or not configured (default) | Users can add new search engines or change the default search engine, in Settings. |
| Enabled | Disabled | Disabled or not configured (default) | Set the default search engine preventing users from making changes. |
| Enabled | Enabled or not configured (default) | Disabled or not configured (default) | Set the default search engine and allow users to add search engines or make changes. |
---

![Set default search engine](../images/set-default-search-engine.png)


### ADMX info and settings

##### ADMX info
- **GP English name:** Allow search engine customization
- **GP name:** AllowSearchEngineCustomization
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowSearchEngineCustomization](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchenginecustomization)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchEngineCustomization
- **Data type:** Integer


#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Protected
- **Value name:** AllowSearchEngineCustomization
- **Value type:** REG_DWORD


### Related policies

- [Set default search engine](../available-policies.md#set-default-search-engine): [!INCLUDE [set-default-search-engine-shortdesc](../shortdesc/set-default-search-engine-shortdesc.md)]

- [Configure additional search engines](../available-policies.md#configure-additional-search-engines): [!INCLUDE [configure-additional-search-engines-shortdesc](../shortdesc/configure-additional-search-engines-shortdesc.md)]

### Related topics
- [Microsoft browser extension policy](https://docs.microsoft.com/en-us/legal/windows/agreements/microsoft-browser-extension-policy): This document describes the supported mechanisms for extending or modifying the behavior or user experience of Microsoft Edge and Internet Explorer, or the content displayed by these browsers. Any technique not explicitly listed in this document is considered **unsupported**.

- [Search provider discovery](https://docs.microsoft.com/en-us/microsoft-edge/dev-guide/browser/search-provider-discovery): Rich search integration is built into the Microsoft Edge address bar, including search suggestions, results from the web, your browsing history, and favorites. 

<hr>