---
title: SmartScreen Policy CSP
description: Learn more about the SmartScreen Area in Policy CSP.
ms.date: 09/27/2024
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
<!-- Description-Source-DDF-Forced -->
Allows IT Admins to control whether users are allowed to install apps from places other than the Store.

> [!NOTE]
> This policy will block installation only while the device is online. To block offline installation too, SmartScreen/PreventOverrideForFilesInShell and SmartScreen/EnableSmartScreenInShell policies should also be enabled. This policy setting is intended to prevent malicious content from affecting your user's devices when downloading executable content from the internet.
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
| 2 | Turns on Application Installation Control, letting users know that there's a comparable app in the Store. |
| 3 | Turns on Application Installation Control, warning users before installing apps from outside the Store. |
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
<!-- Description-Source-DDF-Forced -->
Allows IT Admins to configure SmartScreen for Windows.
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
<!-- Description-Source-DDF-Forced -->
Allows IT Admins to control whether users can ignore SmartScreen warnings and run malicious files.
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
