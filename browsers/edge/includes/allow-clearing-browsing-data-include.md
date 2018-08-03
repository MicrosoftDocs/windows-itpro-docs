<!-- ## Allow clearing browsing data on exit -->
>*Supported versions: Microsoft Edge on Windows 10, version 1703 or later*<br>
>*Default setting:  Disabled or not configured (Prevented/not allowed)*

[!INCLUDE [allow-clearing-browsing-data-on-exit-shortdesc](../shortdesc/allow-clearing-browsing-data-on-exit-shortdesc.md)]

### Supported values

>[!div class="mx-tableFixed"]
>|Group Policy  |MDM |Registry |Description |Most restricted |
>|---|:---:|:---:|---|:---:|
>|Disabled or not configured **(default)** |0 |0 |Prevented/not allowed. Users can configure the _Clear browsing data_ option in Settings. | |
>|Enabled |1 |1 |Allowed. Clear the browsing data upon exit automatically. |![Most restricted value](../images/check-gn.png) |
---


### ADMX info and settings

#### ADMX info
- **GP English name:**  Allow clearing browsing data on exit
- **GP name:**  AllowClearingBrowsingDataOnExit
- **GP path:**  Windows Components/Microsoft Edge
- **GP ADMX file name:**  MicrosoftEdge.admx 

#### MDM settings
- **MDM name:** Browser/[ClearBrowsingDataOnExit](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser\#browser-clearbrowsingdataonexit)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ClearBrowsingDataOnExit
- **Data type:** Integer

#### *Registry
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Privacy
- **Value name:** ClearBrowsingHistoryOnExit
- **Value type:** REG_DWORD 

<hr>