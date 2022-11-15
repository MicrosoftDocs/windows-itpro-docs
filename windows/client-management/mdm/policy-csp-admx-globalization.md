---
title: Policy CSP - ADMX_Globalization
description: Learn about the Policy CSP - ADMX_Globalization.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/14/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Globalization

<hr/>

<!--Policies-->
## ADMX_Globalization policies

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-globalization-blockuserinputmethodsforsignin">ADMX_Globalization/BlockUserInputMethodsForSignIn</a>
  </dd>
  <dd>
    <a href="#admx-globalization-customlocalesnoselect-1">ADMX_Globalization/CustomLocalesNoSelect_1</a>
  </dd>
  <dd>
    <a href="#admx-globalization-customlocalesnoselect-2">ADMX_Globalization/CustomLocalesNoSelect_2</a>
  </dd>
    <dd>
    <a href="#admx-globalization-hideadminoptions">ADMX_Globalization/HideAdminOptions</a>
  </dd>
  <dd>
    <a href="#admx-globalization-hidecurrentlocation">ADMX_Globalization/HideCurrentLocation</a>
  </dd>
  <dd>
    <a href="#admx-globalization-hidelanguageselection">ADMX_Globalization/HideLanguageSelection</a>
  </dd>
  <dd>
    <a href="#admx-globalization-hidelocaleselectandcustomize">ADMX_Globalization/HideLocaleSelectAndCustomize</a>
  </dd>
  <dd>
    <a href="#admx-globalization-implicitdatacollectionoff-1">ADMX_Globalization/ImplicitDataCollectionOff_1</a>
  </dd>
  <dd>
    <a href="#admx-globalization-implicitdatacollectionoff-2">ADMX_Globalization/ImplicitDataCollectionOff_2</a>
  </dd>
  <dd>
    <a href="#admx-globalization-localesystemrestrict">ADMX_Globalization/LocaleSystemRestrict</a>
  </dd>
  <dd>
    <a href="#admx-globalization-localeuserrestrict-1">ADMX_Globalization/LocaleUserRestrict_1</a>
  </dd>
  <dd>
    <a href="#admx-globalization-localeuserrestrict-2">ADMX_Globalization/LocaleUserRestrict_2</a>
  </dd>
  <dd>
    <a href="#admx-globalization-lockmachineuilanguage">ADMX_Globalization/LockMachineUILanguage</a>
  </dd>
  <dd>
    <a href="#admx-globalization-lockuseruilanguage">ADMX_Globalization/LockUserUILanguage</a>
  </dd>
  <dd>
    <a href="#admx-globalization-preventgeoidchange-1">ADMX_Globalization/PreventGeoIdChange_1</a>
  </dd>
  <dd>
    <a href="#admx-globalization-preventgeoidchange-2">ADMX_Globalization/PreventGeoIdChange_2</a>
  </dd>
  <dd>
    <a href="#admx-globalization-preventuseroverrides-1">ADMX_Globalization/PreventUserOverrides_1</a>
  </dd>
  <dd>
    <a href="#admx-globalization-preventuseroverrides-2">ADMX_Globalization/PreventUserOverrides_2</a>
  </dd>
  <dd>
    <a href="#admx-globalization-restrictuilangselect">ADMX_Globalization/RestrictUILangSelect</a>
  </dd>
  <dd>
    <a href="#admx-globalization-turnoffautocorrectmisspelledwords">ADMX_Globalization/TurnOffAutocorrectMisspelledWords</a>
  </dd>
  <dd>
    <a href="#admx-globalization-turnoffhighlightmisspelledwords">ADMX_Globalization/TurnOffHighlightMisspelledWords</a>
  </dd>
  <dd>
    <a href="#admx-globalization-turnoffinsertspace">ADMX_Globalization/TurnOffInsertSpace</a>
  </dd>
  <dd>
    <a href="#admx-globalization-turnoffoffertextpredictions">ADMX_Globalization/TurnOffOfferTextPredictions</a>
  </dd>
  <dd>
    <a href="#admx-globalization-y2k">ADMX_Globalization/Y2K</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-globalization-blockuserinputmethodsforsignin"></a>**ADMX_Globalization/BlockUserInputMethodsForSignIn**

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
This policy prevents automatic copying of user input methods to the system account for use on the sign-in screen. The user is restricted to the set of input methods that are enabled in the system account.

