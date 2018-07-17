<!-- ## Unlock Home Button -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting: Disabled or not configured (Home button is locked)*

[!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Prevent users from making changes to the home button settings. | |
|Enabled |1 |1 |Allow users to make changes to the home button settings. | |
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
- **GP English name:** Unlock Home Button
- **GP name:** UnlockHomeButton
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[UnlockHomeButton]()
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/UnlockHomeButton
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** UnlockHomeButton
- **Value type:** REG_DWORD

### Related policies

- [Configure Home Button](#configure-home-button-include): [!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)] 
 
- [Set Home Button URL](#set-home-button-url-include): [!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]

<hr>