<!-- ## Set default search engine -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Not configured (Defined in App settings)*

[!INCLUDE [set-default-search-engine-shortdesc](../shortdesc/set-default-search-engine-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured<br>**(default)** |Blank |Blank |Microsoft Edge uses the default search engine specified in App settings. If you don't configure this policy and disable the [Allow search engine customization](#allow-search-engine-customization-include) policy, users cannot make changes. | |
|Disabled |0 |0 |Microsoft Edge removes the policy-set search engine and uses the Microsoft Edge specified engine for the market. | |
|Enabled |1 |1 |Microsoft Edge uses the policy-set search engine specified in the OpenSearch XML file. Users cannot change the default search engine.<p><p>Specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://docs.microsoft.com/en-us/microsoft-edge/dev-guide/browser/search-provider-discovery). Use this format to specify the link you want to add.<p><p>If you want users to use the default Microsoft Edge settings for each market set the string to **EDGEDEFAULT**.<p><p>If you would like users to use Microsoft Bing as the default search engine set the string to **EDGEBING**. |![Most restricted value](../images/check-gn.png) |
---


### Configuration options

For more details about configuring the search engine, see [Search engine customization](../group-policies/search-engine-customization-gp.md).

### ADMX info and settings
#### ADMX info
- **GP English name:** Set default search engine 
- **GP name:** SetDefaultSearchEngine
- **GP element:** SetDefaultSearchEngine_Prompt 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** [SetDefaultSearchEngine](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-setdefaultsearchengine)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetDefaultSearchEngine 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\OpenSearch
- **Value name:** SetDefaultSearchEngine
- **Value type:** REG_SZ

### Related policies

- [Configure additional search engines](../available-policies.md#configure-additional-search-engines): [!INCLUDE [configure-additional-search-engines-shortdesc](../shortdesc/configure-additional-search-engines-shortdesc.md)]

- [Allow search engine customization](../available-policies.md#allow-search-engine-customization): [!INCLUDE [allow-search-engine-customization-shortdesc](../shortdesc/allow-search-engine-customization-shortdesc.md)]

### Related topics

- [Microsoft browser extension policy](https://docs.microsoft.com/en-us/legal/windows/agreements/microsoft-browser-extension-policy): This document describes the supported mechanisms for extending or modifying the behavior or user experience of Microsoft Edge and Internet Explorer, or the content displayed by these browsers. Any technique not explicitly listed in this document is considered **unsupported**.

- [Search provider discovery](https://docs.microsoft.com/en-us/microsoft-edge/dev-guide/browser/search-provider-discovery): Rich search integration is built into the Microsoft Edge address bar, including search suggestions, results from the web, your browsing history, and favorites. 

<hr>