This confinement doesn't affect the availability of user input methods on the lock screen or with the UAC prompt.

If the policy is enabled, then the user will get input methods enabled for the system account on the sign-in page.

If the policy is disabled or not configured, then the user will be able to use input methods enabled for their user account on the sign-in page.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow copying of user input methods to the system account for sign-in*
-   GP name: *BlockUserInputMethodsForSignIn*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-customlocalesnoselect-1"></a>**ADMX_Globalization/CustomLocalesNoSelect_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents a user from selecting a supplemental custom locale as their user locale. The user is restricted to the set of locales that are installed with the operating system.

This confinement doesn't affect the selection of replacement locales. To prevent the selection of replacement locales, adjust the permissions of the %windir%\Globalization directory to prevent the installation of locales by unauthorized users.

The policy setting "Restrict user locales" can also be enabled to disallow selection of a custom locale, even if this policy setting isn't configured.

If you enable this policy setting, the user can't select a custom locale as their user locale, but they can still select a replacement locale if one is installed.

If you disable or don't configure this policy setting, the user can select a custom locale as their user locale.

If this policy setting is enabled at the machine level, it can't be disabled by a per-user policy setting. If this policy setting is disabled at the machine level, the per-user policy setting will be ignored. If this policy setting isn't configured at the machine level, restrictions will be based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that you don't configure the per-machine policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow selection of Custom Locales*
-   GP name: *CustomLocalesNoSelect_1*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-customlocalesnoselect-2"></a>**ADMX_Globalization/CustomLocalesNoSelect_2**

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
This policy setting prevents a user from selecting a supplemental custom locale as their user locale. The user is restricted to the set of locales that are installed with the operating system.

This confinement doesn't affect the selection of replacement locales. To prevent the selection of replacement locales, adjust the permissions of the %windir%\Globalization directory to prevent the installation of locales by unauthorized users.

The policy setting "Restrict user locales" can also be enabled to disallow selection of a custom locale, even if this policy setting isn't configured.

If you enable this policy setting, the user can't select a custom locale as their user locale, but they can still select a replacement locale if one is installed.

If you disable or don't configure this policy setting, the user can select a custom locale as their user locale.

If this policy setting is enabled at the machine level, it can't be disabled by a per-user policy setting. If this policy setting is disabled at the machine level, the per-user policy setting will be ignored. If this policy setting isn't configured at the machine level, restrictions will be based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that you don't configure the per-machine policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow selection of Custom Locales*
-   GP name: *CustomLocalesNoSelect_2*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-hideadminoptions"></a>**ADMX_Globalization/HideAdminOptions**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting removes the Administrative options from the Region settings control panel.

Administrative options include interfaces for setting system locale and copying settings to the default user. This policy setting doesn't, however, prevent an administrator or another application from changing these values programmatically.

This policy setting is used only to simplify the Regional Options control panel.

If you enable this policy setting, the user can't see the Administrative options.

If you disable or don't configure this policy setting, the user can see the Administrative options.

> [!NOTE]
> Even if a user can see the Administrative options, other policies may prevent them from modifying the values.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide Regional and Language Options administrative options*
-   GP name: *HideAdminOptions*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-hidecurrentlocation"></a>**ADMX_Globalization/HideCurrentLocation**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting removes the option to change the user's geographical location (GeoID) from the Region settings control panel.

This policy setting is used only to simplify the Regional Options control panel.

If you enable this policy setting, the user doesn't see the option to change the GeoID. This lack of display doesn't prevent the user or an application from changing the GeoID programmatically.

If you disable or don't configure this policy setting, the user sees the option for changing the user location (GeoID).

