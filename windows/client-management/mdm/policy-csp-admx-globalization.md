---
title: ADMX_Globalization Policy CSP
description: Learn more about the ADMX_Globalization Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Globalization-Begin -->
# Policy CSP - ADMX_Globalization

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Globalization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Globalization-Editable-End -->

<!-- BlockUserInputMethodsForSignIn-Begin -->
## BlockUserInputMethodsForSignIn

<!-- BlockUserInputMethodsForSignIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BlockUserInputMethodsForSignIn-Applicability-End -->

<!-- BlockUserInputMethodsForSignIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/BlockUserInputMethodsForSignIn
```
<!-- BlockUserInputMethodsForSignIn-OmaUri-End -->

<!-- BlockUserInputMethodsForSignIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy prevents automatic copying of user input methods to the system account for use on the sign-in screen. The user is restricted to the set of input methods that are enabled in the system account.

Note this doesn't affect the availability of user input methods on the lock screen or with the UAC prompt.

- If the policy is enabled, then the user will get input methods enabled for the system account on the sign-in page.

- If the policy is disabled or Not Configured, then the user will be able to use input methods enabled for their user account on the sign-in page.
<!-- BlockUserInputMethodsForSignIn-Description-End -->

<!-- BlockUserInputMethodsForSignIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BlockUserInputMethodsForSignIn-Editable-End -->

<!-- BlockUserInputMethodsForSignIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BlockUserInputMethodsForSignIn-DFProperties-End -->

<!-- BlockUserInputMethodsForSignIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BlockUserInputMethodsForSignIn |
| Friendly Name | Disallow copying of user input methods to the system account for sign-in |
| Location | Computer Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | BlockUserInputMethodsForSignIn |
| ADMX File Name | Globalization.admx |
<!-- BlockUserInputMethodsForSignIn-AdmxBacked-End -->

<!-- BlockUserInputMethodsForSignIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockUserInputMethodsForSignIn-Examples-End -->

<!-- BlockUserInputMethodsForSignIn-End -->

<!-- CustomLocalesNoSelect_1-Begin -->
## CustomLocalesNoSelect_1

<!-- CustomLocalesNoSelect_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomLocalesNoSelect_1-Applicability-End -->

<!-- CustomLocalesNoSelect_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/CustomLocalesNoSelect_1
```
<!-- CustomLocalesNoSelect_1-OmaUri-End -->

<!-- CustomLocalesNoSelect_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents a user from selecting a supplemental custom locale as their user locale. The user is restricted to the set of locales that are installed with the operating system.

This doesn't affect the selection of replacement locales. To prevent the selection of replacement locales, adjust the permissions of the %windir%\Globalization directory to prevent the installation of locales by unauthorized users.

The policy setting "Restrict user locales" can also be enabled to disallow selection of a custom locale, even if this policy setting isn't configured.

- If you enable this policy setting, the user can't select a custom locale as their user locale, but they can still select a replacement locale if one is installed.

- If you disable or don't configure this policy setting, the user can select a custom locale as their user locale.

- If this policy setting is enabled at the machine level, it can't be disabled by a per-user policy setting.

- If this policy setting is disabled at the machine level, the per-user policy setting will be ignored.

- If this policy setting isn't configured at the machine level, restrictions will be based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that you don't configure the per-machine policy setting.
<!-- CustomLocalesNoSelect_1-Description-End -->

<!-- CustomLocalesNoSelect_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomLocalesNoSelect_1-Editable-End -->

<!-- CustomLocalesNoSelect_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomLocalesNoSelect_1-DFProperties-End -->

<!-- CustomLocalesNoSelect_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomLocalesNoSelect_1 |
| Friendly Name | Disallow selection of Custom Locales |
| Location | User Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | CustomLocalesNoSelect |
| ADMX File Name | Globalization.admx |
<!-- CustomLocalesNoSelect_1-AdmxBacked-End -->

<!-- CustomLocalesNoSelect_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomLocalesNoSelect_1-Examples-End -->

<!-- CustomLocalesNoSelect_1-End -->

<!-- CustomLocalesNoSelect_2-Begin -->
## CustomLocalesNoSelect_2

<!-- CustomLocalesNoSelect_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomLocalesNoSelect_2-Applicability-End -->

