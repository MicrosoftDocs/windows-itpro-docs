---
title: Policy CSP - DesktopAppInstaller
description: Learn about the Policy CSP - DesktopAppInstaller.
ms.author: v-aljupudi
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: alekyaj
ms.date: 08/24/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - DesktopAppInstaller

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
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
  <dd>
    <a href="#desktopappinstaller-enablehashoverride">DesktopAppInstaller/EnableHashOverride</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enablemicrosoftstoresource">DesktopAppInstaller/EnableMicrosoftStoreSource</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enablemsappinstallerprotocol">DesktopAppInstaller/EnableMSAppInstallerProtocol</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enablesettings">DesktopAppInstaller/EnableSettings</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enableallowedsources">DesktopAppInstaller/EnableAllowedSources</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-enableexperimentalfeatures">DesktopAppInstaller/EnableExperimentalFeatures</a>
  </dd>
  <dd>
    <a href="#desktopappinstaller-sourceautoupdateinterval">DesktopAppInstaller/SourceAutoUpdateInterval</a>
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

- If you enable or don't configure this setting, users will be able to use the Windows Package Manager.
- If you disable this setting, users won't be able to use the Windows Package Manager.

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
If you do not configure this setting, the default source for the Windows Package Manager will be and can be removed.
- If you enable this setting, the default source for the Windows Package Manager will be, and can't be removed.
- If you disable this setting the default source for the Windows Package Manager won't be available.

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

This policy controls whether users can install packages with local manifest files.

- If you enable or don't configure this setting, users will be able to install packages with local manifests using the Windows Package Manager.
- If you disable this setting, users won't be able to install packages with local manifests using the Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Windows Package Manager Local Manifest Files*
-   GP name: *EnableLocalManifestFiles*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<!--Policy-->
<a href="" id="desktopappinstaller-enablehashoverride"></a>**DesktopAppInstaller/EnableHashOverride**

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

This policy controls whether Windows Package Manager can be configured to enable the ability to override `SHA256` security validation in settings. Windows Package Manager compares the installer after it has downloaded with the hash provided in the manifest.

- If you enable or do not configure this setting, users will be able to enable the ability to override `SHA256` security validation in Windows Package Manager settings.

- If you disable this setting, users will not be able to enable the ability to override SHA256 security validation in Windows Package Manager settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable App Installer Hash Override*
-   GP name: *EnableHashOverride*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enablemicrosoftstoresource"></a>**DesktopAppInstaller/EnableMicrosoftStoreSource**

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

This policy controls the Microsoft Store source included with the Windows Package Manager.
If you don't configure this setting, the Microsoft Store source for the Windows Package manager will be available and can be removed.
- If you enable this setting, the Microsoft Store source for the Windows Package Manager will be available, and can't be removed.
- If you disable this setting the Microsoft Store source for the Windows Package Manager won't be available.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Windows Package Manager Microsoft Store Source*
-   GP name: *EnableMicrosoftStoreSource*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enablemsappinstallerprotocol"></a>**DesktopAppInstaller/EnableMSAppInstallerProtocol**

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

This policy controls whether users can install packages from a website that is using the `ms-appinstaller` protocol.

- If you enable or do not configure this setting, users will be able to install packages from websites that use this protocol.

- If you disable this setting, users will not be able to install packages from websites that use this protocol.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable MS App Installer Protocol*
-   GP name: *EnableMSAppInstallerProtocol*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enablesettings"></a>**DesktopAppInstaller/EnableSettings**

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

This policy controls whether users can change their settings. The settings are stored inside of a .json file on the user’s system. It may be possible for users to gain access to the file using elevated credentials. This won't override any policy settings that have been configured by this policy.

- If you enable or do not configure this setting, users will be able to change settings for Windows Package Manager.
- If you disable this setting, users will not be able to change settings for Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Windows Package Manager Settings Command*
-   GP name: *EnableSettings*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enableallowedsources"></a>**DesktopAppInstaller/EnableAllowedSources**

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

This policy controls additional sources approved for users to configure using Windows Package Manager. If you don't configure this setting, users will be able to add or remove additional sources other than those configured by policy.

- If you enable this setting, only the sources specified can be added or removed from Windows Package Manager. The representation for each allowed source can be obtained from installed sources using winget source export.
- If you disable this setting, no additional sources can be configured by the user for Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Windows Package Manager Settings Command*
-   GP name: *EnableAllowedSources*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-enableexperimentalfeatures"></a>**DesktopAppInstaller/EnableExperimentalFeatures**

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

This policy controls whether users can enable experimental features in Windows Package Manager. Experimental features are used during Windows Package Manager development cycle to provide previews for new behaviors. Some of these experimental features may be implemented prior to the Group Policy settings designed to control their behavior.

- If you enable or do not configure this setting, users will be able to enable experimental features for Windows Package Manager.

- If you disable this setting, users will not be able to enable experimental features for Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Windows Package Manager Experimental Features*
-   GP name: *EnableExperimentalFeatures*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="desktopappinstaller-sourceautoupdateinterval"></a>**DesktopAppInstaller/SourceAutoUpdateInterval**

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

This policy controls the auto-update interval for package-based sources. The default source for Windows Package Manager is configured such that an index of the packages is cached on the local machine. The index is downloaded when a user invokes a command, and the interval has passed (the index is not updated in the background). This setting has no impact on REST-based sources.

- If you enable this setting, the number of minutes specified will be used by Windows Package Manager.

- If you disable or do not configure this setting, the default interval or the value specified in settings will be used by Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set Windows Package Manager Source Auto Update Interval In Minutes*
-   GP name: *SourceAutoUpdateInterval*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)