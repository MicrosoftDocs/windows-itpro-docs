<!-- ## Allow Adobe Flash -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Enabled or not configured (Allowed)*

[!INCLUDE [allow-adobe-flash-shortdesc](../shortdesc/allow-adobe-flash-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled |0 |0 |Prevented/not allowed. | |
|Enabled<br>**(default)** |1 |1 |Allowed. | |
--- 

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow Adobe Flash
- **GP name:** AllowFlash
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowFlash](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser\#browser-allowflash)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowAdobeFlash 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Addons 
- **Value name:** FlashPlayerEnabled
- **Value type:** REG_DWORD

<hr>