<!-- CustomLocalesNoSelect_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/CustomLocalesNoSelect_2
```
<!-- CustomLocalesNoSelect_2-OmaUri-End -->

<!-- CustomLocalesNoSelect_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents a user from selecting a supplemental custom locale as their user locale. The user is restricted to the set of locales that are installed with the operating system.

This doesn't affect the selection of replacement locales. To prevent the selection of replacement locales, adjust the permissions of the %windir%\Globalization directory to prevent the installation of locales by unauthorized users.

The policy setting "Restrict user locales" can also be enabled to disallow selection of a custom locale, even if this policy setting isn't configured.

- If you enable this policy setting, the user can't select a custom locale as their user locale, but they can still select a replacement locale if one is installed.

- If you disable or don't configure this policy setting, the user can select a custom locale as their user locale.

- If this policy setting is enabled at the machine level, it can't be disabled by a per-user policy setting.

- If this policy setting is disabled at the machine level, the per-user policy setting will be ignored.

- If this policy setting isn't configured at the machine level, restrictions will be based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that you don't configure the per-machine policy setting.
<!-- CustomLocalesNoSelect_2-Description-End -->

<!-- CustomLocalesNoSelect_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomLocalesNoSelect_2-Editable-End -->

<!-- CustomLocalesNoSelect_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomLocalesNoSelect_2-DFProperties-End -->

<!-- CustomLocalesNoSelect_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomLocalesNoSelect_2 |
| Friendly Name | Disallow selection of Custom Locales |
| Location | Computer Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | CustomLocalesNoSelect |
| ADMX File Name | Globalization.admx |
<!-- CustomLocalesNoSelect_2-AdmxBacked-End -->

<!-- CustomLocalesNoSelect_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomLocalesNoSelect_2-Examples-End -->

<!-- CustomLocalesNoSelect_2-End -->

<!-- HideAdminOptions-Begin -->
## HideAdminOptions

<!-- HideAdminOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideAdminOptions-Applicability-End -->

<!-- HideAdminOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/HideAdminOptions
```
<!-- HideAdminOptions-OmaUri-End -->

<!-- HideAdminOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes the Administrative options from the Region settings control panel. Administrative options include interfaces for setting system locale and copying settings to the default user. This policy setting does not, however, prevent an administrator or another application from changing these values programmatically.

This policy setting is used only to simplify the Regional Options control panel.

- If you enable this policy setting, the user can't see the Administrative options.

- If you disable or don't configure this policy setting, the user can see the Administrative options.

> [!NOTE]
> Even if a user can see the Administrative options, other policies may prevent them from modifying the values.
<!-- HideAdminOptions-Description-End -->

<!-- HideAdminOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideAdminOptions-Editable-End -->

<!-- HideAdminOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideAdminOptions-DFProperties-End -->

<!-- HideAdminOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideAdminOptions |
| Friendly Name | Hide Regional and Language Options administrative options |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | HideAdminOptions |
| ADMX File Name | Globalization.admx |
<!-- HideAdminOptions-AdmxBacked-End -->

<!-- HideAdminOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideAdminOptions-Examples-End -->

<!-- HideAdminOptions-End -->

<!-- HideCurrentLocation-Begin -->
## HideCurrentLocation

<!-- HideCurrentLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideCurrentLocation-Applicability-End -->

<!-- HideCurrentLocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/HideCurrentLocation
```
<!-- HideCurrentLocation-OmaUri-End -->

<!-- HideCurrentLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes the option to change the user's geographical location (GeoID) from the Region settings control panel.

This policy setting is used only to simplify the Regional Options control panel.

- If you enable this policy setting, the user doesn't see the option to change the GeoID. This doesn't prevent the user or an application from changing the GeoID programmatically.

- If you disable or don't configure this policy setting, the user sees the option for changing the user location (GeoID).

> [!NOTE]
> Even if a user can see the GeoID option, the "Disallow changing of geographical location" option can prevent them from actually changing their current geographical location.
<!-- HideCurrentLocation-Description-End -->

<!-- HideCurrentLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideCurrentLocation-Editable-End -->

<!-- HideCurrentLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideCurrentLocation-DFProperties-End -->

<!-- HideCurrentLocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideCurrentLocation |
| Friendly Name | Hide the geographic location option |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | HideCurrentLocation |
| ADMX File Name | Globalization.admx |
<!-- HideCurrentLocation-AdmxBacked-End -->

<!-- HideCurrentLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideCurrentLocation-Examples-End -->

<!-- HideCurrentLocation-End -->

<!-- HideLanguageSelection-Begin -->
## HideLanguageSelection

<!-- HideLanguageSelection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideLanguageSelection-Applicability-End -->

<!-- HideLanguageSelection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/HideLanguageSelection
```
<!-- HideLanguageSelection-OmaUri-End -->

<!-- HideLanguageSelection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes the option to change the user's menus and dialogs (UI) language from the Language and Regional Options control panel.

This policy setting is used only to simplify the Regional Options control panel.

- If you enable this policy setting, the user doesn't see the option for changing the UI language. This doesn't prevent the user or an application from changing the UI language programmatically.

- If you disable or don't configure this policy setting, the user sees the option for changing the UI language.

> [!NOTE]
> Even if a user can see the option to change the UI language, other policy settings can prevent them from changing their UI language.
<!-- HideLanguageSelection-Description-End -->

<!-- HideLanguageSelection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideLanguageSelection-Editable-End -->

<!-- HideLanguageSelection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideLanguageSelection-DFProperties-End -->

<!-- HideLanguageSelection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideLanguageSelection |
| Friendly Name | Hide the select language group options |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | HideLanguageSelection |
| ADMX File Name | Globalization.admx |
<!-- HideLanguageSelection-AdmxBacked-End -->

<!-- HideLanguageSelection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideLanguageSelection-Examples-End -->

<!-- HideLanguageSelection-End -->

<!-- HideLocaleSelectAndCustomize-Begin -->
## HideLocaleSelectAndCustomize

<!-- HideLocaleSelectAndCustomize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideLocaleSelectAndCustomize-Applicability-End -->

