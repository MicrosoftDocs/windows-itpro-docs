---
title: Privacy Policy CSP
description: Learn more about the Privacy Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Privacy-Begin -->
# Policy CSP - Privacy

<!-- Privacy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Privacy-Editable-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Begin -->
## AllowAutoAcceptPairingAndPrivacyConsentPrompts

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Applicability-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts
```
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-OmaUri-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Description-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Allows or disallows the automatic acceptance of the pairing and privacy user consent dialog when launching apps. Most restricted value is 0.

> [!NOTE]
> There were issues reported with the previous release of this policy and a fix was added in Windows 10, version 1709.
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Editable-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-DFProperties-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-AllowedValues-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-Examples-End -->

<!-- AllowAutoAcceptPairingAndPrivacyConsentPrompts-End -->

<!-- AllowCrossDeviceClipboard-Begin -->
## AllowCrossDeviceClipboard

<!-- AllowCrossDeviceClipboard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowCrossDeviceClipboard-Applicability-End -->

<!-- AllowCrossDeviceClipboard-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/AllowCrossDeviceClipboard
```
<!-- AllowCrossDeviceClipboard-OmaUri-End -->

<!-- AllowCrossDeviceClipboard-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Clipboard contents can be synchronized across devices.

- If you enable this policy setting, Clipboard contents are allowed to be synchronized across devices logged in under the same Microsoft account or Microsoft Entra account.

- If you disable this policy setting, Clipboard contents can't be shared to other devices.

Policy change takes effect immediately.
<!-- AllowCrossDeviceClipboard-Description-End -->

<!-- AllowCrossDeviceClipboard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

Most restrictive value is `0` to not allow cross-device clipboard.
<!-- AllowCrossDeviceClipboard-Editable-End -->

<!-- AllowCrossDeviceClipboard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCrossDeviceClipboard-DFProperties-End -->

<!-- AllowCrossDeviceClipboard-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowCrossDeviceClipboard-AllowedValues-End -->

<!-- AllowCrossDeviceClipboard-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCrossDeviceClipboard |
| Friendly Name | Allow Clipboard synchronization across devices |
| Location | Computer Configuration |
| Path | System > OS Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowCrossDeviceClipboard |
| ADMX File Name | OSPolicy.admx |
<!-- AllowCrossDeviceClipboard-GpMapping-End -->

<!-- AllowCrossDeviceClipboard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCrossDeviceClipboard-Examples-End -->

<!-- AllowCrossDeviceClipboard-End -->

<!-- AllowInputPersonalization-Begin -->
## AllowInputPersonalization

<!-- AllowInputPersonalization-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowInputPersonalization-Applicability-End -->

<!-- AllowInputPersonalization-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/AllowInputPersonalization
```
<!-- AllowInputPersonalization-OmaUri-End -->

<!-- AllowInputPersonalization-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy specifies whether users on the device have the option to enable online speech recognition services.

- If this policy is enabled or not configured, control is deferred to users, and users may choose whether to enable speech services via settings.

- If this policy is disabled, speech services will be disabled, and users can't enable speech services via settings.
<!-- AllowInputPersonalization-Description-End -->

<!-- AllowInputPersonalization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

Updated in Windows 10, version 1809.

When enabled, users can use their voice for dictation, and talk to Cortana and other apps that use Microsoft cloud-based speech recognition. Microsoft uses voice input to help improve speech services.

The most restrictive value is `0` to not allow speech services.
<!-- AllowInputPersonalization-Editable-End -->

<!-- AllowInputPersonalization-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowInputPersonalization-DFProperties-End -->

<!-- AllowInputPersonalization-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Choice deferred to user's preference. |
<!-- AllowInputPersonalization-AllowedValues-End -->

<!-- AllowInputPersonalization-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowInputPersonalization |
| Friendly Name | Allow users to enable online speech recognition services |
| Location | Computer Configuration |
| Path | Control Panel > Regional and Language Options |
| Registry Key Name | Software\Policies\Microsoft\InputPersonalization |
| Registry Value Name | AllowInputPersonalization |
| ADMX File Name | Globalization.admx |
<!-- AllowInputPersonalization-GpMapping-End -->

<!-- AllowInputPersonalization-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowInputPersonalization-Examples-End -->

<!-- AllowInputPersonalization-End -->

<!-- DisableAdvertisingId-Begin -->
## DisableAdvertisingId

<!-- DisableAdvertisingId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisableAdvertisingId-Applicability-End -->

<!-- DisableAdvertisingId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/DisableAdvertisingId
```
<!-- DisableAdvertisingId-OmaUri-End -->

<!-- DisableAdvertisingId-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the advertising ID, preventing apps from using the ID for experiences across apps.

- If you enable this policy setting, the advertising ID is turned off. Apps can't use the ID for experiences across apps.

- If you disable or don't configure this policy setting, users can control whether apps can use the advertising ID for experiences across apps.
<!-- DisableAdvertisingId-Description-End -->

<!-- DisableAdvertisingId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAdvertisingId-Editable-End -->

<!-- DisableAdvertisingId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 65535 |
<!-- DisableAdvertisingId-DFProperties-End -->

<!-- DisableAdvertisingId-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 | Enabled. |
| 65535 (Default) | Not configured. |
<!-- DisableAdvertisingId-AllowedValues-End -->

<!-- DisableAdvertisingId-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAdvertisingId |
| Friendly Name | Turn off the advertising ID |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\AdvertisingInfo |
| Registry Value Name | DisabledByGroupPolicy |
| ADMX File Name | UserProfiles.admx |
<!-- DisableAdvertisingId-GpMapping-End -->

<!-- DisableAdvertisingId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAdvertisingId-Examples-End -->

<!-- DisableAdvertisingId-End -->

<!-- DisablePrivacyExperience-Begin -->
## DisablePrivacyExperience

<!-- DisablePrivacyExperience-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DisablePrivacyExperience-Applicability-End -->

<!-- DisablePrivacyExperience-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Privacy/DisablePrivacyExperience
```

```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/DisablePrivacyExperience
```
<!-- DisablePrivacyExperience-OmaUri-End -->

<!-- DisablePrivacyExperience-Description-Begin -->
<!-- Description-Source-ADMX -->
When logging into a new user account for the first time or after an upgrade in some scenarios, that user may be presented with a screen or series of screens that prompts the user to choose privacy settings for their account. Enable this policy to prevent this experience from launching.

- If this policy is enabled, the privacy experience won't launch for newly created user accounts or for accounts that would've been prompted to choose their privacy settings after an upgrade.

- If this policy is disabled or not configured, then the privacy experience may launch for newly created user accounts or for accounts that should be prompted to choose their privacy settings after an upgrade.
<!-- DisablePrivacyExperience-Description-End -->

<!-- DisablePrivacyExperience-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

In some managed environments, the privacy settings may be set by other policies. In this case, enable this policy to not show a screen for users to change these privacy settings.
<!-- DisablePrivacyExperience-Editable-End -->

<!-- DisablePrivacyExperience-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisablePrivacyExperience-DFProperties-End -->

<!-- DisablePrivacyExperience-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow the 'choose privacy settings for your device' screen for a new user during their first logon or when an existing user logs in for the first time after an upgrade. |
| 1 | Don't allow the 'choose privacy settings for your device' screen when a new user logs in or an existing user logs in for the first time after an upgrade. |
<!-- DisablePrivacyExperience-AllowedValues-End -->

<!-- DisablePrivacyExperience-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePrivacyExperience |
| Friendly Name | Don't launch privacy settings experience on user logon |
| Location | Computer and User Configuration |
| Path | Windows Components > OOBE |
| Registry Key Name | Software\Policies\Microsoft\Windows\OOBE |
| Registry Value Name | DisablePrivacyExperience |
| ADMX File Name | OOBE.admx |
<!-- DisablePrivacyExperience-GpMapping-End -->

<!-- DisablePrivacyExperience-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePrivacyExperience-Examples-End -->

<!-- DisablePrivacyExperience-End -->

<!-- EnableActivityFeed-Begin -->
## EnableActivityFeed

<!-- EnableActivityFeed-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- EnableActivityFeed-Applicability-End -->

<!-- EnableActivityFeed-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/EnableActivityFeed
```
<!-- EnableActivityFeed-OmaUri-End -->