> [!NOTE]
> Even if a user can see the GeoID option, the "Disallow changing of geographical location" option can prevent them from actually changing their current geographical location.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide the geographic location option*
-   GP name: *HideCurrentLocation*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-hidelanguageselection"></a>**ADMX_Globalization/HideLanguageSelection**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting removes the option to change the user's menus and dialogs (UI) language from the Language and Regional Options control panel.

This policy setting is used only to simplify the Regional Options control panel.

If you enable this policy setting, the user doesn't see the option for changing the UI language. This lack of display doesn't prevent the user or an application from changing the UI language programmatically.  If you disable or don't configure this policy setting, the user sees the option for changing the UI language.

> [!NOTE]
> Even if a user can see the option to change the UI language, other policy settings can prevent them from changing their UI language.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide the select language group options*
-   GP name: *HideLanguageSelection*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-hidelocaleselectandcustomize"></a>**ADMX_Globalization/HideLocaleSelectAndCustomize**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting removes the regional formats interface from the Region settings control panel.

This policy setting is used only to simplify the Regional and Language Options control panel.

If you enable this policy setting, the user doesn't see the regional formats options. This lack of display doesn't prevent the user or an application from changing their user locale or user overrides programmatically.

If you disable or don't configure this policy setting, the user sees the regional formats options for changing and customizing the user locale.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide user locale selection and customization options*
-   GP name: *HideLocaleSelectAndCustomize*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-implicitdatacollectionoff-1"></a>**ADMX_Globalization/ImplicitDataCollectionOff_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off the automatic learning component of handwriting recognition personalization.

Automatic learning enables the collection and storage of text and ink written by the user in order to help adapt handwriting recognition to the vocabulary and handwriting style of the user.  Text that is collected includes all outgoing messages in Windows Mail, and MAPI enabled email clients, and URLs from the Internet Explorer browser history. The information that is stored includes word frequency and new words not already known to the handwriting recognition engines (for example, proper names and acronyms). Deleting email content or the browser history doesn't delete the stored personalization data. Ink entered through Input Panel is collected and stored.

> [!NOTE]
> Automatic learning of both text and ink might not be available for all languages, even when handwriting personalization is available. For more information, see Tablet PC Help.

If you enable this policy setting, automatic learning stops and any stored data are deleted. Users can't configure this setting in Control Panel.

If you disable this policy setting, automatic learning is turned on. Users can't configure this policy setting in Control Panel. Collected data is only used for handwriting recognition, if handwriting personalization is turned on.

If you don't configure this policy, users can choose to enable or disable automatic learning either from the Handwriting tab in the Tablet Settings in Control Panel or from the opt-in dialog.

This policy setting is related to the "Turn off handwriting personalization" policy setting.

> [!NOTE]
> The amount of stored ink is limited to 50 MB and the amount of text information to approximately 5 MB. When these limits are reached and new data is collected, old data is deleted to make room for more recent data.
>
> Handwriting personalization works only for Microsoft handwriting recognizers, and not with third-party recognizers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off automatic learning*
-   GP name: *ImplicitDataCollectionOff_1*
-   GP path: *Control Panel\Regional and Language Options\Handwriting personalization*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-implicitdatacollectionoff-2"></a>**ADMX_Globalization/ImplicitDataCollectionOff_2**

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
This policy setting turns off the automatic learning component of handwriting recognition personalization.

Automatic learning enables the collection and storage of text and ink written by the user in order to help adapt handwriting recognition to the vocabulary and handwriting style of the user.  Text that is collected includes all outgoing messages in Windows Mail, and MAPI enabled email clients, and URLs from the Internet Explorer browser history. The information that is stored includes word frequency and new words not already known to the handwriting recognition engines (for example, proper names and acronyms). Deleting email content or the browser history doesn't delete the stored personalization data. Ink entered through Input Panel is collected and stored.

> [!NOTE]
> Automatic learning of both text and ink might not be available for all languages, even when handwriting personalization is available. For more information, see Tablet PC Help.

If you enable this policy setting, automatic learning stops and any stored data are deleted. Users can't configure this setting in Control Panel.

