---
title: Policy CSP - DesktopAppInstaller
description: Learn about the Policy CSP - DesktopAppInstaller.
ms.author: v-aljupudi
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: alekyaj
ms.date: 08/24/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - DesktopAppInstaller

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## DesktopAppInstaller policies  

<dl>
  <dd>
    <a href="#desktopappinstaller-enableadditionalsources">DesktopAppInstaller/EnableAdditionalSources</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enableappinstaller">DesktopAppInstaller/EnableAppInstaller</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enabledefaultsource">DesktopAppInstaller/EnableDefaultSource</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enablelocalmanifestfiles">DesktopAppInstaller/EnableLocalManifestFiles</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enableadditionalsources"></a>**DesktopAppInstaller/EnableAdditionalSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls additional sources configured for [Windows Package Manager](/windows/package-manager/).

If you don't configure this setting, no additional sources will be configured for Windows Package Manager.

If you enable this setting, additional sources will be added to Windows Package Manager, and can't be removed. The representation for each additional source can be obtained from installed sources using [*winget source export*](/windows/package-manager/winget/).

If you disable this setting, no additional sources can be configured by the user for Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable Additional Windows Package Manager Sources*
-   GP name: *EnableAdditionalSources*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enableappinstaller"></a>**DesktopAppInstaller/EnableAppInstaller**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls whether Windows Package Manager can be used by users. Users will still be able to execute the *winget* command. The default help will be displayed, and users will still be able to execute *winget -?* to display the help as well. Any other command will result in the user being informed the operation is disabled by Group Policy.

- If you enable or do not configure this setting, users will be able to use the Windows Package Manager.
- If you disable this setting, users will not be able to use the Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Controls whether the Windows Package Manager can be used by the users*
-   GP name: *EnableAppInstaller*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enabledefaultsource"></a>**DesktopAppInstaller/EnableDefaultSource**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy controls the default source included with the Windows Package Manager.
If you do not configure this setting, the default source for the Windows Package Manager will be available and can be removed.
- If you enable this setting, the default source for the Windows Package Manager will be available and cannot be removed.
- If you disable this setting the default source for the Windows Package Manager will not be available.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable Windows Package Manager Default Source*
-   GP name: *EnableDefaultSource*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enablelocalmanifestfiles"></a>**DesktopAppInstaller/EnableLocalManifestFiles**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

This policy controls whether users can install packages with local manifest files. If a user has a manifest available via their local file system rather than a Windows Package Manager source, they may install packages using *winget install -m <path to manifest>*.

- If you enable or do not configure this setting, users will be able to install packages with local manifests by using Windows Package Manager.

- If you disable this setting, users will not be able to install packages with local manifests by using Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable Windows Package Manager Local Manifest Files*
-   GP name: *EnableLocalManifestFiles*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)