<!-- EnableActivityFeed-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether ActivityFeed is enabled.

- If you enable this policy setting, all activity types (as applicable) are allowed to be published and ActivityFeed shall roam these activities across device graph of the user.

- If you disable this policy setting, activities can't be published and ActivityFeed shall disable cloud sync.

Policy change takes effect immediately.
<!-- EnableActivityFeed-Description-End -->

<!-- EnableActivityFeed-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableActivityFeed-Editable-End -->

<!-- EnableActivityFeed-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- EnableActivityFeed-DFProperties-End -->

<!-- EnableActivityFeed-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. Apps/OS can't publish the activities and roaming is disabled. (not published to the cloud). |
| 1 (Default) | Enabled. Apps/OS can publish the activities and will be roamed across device graph. |
<!-- EnableActivityFeed-AllowedValues-End -->

<!-- EnableActivityFeed-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableActivityFeed |
| Friendly Name | Enables Activity Feed |
| Location | Computer Configuration |
| Path | System > OS Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableActivityFeed |
| ADMX File Name | OSPolicy.admx |
<!-- EnableActivityFeed-GpMapping-End -->

<!-- EnableActivityFeed-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableActivityFeed-Examples-End -->

<!-- EnableActivityFeed-End -->

<!-- LetAppsAccessAccountInfo-Begin -->
## LetAppsAccessAccountInfo

<!-- LetAppsAccessAccountInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessAccountInfo-Applicability-End -->

<!-- LetAppsAccessAccountInfo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessAccountInfo
```
<!-- LetAppsAccessAccountInfo-OmaUri-End -->

<!-- LetAppsAccessAccountInfo-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access account information.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access account information and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access account information and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessAccountInfo-Description-End -->

<!-- LetAppsAccessAccountInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to account information.
<!-- LetAppsAccessAccountInfo-Editable-End -->

<!-- LetAppsAccessAccountInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessAccountInfo-DFProperties-End -->

<!-- LetAppsAccessAccountInfo-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessAccountInfo-AllowedValues-End -->

<!-- LetAppsAccessAccountInfo-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessAccountInfo |
| Friendly Name | Let Windows apps access account information |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessAccountInfo-GpMapping-End -->

<!-- LetAppsAccessAccountInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo-Examples-End -->

<!-- LetAppsAccessAccountInfo-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Begin -->
## LetAppsAccessAccountInfo_ForceAllowTheseApps

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps
```
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access account information.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access account information and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access account information and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessAccountInfo |
| Friendly Name | Let Windows apps access account information |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessAccountInfo_ForceAllowTheseApps-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Begin -->
## LetAppsAccessAccountInfo_ForceDenyTheseApps

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps
```
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access account information.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access account information and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access account information and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessAccountInfo |
| Friendly Name | Let Windows apps access account information |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessAccountInfo_ForceDenyTheseApps-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Begin -->
## LetAppsAccessAccountInfo_UserInControlOfTheseApps

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps
```
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access account information.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access account information and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access account information and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access account information by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessAccountInfo |
| Friendly Name | Let Windows apps access account information |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessAccountInfo_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-Begin -->
## LetAppsAccessBackgroundSpatialPerception

<!-- LetAppsAccessBackgroundSpatialPerception-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- LetAppsAccessBackgroundSpatialPerception-Applicability-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessBackgroundSpatialPerception
```
<!-- LetAppsAccessBackgroundSpatialPerception-OmaUri-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting specifies whether Windows apps can access the movement of the user's head, hands, motion controllers, and other tracked objects, while the apps are running in the background.
<!-- LetAppsAccessBackgroundSpatialPerception-Description-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Currently, this policy is supported only in [Microsoft HoloLens 2](/hololens/hololens2-hardware).
<!-- LetAppsAccessBackgroundSpatialPerception-Editable-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessBackgroundSpatialPerception-DFProperties-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessBackgroundSpatialPerception-AllowedValues-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessBackgroundSpatialPerception-Examples-End -->

<!-- LetAppsAccessBackgroundSpatialPerception-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Begin -->
## LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps
```
<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the user's movements while the apps are running in the background. This setting overrides the default LetAppsAccessBackgroundSpatialPerception policy setting for the specified apps.
<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Currently, this policy is supported only in [Microsoft HoloLens 2](/hololens/hololens2-hardware).
<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceAllowTheseApps-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Begin -->
## LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps
```
<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the user's movements while the apps are running in the background. This setting overrides the default LetAppsAccessBackgroundSpatialPerception policy setting for the specified apps.
<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!NOTE]
> Currently, this policy is supported only in [Microsoft HoloLens 2](/hololens/hololens2-hardware).
<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_ForceDenyTheseApps-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Begin -->
## LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps
```
<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the user movements privacy setting for the listed apps. This setting overrides the default LetAppsAccessBackgroundSpatialPerception policy setting for the specified apps.
<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!NOTE]
> Currently, this policy is supported only in [Microsoft HoloLens 2](/hololens/hololens2-hardware).
<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessBackgroundSpatialPerception_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessCalendar-Begin -->
## LetAppsAccessCalendar

<!-- LetAppsAccessCalendar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCalendar-Applicability-End -->

<!-- LetAppsAccessCalendar-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCalendar
```
<!-- LetAppsAccessCalendar-OmaUri-End -->

<!-- LetAppsAccessCalendar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the calendar.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the calendar and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the calendar and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCalendar-Description-End -->

<!-- LetAppsAccessCalendar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to the calendar.
<!-- LetAppsAccessCalendar-Editable-End -->

<!-- LetAppsAccessCalendar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessCalendar-DFProperties-End -->

<!-- LetAppsAccessCalendar-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessCalendar-AllowedValues-End -->

<!-- LetAppsAccessCalendar-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCalendar |
| Friendly Name | Let Windows apps access the calendar |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCalendar-GpMapping-End -->

<!-- LetAppsAccessCalendar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar-Examples-End -->

<!-- LetAppsAccessCalendar-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Begin -->
## LetAppsAccessCalendar_ForceAllowTheseApps

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCalendar_ForceAllowTheseApps
```
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the calendar.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the calendar and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the calendar and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCalendar |
| Friendly Name | Let Windows apps access the calendar |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessCalendar_ForceAllowTheseApps-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Begin -->
## LetAppsAccessCalendar_ForceDenyTheseApps

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCalendar_ForceDenyTheseApps
```
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the calendar.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the calendar and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the calendar and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCalendar |
| Friendly Name | Let Windows apps access the calendar |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessCalendar_ForceDenyTheseApps-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Begin -->
## LetAppsAccessCalendar_UserInControlOfTheseApps

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps
```
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the calendar.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the calendar and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the calendar and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the calendar by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCalendar |
| Friendly Name | Let Windows apps access the calendar |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessCalendar_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessCallHistory-Begin -->
## LetAppsAccessCallHistory

<!-- LetAppsAccessCallHistory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCallHistory-Applicability-End -->

