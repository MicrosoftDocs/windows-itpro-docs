<!-- ## Allow Extensions -->
>*Supported versions: Microsoft Edge on Windows 10, version 1607 or later*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-extensions-shortdesc](../shortdesc/allow-extensions-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled |0 |0 |Prevented/not allowed | 
|Enabled or not configured<br>**(default)** |1 |1 |Allowed | 
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Extensions
- **GP name:** AllowExtensions 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowExtensions](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowextensions)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowExtensions 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Extensions
- **Value name:** ExtensionsEnabled
- **Value type:** REG_DWORD

### Related topics

[Microsoft browser extension policy](https://docs.microsoft.com/en-us/legal/windows/agreements/microsoft-browser-extension-policy):
This document describes the supported mechanisms for extending or modifying the behavior or user experience of Microsoft Edge and Internet Explorer, or the content displayed by these browsers. Any technique not explicitly listed in this document is considered **unsupported**.

<hr>