If you disable this policy setting, automatic learning is turned on. Users can't configure this policy setting in Control Panel. Collected data is only used for handwriting recognition, if handwriting personalization is turned on.

If you don't configure this policy, users can choose to enable or disable automatic learning either from the Handwriting tab in the Tablet Settings in Control Panel or from the opt-in dialog.

This policy setting is related to the "Turn off handwriting personalization" policy setting.

> [!NOTE]
> The amount of stored ink is limited to 50 MB and the amount of text information to approximately 5 MB. When these limits are reached and new data is collected, old data is deleted to make room for more recent data.
>
> Handwriting personalization works only for Microsoft handwriting recognizers, and not with third-party recognizers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off automatic learning*
-   GP name: *ImplicitDataCollectionOff_2*
-   GP path: *Control Panel\Regional and Language Options\Handwriting personalization*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-localesystemrestrict"></a>**ADMX_Globalization/LocaleSystemRestrict**

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
This policy setting restricts the permitted system locales to the specified list. If the list is empty, it locks the system locale to its current value. This policy setting doesn't change the existing system locale; however, the next time that an administrator attempts to change the computer's system locale, they'll be restricted to the specified list.

The locale list is specified using language names, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-US;en-CA" would restrict the system locale to English (United States) and English (Canada).

If you enable this policy setting, administrators can select a system locale only from the specified system locale list.

If you disable or don't configure this policy setting, administrators can select any system locale shipped with the operating system.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict system locales*
-   GP name: *LocaleSystemRestrict*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-localeuserrestrict-1"></a>**ADMX_Globalization/LocaleUserRestrict_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting restricts users on a computer to the specified list of user locales. If the list is empty, it locks all user locales to their current values. This policy setting doesn't change existing user locale settings; however, the next time a user attempts to change their user locale, their choices will be restricted to locales in this list.

To set this policy setting on a per-user basis, make sure that you don't configure the per-computer policy setting.

The locale list is specified using language tags, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-CA;fr-CA" would restrict the user locale to English (Canada) and French (Canada).

If you enable this policy setting, only locales in the specified locale list can be selected by users.

If you disable or don't configure this policy setting, users can select any locale installed on the computer, unless restricted by the "Disallow selection of Custom Locales" policy setting.  If this policy setting is enabled at the computer level, it can't be disabled by a per-user policy. If this policy setting is disabled at the computer level, the per-user policy is ignored. If this policy setting isn't configured at the computer level, restrictions are based on per-user policies.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict user locales*
-   GP name: *LocaleUserRestrict_1*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-localeuserrestrict-2"></a>**ADMX_Globalization/LocaleUserRestrict_2**

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
This policy setting restricts users on a computer to the specified list of user locales. If the list is empty, it locks all user locales to their current values. This policy setting doesn't change existing user locale settings; however, the next time a user attempts to change their user locale, their choices will be restricted to locales in this list.

To set this policy setting on a per-user basis, make sure that you don't configure the per-computer policy setting.

The locale list is specified using language tags, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-CA;fr-CA" would restrict the user locale to English (Canada) and French (Canada).

If you enable this policy setting, only locales in the specified locale list can be selected by users.

If you disable or don't configure this policy setting, users can select any locale installed on the computer, unless restricted by the "Disallow selection of Custom Locales" policy setting.

If this policy setting is enabled at the computer level, it can't be disabled by a per-user policy. If this policy setting is disabled at the computer level, the per-user policy is ignored. If this policy setting isn't configured at the computer level, restrictions are based on per-user policies.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict user locales*
-   GP name: *LocaleUserRestrict_2*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-lockmachineuilanguage"></a>**ADMX_Globalization/LockMachineUILanguage**

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
This policy setting restricts the Windows UI language for all users.

This policy setting is meant for computers with more than one UI language installed.

If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language will follow the language specified by the administrator as the system UI languages. The UI language selected by the user will be ignored if it's different than any of the system UI languages.

If you disable or don't configure this policy setting, the user can specify which UI language is used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restricts the UI language Windows uses for all logged users*
-   GP name: *LockMachineUILanguage*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-lockuseruilanguage"></a>**ADMX_Globalization/LockUserUILanguage**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting restricts the Windows UI language for specific users.