<!-- LetAppsAccessCallHistory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCallHistory
```
<!-- LetAppsAccessCallHistory-OmaUri-End -->

<!-- LetAppsAccessCallHistory-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access call history.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access call history by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the call history and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the call history and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the call history by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCallHistory-Description-End -->

<!-- LetAppsAccessCallHistory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to call history.
<!-- LetAppsAccessCallHistory-Editable-End -->

<!-- LetAppsAccessCallHistory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessCallHistory-DFProperties-End -->

<!-- LetAppsAccessCallHistory-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessCallHistory-AllowedValues-End -->

<!-- LetAppsAccessCallHistory-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCallHistory |
| Friendly Name | Let Windows apps access call history |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCallHistory-GpMapping-End -->

<!-- LetAppsAccessCallHistory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory-Examples-End -->

<!-- LetAppsAccessCallHistory-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Begin -->
## LetAppsAccessCallHistory_ForceAllowTheseApps

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps
```
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access call history.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access call history by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the call history and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the call history and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the call history by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCallHistory |
| Friendly Name | Let Windows apps access call history |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessCallHistory_ForceAllowTheseApps-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Begin -->
## LetAppsAccessCallHistory_ForceDenyTheseApps

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps
```
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access call history.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access call history by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the call history and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the call history and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the call history by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCallHistory |
| Friendly Name | Let Windows apps access call history |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessCallHistory_ForceDenyTheseApps-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Begin -->
## LetAppsAccessCallHistory_UserInControlOfTheseApps

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps
```
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access call history.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access call history by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the call history and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the call history and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the call history by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCallHistory |
| Friendly Name | Let Windows apps access call history |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessCallHistory_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessCamera-Begin -->
## LetAppsAccessCamera

<!-- LetAppsAccessCamera-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCamera-Applicability-End -->

<!-- LetAppsAccessCamera-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCamera
```
<!-- LetAppsAccessCamera-OmaUri-End -->

<!-- LetAppsAccessCamera-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the camera.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the camera and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the camera and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCamera-Description-End -->

<!-- LetAppsAccessCamera-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to the camera.
<!-- LetAppsAccessCamera-Editable-End -->

<!-- LetAppsAccessCamera-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessCamera-DFProperties-End -->

<!-- LetAppsAccessCamera-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessCamera-AllowedValues-End -->

<!-- LetAppsAccessCamera-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCamera |
| Friendly Name | Let Windows apps access the camera |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCamera-GpMapping-End -->

<!-- LetAppsAccessCamera-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCamera-Examples-End -->

<!-- LetAppsAccessCamera-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-Begin -->
## LetAppsAccessCamera_ForceAllowTheseApps

<!-- LetAppsAccessCamera_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCamera_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCamera_ForceAllowTheseApps
```
<!-- LetAppsAccessCamera_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the camera.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the camera and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the camera and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCamera_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCamera_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCamera_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCamera |
| Friendly Name | Let Windows apps access the camera |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCamera_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCamera_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessCamera_ForceAllowTheseApps-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-Begin -->
## LetAppsAccessCamera_ForceDenyTheseApps

<!-- LetAppsAccessCamera_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCamera_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCamera_ForceDenyTheseApps
```
<!-- LetAppsAccessCamera_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the camera.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the camera and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the camera and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCamera_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCamera_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCamera_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCamera |
| Friendly Name | Let Windows apps access the camera |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCamera_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCamera_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessCamera_ForceDenyTheseApps-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Begin -->
## LetAppsAccessCamera_UserInControlOfTheseApps

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessCamera_UserInControlOfTheseApps
```
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the camera.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the camera and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the camera and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the camera by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCamera |
| Friendly Name | Let Windows apps access the camera |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCamera_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessCamera_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessContacts-Begin -->
## LetAppsAccessContacts

<!-- LetAppsAccessContacts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessContacts-Applicability-End -->

<!-- LetAppsAccessContacts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessContacts
```
<!-- LetAppsAccessContacts-OmaUri-End -->

<!-- LetAppsAccessContacts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access contacts.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access contacts and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access contacts and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessContacts-Description-End -->

<!-- LetAppsAccessContacts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to contacts.
<!-- LetAppsAccessContacts-Editable-End -->

<!-- LetAppsAccessContacts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessContacts-DFProperties-End -->

<!-- LetAppsAccessContacts-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessContacts-AllowedValues-End -->

<!-- LetAppsAccessContacts-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessContacts |
| Friendly Name | Let Windows apps access contacts |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessContacts-GpMapping-End -->

<!-- LetAppsAccessContacts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessContacts-Examples-End -->

<!-- LetAppsAccessContacts-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-Begin -->
## LetAppsAccessContacts_ForceAllowTheseApps

<!-- LetAppsAccessContacts_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessContacts_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessContacts_ForceAllowTheseApps
```
<!-- LetAppsAccessContacts_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access contacts.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access contacts and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access contacts and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessContacts_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessContacts_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessContacts_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessContacts |
| Friendly Name | Let Windows apps access contacts |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessContacts_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessContacts_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessContacts_ForceAllowTheseApps-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-Begin -->
## LetAppsAccessContacts_ForceDenyTheseApps

<!-- LetAppsAccessContacts_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessContacts_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessContacts_ForceDenyTheseApps
```
<!-- LetAppsAccessContacts_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access contacts.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access contacts and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access contacts and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessContacts_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessContacts_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessContacts_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessContacts |
| Friendly Name | Let Windows apps access contacts |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessContacts_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessContacts_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessContacts_ForceDenyTheseApps-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Begin -->
## LetAppsAccessContacts_UserInControlOfTheseApps

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessContacts_UserInControlOfTheseApps
```
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access contacts.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access contacts and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access contacts and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access contacts by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessContacts |
| Friendly Name | Let Windows apps access contacts |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessContacts_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessContacts_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessEmail-Begin -->
## LetAppsAccessEmail

<!-- LetAppsAccessEmail-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessEmail-Applicability-End -->

<!-- LetAppsAccessEmail-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessEmail
```
<!-- LetAppsAccessEmail-OmaUri-End -->

<!-- LetAppsAccessEmail-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access email.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access email and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access email and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessEmail-Description-End -->

<!-- LetAppsAccessEmail-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to email.
<!-- LetAppsAccessEmail-Editable-End -->

<!-- LetAppsAccessEmail-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessEmail-DFProperties-End -->

<!-- LetAppsAccessEmail-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessEmail-AllowedValues-End -->

<!-- LetAppsAccessEmail-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessEmail |
| Friendly Name | Let Windows apps access email |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessEmail-GpMapping-End -->

<!-- LetAppsAccessEmail-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessEmail-Examples-End -->

<!-- LetAppsAccessEmail-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-Begin -->
## LetAppsAccessEmail_ForceAllowTheseApps

<!-- LetAppsAccessEmail_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessEmail_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessEmail_ForceAllowTheseApps
```
<!-- LetAppsAccessEmail_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access email.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access email and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access email and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessEmail_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessEmail_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessEmail_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessEmail |
| Friendly Name | Let Windows apps access email |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessEmail_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessEmail_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessEmail_ForceAllowTheseApps-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-Begin -->
## LetAppsAccessEmail_ForceDenyTheseApps

<!-- LetAppsAccessEmail_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessEmail_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessEmail_ForceDenyTheseApps
```
<!-- LetAppsAccessEmail_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access email.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access email and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access email and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessEmail_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessEmail_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessEmail_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessEmail |
| Friendly Name | Let Windows apps access email |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessEmail_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessEmail_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessEmail_ForceDenyTheseApps-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Begin -->
## LetAppsAccessEmail_UserInControlOfTheseApps

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessEmail_UserInControlOfTheseApps
```
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access email.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access email and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access email and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access email by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessEmail |
| Friendly Name | Let Windows apps access email |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessEmail_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessEmail_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessGazeInput-Begin -->
## LetAppsAccessGazeInput

<!-- LetAppsAccessGazeInput-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LetAppsAccessGazeInput-Applicability-End -->

