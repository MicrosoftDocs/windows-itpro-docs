<!-- ## Configure Home Button
>*Supported versions: Microsoft Edge on Windows 10*<br> -->
>*Default setting: Disabled or not configured (Show home button and load the Start page)*


[!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Show the home button and load the Start page. |
|Enabled |1 |1 |Show the home button and load the New tab page. |
|Enabled |2 |2 |Show the home button and load the custom URL defined in the Set Home Button URL policy. |
|Enabled |3 |3 |Hide the home button. |
---

With these values, you can do any of the following configurations:

![Show home button and load Start page or New tab page](../images/home-button-start-new-tab-page.png)

![Show home button and load custom URL](../images/home-button-custom-url.png)

![Hide home button](../images/home-button-hide.png)

### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Home Button
- **GP name:** ConfigureHomeButton
- **GP element:** ConfigureHomeButtonDropdown
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureHomeButton](../new-policies.md#configure-home-button)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureHomeButton 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings 
- **Value name:** ConfigureHomeButton
- **Value type:** REG_SZ

### Related policies

- [Set Home button URL](../new-policies.md#set-home-button-url): [!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]
 
- [Unlock Home button](../new-policies.md#unlock-home-button): [!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)] 


<hr>