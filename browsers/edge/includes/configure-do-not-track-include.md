<!-- ## Configure Do Not Track -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Not configured (Does not send tracking information)*

[!INCLUDE [configure-do-not-track-shortdesc](../shortdesc/configure-do-not-track-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Not configured |Blank |Blank |Does not send tracking information, but allow users to choose whether to send tracking information to sites they visit. | |
|Disabled |1 |1 |Never sends tracking information. | |
|Enabled<br>**(default)** |1 |1 |Sends tracking information, including to the third parties whose content may be hosted on the sites visited. |![Most restricted value](../images/check-gn.png) |
---

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Do Not Track
- **GP name:** AllowDoNotTrack
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowDoNotTrack](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-allowdonottrack)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowDoNotTrack 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main
- **Value name:** DoNotTrack
- **Value type:** REG_DWORD

<hr>