<!-- LetAppsAccessGazeInput-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGazeInput
```
<!-- LetAppsAccessGazeInput-OmaUri-End -->

<!-- LetAppsAccessGazeInput-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting specifies whether Windows apps can access the eye tracker.
<!-- LetAppsAccessGazeInput-Description-End -->

<!-- LetAppsAccessGazeInput-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput-Editable-End -->

<!-- LetAppsAccessGazeInput-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2]` |
| Default Value  | 0 |
<!-- LetAppsAccessGazeInput-DFProperties-End -->

<!-- LetAppsAccessGazeInput-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput-Examples-End -->

<!-- LetAppsAccessGazeInput-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Begin -->
## LetAppsAccessGazeInput_ForceAllowTheseApps

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGazeInput_ForceAllowTheseApps
```
<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the eye tracker. This setting overrides the default LetAppsAccessGazeInput policy setting for the specified apps.
<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessGazeInput_ForceAllowTheseApps-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Begin -->
## LetAppsAccessGazeInput_ForceDenyTheseApps

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGazeInput_ForceDenyTheseApps
```
<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the eye tracker. This setting overrides the default LetAppsAccessGazeInput policy setting for the specified apps.
<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessGazeInput_ForceDenyTheseApps-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Begin -->
## LetAppsAccessGazeInput_UserInControlOfTheseApps

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGazeInput_UserInControlOfTheseApps
```
<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-DDF -->
List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the eye tracker privacy setting for the listed apps. This setting overrides the default LetAppsAccessGazeInput policy setting for the specified apps.
<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessGazeInput_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-Begin -->
## LetAppsAccessGraphicsCaptureProgrammatic

<!-- LetAppsAccessGraphicsCaptureProgrammatic-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureProgrammatic-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureProgrammatic
```
<!-- LetAppsAccessGraphicsCaptureProgrammatic-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can take screenshots of various windows or displays.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureProgrammatic-Description-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2]` |
| Default Value  | 0 |
<!-- LetAppsAccessGraphicsCaptureProgrammatic-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureProgrammatic |
| Friendly Name | Let Windows apps take screenshots of various windows or displays |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureProgrammatic-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Begin -->
## LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps
```
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can take screenshots of various windows or displays.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureProgrammatic |
| Friendly Name | Let Windows apps take screenshots of various windows or displays |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceAllowTheseApps-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Begin -->
## LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps
```
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can take screenshots of various windows or displays.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureProgrammatic |
| Friendly Name | Let Windows apps take screenshots of various windows or displays |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_ForceDenyTheseApps-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Begin -->
## LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps
```
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can take screenshots of various windows or displays.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to take screenshots of various windows or displays and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can take screenshots of various windows or displays by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureProgrammatic |
| Friendly Name | Let Windows apps take screenshots of various windows or displays |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureProgrammatic_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Begin -->
## LetAppsAccessGraphicsCaptureWithoutBorder

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureWithoutBorder
```
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can turn off the screenshot border.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to turn off the screenshot border and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to turn off the screenshot border and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Description-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2]` |
| Default Value  | 0 |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureWithoutBorder |
| Friendly Name | Let Windows apps turn off the screenshot border |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Begin -->
## LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps
```
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can turn off the screenshot border.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to turn off the screenshot border and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to turn off the screenshot border and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureWithoutBorder |
| Friendly Name | Let Windows apps turn off the screenshot border |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceAllowTheseApps-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Begin -->
## LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps
```
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can turn off the screenshot border.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to turn off the screenshot border and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to turn off the screenshot border and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureWithoutBorder |
| Friendly Name | Let Windows apps turn off the screenshot border |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_ForceDenyTheseApps-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Begin -->
## LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps
```
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can turn off the screenshot border.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to turn off the screenshot border and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to turn off the screenshot border and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can turn off the screenshot border by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessGraphicsCaptureWithoutBorder |
| Friendly Name | Let Windows apps turn off the screenshot border |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessGraphicsCaptureWithoutBorder_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessHumanPresence-Begin -->
## LetAppsAccessHumanPresence

<!-- LetAppsAccessHumanPresence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25000] and later |
<!-- LetAppsAccessHumanPresence-Applicability-End -->

<!-- LetAppsAccessHumanPresence-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessHumanPresence
```
<!-- LetAppsAccessHumanPresence-OmaUri-End -->

<!-- LetAppsAccessHumanPresence-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access presence sensing.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access presence sensing and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access presence sensing and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessHumanPresence-Description-End -->

<!-- LetAppsAccessHumanPresence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence-Editable-End -->

<!-- LetAppsAccessHumanPresence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessHumanPresence-DFProperties-End -->

<!-- LetAppsAccessHumanPresence-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessHumanPresence-AllowedValues-End -->

<!-- LetAppsAccessHumanPresence-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessHumanPresence |
| Friendly Name | Let Windows apps access presence sensing |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessHumanPresence-GpMapping-End -->

<!-- LetAppsAccessHumanPresence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence-Examples-End -->

<!-- LetAppsAccessHumanPresence-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Begin -->
## LetAppsAccessHumanPresence_ForceAllowTheseApps

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25000] and later |
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessHumanPresence_ForceAllowTheseApps
```
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access presence sensing.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access presence sensing and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access presence sensing and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessHumanPresence |
| Friendly Name | Let Windows apps access presence sensing |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessHumanPresence_ForceAllowTheseApps-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Begin -->
## LetAppsAccessHumanPresence_ForceDenyTheseApps

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25000] and later |
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessHumanPresence_ForceDenyTheseApps
```
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access presence sensing.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access presence sensing and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access presence sensing and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessHumanPresence |
| Friendly Name | Let Windows apps access presence sensing |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessHumanPresence_ForceDenyTheseApps-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Begin -->
## LetAppsAccessHumanPresence_UserInControlOfTheseApps

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.25000] and later |
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessHumanPresence_UserInControlOfTheseApps
```
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access presence sensing.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access presence sensing and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access presence sensing and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access presence sensing by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessHumanPresence |
| Friendly Name | Let Windows apps access presence sensing |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessHumanPresence_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessLocation-Begin -->
## LetAppsAccessLocation

<!-- LetAppsAccessLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessLocation-Applicability-End -->

<!-- LetAppsAccessLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessLocation
```
<!-- LetAppsAccessLocation-OmaUri-End -->

<!-- LetAppsAccessLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access location.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access location and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access location and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessLocation-Description-End -->

<!-- LetAppsAccessLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to the device's location.
<!-- LetAppsAccessLocation-Editable-End -->

<!-- LetAppsAccessLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessLocation-DFProperties-End -->

<!-- LetAppsAccessLocation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessLocation-AllowedValues-End -->

<!-- LetAppsAccessLocation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessLocation |
| Friendly Name | Let Windows apps access location |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessLocation-GpMapping-End -->

<!-- LetAppsAccessLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessLocation-Examples-End -->

<!-- LetAppsAccessLocation-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-Begin -->
## LetAppsAccessLocation_ForceAllowTheseApps

<!-- LetAppsAccessLocation_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessLocation_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessLocation_ForceAllowTheseApps
```
<!-- LetAppsAccessLocation_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access location.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access location and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access location and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessLocation_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessLocation_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessLocation_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessLocation |
| Friendly Name | Let Windows apps access location |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessLocation_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessLocation_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessLocation_ForceAllowTheseApps-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-Begin -->
## LetAppsAccessLocation_ForceDenyTheseApps

<!-- LetAppsAccessLocation_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessLocation_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessLocation_ForceDenyTheseApps
```
<!-- LetAppsAccessLocation_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access location.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access location and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access location and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessLocation_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessLocation_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessLocation_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessLocation |
| Friendly Name | Let Windows apps access location |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessLocation_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessLocation_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessLocation_ForceDenyTheseApps-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Begin -->
## LetAppsAccessLocation_UserInControlOfTheseApps

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessLocation_UserInControlOfTheseApps
```
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access location.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access location and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access location and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access location by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessLocation |
| Friendly Name | Let Windows apps access location |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessLocation_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessLocation_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessMessaging-Begin -->
## LetAppsAccessMessaging

<!-- LetAppsAccessMessaging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMessaging-Applicability-End -->

<!-- LetAppsAccessMessaging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMessaging
```
<!-- LetAppsAccessMessaging-OmaUri-End -->

