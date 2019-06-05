---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Prevent turning off required extensions-->  

>*Supported versions: Microsoft Edge on Windows 10, version 1809*<br>
>*Default setting:  Disabled or not configured (Allowed)*

[!INCLUDE [prevent-turning-off-required-extensions-shortdesc](../shortdesc/prevent-turning-off-required-extensions-shortdesc.md)]

### Supported values

|Group Policy  |Description |
|---|---|
|Disabled or not configured<br>**(default)** |Allowed. Users can uninstall extensions. If you previously enabled this policy and you decide to disable it, the list of extension PFNs defined in this policy get ignored.  | 
|Enabled |Provide a semi-colon delimited list of extension PFNs. For example, adding the following OneNote Web Clipper extension prevents users from turning it off:<p><p>_Microsoft.OneNoteWebClipper8wekyb3d8bbwe_ <p>After defining the list of extensions, you deploy them through any available enterprise deployment channel, such as Microsoft Intune.<p>Removing extensions from the list does not uninstall the extension from the user’s computer automatically. To uninstall the extension, use any available enterprise deployment channel. If you enable the [Allow Developer Tools](../group-policies/developer-settings-gp.md#allow-developer-tools) policy, then this policy does not prevent users from debugging and altering the logic on an extension. | 
---



### ADMX info and settings
#### ADMX info
- **GP English name:** Prevent turning off required extensions
- **GP name:** PreventTurningOffRequiredExtensions
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** [Experience/PreventTurningOffRequiredExtensions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-preventturningoffrequiredextensions)
- **Supported devices:** Desktop 
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/PreventTurningOffRequiredExtensions 
- **Data type:** String

#### Registry settings
- **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Extensions 
- **Value name:** PreventTurningOffRequiredExtensions
- **Value type:** REG_SZ

### Related policies
[Allow Developer Tools](../available-policies.md#allow-developer-tools): [!INCLUDE [allow-developer-tools-shortdesc](../shortdesc/allow-developer-tools-shortdesc.md)]


### Related topics

- [Find a package family name (PFN) for per-app VPN](https://docs.microsoft.com/sccm/protect/deploy-use/find-a-pfn-for-per-app-vpn): There are two ways to find a PFN so that you can configure a per-app VPN.
- [How to manage apps you purchased from the Microsoft Store for Business with Microsoft Intune](https://docs.microsoft.com/intune/windows-store-for-business): The Microsoft Store for Business gives you a place to find and purchase apps for your organization, individually, or in volume. By connecting the store to Microsoft Intune, you can manage volume-purchased apps from the Azure portal. 
- [How to assign apps to groups with Microsoft Intune](https://docs.microsoft.com/intune/apps-deploy): Apps can be assigned to devices whether or not Intune manages them. 
- [Manage apps from the Microsoft Store for Business with System Center Configuration Manager](https://docs.microsoft.com/sccm/apps/deploy-use/manage-apps-from-the-windows-store-for-business): Configuration Manager supports managing Microsoft Store for Business apps on both Windows 10 devices with the Configuration Manager client, and also Windows 10 devices enrolled with Microsoft Intune. 
- [How to add Windows line-of-business (LOB) apps to Microsoft Intune](https://docs.microsoft.com/intune/lob-apps-windows): A line-of-business (LOB) app is one that you add from an app installation file. Typically, these types of apps are written in-house. 

<hr>