<!-- HideLocaleSelectAndCustomize-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/HideLocaleSelectAndCustomize
```
<!-- HideLocaleSelectAndCustomize-OmaUri-End -->

<!-- HideLocaleSelectAndCustomize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes the regional formats interface from the Region settings control panel.

This policy setting is used only to simplify the Regional and Language Options control panel.

- If you enable this policy setting, the user doesn't see the regional formats options. This doesn't prevent the user or an application from changing their user locale or user overrides programmatically.

- If you disable or don't configure this policy setting, the user sees the regional formats options for changing and customizing the user locale.
<!-- HideLocaleSelectAndCustomize-Description-End -->

<!-- HideLocaleSelectAndCustomize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideLocaleSelectAndCustomize-Editable-End -->

<!-- HideLocaleSelectAndCustomize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideLocaleSelectAndCustomize-DFProperties-End -->

<!-- HideLocaleSelectAndCustomize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideLocaleSelectAndCustomize |
| Friendly Name | Hide user locale selection and customization options |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | HideLocaleSelectAndCustomize |
| ADMX File Name | Globalization.admx |
<!-- HideLocaleSelectAndCustomize-AdmxBacked-End -->

<!-- HideLocaleSelectAndCustomize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideLocaleSelectAndCustomize-Examples-End -->

<!-- HideLocaleSelectAndCustomize-End -->

<!-- ImplicitDataCollectionOff_1-Begin -->
## ImplicitDataCollectionOff_1

<!-- ImplicitDataCollectionOff_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ImplicitDataCollectionOff_1-Applicability-End -->

<!-- ImplicitDataCollectionOff_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/ImplicitDataCollectionOff_1
```
<!-- ImplicitDataCollectionOff_1-OmaUri-End -->

<!-- ImplicitDataCollectionOff_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the automatic learning component of handwriting recognition personalization.

Automatic learning enables the collection and storage of text and ink written by the user in order to help adapt handwriting recognition to the vocabulary and handwriting style of the user.

Text that's collected includes all outgoing messages in Windows Mail, and MAPI enabled email clients, as well as URLs from the Internet Explorer browser history. The information that's stored includes word frequency and new words not already known to the handwriting recognition engines (for example, proper names and acronyms). Deleting email content or the browser history doesn't delete the stored personalization data. Ink entered through Input Panel is collected and stored.

> [!NOTE]
> Automatic learning of both text and ink might not be available for all languages, even when handwriting personalization is available. See Tablet PC Help for more information.

- If you enable this policy setting, automatic learning stops and any stored data is deleted. Users can't configure this setting in Control Panel.

- If you disable this policy setting, automatic learning is turned on. Users can't configure this policy setting in Control Panel. Collected data is only used for handwriting recognition, if handwriting personalization is turned on.

- If you don't configure this policy, users can choose to enable or disable automatic learning either from the Handwriting tab in the Tablet Settings in Control Panel or from the opt-in dialog.

This policy setting is related to the "Turn off handwriting personalization" policy setting.

> [!NOTE]
> The amount of stored ink is limited to 50 MB and the amount of text information to approximately 5 MB. When these limits are reached and new data is collected, old data is deleted to make room for more recent data.

> [!NOTE]
> Handwriting personalization works only for Microsoft handwriting recognizers, and not with third-party recognizers.
<!-- ImplicitDataCollectionOff_1-Description-End -->

<!-- ImplicitDataCollectionOff_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ImplicitDataCollectionOff_1-Editable-End -->

<!-- ImplicitDataCollectionOff_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ImplicitDataCollectionOff_1-DFProperties-End -->

<!-- ImplicitDataCollectionOff_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ImplicitDataCollectionOff_1 |
| Friendly Name | Turn off automatic learning |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options > Handwriting personalization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\InputPersonalization |
| ADMX File Name | Globalization.admx |
<!-- ImplicitDataCollectionOff_1-AdmxBacked-End -->

<!-- ImplicitDataCollectionOff_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ImplicitDataCollectionOff_1-Examples-End -->

<!-- ImplicitDataCollectionOff_1-End -->

<!-- ImplicitDataCollectionOff_2-Begin -->
## ImplicitDataCollectionOff_2

<!-- ImplicitDataCollectionOff_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ImplicitDataCollectionOff_2-Applicability-End -->