<!-- LetAppsAccessMessaging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can read or send messages (text or MMS).

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps can read or send messages and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps can't read or send messages and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMessaging-Description-End -->

<!-- LetAppsAccessMessaging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to messaging.
<!-- LetAppsAccessMessaging-Editable-End -->

<!-- LetAppsAccessMessaging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessMessaging-DFProperties-End -->

<!-- LetAppsAccessMessaging-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessMessaging-AllowedValues-End -->

<!-- LetAppsAccessMessaging-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMessaging |
| Friendly Name | Let Windows apps access messaging |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMessaging-GpMapping-End -->

<!-- LetAppsAccessMessaging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging-Examples-End -->

<!-- LetAppsAccessMessaging-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Begin -->
## LetAppsAccessMessaging_ForceAllowTheseApps

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMessaging_ForceAllowTheseApps
```
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can read or send messages (text or MMS).

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps can read or send messages and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps can't read or send messages and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMessaging |
| Friendly Name | Let Windows apps access messaging |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessMessaging_ForceAllowTheseApps-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Begin -->
## LetAppsAccessMessaging_ForceDenyTheseApps

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMessaging_ForceDenyTheseApps
```
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can read or send messages (text or MMS).

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps can read or send messages and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps can't read or send messages and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMessaging |
| Friendly Name | Let Windows apps access messaging |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessMessaging_ForceDenyTheseApps-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Begin -->
## LetAppsAccessMessaging_UserInControlOfTheseApps

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps
```
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can read or send messages (text or MMS).

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps can read or send messages and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps can't read or send messages and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can read or send messages by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMessaging |
| Friendly Name | Let Windows apps access messaging |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessMessaging_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessMicrophone-Begin -->
## LetAppsAccessMicrophone

<!-- LetAppsAccessMicrophone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMicrophone-Applicability-End -->

<!-- LetAppsAccessMicrophone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMicrophone
```
<!-- LetAppsAccessMicrophone-OmaUri-End -->

<!-- LetAppsAccessMicrophone-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the microphone.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the microphone and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the microphone and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMicrophone-Description-End -->

<!-- LetAppsAccessMicrophone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to the microphone.
<!-- LetAppsAccessMicrophone-Editable-End -->

<!-- LetAppsAccessMicrophone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessMicrophone-DFProperties-End -->

<!-- LetAppsAccessMicrophone-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessMicrophone-AllowedValues-End -->

<!-- LetAppsAccessMicrophone-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMicrophone |
| Friendly Name | Let Windows apps access the microphone |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMicrophone-GpMapping-End -->

<!-- LetAppsAccessMicrophone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone-Examples-End -->

<!-- LetAppsAccessMicrophone-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Begin -->
## LetAppsAccessMicrophone_ForceAllowTheseApps

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps
```
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the microphone.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the microphone and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the microphone and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMicrophone |
| Friendly Name | Let Windows apps access the microphone |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessMicrophone_ForceAllowTheseApps-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Begin -->
## LetAppsAccessMicrophone_ForceDenyTheseApps

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps
```
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the microphone.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the microphone and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the microphone and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMicrophone |
| Friendly Name | Let Windows apps access the microphone |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessMicrophone_ForceDenyTheseApps-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Begin -->
## LetAppsAccessMicrophone_UserInControlOfTheseApps

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps
```
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access the microphone.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access the microphone and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access the microphone and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access the microphone by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMicrophone |
| Friendly Name | Let Windows apps access the microphone |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessMicrophone_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessMotion-Begin -->
## LetAppsAccessMotion

<!-- LetAppsAccessMotion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMotion-Applicability-End -->

<!-- LetAppsAccessMotion-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMotion
```
<!-- LetAppsAccessMotion-OmaUri-End -->

<!-- LetAppsAccessMotion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access motion data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access motion data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access motion data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMotion-Description-End -->

<!-- LetAppsAccessMotion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to motion data.
<!-- LetAppsAccessMotion-Editable-End -->

<!-- LetAppsAccessMotion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessMotion-DFProperties-End -->

<!-- LetAppsAccessMotion-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessMotion-AllowedValues-End -->

<!-- LetAppsAccessMotion-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMotion |
| Friendly Name | Let Windows apps access motion |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMotion-GpMapping-End -->

<!-- LetAppsAccessMotion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMotion-Examples-End -->

<!-- LetAppsAccessMotion-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-Begin -->
## LetAppsAccessMotion_ForceAllowTheseApps

<!-- LetAppsAccessMotion_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMotion_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMotion_ForceAllowTheseApps
```
<!-- LetAppsAccessMotion_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access motion data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access motion data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access motion data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMotion_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMotion_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMotion_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMotion |
| Friendly Name | Let Windows apps access motion |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMotion_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMotion_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessMotion_ForceAllowTheseApps-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-Begin -->
## LetAppsAccessMotion_ForceDenyTheseApps

<!-- LetAppsAccessMotion_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMotion_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMotion_ForceDenyTheseApps
```
<!-- LetAppsAccessMotion_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access motion data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access motion data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access motion data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMotion_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMotion_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMotion_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMotion |
| Friendly Name | Let Windows apps access motion |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMotion_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMotion_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessMotion_ForceDenyTheseApps-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Begin -->
## LetAppsAccessMotion_UserInControlOfTheseApps

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessMotion_UserInControlOfTheseApps
```
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access motion data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access motion data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access motion data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access motion data by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessMotion |
| Friendly Name | Let Windows apps access motion |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessMotion_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessMotion_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessNotifications-Begin -->
## LetAppsAccessNotifications

<!-- LetAppsAccessNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessNotifications-Applicability-End -->

<!-- LetAppsAccessNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessNotifications
```
<!-- LetAppsAccessNotifications-OmaUri-End -->

<!-- LetAppsAccessNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access notifications.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access notifications and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access notifications and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessNotifications-Description-End -->

<!-- LetAppsAccessNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to notifications.
<!-- LetAppsAccessNotifications-Editable-End -->

<!-- LetAppsAccessNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessNotifications-DFProperties-End -->

<!-- LetAppsAccessNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessNotifications-AllowedValues-End -->

<!-- LetAppsAccessNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessNotifications |
| Friendly Name | Let Windows apps access notifications |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessNotifications-GpMapping-End -->

<!-- LetAppsAccessNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications-Examples-End -->

<!-- LetAppsAccessNotifications-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Begin -->
## LetAppsAccessNotifications_ForceAllowTheseApps

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessNotifications_ForceAllowTheseApps
```
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access notifications.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access notifications and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access notifications and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessNotifications |
| Friendly Name | Let Windows apps access notifications |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessNotifications_ForceAllowTheseApps-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Begin -->
## LetAppsAccessNotifications_ForceDenyTheseApps

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessNotifications_ForceDenyTheseApps
```
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access notifications.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access notifications and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access notifications and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessNotifications |
| Friendly Name | Let Windows apps access notifications |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessNotifications_ForceDenyTheseApps-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Begin -->
## LetAppsAccessNotifications_UserInControlOfTheseApps

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps
```
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access notifications.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access notifications and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access notifications and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access notifications by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessNotifications |
| Friendly Name | Let Windows apps access notifications |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessNotifications_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessPhone-Begin -->
## LetAppsAccessPhone

<!-- LetAppsAccessPhone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessPhone-Applicability-End -->

<!-- LetAppsAccessPhone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessPhone
```
<!-- LetAppsAccessPhone-OmaUri-End -->

