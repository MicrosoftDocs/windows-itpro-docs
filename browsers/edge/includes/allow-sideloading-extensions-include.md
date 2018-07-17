<!-- ## Allow sideloading of Extensions -->
>*Supported versions: Microsoft Edge on Windows 10, version 1810*<br>
>*Default setting: Enabled (Allowed)*

[!INCLUDE [allow-sideloading-of-extensions-shortdesc](../shortdesc/allow-sideloading-of-extensions-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured |0 |0 |Prevented, but does not prevent sideloading of extensions using Add-AppxPackage via PowerShell.<p>To prevent this, enable **Allows development of Windows Store apps and installing them from an integrated development environment (IDE)** policy, located at Computer Configuration \> Administrative Templates \> Windows Components \> App Package Deployment. For the MDM setting, enable **ApplicationManagement/AllowDeveloperUnlock**. |![Most restricted value](../images/check-gn.png) |
|Enabled<br>**(default)** |1 |1 |Allowed | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Allow sideloading of Extensions
- **GP name:** AllowSideloadingOfExtensions
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[AllowSideloadingExtensions]()
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/AllowSideloadingExtensions 
- **Data type:** Integer

#### Registry settings
- **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Extensions 
- **Value name:** AllowSideloadingOfExtensions
- **Value type:** REG_SZ

### Related policies

- Allows development of Windows Store apps and installing them from an integrated development environment (IDE): When you enable this policy and the Allow all trusted apps to install policy, you allow users to develop Windows Store apps and install them directly from an IDE.

- Allow all trusted apps to install: When you enable this policy, you can manage the installation of trusted line-of-business (LOB) or developer-signed Windows Store apps.

### Related Documents

[Enable your device for development](https://docs.microsoft.com/en-us/windows/uwp/get-started/enable-your-device-for-development): Configure your Windows 10 device for development and debugging.

<hr>