<!-- ImplicitDataCollectionOff_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/ImplicitDataCollectionOff_2
```
<!-- ImplicitDataCollectionOff_2-OmaUri-End -->

<!-- ImplicitDataCollectionOff_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the automatic learning component of handwriting recognition personalization.

Automatic learning enables the collection and storage of text and ink written by the user in order to help adapt handwriting recognition to the vocabulary and handwriting style of the user.

Text that's collected includes all outgoing messages in Windows Mail, and MAPI enabled email clients, as well as URLs from the Internet Explorer browser history. The information that's stored includes word frequency and new words not already known to the handwriting recognition engines (for example, proper names and acronyms). Deleting email content or the browser history doesn't delete the stored personalization data. Ink entered through Input Panel is collected and stored.

> [!NOTE]
> Automatic learning of both text and ink might not be available for all languages, even when handwriting personalization is available. See Tablet PC Help for more information.

- If you enable this policy setting, automatic learning stops and any stored data is deleted. Users can't configure this setting in Control Panel.

- If you disable this policy setting, automatic learning is turned on. Users can't configure this policy setting in Control Panel. Collected data is only used for handwriting recognition, if handwriting personalization is turned on.

- If you don't configure this policy, users can choose to enable or disable automatic learning either from the Handwriting tab in the Tablet Settings in Control Panel or from the opt-in dialog.

This policy setting is related to the "Turn off handwriting personalization" policy setting.

> [!NOTE]
> The amount of stored ink is limited to 50 MB and the amount of text information to approximately 5 MB. When these limits are reached and new data is collected, old data is deleted to make room for more recent data.

> [!NOTE]
> Handwriting personalization works only for Microsoft handwriting recognizers, and not with third-party recognizers.
<!-- ImplicitDataCollectionOff_2-Description-End -->

<!-- ImplicitDataCollectionOff_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ImplicitDataCollectionOff_2-Editable-End -->

<!-- ImplicitDataCollectionOff_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ImplicitDataCollectionOff_2-DFProperties-End -->

<!-- ImplicitDataCollectionOff_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ImplicitDataCollectionOff_2 |
| Friendly Name | Turn off automatic learning |
| Location | Computer Configuration |
| Path | Control Panel > Regional and Language Options > Handwriting personalization |
| Registry Key Name | SOFTWARE\Policies\Microsoft\InputPersonalization |
| ADMX File Name | Globalization.admx |
<!-- ImplicitDataCollectionOff_2-AdmxBacked-End -->

<!-- ImplicitDataCollectionOff_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ImplicitDataCollectionOff_2-Examples-End -->

<!-- ImplicitDataCollectionOff_2-End -->

<!-- LocaleSystemRestrict-Begin -->
## LocaleSystemRestrict

<!-- LocaleSystemRestrict-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LocaleSystemRestrict-Applicability-End -->

<!-- LocaleSystemRestrict-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/LocaleSystemRestrict
```
<!-- LocaleSystemRestrict-OmaUri-End -->

<!-- LocaleSystemRestrict-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts the permitted system locales to the specified list. If the list is empty, it locks the system locale to its current value. This policy setting doesn't change the existing system locale; however, the next time that an administrator attempts to change the computer's system locale, they will be restricted to the specified list.

The locale list is specified using language names, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-US;en-CA" would restrict the system locale to English (United States) and English (Canada).

- If you enable this policy setting, administrators can select a system locale only from the specified system locale list.

- If you disable or don't configure this policy setting, administrators can select any system locale shipped with the operating system.
<!-- LocaleSystemRestrict-Description-End -->

<!-- LocaleSystemRestrict-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocaleSystemRestrict-Editable-End -->

<!-- LocaleSystemRestrict-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocaleSystemRestrict-DFProperties-End -->

<!-- LocaleSystemRestrict-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LocaleSystemRestrict |
| Friendly Name | Restrict system locales |
| Location | Computer Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | RestrictSystemLocales |
| ADMX File Name | Globalization.admx |
<!-- LocaleSystemRestrict-AdmxBacked-End -->

<!-- LocaleSystemRestrict-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocaleSystemRestrict-Examples-End -->

<!-- LocaleSystemRestrict-End -->

<!-- LocaleUserRestrict_1-Begin -->
## LocaleUserRestrict_1

<!-- LocaleUserRestrict_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LocaleUserRestrict_1-Applicability-End -->

<!-- LocaleUserRestrict_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/LocaleUserRestrict_1
```
<!-- LocaleUserRestrict_1-OmaUri-End -->

<!-- LocaleUserRestrict_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts users on a computer to the specified list of user locales. If the list is empty, it locks all user locales to their current values. This policy setting doesn't change existing user locale settings; however, the next time a user attempts to change their user locale, their choices will be restricted to locales in this list.

To set this policy setting on a per-user basis, make sure that you don't configure the per-computer policy setting.

The locale list is specified using language tags, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-CA;fr-CA" would restrict the user locale to English (Canada) and French (Canada).

- If you enable this policy setting, only locales in the specified locale list can be selected by users.

- If you disable or don't configure this policy setting, users can select any locale installed on the computer, unless restricted by the "Disallow selection of Custom Locales" policy setting.

- If this policy setting is enabled at the computer level, it can't be disabled by a per-user policy.

- If this policy setting is disabled at the computer level, the per-user policy is ignored.

- If this policy setting isn't configured at the computer level, restrictions are based on per-user policies.
<!-- LocaleUserRestrict_1-Description-End -->

<!-- LocaleUserRestrict_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocaleUserRestrict_1-Editable-End -->

<!-- LocaleUserRestrict_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocaleUserRestrict_1-DFProperties-End -->

<!-- LocaleUserRestrict_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LocaleUserRestrict_1 |
| Friendly Name | Restrict user locales |
| Location | User Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | RestrictUserLocales |
| ADMX File Name | Globalization.admx |
<!-- LocaleUserRestrict_1-AdmxBacked-End -->

<!-- LocaleUserRestrict_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocaleUserRestrict_1-Examples-End -->

<!-- LocaleUserRestrict_1-End -->

<!-- LocaleUserRestrict_2-Begin -->
## LocaleUserRestrict_2

<!-- LocaleUserRestrict_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LocaleUserRestrict_2-Applicability-End -->

<!-- LocaleUserRestrict_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/LocaleUserRestrict_2
```
<!-- LocaleUserRestrict_2-OmaUri-End -->