<!-- LetAppsAccessPhone-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can make phone calls.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to make phone calls and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to make phone calls and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessPhone-Description-End -->

<!-- LetAppsAccessPhone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to make phone calls.
<!-- LetAppsAccessPhone-Editable-End -->

<!-- LetAppsAccessPhone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessPhone-DFProperties-End -->

<!-- LetAppsAccessPhone-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessPhone-AllowedValues-End -->

<!-- LetAppsAccessPhone-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessPhone |
| Friendly Name | Let Windows apps make phone calls |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessPhone-GpMapping-End -->

<!-- LetAppsAccessPhone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessPhone-Examples-End -->

<!-- LetAppsAccessPhone-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-Begin -->
## LetAppsAccessPhone_ForceAllowTheseApps

<!-- LetAppsAccessPhone_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessPhone_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessPhone_ForceAllowTheseApps
```
<!-- LetAppsAccessPhone_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can make phone calls.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to make phone calls and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to make phone calls and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessPhone_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessPhone_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessPhone_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessPhone |
| Friendly Name | Let Windows apps make phone calls |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessPhone_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessPhone_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessPhone_ForceAllowTheseApps-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-Begin -->
## LetAppsAccessPhone_ForceDenyTheseApps

<!-- LetAppsAccessPhone_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessPhone_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessPhone_ForceDenyTheseApps
```
<!-- LetAppsAccessPhone_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can make phone calls.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to make phone calls and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to make phone calls and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessPhone_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessPhone_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessPhone_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessPhone |
| Friendly Name | Let Windows apps make phone calls |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessPhone_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessPhone_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessPhone_ForceDenyTheseApps-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Begin -->
## LetAppsAccessPhone_UserInControlOfTheseApps

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessPhone_UserInControlOfTheseApps
```
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can make phone calls.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to make phone calls and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to make phone calls and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can make phone calls by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessPhone |
| Friendly Name | Let Windows apps make phone calls |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessPhone_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessPhone_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessRadios-Begin -->
## LetAppsAccessRadios

<!-- LetAppsAccessRadios-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessRadios-Applicability-End -->

<!-- LetAppsAccessRadios-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessRadios
```
<!-- LetAppsAccessRadios-OmaUri-End -->

<!-- LetAppsAccessRadios-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps have access to control radios.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps will have access to control radios and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps won't have access to control radios and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessRadios-Description-End -->

<!-- LetAppsAccessRadios-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to control radios.
<!-- LetAppsAccessRadios-Editable-End -->

<!-- LetAppsAccessRadios-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessRadios-DFProperties-End -->

<!-- LetAppsAccessRadios-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessRadios-AllowedValues-End -->

<!-- LetAppsAccessRadios-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessRadios |
| Friendly Name | Let Windows apps control radios |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessRadios-GpMapping-End -->

<!-- LetAppsAccessRadios-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessRadios-Examples-End -->

<!-- LetAppsAccessRadios-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-Begin -->
## LetAppsAccessRadios_ForceAllowTheseApps

<!-- LetAppsAccessRadios_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessRadios_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessRadios_ForceAllowTheseApps
```
<!-- LetAppsAccessRadios_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps have access to control radios.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps will have access to control radios and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps won't have access to control radios and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessRadios_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessRadios_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessRadios_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessRadios |
| Friendly Name | Let Windows apps control radios |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessRadios_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessRadios_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessRadios_ForceAllowTheseApps-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-Begin -->
## LetAppsAccessRadios_ForceDenyTheseApps

<!-- LetAppsAccessRadios_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessRadios_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessRadios_ForceDenyTheseApps
```
<!-- LetAppsAccessRadios_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps have access to control radios.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps will have access to control radios and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps won't have access to control radios and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessRadios_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessRadios_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessRadios_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessRadios |
| Friendly Name | Let Windows apps control radios |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessRadios_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessRadios_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessRadios_ForceDenyTheseApps-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Begin -->
## LetAppsAccessRadios_UserInControlOfTheseApps

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessRadios_UserInControlOfTheseApps
```
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps have access to control radios.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps will have access to control radios and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps won't have access to control radios and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps have access to control radios by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessRadios |
| Friendly Name | Let Windows apps control radios |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessRadios_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessRadios_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessTasks-Begin -->
## LetAppsAccessTasks

<!-- LetAppsAccessTasks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessTasks-Applicability-End -->

<!-- LetAppsAccessTasks-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTasks
```
<!-- LetAppsAccessTasks-OmaUri-End -->

<!-- LetAppsAccessTasks-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access tasks.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access tasks and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access tasks and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTasks-Description-End -->

<!-- LetAppsAccessTasks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTasks-Editable-End -->

<!-- LetAppsAccessTasks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-2]` |
| Default Value  | 0 |
<!-- LetAppsAccessTasks-DFProperties-End -->

<!-- LetAppsAccessTasks-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTasks |
| Friendly Name | Let Windows apps access Tasks |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTasks-GpMapping-End -->

<!-- LetAppsAccessTasks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTasks-Examples-End -->

<!-- LetAppsAccessTasks-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-Begin -->
## LetAppsAccessTasks_ForceAllowTheseApps

<!-- LetAppsAccessTasks_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessTasks_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTasks_ForceAllowTheseApps
```
<!-- LetAppsAccessTasks_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access tasks.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access tasks and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access tasks and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTasks_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTasks_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessTasks_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTasks |
| Friendly Name | Let Windows apps access Tasks |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTasks_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTasks_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessTasks_ForceAllowTheseApps-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-Begin -->
## LetAppsAccessTasks_ForceDenyTheseApps

<!-- LetAppsAccessTasks_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessTasks_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTasks_ForceDenyTheseApps
```
<!-- LetAppsAccessTasks_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access tasks.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access tasks and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access tasks and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTasks_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTasks_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessTasks_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTasks |
| Friendly Name | Let Windows apps access Tasks |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTasks_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTasks_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessTasks_ForceDenyTheseApps-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Begin -->
## LetAppsAccessTasks_UserInControlOfTheseApps

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTasks_UserInControlOfTheseApps
```
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access tasks.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access tasks and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access tasks and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access tasks by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTasks |
| Friendly Name | Let Windows apps access Tasks |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTasks_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessTasks_UserInControlOfTheseApps-End -->

<!-- LetAppsAccessTrustedDevices-Begin -->
## LetAppsAccessTrustedDevices

<!-- LetAppsAccessTrustedDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessTrustedDevices-Applicability-End -->

<!-- LetAppsAccessTrustedDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTrustedDevices
```
<!-- LetAppsAccessTrustedDevices-OmaUri-End -->

<!-- LetAppsAccessTrustedDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access trusted devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access trusted devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access trusted devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTrustedDevices-Description-End -->

<!-- LetAppsAccessTrustedDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access trusted devices.
<!-- LetAppsAccessTrustedDevices-Editable-End -->

<!-- LetAppsAccessTrustedDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessTrustedDevices-DFProperties-End -->

<!-- LetAppsAccessTrustedDevices-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsAccessTrustedDevices-AllowedValues-End -->

<!-- LetAppsAccessTrustedDevices-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTrustedDevices |
| Friendly Name | Let Windows apps access trusted devices |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTrustedDevices-GpMapping-End -->

<!-- LetAppsAccessTrustedDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices-Examples-End -->

<!-- LetAppsAccessTrustedDevices-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Begin -->
## LetAppsAccessTrustedDevices_ForceAllowTheseApps

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps
```
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access trusted devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access trusted devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access trusted devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTrustedDevices |
| Friendly Name | Let Windows apps access trusted devices |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessTrustedDevices_ForceAllowTheseApps-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Begin -->
## LetAppsAccessTrustedDevices_ForceDenyTheseApps

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps
```
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access trusted devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access trusted devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access trusted devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTrustedDevices |
| Friendly Name | Let Windows apps access trusted devices |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessTrustedDevices_ForceDenyTheseApps-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Begin -->
## LetAppsAccessTrustedDevices_UserInControlOfTheseApps

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps
```
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access trusted devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access trusted devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access trusted devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access trusted devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessTrustedDevices |
| Friendly Name | Let Windows apps access trusted devices |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessTrustedDevices_UserInControlOfTheseApps-End -->

