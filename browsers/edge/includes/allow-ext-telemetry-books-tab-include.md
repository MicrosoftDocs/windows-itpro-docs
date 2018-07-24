<!-- ## Allow extended telemetry for the Books tab -->
>*Supported versions: Microsoft Edge on Windows 10, version 1802 or later*<br>
>*Default setting:  Disabled or not configured (Gather and send only basic diagnostic data)*

[!INCLUDE [allow-extended-telemetry-for-books-tab-shortdesc](../shortdesc/allow-extended-telemetry-for-books-tab-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Depending on the device configuration, Microsoft Edge gathers only basic diagnostic data. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Gathers both basic and additional diagnostic data. | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow extended telemetry for the Books tab
- **GP name:** EnableExtendedBooksTelemetry
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[Browser/EnableExtendedBooksTelemetry](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-enableextendedbookstelemetry)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/EnableExtendedBooksTelemetry
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\BooksLibrary
- **Value name:** EnableExtendedBooksTelemetry
- **Value type:** REG_DWORD


<hr>