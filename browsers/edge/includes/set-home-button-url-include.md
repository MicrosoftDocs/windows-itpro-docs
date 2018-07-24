<!-- ## Set Home button URL
>*Supported versions: Microsoft Edge on Windows 10, next major update to Windows*<br> -->
>*Default setting: Disabled or not configured (Blank)*

[!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]

### Supported values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|
|Disabled or not configured<br>**(default)** |Blank |Blank |Show the home button and loads the Start page and locks down the home button to prevent users from changing what page loads. |
|Enabled - String |String |String |Load a custom URL for the home button. You must also enable the [Configure Home button](../new-policies.md#configure-home-button) policy and select the _Show home button & set a specific page_ option.<p>Enter a URL in string format, for example, https://www.msn.com.   |
---


### Configuration options

For more details about configuring the different Home button options, see [Home button](../group-policies/home-button-gp.md).


### ADMX info and settings
#### ADMX info
- **GP English name:** Set Home button URL
- **GP name:** SetHomeButtonURL
- **GP element:** SetHomeButtonURLPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SetHomeButtonURL](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-sethomebuttonurl)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetHomeButtonURL 
- **Data type:** String

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** ConfigureHomeButtonURL
- **Value type:** REG_SZ

### Related policies

- [Configure Home button](../new-policies.md#configure-home-button): [!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)]

- [Unlock Home button](../new-policies.md#unlock-home-button): [!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)]

<hr>