<!-- LetAppsActivateWithVoice-Begin -->
## LetAppsActivateWithVoice

<!-- LetAppsActivateWithVoice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- LetAppsActivateWithVoice-Applicability-End -->

<!-- LetAppsActivateWithVoice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsActivateWithVoice
```
<!-- LetAppsActivateWithVoice-OmaUri-End -->

<!-- LetAppsActivateWithVoice-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can be activated by voice.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can be activated with a voice keyword by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to be activated with a voice keyword and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to be activated with a voice keyword and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can be activated with a voice keyword by using Settings > Privacy on the device.

This policy is applied to Windows apps and Cortana.
<!-- LetAppsActivateWithVoice-Description-End -->

<!-- LetAppsActivateWithVoice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsActivateWithVoice-Editable-End -->

<!-- LetAppsActivateWithVoice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsActivateWithVoice-DFProperties-End -->

<!-- LetAppsActivateWithVoice-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. Users can decide if Windows apps can be activated by voice using Settings > Privacy options on the device. |
| 1 | Force allow. Windows apps can be activated by voice and users can't change it. |
| 2 | Force deny. Windows apps can't be activated by voice and users can't change it. |
<!-- LetAppsActivateWithVoice-AllowedValues-End -->

<!-- LetAppsActivateWithVoice-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsActivateWithVoice |
| Friendly Name | Let Windows apps activate with voice |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsActivateWithVoice-GpMapping-End -->

<!-- LetAppsActivateWithVoice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsActivateWithVoice-Examples-End -->

<!-- LetAppsActivateWithVoice-End -->

<!-- LetAppsActivateWithVoiceAboveLock-Begin -->
## LetAppsActivateWithVoiceAboveLock

<!-- LetAppsActivateWithVoiceAboveLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- LetAppsActivateWithVoiceAboveLock-Applicability-End -->

<!-- LetAppsActivateWithVoiceAboveLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsActivateWithVoiceAboveLock
```
<!-- LetAppsActivateWithVoiceAboveLock-OmaUri-End -->

<!-- LetAppsActivateWithVoiceAboveLock-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can be activated by voice while the system is locked.

If you choose the "User is in control" option, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device.

If you choose the "Force Allow" option, users can interact with applications using speech while the system is locked and employees in your organization can't change it.

If you choose the "Force Deny" option, users can't interact with applications using speech while the system is locked and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether users can interact with applications using speech while the system is locked by using Settings > Privacy on the device.

This policy is applied to Windows apps and Cortana. It takes precedence of the "Allow Cortana above lock" policy. This policy is applicable only when "Allow voice activation" policy is configured to allow applications to be activated with voice.
<!-- LetAppsActivateWithVoiceAboveLock-Description-End -->

<!-- LetAppsActivateWithVoiceAboveLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsActivateWithVoiceAboveLock-Editable-End -->

<!-- LetAppsActivateWithVoiceAboveLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsActivateWithVoiceAboveLock-DFProperties-End -->

<!-- LetAppsActivateWithVoiceAboveLock-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. Users can decide if Windows apps can be activated by voice while the screen is locked using Settings > Privacy options on the device. |
| 1 | Force allow. Windows apps can be activated by voice while the screen is locked, and users can't change it. |
| 2 | Force deny. Windows apps can't be activated by voice while the screen is locked, and users can't change it. |
<!-- LetAppsActivateWithVoiceAboveLock-AllowedValues-End -->

<!-- LetAppsActivateWithVoiceAboveLock-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsActivateWithVoiceAboveLock |
| Friendly Name | Let Windows apps activate with voice while the system is locked |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsActivateWithVoiceAboveLock-GpMapping-End -->

<!-- LetAppsActivateWithVoiceAboveLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsActivateWithVoiceAboveLock-Examples-End -->

<!-- LetAppsActivateWithVoiceAboveLock-End -->

<!-- LetAppsGetDiagnosticInfo-Begin -->
## LetAppsGetDiagnosticInfo

<!-- LetAppsGetDiagnosticInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsGetDiagnosticInfo-Applicability-End -->

<!-- LetAppsGetDiagnosticInfo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsGetDiagnosticInfo
```
<!-- LetAppsGetDiagnosticInfo-OmaUri-End -->

<!-- LetAppsGetDiagnosticInfo-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can get diagnostic information about other Windows apps, including user name.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can get diagnostic information about other apps using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can get diagnostic information about other apps by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsGetDiagnosticInfo-Description-End -->

<!-- LetAppsGetDiagnosticInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps access to diagnostic data.
<!-- LetAppsGetDiagnosticInfo-Editable-End -->

<!-- LetAppsGetDiagnosticInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsGetDiagnosticInfo-DFProperties-End -->

<!-- LetAppsGetDiagnosticInfo-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsGetDiagnosticInfo-AllowedValues-End -->

<!-- LetAppsGetDiagnosticInfo-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsGetDiagnosticInfo |
| Friendly Name | Let Windows apps access diagnostic information about other apps |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsGetDiagnosticInfo-GpMapping-End -->

<!-- LetAppsGetDiagnosticInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo-Examples-End -->

<!-- LetAppsGetDiagnosticInfo-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Begin -->
## LetAppsGetDiagnosticInfo_ForceAllowTheseApps

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps
```
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can get diagnostic information about other Windows apps, including user name.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can get diagnostic information about other apps using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can get diagnostic information about other apps by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Description-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsGetDiagnosticInfo |
| Friendly Name | Let Windows apps access diagnostic information about other apps |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsGetDiagnosticInfo_ForceAllowTheseApps-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Begin -->
## LetAppsGetDiagnosticInfo_ForceDenyTheseApps

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps
```
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can get diagnostic information about other Windows apps, including user name.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can get diagnostic information about other apps using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can get diagnostic information about other apps by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Description-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsGetDiagnosticInfo |
| Friendly Name | Let Windows apps access diagnostic information about other apps |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsGetDiagnosticInfo_ForceDenyTheseApps-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Begin -->
## LetAppsGetDiagnosticInfo_UserInControlOfTheseApps

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps
```
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can get diagnostic information about other Windows apps, including user name.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can get diagnostic information about other apps using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to get diagnostic information about other apps and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can get diagnostic information about other apps by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsGetDiagnosticInfo |
| Friendly Name | Let Windows apps access diagnostic information about other apps |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsGetDiagnosticInfo_UserInControlOfTheseApps-End -->

<!-- LetAppsRunInBackground-Begin -->
## LetAppsRunInBackground

<!-- LetAppsRunInBackground-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsRunInBackground-Applicability-End -->

