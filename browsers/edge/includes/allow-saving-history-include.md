<!-- ## Allow Saving History -->
>*Supported versions: Microsoft Edge on Windows 10, version 1810*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-saving-history-shortdesc](../shortdesc/allow-saving-history-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented/not allowed. |![Most restricted value](../images/check-gn.png) |
|Enabled or not configured<br>**(default)** |1 |1 |Allowed. | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow saving history
- **GP name:** AllowSavingHistory
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowSavingHistory]()
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSavingHistory 
- **Data type:** Integer

#### Registry settings
- **Path:**  HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main
- **Value name:** AllowSavingHistory
- **Value type:** REG_DWORD


<hr>