This policy setting applies to computers with more than one UI language installed.

If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language for the selected user. If the specified language isn't installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the user.

If you disable or don't configure this policy setting, there's no restriction on which language users should use.

To enable this policy setting in Windows Server 2003, Windows XP, or Windows 2000, to use the "Restrict selection of Windows menus and dialogs language" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restricts the UI languages Windows should use for the selected user*
-   GP name: *LockUserUILanguage*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-preventgeoidchange-1"></a>**ADMX_Globalization/PreventGeoIdChange_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from changing their user geographical location (GeoID).

If you enable this policy setting, users can't change their GeoID.

If you disable or don't configure this policy setting, users may select any GeoID.

If you enable this policy setting at the computer level, it can't be disabled by a per-user policy setting. If you disable this policy setting at the computer level, the per-user policy is ignored. If you don't configure this policy setting at the computer level, restrictions are based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that the per-computer policy setting isn't configured.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow changing of geographic location*
-   GP name: *PreventGeoIdChange_1*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-preventgeoidchange-2"></a>**ADMX_Globalization/PreventGeoIdChange_2**

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
This policy setting prevents users from changing their user geographical location (GeoID).

If you enable this policy setting, users can't change their GeoID.

If you disable or don't configure this policy setting, users may select any GeoID.

If you enable this policy setting at the computer level, it can't be disabled by a per-user policy setting. If you disable this policy setting at the computer level, the per-user policy is ignored. If you don't configure this policy setting at the computer level, restrictions are based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that the per-computer policy setting isn't configured.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow changing of geographic location*
-   GP name: *PreventGeoIdChange_2*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-preventuseroverrides-1"></a>**ADMX_Globalization/PreventUserOverrides_1**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents the user from customizing their locale by changing their user overrides.

Any existing overrides in place when this policy is enabled will be frozen. To remove existing user overrides, first reset the user(s) values to the defaults and then apply this policy.

When this policy setting is enabled, users can still choose alternate locales installed on the system unless prevented by other policies, however, they'll be unable to customize those choices.

The user can't customize their user locale with user overrides.

If this policy setting is disabled or not configured, then the user can customize their user locale overrides.

If this policy is set to Enabled at the computer level, then it can't be disabled by a per-User policy. If this policy is set to Disabled at the computer level, then the per-User policy will be ignored. If this policy is set to Not Configured at the computer level, then restrictions will be based on per-User policies.

To set this policy on a per-user basis, make sure that the per-computer policy is set to Not Configured.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow user override of locale settings*
-   GP name: *PreventUserOverrides_1*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-preventuseroverrides-2"></a>**ADMX_Globalization/PreventUserOverrides_2**

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
This policy setting prevents the user from customizing their locale by changing their user overrides.

Any existing overrides in place when this policy is enabled will be frozen. To remove existing user overrides, first reset the user(s) values to the defaults and then apply this policy.

When this policy setting is enabled, users can still choose alternate locales installed on the system unless prevented by other policies, however, they'll be unable to customize those choices.

The user can't customize their user locale with user overrides.

If this policy setting is disabled or not configured, then the user can customize their user locale overrides.

If this policy is set to Enabled at the computer level, then it can't be disabled by a per-User policy. If this policy is set to Disabled at the computer level, then the per-User policy will be ignored. If this policy is set to Not Configured at the computer level, then restrictions will be based on per-User policies.

To set this policy on a per-user basis, make sure that the per-computer policy is set to Not Configured.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow user override of locale settings*
-   GP name: *PreventUserOverrides_2*
-   GP path: *System\Locale Services*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-restrictuilangselect"></a>**ADMX_Globalization/RestrictUILangSelect**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting restricts users to the specified language by disabling the menus and dialog box controls in the Region settings control panel. If the specified language isn't installed on the target computer, the language selection defaults to English.

If you enable this policy setting, the dialog box controls in the Regional and Language Options control panel aren't accessible to the signed-in user. This prevention of access prevents users from specifying a language different than the one used.

