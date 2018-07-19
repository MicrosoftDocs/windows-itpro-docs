<!-- ## Configure search suggestions in Address bar -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Not configured*

[!INCLUDE [configure-search-suggestions-in-address-bar-shortdesc](../shortdesc/configure-search-suggestions-in-address-bar-shortdesc.md)] 

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured<br>**(default)** |Blank |Blank |Users can choose to see search suggestions. | |
|Disabled |0 |0 |Prevented/not allowed. Hide the search suggestions. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Allowed. Show the search suggestions. | |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure search suggestions in Address bar
- **GP name:** AllowSearchSuggestionsinAddressBar
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowSearchSuggestionsinAddressBar](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowsearchsuggestionsinaddressbar)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSearchSuggestionsinAddressBar
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\SearchScopes
- **Value name:** ShowSearchSuggestionsGlobal
- **Value type:** REG_DWORD

<hr>