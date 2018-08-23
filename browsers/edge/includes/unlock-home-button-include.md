<!-- ## Unlock Home Button -->  
>*Supported versions: Microsoft Edge on Windows 10, next major update to Windows*<br> 
>*Default setting: Disabled or not configured (Home button is locked)*

[!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled or not configured<br>**(default)** |0 |0 |Lock down and prevent users from making changes to the home button settings. | 
|Enabled |1 |1 |Let users make changes. | 
---


### Configuration options

For more details about configuring the different Home button options, see [Home button configuration options](../group-policies/home-button-gp.md).

### ADMX info and settings
#### ADMX info
- **GP English name:** Unlock Home Button
- **GP name:** UnlockHomeButton
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[UnlockHomeButton](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-unlockhomebutton)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/UnlockHomeButton
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** UnlockHomeButton
- **Value type:** REG_DWORD

### Related policies

- [Configure Home Button](../new-policies.md#configure-home-button): [!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)] 
 
- [Set Home Button URL](../new-policies.md#set-home-button-url): [!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]


<hr>