<!-- ## Allow extended telemetry for the Books tab -->
>*Supported versions: Microsoft Edge on Windows 10, version 1802 or later*<br>
>*Default setting:  Disabled or not configured (Gather and send only basic diagnostic data)*

[!INCLUDE [allow-extended-telemetry-for-books-tab-shortdesc](../shortdesc/allow-extended-telemetry-for-books-tab-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Depending on the device configuration, Microsoft Edge gathers only basic diagnostic data. |![Most restricted value](../images/check-gn.png) |
|Enabled |1 |1 |Microsoft Edge gathers both basic and additional diagnostic data. | |
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


### Scenario

Due to current Privacy policy, the Books feature does not have the right to gather the book's unique identifier through regular events (because it could help to build a Reading history, which is not an explicit feature).

For Schools that are one of the target of this feature of Edge, we will propose an advanced telemetry report to the Teachers. This advanced report system will require to have the ProductId in events so IT Admin will be able to enable the propagation from the user's device to Microsoft Telemetry servers of events that contain ProductId.

<hr>