To enable this policy setting in Windows Vista, use the "Restricts the UI languages Windows should use for the selected user" policy setting.

If you disable or don't configure this policy setting, the logged-on user can access the dialog box controls in the Regional and Language Options control panel to select any available UI language.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Restrict selection of Windows menus and dialogs language*
-   GP name: *RestrictUILangSelect*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-turnoffautocorrectmisspelledwords"></a>**ADMX_Globalization/TurnOffAutocorrectMisspelledWords**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy turns off the autocorrect misspelled words option. This turn off doesn't, however, prevent the user or an application from changing the setting programmatically.

The autocorrect misspelled words option controls whether or not errors in typed text will be automatically corrected.

If the policy is enabled, then the option will be locked to not autocorrect misspelled words.

If the policy is disabled or not configured, then the user will be free to change the setting according to their preference.

The availability and function of this setting is dependent on supported languages being enabled.
<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off autocorrect misspelled words*
-   GP name: *TurnOffAutocorrectMisspelledWords*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-turnoffhighlightmisspelledwords"></a>**ADMX_Globalization/TurnOffHighlightMisspelledWords**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy turns off the highlight misspelled words option. This turn off doesn't, however, prevent the user or an application from changing the setting programmatically.

The highlight misspelled words option controls whether or next spelling errors in typed text will be highlighted.

If the policy is enabled, then the option will be locked to not highlight misspelled words.

If the policy is disabled or not configured, then the user will be free to change the setting according to their preference.

The availability and function of this setting is dependent on supported languages being enabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off highlight misspelled words*
-   GP name: *TurnOffHighlightMisspelledWords*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-turnoffinsertspace"></a>**ADMX_Globalization/TurnOffInsertSpace**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy turns off the insert a space after selecting a text prediction option. This turn off doesn't, however, prevent the user or an application from changing the setting programmatically.

The insert a space after selecting a text prediction option controls whether or not a space will be inserted after the user selects a text prediction candidate when using the on-screen keyboard.

If the policy is enabled, then the option will be locked to not insert a space after selecting a text prediction.

If the policy is disabled or not configured, then the user will be free to change the setting according to their preference.

The availability and function of this setting is dependent on supported languages being enabled.
<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off insert a space after selecting a text prediction*
-   GP name: *TurnOffInsertSpace*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-turnoffoffertextpredictions"></a>**ADMX_Globalization/TurnOffOfferTextPredictions**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy turns off the offer text predictions as I type option. This turn off doesn't, however, prevent the user or an application from changing the setting programmatically.

The offer text predictions as I type option controls whether or not text prediction suggestions will be presented to the user on the on-screen keyboard.

If the policy is enabled, then the option will be locked to not offer text predictions.

If the policy is disabled or not configured, then the user will be free to change the setting according to their preference.

The availability and function of this setting is dependent on supported languages being enabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off offer text predictions as I type*
-   GP name: *TurnOffOfferTextPredictions*
-   GP path: *Control Panel\Regional and Language Options*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-globalization-y2k"></a>**ADMX_Globalization/Y2K**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines how programs interpret two-digit years.

This policy setting affects only the programs that use this Windows feature to interpret two-digit years. If a program doesn't interpret two-digit years correctly, consult the documentation or manufacturer of the program.

If you enable this policy setting, the system specifies the largest two-digit year interpreted as being preceded by 20. All numbers less than or equal to the specified value are interpreted as being preceded by 20. All numbers greater than the specified value are interpreted as being preceded by 19.

For example, the default value, 2029, specifies that all two-digit years less than or equal to 29 (00 to 29) are interpreted as being preceded by 20, that is 2000 to 2029. Conversely, all two-digit years greater than 29 (30 to 99) are interpreted as being preceded by 19, that is, 1930 to 1999.

If you disable or don't configure this policy setting, Windows doesn't interpret two-digit year formats using this scheme for the program.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Century interpretation for Year 2000*
-   GP name: *Y2K*
-   GP path: *System*
-   GP ADMX file name: *Globalization.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)