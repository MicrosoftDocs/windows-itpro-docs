---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
audience: itpromanager: dansimp
ms.prod: edge
ms.topic: include
---

<!-- ## Set default search engine -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Not configured (Defined in App settings)*

[!INCLUDE [set-default-search-engine-shortdesc](../shortdesc/set-default-search-engine-shortdesc.md)]

### Supported values

|          Group Policy           |  MDM  | Registry |                                                                                                                                                                                                                                                                                                                                                                           Description                                                                                                                                                                                                                                                                                                                                                                           |                 Most restricted                  |
|---------------------------------|:-----:|:--------:|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------:|
| Not configured<br>**(default)** | Blank |  Blank   |                                                                                                                                                                                                                                                Use the search engine specified in App settings. If you don't configure this policy and disable the [Allow search engine customization](../group-policies/search-engine-customization-gp.md#allow-search-engine-customization) policy, users cannot make changes.                                                                                                                                                                                                                                                |                                                  |
|            Disabled             |   0   |    0     |                                                                                                                                                                                                                                                                                                                     Remove or don't use the policy-set search engine and use the search engine for the market, letting users make changes.                                                                                                                                                                                                                                                                                                                      |                                                  |
|             Enabled             |   1   |    1     | Use the policy-set search engine specified in the OpenSearch XML file, preventing users from making changes.<p><p>Specify a link to the OpenSearch XML file that contains, at a minimum, the short name and the URL template (HTTPS) of the search engine. For more information about creating the OpenSearch XML file, see [Search provider discovery](https://docs.microsoft.com/microsoft-edge/dev-guide/browser/search-provider-discovery). Use this format to specify the link you want to add.<p><p>If you want your users to use the default Microsoft Edge settings for each market, then set the string to **EDGEDEFAULT**.<p><p>If you would like your users to use Microsoft Bing as the default search engine, then set the string to **EDGEBING**. | ![Most restricted value](../images/check-gn.png) |

---



### ADMX info and settings
#### ADMX info
- **GP English name:** Set default search engine 
- **GP name:** SetDefaultSearchEngine
- **GP element:** SetDefaultSearchEngine_Prompt 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** [SetDefaultSearchEngine](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-setdefaultsearchengine)
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

- [!INCLUDE [microsoft-browser-extension-policy-shortdesc](../shortdesc/microsoft-browser-extension-policy-shortdesc.md)]

- [Search provider discovery](https://docs.microsoft.com/microsoft-edge/dev-guide/browser/search-provider-discovery): The Microsoft Edge address bar uses rich search integration, including search suggestions, results from the web, your browsing history, and favorites.

<hr>
