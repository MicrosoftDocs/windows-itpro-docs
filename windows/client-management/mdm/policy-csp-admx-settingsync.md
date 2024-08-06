---
title: ADMX_SettingSync Policy CSP
description: Learn more about the ADMX_SettingSync Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_SettingSync-Begin -->
# Policy CSP - ADMX_SettingSync

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_SettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_SettingSync-Editable-End -->

<!-- DisableApplicationSettingSync-Begin -->
## DisableApplicationSettingSync

<!-- DisableApplicationSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableApplicationSettingSync-Applicability-End -->

<!-- DisableApplicationSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableApplicationSettingSync
```
<!-- DisableApplicationSettingSync-OmaUri-End -->

<!-- DisableApplicationSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "app settings" group from syncing to and from this PC. This turns off and disables the "app settings" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "app settings" group won't be synced.

Use the option "Allow users to turn app settings syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "app settings" group is on by default and configurable by the user.
<!-- DisableApplicationSettingSync-Description-End -->

<!-- DisableApplicationSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableApplicationSettingSync-Editable-End -->

<!-- DisableApplicationSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableApplicationSettingSync-DFProperties-End -->

<!-- DisableApplicationSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableApplicationSettingSync |
| Friendly Name | Do not sync app settings |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableApplicationSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableApplicationSettingSync-AdmxBacked-End -->

<!-- DisableApplicationSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableApplicationSettingSync-Examples-End -->

<!-- DisableApplicationSettingSync-End -->

<!-- DisableAppSyncSettingSync-Begin -->
## DisableAppSyncSettingSync

<!-- DisableAppSyncSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAppSyncSettingSync-Applicability-End -->

<!-- DisableAppSyncSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableAppSyncSettingSync
```
<!-- DisableAppSyncSettingSync-OmaUri-End -->

<!-- DisableAppSyncSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "AppSync" group from syncing to and from this PC. This turns off and disables the "AppSync" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "AppSync" group won't be synced.

Use the option "Allow users to turn app syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "AppSync" group is on by default and configurable by the user.
<!-- DisableAppSyncSettingSync-Description-End -->

<!-- DisableAppSyncSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAppSyncSettingSync-Editable-End -->

<!-- DisableAppSyncSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAppSyncSettingSync-DFProperties-End -->

<!-- DisableAppSyncSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAppSyncSettingSync |
| Friendly Name | Do not sync Apps |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableAppSyncSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableAppSyncSettingSync-AdmxBacked-End -->

<!-- DisableAppSyncSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAppSyncSettingSync-Examples-End -->

<!-- DisableAppSyncSettingSync-End -->

<!-- DisableCredentialsSettingSync-Begin -->
## DisableCredentialsSettingSync

<!-- DisableCredentialsSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableCredentialsSettingSync-Applicability-End -->

<!-- DisableCredentialsSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableCredentialsSettingSync
```
<!-- DisableCredentialsSettingSync-OmaUri-End -->

<!-- DisableCredentialsSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "passwords" group from syncing to and from this PC. This turns off and disables the "passwords" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "passwords" group won't be synced.

Use the option "Allow users to turn passwords syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "passwords" group is on by default and configurable by the user.
<!-- DisableCredentialsSettingSync-Description-End -->

<!-- DisableCredentialsSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCredentialsSettingSync-Editable-End -->

<!-- DisableCredentialsSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableCredentialsSettingSync-DFProperties-End -->

<!-- DisableCredentialsSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableCredentialsSettingSync |
| Friendly Name | Do not sync passwords |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableCredentialsSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableCredentialsSettingSync-AdmxBacked-End -->

<!-- DisableCredentialsSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCredentialsSettingSync-Examples-End -->

<!-- DisableCredentialsSettingSync-End -->

<!-- DisableDesktopThemeSettingSync-Begin -->
## DisableDesktopThemeSettingSync

<!-- DisableDesktopThemeSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableDesktopThemeSettingSync-Applicability-End -->

<!-- DisableDesktopThemeSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableDesktopThemeSettingSync
```
<!-- DisableDesktopThemeSettingSync-OmaUri-End -->

<!-- DisableDesktopThemeSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "desktop personalization" group from syncing to and from this PC. This turns off and disables the "desktop personalization" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "desktop personalization" group won't be synced.

Use the option "Allow users to turn desktop personalization syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "desktop personalization" group is on by default and configurable by the user.
<!-- DisableDesktopThemeSettingSync-Description-End -->

<!-- DisableDesktopThemeSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableDesktopThemeSettingSync-Editable-End -->

<!-- DisableDesktopThemeSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableDesktopThemeSettingSync-DFProperties-End -->

<!-- DisableDesktopThemeSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableDesktopThemeSettingSync |
| Friendly Name | Do not sync desktop personalization |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableDesktopThemeSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableDesktopThemeSettingSync-AdmxBacked-End -->

<!-- DisableDesktopThemeSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableDesktopThemeSettingSync-Examples-End -->

<!-- DisableDesktopThemeSettingSync-End -->

<!-- DisablePersonalizationSettingSync-Begin -->
## DisablePersonalizationSettingSync

<!-- DisablePersonalizationSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisablePersonalizationSettingSync-Applicability-End -->