<!-- LocaleUserRestrict_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts users on a computer to the specified list of user locales. If the list is empty, it locks all user locales to their current values. This policy setting doesn't change existing user locale settings; however, the next time a user attempts to change their user locale, their choices will be restricted to locales in this list.

To set this policy setting on a per-user basis, make sure that you don't configure the per-computer policy setting.

The locale list is specified using language tags, separated by a semicolon (;). For example, en-US is English (United States). Specifying "en-CA;fr-CA" would restrict the user locale to English (Canada) and French (Canada).

- If you enable this policy setting, only locales in the specified locale list can be selected by users.

- If you disable or don't configure this policy setting, users can select any locale installed on the computer, unless restricted by the "Disallow selection of Custom Locales" policy setting.

- If this policy setting is enabled at the computer level, it can't be disabled by a per-user policy.

- If this policy setting is disabled at the computer level, the per-user policy is ignored.

- If this policy setting isn't configured at the computer level, restrictions are based on per-user policies.
<!-- LocaleUserRestrict_2-Description-End -->

<!-- LocaleUserRestrict_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocaleUserRestrict_2-Editable-End -->

<!-- LocaleUserRestrict_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocaleUserRestrict_2-DFProperties-End -->

<!-- LocaleUserRestrict_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LocaleUserRestrict_2 |
| Friendly Name | Restrict user locales |
| Location | Computer Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | RestrictUserLocales |
| ADMX File Name | Globalization.admx |
<!-- LocaleUserRestrict_2-AdmxBacked-End -->

<!-- LocaleUserRestrict_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocaleUserRestrict_2-Examples-End -->

<!-- LocaleUserRestrict_2-End -->

<!-- LockMachineUILanguage-Begin -->
## LockMachineUILanguage

<!-- LockMachineUILanguage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LockMachineUILanguage-Applicability-End -->

<!-- LockMachineUILanguage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/LockMachineUILanguage
```
<!-- LockMachineUILanguage-OmaUri-End -->

<!-- LockMachineUILanguage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts the Windows UI language for all users.

This is a policy setting for computers with more than one UI language installed.

- If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language will follow the language specified by the administrator as the system UI languages. The UI language selected by the user will be ignored if it's different than any of the system UI languages.

- If you disable or don't configure this policy setting, the user can specify which UI language is used.
<!-- LockMachineUILanguage-Description-End -->

<!-- LockMachineUILanguage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockMachineUILanguage-Editable-End -->

<!-- LockMachineUILanguage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockMachineUILanguage-DFProperties-End -->

<!-- LockMachineUILanguage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LockMachineUILanguage |
| Friendly Name | Restricts the UI language Windows uses for all logged users |
| Location | Computer Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\MUI\Settings |
| ADMX File Name | Globalization.admx |
<!-- LockMachineUILanguage-AdmxBacked-End -->

<!-- LockMachineUILanguage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockMachineUILanguage-Examples-End -->

<!-- LockMachineUILanguage-End -->

<!-- LockUserUILanguage-Begin -->
## LockUserUILanguage

<!-- LockUserUILanguage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LockUserUILanguage-Applicability-End -->

<!-- LockUserUILanguage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/LockUserUILanguage
```
<!-- LockUserUILanguage-OmaUri-End -->

<!-- LockUserUILanguage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts the Windows UI language for specific users.

This policy setting applies to computers with more than one UI language installed.

- If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language for the selected user. If the specified language isn't installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the user.

- If you disable or don't configure this policy setting, there is no restriction on which language users should use.

To enable this policy setting in Windows Server 2003, Windows XP, or Windows 2000, to use the "Restrict selection of Windows menus and dialogs language" policy setting.
<!-- LockUserUILanguage-Description-End -->

<!-- LockUserUILanguage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockUserUILanguage-Editable-End -->

<!-- LockUserUILanguage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockUserUILanguage-DFProperties-End -->

<!-- LockUserUILanguage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LockUserUILanguage |
| Friendly Name | Restricts the UI languages Windows should use for the selected user |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\Desktop |
| ADMX File Name | Globalization.admx |
<!-- LockUserUILanguage-AdmxBacked-End -->

<!-- LockUserUILanguage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockUserUILanguage-Examples-End -->

<!-- LockUserUILanguage-End -->

<!-- PreventGeoIdChange_1-Begin -->
## PreventGeoIdChange_1

<!-- PreventGeoIdChange_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventGeoIdChange_1-Applicability-End -->

