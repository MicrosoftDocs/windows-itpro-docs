<!-- ## Set Home Button URL
>*Supported versions: Microsoft Edge on Windows 10, next major version*<br> -->
>*Default setting: Disabled or not configured (Blank)*

[!INCLUDE [set-home-button-url-shortdesc](../shortdesc/set-home-button-url-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |Blank |Blank |Show the home button and loads the Start page and locks down the home button to prevent users from changing what page loads. | |
|Enabled - String |String |String |Enter a URL in string format, for example, https://www.msn.com. A custom URL loads when clicking the home button.  You must also enable the [Configure Home Button](../new-policies.md#configure-home-button) policy and select the _Show home button & set a specific page_ option.  | |
---

With these values, you can do any of the following configurations:

![Show home button and load custom URL](../images/home-button-custom-url.png)

#### Show the home button, load a custom URL, and let users make changes:
1. **Configure Home Button:** Enable and select the _Show the home button & set a specific page_ option.
2. **Set Home Button URL:** Enter a URL in string format, for example, https://www.bing.com. 
3. **Unlock Home Button:** Enable to let users make changes.

#### Show the home button, load a custom URL, and prevent users from making changes:
1. **Configure Home Button:** Enable and select the _Show the home button & set a specific page_ option.
2. **Set Home Button URL:** Enter a URL in string format, for example, https://www.bing.com.
3. **Unlock Home Button:** Leave disabled or not configured.

#### Hide the home button:
Enable the **Configure Home Button** policy and select the _Hide home button_ option.


### ADMX info and settings
#### ADMX info
- **GP English name:** Set Home Button URL
- **GP name:** SetHomeButtonURL
- **GP element:** SetHomeButtonURLPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SetHomeButtonURL](../new-policies.md#set-home-button-url)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SetHomeButtonURL 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Internet Settings
- **Value name:** HomeButtonURL
- **Value type:** REG_SZ

### Related policies

- [Configure Home Button](../new-policies.md#configure-home-button): [!INCLUDE [configure-home-button-shortdesc](../shortdesc/configure-home-button-shortdesc.md)]

- [Unlock Home button](../new-policies.md#unlock-home-button): [!INCLUDE [unlock-home-button-shortdesc](../shortdesc/unlock-home-button-shortdesc.md)]

<hr>