<!-- DisablePersonalizationSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisablePersonalizationSettingSync
```
<!-- DisablePersonalizationSettingSync-OmaUri-End -->

<!-- DisablePersonalizationSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "personalize" group from syncing to and from this PC. This turns off and disables the "personalize" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "personalize" group won't be synced.

Use the option "Allow users to turn personalize syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "personalize" group is on by default and configurable by the user.
<!-- DisablePersonalizationSettingSync-Description-End -->

<!-- DisablePersonalizationSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePersonalizationSettingSync-Editable-End -->

<!-- DisablePersonalizationSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisablePersonalizationSettingSync-DFProperties-End -->

<!-- DisablePersonalizationSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePersonalizationSettingSync |
| Friendly Name | Do not sync personalize |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisablePersonalizationSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisablePersonalizationSettingSync-AdmxBacked-End -->

<!-- DisablePersonalizationSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePersonalizationSettingSync-Examples-End -->

<!-- DisablePersonalizationSettingSync-End -->

<!-- DisableSettingSync-Begin -->
## DisableSettingSync

<!-- DisableSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSettingSync-Applicability-End -->

<!-- DisableSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableSettingSync
```
<!-- DisableSettingSync-OmaUri-End -->

<!-- DisableSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent syncing to and from this PC. This turns off and disables the "sync your settings" switch on the "sync your settings" page in PC Settings.

If you enable this policy setting, "sync your settings" will be turned off, and none of the "sync your setting" groups will be synced on this PC.

Use the option "Allow users to turn syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, "sync your settings" is on by default and configurable by the user.
<!-- DisableSettingSync-Description-End -->

<!-- DisableSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSettingSync-Editable-End -->

<!-- DisableSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSettingSync-DFProperties-End -->

<!-- DisableSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSettingSync |
| Friendly Name | Do not sync |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableSettingSync-AdmxBacked-End -->

<!-- DisableSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSettingSync-Examples-End -->

<!-- DisableSettingSync-End -->

<!-- DisableStartLayoutSettingSync-Begin -->
## DisableStartLayoutSettingSync

<!-- DisableStartLayoutSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableStartLayoutSettingSync-Applicability-End -->

<!-- DisableStartLayoutSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableStartLayoutSettingSync
```
<!-- DisableStartLayoutSettingSync-OmaUri-End -->

<!-- DisableStartLayoutSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "Start layout" group from syncing to and from this PC. This turns off and disables the "Start layout" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "Start layout" group won't be synced.

Use the option "Allow users to turn start syncing on" so that syncing is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "Start layout" group is on by default and configurable by the user.
<!-- DisableStartLayoutSettingSync-Description-End -->

<!-- DisableStartLayoutSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableStartLayoutSettingSync-Editable-End -->

<!-- DisableStartLayoutSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableStartLayoutSettingSync-DFProperties-End -->

<!-- DisableStartLayoutSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableStartLayoutSettingSync |
| Friendly Name | Do not sync start settings |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableStartLayoutSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableStartLayoutSettingSync-AdmxBacked-End -->

<!-- DisableStartLayoutSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableStartLayoutSettingSync-Examples-End -->

<!-- DisableStartLayoutSettingSync-End -->

<!-- DisableSyncOnPaidNetwork-Begin -->
## DisableSyncOnPaidNetwork

<!-- DisableSyncOnPaidNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSyncOnPaidNetwork-Applicability-End -->

<!-- DisableSyncOnPaidNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableSyncOnPaidNetwork
```
<!-- DisableSyncOnPaidNetwork-OmaUri-End -->

<!-- DisableSyncOnPaidNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent syncing to and from this PC when on metered Internet connections. This turns off and disables "sync your settings on metered connections" switch on the "sync your settings" page in PC Settings.

If you enable this policy setting, syncing on metered connections will be turned off, and no syncing will take place when this PC is on a metered connection.

If you don't set or disable this setting, syncing on metered connections is configurable by the user.
<!-- DisableSyncOnPaidNetwork-Description-End -->

<!-- DisableSyncOnPaidNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSyncOnPaidNetwork-Editable-End -->

<!-- DisableSyncOnPaidNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSyncOnPaidNetwork-DFProperties-End -->

<!-- DisableSyncOnPaidNetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSyncOnPaidNetwork |
| Friendly Name | Do not sync on metered connections |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableSyncOnPaidNetwork |
| ADMX File Name | SettingSync.admx |
<!-- DisableSyncOnPaidNetwork-AdmxBacked-End -->

<!-- DisableSyncOnPaidNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSyncOnPaidNetwork-Examples-End -->

<!-- DisableSyncOnPaidNetwork-End -->

<!-- DisableWindowsSettingSync-Begin -->
## DisableWindowsSettingSync

<!-- DisableWindowsSettingSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableWindowsSettingSync-Applicability-End -->

<!-- DisableWindowsSettingSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_SettingSync/DisableWindowsSettingSync
```
<!-- DisableWindowsSettingSync-OmaUri-End -->

<!-- DisableWindowsSettingSync-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "Other Windows settings" group from syncing to and from this PC. This turns off and disables the "Other Windows settings" group on the "sync your settings" page in PC settings.

If you enable this policy setting, the "Other Windows settings" group won't be synced.

Use the option "Allow users to turn other Windows settings syncing on" so that syncing it turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "Other Windows settings" group is on by default and configurable by the user.
<!-- DisableWindowsSettingSync-Description-End -->

<!-- DisableWindowsSettingSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWindowsSettingSync-Editable-End -->

<!-- DisableWindowsSettingSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWindowsSettingSync-DFProperties-End -->

<!-- DisableWindowsSettingSync-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsSettingSync |
| Friendly Name | Do not sync other Windows settings |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableWindowsSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DisableWindowsSettingSync-AdmxBacked-End -->

<!-- DisableWindowsSettingSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWindowsSettingSync-Examples-End -->

<!-- DisableWindowsSettingSync-End -->

<!-- ADMX_SettingSync-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_SettingSync-CspMoreInfo-End -->

<!-- ADMX_SettingSync-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