<!-- LetAppsRunInBackground-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsRunInBackground
```
<!-- LetAppsRunInBackground-OmaUri-End -->

<!-- LetAppsRunInBackground-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can run in the background.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to run in the background and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to run in the background and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsRunInBackground-Description-End -->

<!-- LetAppsRunInBackground-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The most restrictive value is `2` to deny apps from running in the background.

> [!WARNING]
> Be careful when you determine which apps should have their background activity disabled. Communication apps normally update tiles and notifications through background processes. If you turn off background activity for these types of apps, it could cause text message, email, and voicemail notifications to not function. This policy could also cause background email syncing to not function properly.
<!-- LetAppsRunInBackground-Editable-End -->

<!-- LetAppsRunInBackground-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsRunInBackground-DFProperties-End -->

<!-- LetAppsRunInBackground-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | . |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsRunInBackground-AllowedValues-End -->

<!-- LetAppsRunInBackground-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsRunInBackground |
| Friendly Name | Let Windows apps run in the background |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsRunInBackground-GpMapping-End -->

<!-- LetAppsRunInBackground-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsRunInBackground-Examples-End -->

<!-- LetAppsRunInBackground-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-Begin -->
## LetAppsRunInBackground_ForceAllowTheseApps

<!-- LetAppsRunInBackground_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsRunInBackground_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsRunInBackground_ForceAllowTheseApps
```
<!-- LetAppsRunInBackground_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can run in the background.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to run in the background and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to run in the background and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsRunInBackground_ForceAllowTheseApps-Description-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsRunInBackground_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsRunInBackground_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsRunInBackground |
| Friendly Name | Let Windows apps run in the background |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsRunInBackground_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsRunInBackground_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsRunInBackground_ForceAllowTheseApps-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-Begin -->
## LetAppsRunInBackground_ForceDenyTheseApps

<!-- LetAppsRunInBackground_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsRunInBackground_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsRunInBackground_ForceDenyTheseApps
```
<!-- LetAppsRunInBackground_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can run in the background.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to run in the background and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to run in the background and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsRunInBackground_ForceDenyTheseApps-Description-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsRunInBackground_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsRunInBackground_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsRunInBackground |
| Friendly Name | Let Windows apps run in the background |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsRunInBackground_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsRunInBackground_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsRunInBackground_ForceDenyTheseApps-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Begin -->
## LetAppsRunInBackground_UserInControlOfTheseApps

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsRunInBackground_UserInControlOfTheseApps
```
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can run in the background.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to run in the background and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to run in the background and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can run in the background by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsRunInBackground |
| Friendly Name | Let Windows apps run in the background |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsRunInBackground_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsRunInBackground_UserInControlOfTheseApps-End -->

<!-- LetAppsSyncWithDevices-Begin -->
## LetAppsSyncWithDevices

<!-- LetAppsSyncWithDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsSyncWithDevices-Applicability-End -->

<!-- LetAppsSyncWithDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsSyncWithDevices
```
<!-- LetAppsSyncWithDevices-OmaUri-End -->

<!-- LetAppsSyncWithDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can communicate with unpaired wireless devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsSyncWithDevices-Description-End -->

<!-- LetAppsSyncWithDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

The most restrictive value is `2` to deny apps syncing with devices.
<!-- LetAppsSyncWithDevices-Editable-End -->

<!-- LetAppsSyncWithDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsSyncWithDevices-DFProperties-End -->

<!-- LetAppsSyncWithDevices-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User in control. |
| 1 | Force allow. |
| 2 | Force deny. |
<!-- LetAppsSyncWithDevices-AllowedValues-End -->

<!-- LetAppsSyncWithDevices-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsSyncWithDevices |
| Friendly Name | Let Windows apps communicate with unpaired devices |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsSyncWithDevices-GpMapping-End -->

<!-- LetAppsSyncWithDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices-Examples-End -->

<!-- LetAppsSyncWithDevices-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Begin -->
## LetAppsSyncWithDevices_ForceAllowTheseApps

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps
```
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can communicate with unpaired wireless devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Description-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsSyncWithDevices |
| Friendly Name | Let Windows apps communicate with unpaired devices |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsSyncWithDevices_ForceAllowTheseApps-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Begin -->
## LetAppsSyncWithDevices_ForceDenyTheseApps

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps
```
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can communicate with unpaired wireless devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Description-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsSyncWithDevices |
| Friendly Name | Let Windows apps communicate with unpaired devices |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsSyncWithDevices_ForceDenyTheseApps-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Begin -->
## LetAppsSyncWithDevices_UserInControlOfTheseApps

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps
```
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can communicate with unpaired wireless devices.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If you choose the "Force Allow" option, Windows apps are allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to communicate with unpaired wireless devices and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can communicate with unpaired wireless devices by using Settings > Privacy on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsSyncWithDevices |
| Friendly Name | Let Windows apps communicate with unpaired devices |
| Location | Computer Configuration |
| Path | Windows Components > App Privacy |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppPrivacy |
| ADMX File Name | AppPrivacy.admx |
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsSyncWithDevices_UserInControlOfTheseApps-End -->

<!-- PublishUserActivities-Begin -->
## PublishUserActivities

<!-- PublishUserActivities-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- PublishUserActivities-Applicability-End -->

<!-- PublishUserActivities-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/PublishUserActivities
```
<!-- PublishUserActivities-OmaUri-End -->

<!-- PublishUserActivities-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether User Activities can be published.

- If you enable this policy setting, activities of type User Activity are allowed to be published.

- If you disable this policy setting, activities of type User Activity aren't allowed to be published.

Policy change takes effect immediately.
<!-- PublishUserActivities-Description-End -->

<!-- PublishUserActivities-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

For more information, see [Windows activity history and your privacy](https://support.microsoft.com/windows/-windows-activity-history-and-your-privacy-2b279964-44ec-8c2f-e0c2-6779b07d2cbd).
<!-- PublishUserActivities-Editable-End -->

<!-- PublishUserActivities-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- PublishUserActivities-DFProperties-End -->

<!-- PublishUserActivities-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. Apps/OS can't publish the user activities. |
| 1 (Default) | Enabled. Apps/OS can publish the user activities. |
<!-- PublishUserActivities-AllowedValues-End -->

<!-- PublishUserActivities-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | PublishUserActivities |
| Friendly Name | Allow publishing of User Activities |
| Location | Computer Configuration |
| Path | System > OS Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | PublishUserActivities |
| ADMX File Name | OSPolicy.admx |
<!-- PublishUserActivities-GpMapping-End -->

<!-- PublishUserActivities-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishUserActivities-Examples-End -->

<!-- PublishUserActivities-End -->

<!-- UploadUserActivities-Begin -->
## UploadUserActivities

<!-- UploadUserActivities-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- UploadUserActivities-Applicability-End -->

<!-- UploadUserActivities-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Privacy/UploadUserActivities
```
<!-- UploadUserActivities-OmaUri-End -->

<!-- UploadUserActivities-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether published User Activities can be uploaded.

- If you enable this policy setting, activities of type User Activity are allowed to be uploaded.

- If you disable this policy setting, activities of type User Activity aren't allowed to be uploaded.

Deletion of activities of type User Activity are independent of this setting.

Policy change takes effect immediately.
<!-- UploadUserActivities-Description-End -->

<!-- UploadUserActivities-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

For more information, see [Windows activity history and your privacy](https://support.microsoft.com/windows/-windows-activity-history-and-your-privacy-2b279964-44ec-8c2f-e0c2-6779b07d2cbd).
<!-- UploadUserActivities-Editable-End -->

<!-- UploadUserActivities-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- UploadUserActivities-DFProperties-End -->

<!-- UploadUserActivities-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- UploadUserActivities-AllowedValues-End -->

<!-- UploadUserActivities-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UploadUserActivities |
| Friendly Name | Allow upload of User Activities |
| Location | Computer Configuration |
| Path | System > OS Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | UploadUserActivities |
| ADMX File Name | OSPolicy.admx |
<!-- UploadUserActivities-GpMapping-End -->

<!-- UploadUserActivities-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UploadUserActivities-Examples-End -->

<!-- UploadUserActivities-End -->

<!-- Privacy-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Privacy-CspMoreInfo-End -->

<!-- Privacy-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
