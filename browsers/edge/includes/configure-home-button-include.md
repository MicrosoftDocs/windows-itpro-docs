<!-- ## Configure Home Button -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting: Disabled or not configured (Show home button and load the Start page)*


[!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Shows the home button and loads the Start page. | |
|Enabled |1 |1 |Shows the home button and loads the New tab page. | |
|Enabled |2 |2 |Shows the home button and loads the custom URL defined in the Set Home Button URL policy. | |
|Enabled |3 |3 |Hides the home button. | |
---

With these values, you can do any of the following configurations:

#### If you want to show the home button, load the New tab page, and prevent users from making changes to the settings.
1. **Configure Home Button:** Enable and select the _Show home button & set to New tab page_ option.
2. **Set Home Button URL:** Leave blank or not configured. 
3. **Unlock Home Button:** Leave disabled or not configured.

#### If you want to show the home button, load the New tab page, and let users make changes:
1. **Configure Home Button:** Enable and select the _Show home button & set to New tab page_ option.
2. **Set Home Button URL:** Leave blank or not configured. 
3. **Unlock Home Button:** Enable to let users make changes.

#### If you want to show the home button, load a custom URL, and prevent users from making changes:
1. **Configure Home Button:** Enable and select the _Show the home button & set a specific page_ option.
2. **Set Home Button URL:** Enter a URL in string format, for example, https://www.bing.com. 
3. **Unlock Home Button:** Leave disabled or not configured.

#### If you want to show the home button, load a custom URL, and let users make changes:
1. **Configure Home Button:** Enable and select the _Show the home button & set a specific page_ option.
2. **Set Home Button URL:** Enter a URL in string format, for example, https://www.bing.com. 
3. **Unlock Home Button:** Enable to let users make changes.


### ADMX info and settings
#### ADMX info
- **GP English name:** Configure Home Button
- **GP name:** ConfigureHomeButton
- **GP element:** ConfigureHomeButtonDropdown
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[ConfigureHomeButton]()
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/ConfigureHomeButton 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings 
- **Value name:** ConfigureHomeButton
- **Value type:** REG_SZ

### Related policies

- [Set Home Button URL](#set-new-tab-url-include): [!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]
 
- [Unlock Home Button](#unlock-home-button-include): [!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)] 

<hr>