---
title: Policy CSP - ADMX_SettingSync
description: Learn about Policy CSP - ADMX_SettingSync.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/01/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_SettingSync
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_SettingSync policies

<dl>
  <dd>
    <a href="#admx-settingsync-disableappsyncsettingsync">ADMX_SettingSync/DisableAppSyncSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disableapplicationsettingsync">ADMX_SettingSync/DisableApplicationSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disablecredentialssettingsync">ADMX_SettingSync/DisableCredentialsSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disabledesktopthemesettingsync">ADMX_SettingSync/DisableDesktopThemeSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disablepersonalizationsettingsync">ADMX_SettingSync/DisablePersonalizationSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disablesettingsync">ADMX_SettingSync/DisableSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disablestartlayoutsettingsync">ADMX_SettingSync/DisableStartLayoutSettingSync</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disablesynconpaidnetwork">ADMX_SettingSync/DisableSyncOnPaidNetwork</a>
  </dd>
  <dd>
    <a href="#admx-settingsync-disablewindowssettingsync">ADMX_SettingSync/DisableWindowsSettingSync</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disableappsyncsettingsync"></a>**ADMX_SettingSync/DisableAppSyncSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents the "AppSync" group from syncing to and from this PC. This option turns off and disables the "AppSync" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "AppSync" group won't be synced.

Use the option "Allow users to turn app syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "AppSync" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync Apps*
-   GP name: *DisableAppSyncSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disableapplicationsettingsync"></a>**ADMX_SettingSync/DisableApplicationSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy seting prevents the "app settings" group from syncing to and from this PC. This option turns off and disables the "app settings" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "app settings" group won't be synced.

Use the option "Allow users to turn app settings syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "app settings" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync app settings*
-   GP name: *DisableApplicationSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disablecredentialssettingsync"></a>**ADMX_SettingSync/DisableCredentialsSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy seting prevents the "passwords" group from syncing to and from this PC. This option turns off and disables the "passwords" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "passwords" group won't be synced.

Use the option "Allow users to turn passwords syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "passwords" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync passwords*
-   GP name: *DisableCredentialsSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disabledesktopthemesettingsync"></a>**ADMX_SettingSync/DisableDesktopThemeSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents the "desktop personalization" group from syncing to and from this PC. This option turns off and disables the "desktop personalization" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "desktop personalization" group won't be synced.

Use the option "Allow users to turn desktop personalization syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "desktop personalization" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync desktop personalization*
-   GP name: *DisableDesktopThemeSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disablepersonalizationsettingsync"></a>**ADMX_SettingSync/DisablePersonalizationSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents the "personalize" group from syncing to and from this PC. This option turns off and disables the "personalize" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "personalize" group won't be synced.

Use the option "Allow users to turn personalize syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "personalize" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync personalize*
-   GP name: *DisablePersonalizationSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disablesettingsync"></a>**ADMX_SettingSync/DisableSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents syncing to and from this PC. This option turns off and disables the "sync your settings" switch on the "sync your settings" page in PC Settings.

If you enable this policy setting, "sync your settings" will be turned off, and none of the "sync your setting" groups will be synced on this PC.

Use the option "Allow users to turn syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, "sync your settings" is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync*
-   GP name: *DisableSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disablestartlayoutsettingsync"></a>**ADMX_SettingSync/DisableStartLayoutSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents the "Start layout" group from syncing to and from this PC. This option turns off and disables the "Start layout" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "Start layout" group won't be synced.

Use the option "Allow users to turn on start syncing" so that syncing is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "Start layout" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync start settings*
-   GP name: *DisableStartLayoutSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disablesynconpaidnetwork"></a>**ADMX_SettingSync/DisableSyncOnPaidNetwork**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents syncing to and from this PC when on metered Internet connections. This option turns off and disables "sync your settings on metered connections" switch on the "sync your settings" page in PC Settings.

If you enable this policy setting, syncing on metered connections will be turned off, and no syncing will take place when this PC is on a metered connection.

If you don't set or disable this setting, syncing on metered connections is configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync on metered connections*
-   GP name: *DisableSyncOnPaidNetwork*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-settingsync-disablewindowssettingsync"></a>**ADMX_SettingSync/DisableWindowsSettingSync**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
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
This policy setting prevents the "Other Windows settings" group from syncing to and from this PC.  This option turns off and disables the "Other Windows settings" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "Other Windows settings" group won't be synced.

Use the option "Allow users to turn other Windows settings syncing on" so that syncing it is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "Other Windows settings" group is on by default and configurable by the user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not sync other Windows settings*
-   GP name: *DisableWindowsSettingSync*
-   GP path: *Windows Components\Sync your settings*
-   GP ADMX file name: *SettingSync.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