<!-- PreventGeoIdChange_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/PreventGeoIdChange_1
```
<!-- PreventGeoIdChange_1-OmaUri-End -->

<!-- PreventGeoIdChange_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from changing their user geographical location (GeoID).

- If you enable this policy setting, users can't change their GeoID.

- If you disable or don't configure this policy setting, users may select any GeoID.

- If you enable this policy setting at the computer level, it can't be disabled by a per-user policy setting.

- If you disable this policy setting at the computer level, the per-user policy is ignored.

- If you don't configure this policy setting at the computer level, restrictions are based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that the per-computer policy setting isn't configured.
<!-- PreventGeoIdChange_1-Description-End -->

<!-- PreventGeoIdChange_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventGeoIdChange_1-Editable-End -->

<!-- PreventGeoIdChange_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventGeoIdChange_1-DFProperties-End -->

<!-- PreventGeoIdChange_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventGeoIdChange_1 |
| Friendly Name | Disallow changing of geographic location |
| Location | User Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | PreventGeoIdChange |
| ADMX File Name | Globalization.admx |
<!-- PreventGeoIdChange_1-AdmxBacked-End -->

<!-- PreventGeoIdChange_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventGeoIdChange_1-Examples-End -->

<!-- PreventGeoIdChange_1-End -->

<!-- PreventGeoIdChange_2-Begin -->
## PreventGeoIdChange_2

<!-- PreventGeoIdChange_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventGeoIdChange_2-Applicability-End -->

<!-- PreventGeoIdChange_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/PreventGeoIdChange_2
```
<!-- PreventGeoIdChange_2-OmaUri-End -->

<!-- PreventGeoIdChange_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from changing their user geographical location (GeoID).

- If you enable this policy setting, users can't change their GeoID.

- If you disable or don't configure this policy setting, users may select any GeoID.

- If you enable this policy setting at the computer level, it can't be disabled by a per-user policy setting.

- If you disable this policy setting at the computer level, the per-user policy is ignored.

- If you don't configure this policy setting at the computer level, restrictions are based on per-user policy settings.

To set this policy setting on a per-user basis, make sure that the per-computer policy setting isn't configured.
<!-- PreventGeoIdChange_2-Description-End -->

<!-- PreventGeoIdChange_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventGeoIdChange_2-Editable-End -->

<!-- PreventGeoIdChange_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventGeoIdChange_2-DFProperties-End -->

<!-- PreventGeoIdChange_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventGeoIdChange_2 |
| Friendly Name | Disallow changing of geographic location |
| Location | Computer Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | PreventGeoIdChange |
| ADMX File Name | Globalization.admx |
<!-- PreventGeoIdChange_2-AdmxBacked-End -->

<!-- PreventGeoIdChange_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventGeoIdChange_2-Examples-End -->

<!-- PreventGeoIdChange_2-End -->

<!-- PreventUserOverrides_1-Begin -->
## PreventUserOverrides_1

<!-- PreventUserOverrides_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventUserOverrides_1-Applicability-End -->

<!-- PreventUserOverrides_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/PreventUserOverrides_1
```
<!-- PreventUserOverrides_1-OmaUri-End -->

<!-- PreventUserOverrides_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from customizing their locale by changing their user overrides.

Any existing overrides in place when this policy is enabled will be frozen. To remove existing user overrides, first reset the user(s) values to the defaults and then apply this policy.

When this policy setting is enabled, users can still choose alternate locales installed on the system unless prevented by other policies, however, they will be unable to customize those choices. The user can't customize their user locale with user overrides.

- If this policy setting is disabled or not configured, then the user can customize their user locale overrides.

- If this policy is set to Enabled at the computer level, then it can't be disabled by a per-User policy.

- If this policy is set to Disabled at the computer level, then the per-User policy will be ignored.

- If this policy is set to Not Configured at the computer level, then restrictions will be based on per-User policies.

To set this policy on a per-user basis, make sure that the per-computer policy is set to Not Configured.
<!-- PreventUserOverrides_1-Description-End -->

<!-- PreventUserOverrides_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventUserOverrides_1-Editable-End -->

<!-- PreventUserOverrides_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventUserOverrides_1-DFProperties-End -->

<!-- PreventUserOverrides_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventUserOverrides_1 |
| Friendly Name | Disallow user override of locale settings |
| Location | User Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | PreventUserOverrides |
| ADMX File Name | Globalization.admx |
<!-- PreventUserOverrides_1-AdmxBacked-End -->

<!-- PreventUserOverrides_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventUserOverrides_1-Examples-End -->

<!-- PreventUserOverrides_1-End -->

<!-- PreventUserOverrides_2-Begin -->
## PreventUserOverrides_2

<!-- PreventUserOverrides_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventUserOverrides_2-Applicability-End -->

<!-- PreventUserOverrides_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Globalization/PreventUserOverrides_2
```
<!-- PreventUserOverrides_2-OmaUri-End -->

<!-- PreventUserOverrides_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from customizing their locale by changing their user overrides.

Any existing overrides in place when this policy is enabled will be frozen. To remove existing user overrides, first reset the user(s) values to the defaults and then apply this policy.

When this policy setting is enabled, users can still choose alternate locales installed on the system unless prevented by other policies, however, they will be unable to customize those choices. The user can't customize their user locale with user overrides.

- If this policy setting is disabled or not configured, then the user can customize their user locale overrides.

- If this policy is set to Enabled at the computer level, then it can't be disabled by a per-User policy.

- If this policy is set to Disabled at the computer level, then the per-User policy will be ignored.

- If this policy is set to Not Configured at the computer level, then restrictions will be based on per-User policies.

To set this policy on a per-user basis, make sure that the per-computer policy is set to Not Configured.
<!-- PreventUserOverrides_2-Description-End -->

