---
title: SmartScreen Policy CSP
description: Learn more about the SmartScreen Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- SmartScreen-Begin -->
# Policy CSP - SmartScreen

<!-- SmartScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SmartScreen-Editable-End -->

<!-- EnableAppInstallControl-Begin -->
## EnableAppInstallControl

<!-- EnableAppInstallControl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EnableAppInstallControl-Applicability-End -->

<!-- EnableAppInstallControl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SmartScreen/EnableAppInstallControl
```
<!-- EnableAppInstallControl-OmaUri-End -->

<!-- EnableAppInstallControl-Description-Begin -->
<!-- Description-Source-ADMX -->
App Install Control is a feature of Windows Defender SmartScreen that helps protect PCs by allowing users to install apps only from the Store. SmartScreen must be enabled for this feature to work properly.

- If you enable this setting, you must choose from the following behaviors:

- Turn off app recommendations.

- Show me app recommendations.

- Warn me before installing apps from outside the Store.

- Allow apps from Store only.

- If you disable or don't configure this setting, users will be able to install apps from anywhere, including files downloaded from the Internet.
<!-- EnableAppInstallControl-Description-End -->

<!-- EnableAppInstallControl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy will block installation only while the device is online. To block offline installation too, **SmartScreen/PreventOverrideForFilesInShell** and **SmartScreen/EnableSmartScreenInShell** policies should also be enabled.
>
> This policy setting is intended to prevent malicious content from affecting your user's devices when downloading executable content from the internet.
<!-- EnableAppInstallControl-Editable-End -->

<!-- EnableAppInstallControl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableAppInstallControl-DFProperties-End -->

<!-- EnableAppInstallControl-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Turns off Application Installation Control, allowing users to download and install files from anywhere on the web. |
| 1 | Turns on Application Installation Control, allowing users to only install apps from the Store. |
<!-- EnableAppInstallControl-AllowedValues-End -->

<!-- EnableAppInstallControl-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureAppInstallControl |
| Friendly Name | Configure App Install Control |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\SmartScreen |
| Registry Value Name | ConfigureAppInstallControlEnabled |
| ADMX File Name | SmartScreen.admx |
<!-- EnableAppInstallControl-GpMapping-End -->

<!-- EnableAppInstallControl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableAppInstallControl-Examples-End -->

<!-- EnableAppInstallControl-End -->

<!-- EnableSmartScreenInShell-Begin -->
## EnableSmartScreenInShell

<!-- EnableSmartScreenInShell-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EnableSmartScreenInShell-Applicability-End -->

<!-- EnableSmartScreenInShell-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SmartScreen/EnableSmartScreenInShell
```
<!-- EnableSmartScreenInShell-OmaUri-End -->

<!-- EnableSmartScreenInShell-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to turn Windows Defender SmartScreen on or off. SmartScreen helps protect PCs by warning users before running potentially malicious programs downloaded from the Internet. This warning is presented as an interstitial dialog shown before running an app that has been downloaded from the Internet and is unrecognized or known to be malicious. No dialog is shown for apps that don't appear to be suspicious.

Some information is sent to Microsoft about files and programs run on PCs with this feature enabled.

- If you enable this policy, SmartScreen will be turned on for all users. Its behavior can be controlled by the following options:

- Warn and prevent bypass
- Warn.

- If you enable this policy with the "Warn and prevent bypass" option, SmartScreen's dialogs won't present the user with the option to disregard the warning and run the app. SmartScreen will continue to show the warning on subsequent attempts to run the app.

- If you enable this policy with the "Warn" option, SmartScreen's dialogs will warn the user that the app appears suspicious, but will permit the user to disregard the warning and run the app anyway. SmartScreen won't warn the user again for that app if the user tells SmartScreen to run the app.

- If you disable this policy, SmartScreen will be turned off for all users. Users won't be warned if they try to run suspicious apps from the Internet.

- If you don't configure this policy, SmartScreen will be enabled by default, but users may change their settings.
<!-- EnableSmartScreenInShell-Description-End -->

<!-- EnableSmartScreenInShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableSmartScreenInShell-Editable-End -->

<!-- EnableSmartScreenInShell-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- EnableSmartScreenInShell-DFProperties-End -->

<!-- EnableSmartScreenInShell-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- EnableSmartScreenInShell-AllowedValues-End -->

<!-- EnableSmartScreenInShell-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ShellConfigureSmartScreen |
| Friendly Name | Configure Windows Defender SmartScreen |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableSmartScreen |
| ADMX File Name | SmartScreen.admx |
<!-- EnableSmartScreenInShell-GpMapping-End -->

<!-- EnableSmartScreenInShell-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSmartScreenInShell-Examples-End -->

<!-- EnableSmartScreenInShell-End -->

<!-- PreventOverrideForFilesInShell-Begin -->
## PreventOverrideForFilesInShell

<!-- PreventOverrideForFilesInShell-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventOverrideForFilesInShell-Applicability-End -->

<!-- PreventOverrideForFilesInShell-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/SmartScreen/PreventOverrideForFilesInShell
```
<!-- PreventOverrideForFilesInShell-OmaUri-End -->

<!-- PreventOverrideForFilesInShell-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to turn Windows Defender SmartScreen on or off. SmartScreen helps protect PCs by warning users before running potentially malicious programs downloaded from the Internet. This warning is presented as an interstitial dialog shown before running an app that has been downloaded from the Internet and is unrecognized or known to be malicious. No dialog is shown for apps that don't appear to be suspicious.

Some information is sent to Microsoft about files and programs run on PCs with this feature enabled.

- If you enable this policy, SmartScreen will be turned on for all users. Its behavior can be controlled by the following options:

- Warn and prevent bypass
- Warn.

- If you enable this policy with the "Warn and prevent bypass" option, SmartScreen's dialogs won't present the user with the option to disregard the warning and run the app. SmartScreen will continue to show the warning on subsequent attempts to run the app.

- If you enable this policy with the "Warn" option, SmartScreen's dialogs will warn the user that the app appears suspicious, but will permit the user to disregard the warning and run the app anyway. SmartScreen won't warn the user again for that app if the user tells SmartScreen to run the app.

- If you disable this policy, SmartScreen will be turned off for all users. Users won't be warned if they try to run suspicious apps from the Internet.

- If you don't configure this policy, SmartScreen will be enabled by default, but users may change their settings.
<!-- PreventOverrideForFilesInShell-Description-End -->

<!-- PreventOverrideForFilesInShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventOverrideForFilesInShell-Editable-End -->

<!-- PreventOverrideForFilesInShell-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventOverrideForFilesInShell-DFProperties-End -->

<!-- PreventOverrideForFilesInShell-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Don't prevent override. |
| 1 | Prevent override. |
<!-- PreventOverrideForFilesInShell-AllowedValues-End -->

<!-- PreventOverrideForFilesInShell-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ShellConfigureSmartScreen |
| Friendly Name | Configure Windows Defender SmartScreen |
| Element Name | Pick one of the following settings. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Defender SmartScreen > Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | SmartScreen.admx |
<!-- PreventOverrideForFilesInShell-GpMapping-End -->

<!-- PreventOverrideForFilesInShell-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventOverrideForFilesInShell-Examples-End -->

<!-- PreventOverrideForFilesInShell-End -->

<!-- SmartScreen-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SmartScreen-CspMoreInfo-End -->

<!-- SmartScreen-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
