<!-- ## Allow Cortana -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Enabled (Allowed)*

[!INCLUDE [allow-cortana-shortdesc](../shortdesc/allow-cortana-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented but users can still search to find items on their device. |![Most restricted value](../images/check-gn.png) |
|Enabled<br>**(default)** |1 |1 |Allowed. | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** 
- **GP name:** 
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings 
- **MDM name:** Experience/[AllowCortana](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#experience-allowcortana)
- **Supported devices:** Mobile**URI full path:** ./Vendor/MSFT/Policy/Config/Experience/AllowCortana 
- **Data type:** Integer
 
#### Registry settings 
- **Path:** HKLM\Software\Policies\Microsoft\Windows\Windows Search
- **Value name:** AllowCortana
- **Value type:** REG_DWORD 

<hr>