<!-- PreventUserOverrides_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventUserOverrides_2-Editable-End -->

<!-- PreventUserOverrides_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventUserOverrides_2-DFProperties-End -->

<!-- PreventUserOverrides_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventUserOverrides_2 |
| Friendly Name | Disallow user override of locale settings |
| Location | Computer Configuration |
| Path | System > Locale Services |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | PreventUserOverrides |
| ADMX File Name | Globalization.admx |
<!-- PreventUserOverrides_2-AdmxBacked-End -->

<!-- PreventUserOverrides_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventUserOverrides_2-Examples-End -->

<!-- PreventUserOverrides_2-End -->

<!-- RestrictUILangSelect-Begin -->
## RestrictUILangSelect

<!-- RestrictUILangSelect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictUILangSelect-Applicability-End -->

<!-- RestrictUILangSelect-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/RestrictUILangSelect
```
<!-- RestrictUILangSelect-OmaUri-End -->

<!-- RestrictUILangSelect-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts users to the specified language by disabling the menus and dialog box controls in the Region settings control panel. If the specified language isn't installed on the target computer, the language selection defaults to English.

- If you enable this policy setting, the dialog box controls in the Regional and Language Options control panel aren't accessible to the logged-on user. This prevents users from specifying a language different than the one used.

To enable this policy setting in Windows Vista, use the "Restricts the UI languages Windows should use for the selected user" policy setting.

- If you disable or don't configure this policy setting, the logged-on user can access the dialog box controls in the Regional and Language Options control panel to select any available UI language.
<!-- RestrictUILangSelect-Description-End -->

<!-- RestrictUILangSelect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictUILangSelect-Editable-End -->

<!-- RestrictUILangSelect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictUILangSelect-DFProperties-End -->

<!-- RestrictUILangSelect-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictUILangSelect |
| Friendly Name | Restrict selection of Windows menus and dialogs language |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\Desktop |
| ADMX File Name | Globalization.admx |
<!-- RestrictUILangSelect-AdmxBacked-End -->

<!-- RestrictUILangSelect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictUILangSelect-Examples-End -->

<!-- RestrictUILangSelect-End -->

<!-- TurnOffAutocorrectMisspelledWords-Begin -->
## TurnOffAutocorrectMisspelledWords

<!-- TurnOffAutocorrectMisspelledWords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffAutocorrectMisspelledWords-Applicability-End -->

<!-- TurnOffAutocorrectMisspelledWords-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/TurnOffAutocorrectMisspelledWords
```
<!-- TurnOffAutocorrectMisspelledWords-OmaUri-End -->

<!-- TurnOffAutocorrectMisspelledWords-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy turns off the autocorrect misspelled words option. This does not, however, prevent the user or an application from changing the setting programmatically.

The autocorrect misspelled words option controls whether or not errors in typed text will be automatically corrected.

- If the policy is enabled, then the option will be locked to not autocorrect misspelled words.

- If the policy is disabled or Not Configured, then the user will be free to change the setting according to their preference.

Note that the availability and function of this setting is dependent on supported languages being enabled.
<!-- TurnOffAutocorrectMisspelledWords-Description-End -->

<!-- TurnOffAutocorrectMisspelledWords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffAutocorrectMisspelledWords-Editable-End -->

<!-- TurnOffAutocorrectMisspelledWords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffAutocorrectMisspelledWords-DFProperties-End -->

<!-- TurnOffAutocorrectMisspelledWords-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffAutocorrectMisspelledWords |
| Friendly Name | Turn off autocorrect misspelled words |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | TurnOffAutocorrectMisspelledWords |
| ADMX File Name | Globalization.admx |
<!-- TurnOffAutocorrectMisspelledWords-AdmxBacked-End -->

<!-- TurnOffAutocorrectMisspelledWords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffAutocorrectMisspelledWords-Examples-End -->

<!-- TurnOffAutocorrectMisspelledWords-End -->

<!-- TurnOffHighlightMisspelledWords-Begin -->
## TurnOffHighlightMisspelledWords

<!-- TurnOffHighlightMisspelledWords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffHighlightMisspelledWords-Applicability-End -->

<!-- TurnOffHighlightMisspelledWords-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/TurnOffHighlightMisspelledWords
```
<!-- TurnOffHighlightMisspelledWords-OmaUri-End -->

<!-- TurnOffHighlightMisspelledWords-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy turns off the highlight misspelled words option. This does not, however, prevent the user or an application from changing the setting programmatically.

The highlight misspelled words option controls whether or next spelling errors in typed text will be highlighted.

- If the policy is enabled, then the option will be locked to not highlight misspelled words.

- If the policy is disabled or Not Configured, then the user will be free to change the setting according to their preference.

Note that the availability and function of this setting is dependent on supported languages being enabled.
<!-- TurnOffHighlightMisspelledWords-Description-End -->

<!-- TurnOffHighlightMisspelledWords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffHighlightMisspelledWords-Editable-End -->

<!-- TurnOffHighlightMisspelledWords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffHighlightMisspelledWords-DFProperties-End -->

<!-- TurnOffHighlightMisspelledWords-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffHighlightMisspelledWords |
| Friendly Name | Turn off highlight misspelled words |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | TurnOffHighlightMisspelledWords |
| ADMX File Name | Globalization.admx |
<!-- TurnOffHighlightMisspelledWords-AdmxBacked-End -->

<!-- TurnOffHighlightMisspelledWords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffHighlightMisspelledWords-Examples-End -->

<!-- TurnOffHighlightMisspelledWords-End -->

<!-- TurnOffInsertSpace-Begin -->
## TurnOffInsertSpace

<!-- TurnOffInsertSpace-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffInsertSpace-Applicability-End -->

<!-- TurnOffInsertSpace-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/TurnOffInsertSpace
```
<!-- TurnOffInsertSpace-OmaUri-End -->

