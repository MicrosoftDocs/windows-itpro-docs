---
title: TimeLanguageSettings Policy CSP
description: Learn more about the TimeLanguageSettings Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- TimeLanguageSettings-Begin -->
# Policy CSP - TimeLanguageSettings

<!-- TimeLanguageSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TimeLanguageSettings-Editable-End -->

<!-- AllowSet24HourClock-Begin -->
## AllowSet24HourClock

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowSet24HourClock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowSet24HourClock-Applicability-End -->

<!-- AllowSet24HourClock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TimeLanguageSettings/AllowSet24HourClock
```
<!-- AllowSet24HourClock-OmaUri-End -->

<!-- AllowSet24HourClock-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowSet24HourClock-Description-End -->

<!-- AllowSet24HourClock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSet24HourClock-Editable-End -->

<!-- AllowSet24HourClock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowSet24HourClock-DFProperties-End -->

<!-- AllowSet24HourClock-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowSet24HourClock-AllowedValues-End -->

<!-- AllowSet24HourClock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSet24HourClock-Examples-End -->

<!-- AllowSet24HourClock-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Begin -->
## BlockCleanupOfUnusedPreinstalledLangPacks

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Applicability-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TimeLanguageSettings/BlockCleanupOfUnusedPreinstalledLangPacks
```
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-OmaUri-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the LPRemove task will run to clean up language packs installed on a machine but aren't used by any users on that machine.

- If you enable this policy setting, language packs that are installed as part of the system image will remain installed even if they aren't used by any user on that system.

- If you disable or don't configure this policy setting, language packs that are installed as part of the system image but aren't used by any user on that system will be removed as part of a scheduled clean up task.
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Description-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Editable-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-DFProperties-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not blocked. |
| 1 | Blocked. |
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-AllowedValues-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | BlockCleanupOfUnusedPreinstalledLangPacks |
| Friendly Name | Block clean-up of unused language packs |
| Location | Computer Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\Control Panel\International |
| Registry Value Name | BlockCleanupOfUnusedPreinstalledLangPacks |
| ADMX File Name | Globalization.admx |
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-GpMapping-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockCleanupOfUnusedPreinstalledLangPacks-Examples-End -->

<!-- BlockCleanupOfUnusedPreinstalledLangPacks-End -->

<!-- ConfigureTimeZone-Begin -->
## ConfigureTimeZone

<!-- ConfigureTimeZone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigureTimeZone-Applicability-End -->

<!-- ConfigureTimeZone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TimeLanguageSettings/ConfigureTimeZone
```
<!-- ConfigureTimeZone-OmaUri-End -->

<!-- ConfigureTimeZone-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the time zone to be applied to the device. This is the standard Windows name for the target time zone.
<!-- ConfigureTimeZone-Description-End -->

<!-- ConfigureTimeZone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!TIP]
> To get the list of available time zones, run `Get-TimeZone -ListAvailable` in PowerShell.
<!-- ConfigureTimeZone-Editable-End -->

<!-- ConfigureTimeZone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfigureTimeZone-DFProperties-End -->

<!-- ConfigureTimeZone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureTimeZone-Examples-End -->

<!-- ConfigureTimeZone-End -->

<!-- MachineUILanguageOverwrite-Begin -->
## MachineUILanguageOverwrite

<!-- MachineUILanguageOverwrite-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MachineUILanguageOverwrite-Applicability-End -->

<!-- MachineUILanguageOverwrite-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TimeLanguageSettings/MachineUILanguageOverwrite
```
<!-- MachineUILanguageOverwrite-OmaUri-End -->

<!-- MachineUILanguageOverwrite-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls which UI language is used for computers with more than one UI language installed.

- If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language. If the specified language isn't installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the local administrator.

- If you disable or don't configure this policy setting, there is no restriction of a specific language used for the Windows menus and dialogs.
<!-- MachineUILanguageOverwrite-Description-End -->

<!-- MachineUILanguageOverwrite-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MachineUILanguageOverwrite-Editable-End -->

<!-- MachineUILanguageOverwrite-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MachineUILanguageOverwrite-DFProperties-End -->

<!-- MachineUILanguageOverwrite-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- MachineUILanguageOverwrite-AllowedValues-End -->

<!-- MachineUILanguageOverwrite-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MachineUILanguageOverwrite |
| Friendly Name | Force selected system UI language to overwrite the user UI language |
| Location | Computer Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\MUI\Settings |
| Registry Value Name | MachineUILock |
| ADMX File Name | Globalization.admx |
<!-- MachineUILanguageOverwrite-GpMapping-End -->

<!-- MachineUILanguageOverwrite-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MachineUILanguageOverwrite-Examples-End -->

<!-- MachineUILanguageOverwrite-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-Begin -->
## RestrictLanguagePacksAndFeaturesInstall

<!-- RestrictLanguagePacksAndFeaturesInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictLanguagePacksAndFeaturesInstall-Applicability-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/TimeLanguageSettings/RestrictLanguagePacksAndFeaturesInstall
```

```Device
./Device/Vendor/MSFT/Policy/Config/TimeLanguageSettings/RestrictLanguagePacksAndFeaturesInstall
```
<!-- RestrictLanguagePacksAndFeaturesInstall-OmaUri-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting restricts the install of language packs and language features, such as spell checkers, on a device.
<!-- RestrictLanguagePacksAndFeaturesInstall-Description-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictLanguagePacksAndFeaturesInstall-Editable-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RestrictLanguagePacksAndFeaturesInstall-DFProperties-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not restricted. |
| 1 | Restricted. |
<!-- RestrictLanguagePacksAndFeaturesInstall-AllowedValues-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictLanguagePacksAndFeaturesInstall |
| Path | Globalization > AT > ControlPanel > RegionalOptions |
<!-- RestrictLanguagePacksAndFeaturesInstall-GpMapping-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictLanguagePacksAndFeaturesInstall-Examples-End -->

<!-- RestrictLanguagePacksAndFeaturesInstall-End -->

<!-- TimeLanguageSettings-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- TimeLanguageSettings-CspMoreInfo-End -->

<!-- TimeLanguageSettings-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