<!-- TurnOffInsertSpace-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy turns off the insert a space after selecting a text prediction option. This does not, however, prevent the user or an application from changing the setting programmatically.

The insert a space after selecting a text prediction option controls whether or not a space will be inserted after the user selects a text prediction candidate when using the on-screen keyboard.

- If the policy is enabled, then the option will be locked to not insert a space after selecting a text prediction.

- If the policy is disabled or Not Configured, then the user will be free to change the setting according to their preference.

Note that the availability and function of this setting is dependent on supported languages being enabled.
<!-- TurnOffInsertSpace-Description-End -->

<!-- TurnOffInsertSpace-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffInsertSpace-Editable-End -->

<!-- TurnOffInsertSpace-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffInsertSpace-DFProperties-End -->

<!-- TurnOffInsertSpace-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffInsertSpace |
| Friendly Name | Turn off insert a space after selecting a text prediction |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | TurnOffInsertSpace |
| ADMX File Name | Globalization.admx |
<!-- TurnOffInsertSpace-AdmxBacked-End -->

<!-- TurnOffInsertSpace-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffInsertSpace-Examples-End -->

<!-- TurnOffInsertSpace-End -->

<!-- TurnOffOfferTextPredictions-Begin -->
## TurnOffOfferTextPredictions

<!-- TurnOffOfferTextPredictions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffOfferTextPredictions-Applicability-End -->

<!-- TurnOffOfferTextPredictions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/TurnOffOfferTextPredictions
```
<!-- TurnOffOfferTextPredictions-OmaUri-End -->

<!-- TurnOffOfferTextPredictions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy turns off the offer text predictions as I type option. This does not, however, prevent the user or an application from changing the setting programmatically.

The offer text predictions as I type option controls whether or not text prediction suggestions will be presented to the user on the on-screen keyboard.

- If the policy is enabled, then the option will be locked to not offer text predictions.

- If the policy is disabled or Not Configured, then the user will be free to change the setting according to their preference.

Note that the availability and function of this setting is dependent on supported languages being enabled.
<!-- TurnOffOfferTextPredictions-Description-End -->

<!-- TurnOffOfferTextPredictions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffOfferTextPredictions-Editable-End -->

<!-- TurnOffOfferTextPredictions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffOfferTextPredictions-DFProperties-End -->

<!-- TurnOffOfferTextPredictions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffOfferTextPredictions |
| Friendly Name | Turn off offer text predictions as I type |
| Location | User Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | TurnOffOfferTextPredictions |
| ADMX File Name | Globalization.admx |
<!-- TurnOffOfferTextPredictions-AdmxBacked-End -->

<!-- TurnOffOfferTextPredictions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffOfferTextPredictions-Examples-End -->

<!-- TurnOffOfferTextPredictions-End -->

<!-- Y2K-Begin -->
## Y2K

<!-- Y2K-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Y2K-Applicability-End -->

<!-- Y2K-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Globalization/Y2K
```
<!-- Y2K-OmaUri-End -->

<!-- Y2K-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines how programs interpret two-digit years.

This policy setting affects only the programs that use this Windows feature to interpret two-digit years. If a program doesn't interpret two-digit years correctly, consult the documentation or manufacturer of the program.

- If you enable this policy setting, the system specifies the largest two-digit year interpreted as being preceded by 20. All numbers less than or equal to the specified value are interpreted as being preceded by 20. All numbers greater than the specified value are interpreted as being preceded by 19.

For example, the default value, 2029, specifies that all two-digit years less than or equal to 29 (00 to 29) are interpreted as being preceded by 20, that's 2000 to 2029. Conversely, all two-digit years greater than 29 (30 to 99) are interpreted as being preceded by 19, that is, 1930 to 1999.

- If you disable or don't configure this policy setting, Windows doesn't interpret two-digit year formats using this scheme for the program.
<!-- Y2K-Description-End -->

<!-- Y2K-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Y2K-Editable-End -->

<!-- Y2K-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Y2K-DFProperties-End -->

<!-- Y2K-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Y2K |
| Friendly Name | Century interpretation for Year 2000 |
| Location | User Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International\Calendars\TwoDigitYearMax |
| ADMX File Name | Globalization.admx |
<!-- Y2K-AdmxBacked-End -->

<!-- Y2K-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Y2K-Examples-End -->

<!-- Y2K-End -->

<!-- ADMX_Globalization-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Globalization-CspMoreInfo-End -->

<!-- ADMX_Globalization-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
