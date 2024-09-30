---
title: Experience Policy CSP
description: Learn more about the Experience Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Experience-Begin -->
# Policy CSP - Experience

<!-- Experience-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Experience-Editable-End -->

<!-- AllowClipboardHistory-Begin -->
## AllowClipboardHistory

<!-- AllowClipboardHistory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowClipboardHistory-Applicability-End -->

<!-- AllowClipboardHistory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowClipboardHistory
```
<!-- AllowClipboardHistory-OmaUri-End -->

<!-- AllowClipboardHistory-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether history of Clipboard contents can be stored in memory.

- If you enable this policy setting, history of Clipboard contents are allowed to be stored.

- If you disable this policy setting, history of Clipboard contents aren't allowed to be stored.

Policy change takes effect immediately.
<!-- AllowClipboardHistory-Description-End -->

<!-- AllowClipboardHistory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowClipboardHistory-Editable-End -->

<!-- AllowClipboardHistory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowClipboardHistory-DFProperties-End -->

<!-- AllowClipboardHistory-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowClipboardHistory-AllowedValues-End -->

<!-- AllowClipboardHistory-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowClipboardHistory |
| Friendly Name | Allow Clipboard History |
| Location | Computer Configuration |
| Path | System > OS Policies |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowClipboardHistory |
| ADMX File Name | OSPolicy.admx |
<!-- AllowClipboardHistory-GpMapping-End -->

<!-- AllowClipboardHistory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Validate**:

1. Configure Experience/AllowClipboardHistory to 0.
1. Open Notepad (or any editor app), select a text, and copy it to the clipboard.
1. Press Win+V to open the clipboard history UI.
1. You shouldn't see any clipboard item including current item you copied.
1. The setting under Settings App -> System -> Clipboard should be grayed out with policy warning.
<!-- AllowClipboardHistory-Examples-End -->

<!-- AllowClipboardHistory-End -->

<!-- AllowCopyPaste-Begin -->
## AllowCopyPaste

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowCopyPaste-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | Not applicable | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowCopyPaste-Applicability-End -->

<!-- AllowCopyPaste-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowCopyPaste
```
<!-- AllowCopyPaste-OmaUri-End -->

<!-- AllowCopyPaste-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowCopyPaste-Description-End -->

<!-- AllowCopyPaste-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCopyPaste-Editable-End -->

<!-- AllowCopyPaste-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCopyPaste-DFProperties-End -->

<!-- AllowCopyPaste-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowCopyPaste-AllowedValues-End -->

<!-- AllowCopyPaste-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCopyPaste-Examples-End -->

<!-- AllowCopyPaste-End -->

<!-- AllowCortana-Begin -->
## AllowCortana

<!-- AllowCortana-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowCortana-Applicability-End -->

<!-- AllowCortana-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowCortana
```
<!-- AllowCortana-OmaUri-End -->

<!-- AllowCortana-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Cortana is allowed on the device.

- If you enable or don't configure this setting, Cortana will be allowed on the device.

- If you disable this setting, Cortana will be turned off.

When Cortana is off, users will still be able to use search to find things on the device.
<!-- AllowCortana-Description-End -->

<!-- AllowCortana-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCortana-Editable-End -->

<!-- AllowCortana-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCortana-DFProperties-End -->

<!-- AllowCortana-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowCortana-AllowedValues-End -->

<!-- AllowCortana-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCortana |
| Friendly Name | Allow Cortana |
| Location | Computer Configuration |
| Path | Windows Components > Search |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Search |
| Registry Value Name | AllowCortana |
| ADMX File Name | Search.admx |
<!-- AllowCortana-GpMapping-End -->

<!-- AllowCortana-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCortana-Examples-End -->

<!-- AllowCortana-End -->

<!-- AllowDeviceDiscovery-Begin -->
## AllowDeviceDiscovery

<!-- AllowDeviceDiscovery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowDeviceDiscovery-Applicability-End -->

<!-- AllowDeviceDiscovery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowDeviceDiscovery
```
<!-- AllowDeviceDiscovery-OmaUri-End -->

<!-- AllowDeviceDiscovery-Description-Begin -->
<!-- Description-Source-DDF -->
Allows users to turn on/off device discovery UX. When set to 0 , the projection pane is disabled. The Win+P and Win+K shortcut keys won't work on. Most restricted value is 0.
<!-- AllowDeviceDiscovery-Description-End -->

<!-- AllowDeviceDiscovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeviceDiscovery-Editable-End -->

<!-- AllowDeviceDiscovery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowDeviceDiscovery-DFProperties-End -->

<!-- AllowDeviceDiscovery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AllowDeviceDiscovery-AllowedValues-End -->

<!-- AllowDeviceDiscovery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeviceDiscovery-Examples-End -->

<!-- AllowDeviceDiscovery-End -->

<!-- AllowFindMyDevice-Begin -->
## AllowFindMyDevice

<!-- AllowFindMyDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowFindMyDevice-Applicability-End -->

<!-- AllowFindMyDevice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowFindMyDevice
```
<!-- AllowFindMyDevice-OmaUri-End -->

<!-- AllowFindMyDevice-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy turns on Find My Device.

When Find My Device is on, the device and its location are registered in the cloud so that the device can be located when the user initiates a Find command from account.microsoft.com. On devices that are compatible with active digitizers, enabling Find My Device will also allow the user to view the last location of use of their active digitizer on their device; this location is stored locally on the user's device after each use of their active digitizer.

When Find My Device is off, the device and its location aren't registered and the Find My Device feature won't work. The user will also not be able to view the location of the last use of their active digitizer on their device.
<!-- AllowFindMyDevice-Description-End -->

<!-- AllowFindMyDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFindMyDevice-Editable-End -->

<!-- AllowFindMyDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFindMyDevice-DFProperties-End -->

<!-- AllowFindMyDevice-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowFindMyDevice-AllowedValues-End -->

<!-- AllowFindMyDevice-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | FindMy_AllowFindMyDeviceConfig |
| Friendly Name | Turn On/Off Find My Device |
| Location | Computer Configuration |
| Path | Windows Components > Find My Device |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FindMyDevice |
| Registry Value Name | AllowFindMyDevice |
| ADMX File Name | FindMy.admx |
<!-- AllowFindMyDevice-GpMapping-End -->

<!-- AllowFindMyDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFindMyDevice-Examples-End -->

<!-- AllowFindMyDevice-End -->

<!-- AllowManualMDMUnenrollment-Begin -->
## AllowManualMDMUnenrollment

<!-- AllowManualMDMUnenrollment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowManualMDMUnenrollment-Applicability-End -->

<!-- AllowManualMDMUnenrollment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowManualMDMUnenrollment
```
<!-- AllowManualMDMUnenrollment-OmaUri-End -->

<!-- AllowManualMDMUnenrollment-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to allow the user to delete the workplace account using the workplace control panel. If the device is Microsoft Entra joined and MDM enrolled (e. g. auto-enrolled), then disabling the MDM unenrollment has no effect.

> [!NOTE]
> The MDM server can always remotely delete the account. Most restricted value is 0.
<!-- AllowManualMDMUnenrollment-Description-End -->

<!-- AllowManualMDMUnenrollment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowManualMDMUnenrollment-Editable-End -->

<!-- AllowManualMDMUnenrollment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowManualMDMUnenrollment-DFProperties-End -->

<!-- AllowManualMDMUnenrollment-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowManualMDMUnenrollment-AllowedValues-End -->

<!-- AllowManualMDMUnenrollment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowManualMDMUnenrollment-Examples-End -->

<!-- AllowManualMDMUnenrollment-End -->

<!-- AllowSaveAsOfOfficeFiles-Begin -->
## AllowSaveAsOfOfficeFiles

<!-- AllowSaveAsOfOfficeFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowSaveAsOfOfficeFiles-Applicability-End -->

<!-- AllowSaveAsOfOfficeFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowSaveAsOfOfficeFiles
```
<!-- AllowSaveAsOfOfficeFiles-OmaUri-End -->

<!-- AllowSaveAsOfOfficeFiles-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowSaveAsOfOfficeFiles-Description-End -->

<!-- AllowSaveAsOfOfficeFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSaveAsOfOfficeFiles-Editable-End -->

<!-- AllowSaveAsOfOfficeFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSaveAsOfOfficeFiles-DFProperties-End -->

<!-- AllowSaveAsOfOfficeFiles-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSaveAsOfOfficeFiles-AllowedValues-End -->

<!-- AllowSaveAsOfOfficeFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSaveAsOfOfficeFiles-Examples-End -->

<!-- AllowSaveAsOfOfficeFiles-End -->

<!-- AllowScreenCapture-Begin -->
## AllowScreenCapture

<!-- AllowScreenCapture-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowScreenCapture-Applicability-End -->

<!-- AllowScreenCapture-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowScreenCapture
```
<!-- AllowScreenCapture-OmaUri-End -->

<!-- AllowScreenCapture-Description-Begin -->
<!-- Description-Source-DDF -->
Allow screen capture.
<!-- AllowScreenCapture-Description-End -->

<!-- AllowScreenCapture-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowScreenCapture-Editable-End -->

<!-- AllowScreenCapture-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowScreenCapture-DFProperties-End -->

<!-- AllowScreenCapture-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowScreenCapture-AllowedValues-End -->

<!-- AllowScreenCapture-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowScreenCapture-Examples-End -->

<!-- AllowScreenCapture-End -->

<!-- AllowScreenRecorder-Begin -->
## AllowScreenRecorder

<!-- AllowScreenRecorder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllowScreenRecorder-Applicability-End -->

<!-- AllowScreenRecorder-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowScreenRecorder
```
<!-- AllowScreenRecorder-OmaUri-End -->

<!-- AllowScreenRecorder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether screen recording functionality is available in the Windows Snipping Tool app.

- If you disable this policy setting, screen recording functionality won't be accessible in the Windows Snipping Tool app.

- If you enable or don't configure this policy setting, users will be able to access screen recording functionality.
<!-- AllowScreenRecorder-Description-End -->

<!-- AllowScreenRecorder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowScreenRecorder-Editable-End -->

<!-- AllowScreenRecorder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowScreenRecorder-DFProperties-End -->

<!-- AllowScreenRecorder-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AllowScreenRecorder-AllowedValues-End -->

<!-- AllowScreenRecorder-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowScreenRecorder |
| Friendly Name | Allow Screen Recorder |
| Location | User Configuration |
| Path | Windows Components > Snipping Tool |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\SnippingTool |
| Registry Value Name | AllowScreenRecorder |
| ADMX File Name | Programs.admx |
<!-- AllowScreenRecorder-GpMapping-End -->

<!-- AllowScreenRecorder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowScreenRecorder-Examples-End -->

<!-- AllowScreenRecorder-End -->

<!-- AllowSharingOfOfficeFiles-Begin -->
## AllowSharingOfOfficeFiles

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowSharingOfOfficeFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowSharingOfOfficeFiles-Applicability-End -->

<!-- AllowSharingOfOfficeFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowSharingOfOfficeFiles
```
<!-- AllowSharingOfOfficeFiles-OmaUri-End -->

<!-- AllowSharingOfOfficeFiles-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowSharingOfOfficeFiles-Description-End -->

<!-- AllowSharingOfOfficeFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSharingOfOfficeFiles-Editable-End -->

<!-- AllowSharingOfOfficeFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSharingOfOfficeFiles-DFProperties-End -->

<!-- AllowSharingOfOfficeFiles-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSharingOfOfficeFiles-AllowedValues-End -->

<!-- AllowSharingOfOfficeFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSharingOfOfficeFiles-Examples-End -->

<!-- AllowSharingOfOfficeFiles-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-Begin -->
## AllowSIMErrorDialogPromptWhenNoSIM

<!-- AllowSIMErrorDialogPromptWhenNoSIM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowSIMErrorDialogPromptWhenNoSIM-Applicability-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowSIMErrorDialogPromptWhenNoSIM
```
<!-- AllowSIMErrorDialogPromptWhenNoSIM-OmaUri-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-Description-Begin -->
<!-- Description-Source-DDF -->
Allow SIM error dialog prompts when no SIM is inserted.
<!-- AllowSIMErrorDialogPromptWhenNoSIM-Description-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSIMErrorDialogPromptWhenNoSIM-Editable-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSIMErrorDialogPromptWhenNoSIM-DFProperties-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSIMErrorDialogPromptWhenNoSIM-AllowedValues-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSIMErrorDialogPromptWhenNoSIM-Examples-End -->

<!-- AllowSIMErrorDialogPromptWhenNoSIM-End -->

<!-- AllowSpotlightCollection-Begin -->
## AllowSpotlightCollection

<!-- AllowSpotlightCollection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSpotlightCollection-Applicability-End -->

<!-- AllowSpotlightCollection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowSpotlightCollection
```
<!-- AllowSpotlightCollection-OmaUri-End -->

<!-- AllowSpotlightCollection-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether Spotlight collection is allowed as a Personalization->Background Setting.

- If you enable this policy setting, Spotlight collection will show as an option in the user's Personalization Settings, and the user will be able to get daily images from Microsoft displayed on their desktop.

- If you disable this policy setting, Spotlight collection won't show as an option in Personalization Settings, and the user won't have the choice of getting Microsoft daily images shown on their desktop.
<!-- AllowSpotlightCollection-Description-End -->

<!-- AllowSpotlightCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following list shows the supported values:

- When set to 0, Spotlight collection will not show as an option in Personalization Settings and therefore be unavailable on Desktop.
- When set to 1 (default), Spotlight collection will show as an option in Personalization Settings and therefore be available on Desktop, allowing Desktop to refresh for daily images from Microsoft.
<!-- AllowSpotlightCollection-Editable-End -->

<!-- AllowSpotlightCollection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowSpotlightCollection-DFProperties-End -->

<!-- AllowSpotlightCollection-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSpotlightCollectionOnDesktop |
| Friendly Name | Turn off Spotlight collection on Desktop |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableSpotlightCollectionOnDesktop |
| ADMX File Name | CloudContent.admx |
<!-- AllowSpotlightCollection-GpMapping-End -->

<!-- AllowSpotlightCollection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSpotlightCollection-Examples-End -->

<!-- AllowSpotlightCollection-End -->

<!-- AllowSyncMySettings-Begin -->
## AllowSyncMySettings

<!-- AllowSyncMySettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowSyncMySettings-Applicability-End -->

<!-- AllowSyncMySettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowSyncMySettings
```
<!-- AllowSyncMySettings-OmaUri-End -->

<!-- AllowSyncMySettings-Description-Begin -->
<!-- Description-Source-DDF -->
Allows or disallows all Windows sync settings on the device. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](https://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).
<!-- AllowSyncMySettings-Description-End -->

<!-- AllowSyncMySettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSyncMySettings-Editable-End -->

<!-- AllowSyncMySettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSyncMySettings-DFProperties-End -->

<!-- AllowSyncMySettings-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Sync settings aren't allowed. |
| 1 (Default) | Sync settings allowed. |
<!-- AllowSyncMySettings-AllowedValues-End -->

<!-- AllowSyncMySettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSyncMySettings-Examples-End -->

<!-- AllowSyncMySettings-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-Begin -->
## AllowTailoredExperiencesWithDiagnosticData

<!-- AllowTailoredExperiencesWithDiagnosticData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowTailoredExperiencesWithDiagnosticData-Applicability-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowTailoredExperiencesWithDiagnosticData
```
<!-- AllowTailoredExperiencesWithDiagnosticData-OmaUri-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows you to prevent Windows from using diagnostic data to provide customized experiences to the user.

- If you enable this policy setting, Windows won't use diagnostic data from this device to customize content shown on the lock screen, Windows tips, Microsoft consumer features, or other related features. If these features are enabled, users will still see recommendations, tips and offers, but they may be less relevant.

- If you disable or don't configure this policy setting, Microsoft will use diagnostic data to provide personalized recommendations, tips, and offers to tailor Windows for the user's needs and make it work better for them. Diagnostic data can include browser, app and feature usage, depending on the Diagnostic and usage data setting value.

> [!NOTE]
> This setting doesn't control Cortana cutomized experiences because there are separate policies to configure it. Most restricted value is 0.
<!-- AllowTailoredExperiencesWithDiagnosticData-Description-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTailoredExperiencesWithDiagnosticData-Editable-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_AllowTailoredExperiencesWithDiagnosticData_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowTailoredExperiencesWithDiagnosticData-DFProperties-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowTailoredExperiencesWithDiagnosticData-AllowedValues-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableTailoredExperiencesWithDiagnosticData |
| Friendly Name | Do not use diagnostic data for tailored experiences |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableTailoredExperiencesWithDiagnosticData |
| ADMX File Name | CloudContent.admx |
<!-- AllowTailoredExperiencesWithDiagnosticData-GpMapping-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTailoredExperiencesWithDiagnosticData-Examples-End -->

<!-- AllowTailoredExperiencesWithDiagnosticData-End -->

<!-- AllowTaskSwitcher-Begin -->
## AllowTaskSwitcher

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowTaskSwitcher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | Not applicable | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowTaskSwitcher-Applicability-End -->

<!-- AllowTaskSwitcher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowTaskSwitcher
```
<!-- AllowTaskSwitcher-OmaUri-End -->

<!-- AllowTaskSwitcher-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowTaskSwitcher-Description-End -->

<!-- AllowTaskSwitcher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowTaskSwitcher-Editable-End -->

<!-- AllowTaskSwitcher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowTaskSwitcher-DFProperties-End -->

<!-- AllowTaskSwitcher-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowTaskSwitcher-AllowedValues-End -->

<!-- AllowTaskSwitcher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowTaskSwitcher-Examples-End -->

<!-- AllowTaskSwitcher-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Begin -->
## AllowThirdPartySuggestionsInWindowsSpotlight

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Applicability-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowThirdPartySuggestionsInWindowsSpotlight
```
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-OmaUri-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to allow app and content suggestions from third-party software publishers in Windows spotlight features like lock screen spotlight, suggested apps in the Start menu, and Windows tips. Users may still see suggestions for Microsoft features, apps, and services.
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Description-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Editable-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_AllowThirdPartySuggestionsInWindowsSpotlight_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-DFProperties-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Third-party suggestions not allowed. |
| 1 (Default) | Third-party suggestions allowed. |
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-AllowedValues-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableThirdPartySuggestions |
| Friendly Name | Do not suggest third-party content in Windows spotlight |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableThirdPartySuggestions |
| ADMX File Name | CloudContent.admx |
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-GpMapping-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowThirdPartySuggestionsInWindowsSpotlight-Examples-End -->

<!-- AllowThirdPartySuggestionsInWindowsSpotlight-End -->

<!-- AllowVoiceRecording-Begin -->
## AllowVoiceRecording

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- AllowVoiceRecording-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | Not applicable | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowVoiceRecording-Applicability-End -->

<!-- AllowVoiceRecording-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowVoiceRecording
```
<!-- AllowVoiceRecording-OmaUri-End -->

<!-- AllowVoiceRecording-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is deprecated.
<!-- AllowVoiceRecording-Description-End -->

<!-- AllowVoiceRecording-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowVoiceRecording-Editable-End -->

<!-- AllowVoiceRecording-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowVoiceRecording-DFProperties-End -->

<!-- AllowVoiceRecording-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowVoiceRecording-AllowedValues-End -->

<!-- AllowVoiceRecording-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowVoiceRecording-Examples-End -->

<!-- AllowVoiceRecording-End -->

<!-- AllowWindowsConsumerFeatures-Begin -->
## AllowWindowsConsumerFeatures

<!-- AllowWindowsConsumerFeatures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowWindowsConsumerFeatures-Applicability-End -->

<!-- AllowWindowsConsumerFeatures-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowWindowsConsumerFeatures
```
<!-- AllowWindowsConsumerFeatures-OmaUri-End -->

<!-- AllowWindowsConsumerFeatures-Description-Begin -->
<!-- Description-Source-DDF -->
Prior to Windows 10, version 1803, this policy had User scope. This policy allows IT admins to turn on experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles. Most restricted value is 0.
<!-- AllowWindowsConsumerFeatures-Description-End -->

<!-- AllowWindowsConsumerFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsConsumerFeatures-Editable-End -->

<!-- AllowWindowsConsumerFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_AllowWindowsConsumerFeatures_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowWindowsConsumerFeatures-DFProperties-End -->

<!-- AllowWindowsConsumerFeatures-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWindowsConsumerFeatures-AllowedValues-End -->

<!-- AllowWindowsConsumerFeatures-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsConsumerFeatures |
| Friendly Name | Turn off Microsoft consumer experiences |
| Location | Computer Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableWindowsConsumerFeatures |
| ADMX File Name | CloudContent.admx |
<!-- AllowWindowsConsumerFeatures-GpMapping-End -->

<!-- AllowWindowsConsumerFeatures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsConsumerFeatures-Examples-End -->

<!-- AllowWindowsConsumerFeatures-End -->

<!-- AllowWindowsSpotlight-Begin -->
## AllowWindowsSpotlight

<!-- AllowWindowsSpotlight-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowWindowsSpotlight-Applicability-End -->

<!-- AllowWindowsSpotlight-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight
```
<!-- AllowWindowsSpotlight-OmaUri-End -->

<!-- AllowWindowsSpotlight-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to turn off all Windows spotlight features at once.

- If you enable this policy setting, Windows spotlight on lock screen, Windows Tips, Microsoft consumer features and other related features will be turned off. You should enable this policy setting if your goal is to minimize network traffic from target devices.

- If you disable or don't configure this policy setting, Windows spotlight features are allowed and may be controlled individually using their corresponding policy settings. Most restricted value is 0.
<!-- AllowWindowsSpotlight-Description-End -->

<!-- AllowWindowsSpotlight-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsSpotlight-Editable-End -->

<!-- AllowWindowsSpotlight-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowWindowsSpotlight-DFProperties-End -->

<!-- AllowWindowsSpotlight-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWindowsSpotlight-AllowedValues-End -->

<!-- AllowWindowsSpotlight-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsSpotlightFeatures |
| Friendly Name | Turn off all Windows spotlight features |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableWindowsSpotlightFeatures |
| ADMX File Name | CloudContent.admx |
<!-- AllowWindowsSpotlight-GpMapping-End -->

<!-- AllowWindowsSpotlight-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsSpotlight-Examples-End -->

<!-- AllowWindowsSpotlight-End -->

<!-- AllowWindowsSpotlightOnActionCenter-Begin -->
## AllowWindowsSpotlightOnActionCenter

<!-- AllowWindowsSpotlightOnActionCenter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowWindowsSpotlightOnActionCenter-Applicability-End -->

<!-- AllowWindowsSpotlightOnActionCenter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlightOnActionCenter
```
<!-- AllowWindowsSpotlightOnActionCenter-OmaUri-End -->

<!-- AllowWindowsSpotlightOnActionCenter-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows administrators to prevent Windows spotlight notifications from being displayed in the Action Center.

- If you enable this policy, Windows spotlight notifications will no longer be displayed in the Action Center.

- If you disable or don't configure this policy, Microsoft may display notifications in the Action Center that will suggest apps or features to help users be more productive on Windows. Most restricted value is 0.
<!-- AllowWindowsSpotlightOnActionCenter-Description-End -->

<!-- AllowWindowsSpotlightOnActionCenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsSpotlightOnActionCenter-Editable-End -->

<!-- AllowWindowsSpotlightOnActionCenter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_AllowWindowsSpotlightOnActionCenter_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowWindowsSpotlightOnActionCenter-DFProperties-End -->

<!-- AllowWindowsSpotlightOnActionCenter-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWindowsSpotlightOnActionCenter-AllowedValues-End -->

<!-- AllowWindowsSpotlightOnActionCenter-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsSpotlightOnActionCenter |
| Friendly Name | Turn off Windows Spotlight on Action Center |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableWindowsSpotlightOnActionCenter |
| ADMX File Name | CloudContent.admx |
<!-- AllowWindowsSpotlightOnActionCenter-GpMapping-End -->

<!-- AllowWindowsSpotlightOnActionCenter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsSpotlightOnActionCenter-Examples-End -->

<!-- AllowWindowsSpotlightOnActionCenter-End -->

<!-- AllowWindowsSpotlightOnSettings-Begin -->
## AllowWindowsSpotlightOnSettings

<!-- AllowWindowsSpotlightOnSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowWindowsSpotlightOnSettings-Applicability-End -->

<!-- AllowWindowsSpotlightOnSettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlightOnSettings
```
<!-- AllowWindowsSpotlightOnSettings-OmaUri-End -->

<!-- AllowWindowsSpotlightOnSettings-Description-Begin -->
<!-- Description-Source-DDF -->
This policy allows IT admins to turn off Suggestions in Settings app. These suggestions from Microsoft may show after each OS clean install, upgrade or an on-going basis to help users discover apps/features on Windows or across devices, to make their experience productive. User setting is under Settings -> Privacy -> General -> Show me suggested content in Settings app. User Setting is changeable on a per user basis. If the Group policy is set to off, no suggestions will be shown to the user in Settings app.
<!-- AllowWindowsSpotlightOnSettings-Description-End -->

<!-- AllowWindowsSpotlightOnSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsSpotlightOnSettings-Editable-End -->

<!-- AllowWindowsSpotlightOnSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowWindowsSpotlightOnSettings-DFProperties-End -->

<!-- AllowWindowsSpotlightOnSettings-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWindowsSpotlightOnSettings-AllowedValues-End -->

<!-- AllowWindowsSpotlightOnSettings-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsSpotlightOnSettings |
| Friendly Name | Turn off Windows Spotlight on Settings |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableWindowsSpotlightOnSettings |
| ADMX File Name | CloudContent.admx |
<!-- AllowWindowsSpotlightOnSettings-GpMapping-End -->

<!-- AllowWindowsSpotlightOnSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsSpotlightOnSettings-Examples-End -->

<!-- AllowWindowsSpotlightOnSettings-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Begin -->
## AllowWindowsSpotlightWindowsWelcomeExperience

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Applicability-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlightWindowsWelcomeExperience
```
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-OmaUri-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting lets you turn off the Windows spotlight Windows welcome experience feature. The Windows welcome experience feature introduces onboard users to Windows; for example, launching Microsoft Edge with a webpage that highlights new features.

- If you enable this policy, the Windows welcome experience will no longer be displayed when there are updates and changes to Windows and its apps.

- If you disable or don't configure this policy, the Windows welcome experience will be launched to inform onboard users about what's new, changed, and suggested. Most restricted value is 0.
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Description-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Editable-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_AllowWindowsSpotlightWindowsWelcomeExperience_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-DFProperties-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-AllowedValues-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWindowsSpotlightWindowsWelcomeExperience |
| Friendly Name | Turn off the Windows Welcome Experience |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableWindowsSpotlightWindowsWelcomeExperience |
| ADMX File Name | CloudContent.admx |
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-GpMapping-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsSpotlightWindowsWelcomeExperience-Examples-End -->

<!-- AllowWindowsSpotlightWindowsWelcomeExperience-End -->

<!-- AllowWindowsTips-Begin -->
## AllowWindowsTips

<!-- AllowWindowsTips-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowWindowsTips-Applicability-End -->

<!-- AllowWindowsTips-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/AllowWindowsTips
```
<!-- AllowWindowsTips-OmaUri-End -->

<!-- AllowWindowsTips-Description-Begin -->
<!-- Description-Source-DDF -->
Enables or disables Windows Tips / soft landing.
<!-- AllowWindowsTips-Description-End -->

<!-- AllowWindowsTips-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsTips-Editable-End -->

<!-- AllowWindowsTips-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_AllowWindowsTips_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowWindowsTips-DFProperties-End -->

<!-- AllowWindowsTips-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AllowWindowsTips-AllowedValues-End -->

<!-- AllowWindowsTips-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSoftLanding |
| Friendly Name | Do not show Windows tips |
| Location | Computer Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableSoftLanding |
| ADMX File Name | CloudContent.admx |
<!-- AllowWindowsTips-GpMapping-End -->

<!-- AllowWindowsTips-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsTips-Examples-End -->

<!-- AllowWindowsTips-End -->

<!-- ConfigureChatIcon-Begin -->
## ConfigureChatIcon

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- ConfigureChatIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureChatIcon-Applicability-End -->

<!-- ConfigureChatIcon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/ConfigureChatIcon
```
<!-- ConfigureChatIcon-OmaUri-End -->

<!-- ConfigureChatIcon-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the Chat icon on the taskbar.

- If you enable this policy setting and set it to Show, the Chat icon will be displayed on the taskbar by default. Users can show or hide it in Settings.

- If you enable this policy setting and set it to Hide, the Chat icon will be hidden by default. Users can show or hide it in Settings.

- If you enable this policy setting and set it to Disabled, the Chat icon won't be displayed, and users can't show or hide it in Settings.

- If you disable or don't configure this policy setting, the Chat icon will be configured according to the defaults for your Windows edition.
<!-- ConfigureChatIcon-Description-End -->

<!-- ConfigureChatIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Option 1 (Show) and Option 2 (Hide) only work on the first sign-in attempt. Option 3 (Disabled) works on all attempts.
<!-- ConfigureChatIcon-Editable-End -->

<!-- ConfigureChatIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureChatIcon-DFProperties-End -->

<!-- ConfigureChatIcon-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not Configured. |
| 1 | Show. |
| 2 | Hide. |
| 3 | Disabled. |
<!-- ConfigureChatIcon-AllowedValues-End -->

<!-- ConfigureChatIcon-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureChatIcon |
| Friendly Name | Configures the Chat icon on the taskbar |
| Element Name | State. |
| Location | Computer Configuration |
| Path | Windows Components > Chat |
| Registry Key Name | Software\Policies\Microsoft\Windows\Windows Chat |
| ADMX File Name | Taskbar.admx |
<!-- ConfigureChatIcon-GpMapping-End -->

<!-- ConfigureChatIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureChatIcon-Examples-End -->

<!-- ConfigureChatIcon-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-Begin -->
## ConfigureWindowsSpotlightOnLockScreen

<!-- ConfigureWindowsSpotlightOnLockScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- ConfigureWindowsSpotlightOnLockScreen-Applicability-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/ConfigureWindowsSpotlightOnLockScreen
```
<!-- ConfigureWindowsSpotlightOnLockScreen-OmaUri-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure Windows spotlight on the lock screen.

- If you enable this policy setting, "Windows spotlight" will be set as the lock screen provider and users won't be able to modify their lock screen. "Windows spotlight" will display daily images from Microsoft on the lock screen.

Additionally, if you check the "Include content from Enterprise spotlight" checkbox and your organization has setup an Enterprise spotlight content service in Azure, the lock screen will display internal messages and communications configured in that service, when available. If your organization doesn't have an Enterprise spotlight content service, the checkbox will have no effect.

- If you disable this policy setting, Windows spotlight will be turned off and users will no longer be able to select it as their lock screen. Users will see the default lock screen image and will be able to select another image, unless you have enabled the "Prevent changing lock screen image" policy.

- If you don't configure this policy, Windows spotlight will be available on the lock screen and will be selected by default, unless you have configured another default lock screen image using the "Force a specific default lock screen and logon image" policy.

> [!NOTE]
> This policy is only available for Enterprise SKUs.
<!-- ConfigureWindowsSpotlightOnLockScreen-Description-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureWindowsSpotlightOnLockScreen-Editable-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [Experience_ConfigureWindowsSpotlightOnLockScreen_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsSpotlight` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- ConfigureWindowsSpotlightOnLockScreen-DFProperties-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Windows spotlight disabled. |
| 1 (Default) | Windows spotlight enabled. |
| 2 | Windows spotlight is always enabled, the user can't disable it. |
| 3 | Windows spotlight is always enabled, the user can't disable it. For special configurations only. |
<!-- ConfigureWindowsSpotlightOnLockScreen-AllowedValues-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureWindowsSpotlight |
| Friendly Name | Configure Windows spotlight on lock screen |
| Location | User Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | ConfigureWindowsSpotlight |
| ADMX File Name | CloudContent.admx |
<!-- ConfigureWindowsSpotlightOnLockScreen-GpMapping-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureWindowsSpotlightOnLockScreen-Examples-End -->

<!-- ConfigureWindowsSpotlightOnLockScreen-End -->

<!-- DisableCloudOptimizedContent-Begin -->
## DisableCloudOptimizedContent

<!-- DisableCloudOptimizedContent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableCloudOptimizedContent-Applicability-End -->

<!-- DisableCloudOptimizedContent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/DisableCloudOptimizedContent
```
<!-- DisableCloudOptimizedContent-OmaUri-End -->

<!-- DisableCloudOptimizedContent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you turn off cloud optimized content in all Windows experiences.

- If you enable this policy, Windows experiences that use the cloud optimized content client component, will instead present the default fallback content.

- If you disable or don't configure this policy, Windows experiences will be able to use cloud optimized content.
<!-- DisableCloudOptimizedContent-Description-End -->

<!-- DisableCloudOptimizedContent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableCloudOptimizedContent-Editable-End -->

<!-- DisableCloudOptimizedContent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableCloudOptimizedContent-DFProperties-End -->

<!-- DisableCloudOptimizedContent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- DisableCloudOptimizedContent-AllowedValues-End -->

<!-- DisableCloudOptimizedContent-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableCloudOptimizedContent |
| Friendly Name | Turn off cloud optimized content |
| Location | Computer Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableCloudOptimizedContent |
| ADMX File Name | CloudContent.admx |
<!-- DisableCloudOptimizedContent-GpMapping-End -->

<!-- DisableCloudOptimizedContent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableCloudOptimizedContent-Examples-End -->

<!-- DisableCloudOptimizedContent-End -->

<!-- DisableConsumerAccountStateContent-Begin -->
## DisableConsumerAccountStateContent

<!-- DisableConsumerAccountStateContent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableConsumerAccountStateContent-Applicability-End -->

<!-- DisableConsumerAccountStateContent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/DisableConsumerAccountStateContent
```
<!-- DisableConsumerAccountStateContent-OmaUri-End -->

<!-- DisableConsumerAccountStateContent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you turn off cloud consumer account state content in all Windows experiences.

- If you enable this policy, Windows experiences that use the cloud consumer account state content client component, will instead present the default fallback content.

- If you disable or don't configure this policy, Windows experiences will be able to use cloud consumer account state content.
<!-- DisableConsumerAccountStateContent-Description-End -->

<!-- DisableConsumerAccountStateContent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableConsumerAccountStateContent-Editable-End -->

<!-- DisableConsumerAccountStateContent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableConsumerAccountStateContent-DFProperties-End -->

<!-- DisableConsumerAccountStateContent-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- DisableConsumerAccountStateContent-AllowedValues-End -->

<!-- DisableConsumerAccountStateContent-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableConsumerAccountStateContent |
| Friendly Name | Turn off cloud consumer account state content |
| Location | Computer Configuration |
| Path | Windows Components > Cloud Content |
| Registry Key Name | Software\Policies\Microsoft\Windows\CloudContent |
| Registry Value Name | DisableConsumerAccountStateContent |
| ADMX File Name | CloudContent.admx |
<!-- DisableConsumerAccountStateContent-GpMapping-End -->

<!-- DisableConsumerAccountStateContent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableConsumerAccountStateContent-Examples-End -->

<!-- DisableConsumerAccountStateContent-End -->

<!-- DisableTextTranslation-Begin -->
## DisableTextTranslation

<!-- DisableTextTranslation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DisableTextTranslation-Applicability-End -->

<!-- DisableTextTranslation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/DisableTextTranslation
```
<!-- DisableTextTranslation-OmaUri-End -->

<!-- DisableTextTranslation-Description-Begin -->
<!-- Description-Source-DDF -->
Allows Text Translation feature to be enabled/disabled.
<!-- DisableTextTranslation-Description-End -->

<!-- DisableTextTranslation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableTextTranslation-Editable-End -->

<!-- DisableTextTranslation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableTextTranslation-DFProperties-End -->

<!-- DisableTextTranslation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable Text Translation. |
| 1 | Disable Text Translation. |
<!-- DisableTextTranslation-AllowedValues-End -->

<!-- DisableTextTranslation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableTextTranslation-Examples-End -->

<!-- DisableTextTranslation-End -->

<!-- DoNotShowFeedbackNotifications-Begin -->
## DoNotShowFeedbackNotifications

<!-- DoNotShowFeedbackNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DoNotShowFeedbackNotifications-Applicability-End -->

<!-- DoNotShowFeedbackNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/DoNotShowFeedbackNotifications
```
<!-- DoNotShowFeedbackNotifications-OmaUri-End -->

<!-- DoNotShowFeedbackNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows an organization to prevent its devices from showing feedback questions from Microsoft.

- If you enable this policy setting, users will no longer see feedback notifications through the Windows Feedback app.

- If you disable or don't configure this policy setting, users may see notifications through the Windows Feedback app asking users for feedback.

> [!NOTE]
> If you disable or don't configure this policy setting, users can control how often they receive feedback questions.
<!-- DoNotShowFeedbackNotifications-Description-End -->

<!-- DoNotShowFeedbackNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotShowFeedbackNotifications-Editable-End -->

<!-- DoNotShowFeedbackNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DoNotShowFeedbackNotifications-DFProperties-End -->

<!-- DoNotShowFeedbackNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Feedback notifications aren't disabled. The actual state of feedback notifications on the device will then depend on what GP has configured or what the user has configured locally. |
| 1 | Feedback notifications are disabled. |
<!-- DoNotShowFeedbackNotifications-AllowedValues-End -->

<!-- DoNotShowFeedbackNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DoNotShowFeedbackNotifications |
| Friendly Name | Do not show feedback notifications |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| Registry Value Name | DoNotShowFeedbackNotifications |
| ADMX File Name | FeedbackNotifications.admx |
<!-- DoNotShowFeedbackNotifications-GpMapping-End -->

<!-- DoNotShowFeedbackNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotShowFeedbackNotifications-Examples-End -->

<!-- DoNotShowFeedbackNotifications-End -->

<!-- DoNotSyncBrowserSettings-Begin -->
## DoNotSyncBrowserSettings

<!-- DoNotSyncBrowserSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DoNotSyncBrowserSettings-Applicability-End -->

<!-- DoNotSyncBrowserSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/DoNotSyncBrowserSettings
```
<!-- DoNotSyncBrowserSettings-OmaUri-End -->

<!-- DoNotSyncBrowserSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevent the "browser" group from syncing to and from this PC. This turns off and disables the "browser" group on the "sync your settings" page in PC settings. The "browser" group contains settings and info like history and favorites.

If you enable this policy setting, the "browser" group, including info like history and favorites, won't be synced.

Use the option "Allow users to turn browser syncing on" so that syncing is turned off by default but not disabled.

If you don't set or disable this setting, syncing of the "browser" group is on by default and configurable by the user.
<!-- DoNotSyncBrowserSettings-Description-End -->

<!-- DoNotSyncBrowserSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Related policy: [PreventUsersFromTurningOnBrowserSyncing](#preventusersfromturningonbrowsersyncing)
<!-- DoNotSyncBrowserSettings-Editable-End -->

<!-- DoNotSyncBrowserSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DoNotSyncBrowserSettings-DFProperties-End -->

<!-- DoNotSyncBrowserSettings-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 2 | Disable Syncing. |
| 0 (Default) | Allow syncing. |
<!-- DoNotSyncBrowserSettings-AllowedValues-End -->

<!-- DoNotSyncBrowserSettings-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWebBrowserSettingSync |
| Friendly Name | Do not sync browser settings |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| Registry Value Name | DisableWebBrowserSettingSync |
| ADMX File Name | SettingSync.admx |
<!-- DoNotSyncBrowserSettings-GpMapping-End -->

<!-- DoNotSyncBrowserSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
_**Sync the browser settings automatically**_

   Set both **DoNotSyncBrowserSettings** and **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

_**Prevent syncing of browser settings and prevent users from turning it on**_

1. Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2. Set **PreventUsersFromTurningOnBrowserSyncing** to 1 (Prevented/turned off).

_**Prevent syncing of browser settings and let users turn on syncing**_

1. Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2. Set **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

_**Turn syncing off by default but don’t disable**_

   Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off) and select the _Allow users to turn “browser” syncing_ option.
<!-- DoNotSyncBrowserSettings-Examples-End -->

<!-- DoNotSyncBrowserSettings-End -->

<!-- EnableOrganizationalMessages-Begin -->
## EnableOrganizationalMessages

<!-- EnableOrganizationalMessages-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 with [KB5041582](https://support.microsoft.com/help/5041582) [10.0.19045.4842] and later <br> ✅ Windows 11, version 22H2 with [KB5020044](https://support.microsoft.com/help/5020044) [10.0.22621.900] and later <br> ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- EnableOrganizationalMessages-Applicability-End -->

<!-- EnableOrganizationalMessages-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Experience/EnableOrganizationalMessages
```
<!-- EnableOrganizationalMessages-OmaUri-End -->

<!-- EnableOrganizationalMessages-Description-Begin -->
<!-- Description-Source-DDF -->
Organizational messages allow Administrators to deliver messages to their end users on selected Windows 11 experiences. Organizational messages are available to Administrators via services like Microsoft Endpoint Manager. By default, this policy is disabled. If you enable this policy, these experiences will show content booked by Administrators. Enabling this policy will have no impact on existing MDM policy settings governing delivery of content from Microsoft on Windows experiences.
<!-- EnableOrganizationalMessages-Description-End -->

<!-- EnableOrganizationalMessages-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableOrganizationalMessages-Editable-End -->

<!-- EnableOrganizationalMessages-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableOrganizationalMessages-DFProperties-End -->

<!-- EnableOrganizationalMessages-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- EnableOrganizationalMessages-AllowedValues-End -->

<!-- EnableOrganizationalMessages-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableOrganizationalMessages-Examples-End -->

<!-- EnableOrganizationalMessages-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-Begin -->
## PreventUsersFromTurningOnBrowserSyncing

<!-- PreventUsersFromTurningOnBrowserSyncing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- PreventUsersFromTurningOnBrowserSyncing-Applicability-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/PreventUsersFromTurningOnBrowserSyncing
```
<!-- PreventUsersFromTurningOnBrowserSyncing-OmaUri-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PreventUsersFromTurningOnBrowserSyncing-Description-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
By default, the "browser" group syncs automatically between the user's devices, letting users make changes. With this policy though, you can prevent the "browser" group from syncing and prevent users from turning on the **Sync your Settings** toggle in Settings. If you want syncing turned off by default but not disabled, select the **Allow syncing** option in the [DoNotSyncBrowserSettings](#donotsyncbrowsersettings). For this policy to work correctly, you must enable the DoNotSyncBrowserSettings policy.
<!-- PreventUsersFromTurningOnBrowserSyncing-Editable-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- PreventUsersFromTurningOnBrowserSyncing-DFProperties-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Allowed/turned on. Users can sync the browser settings. |
| 1 (Default) | Prevented/turned off. |
<!-- PreventUsersFromTurningOnBrowserSyncing-AllowedValues-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableWebBrowserSettingSync |
| Friendly Name | Do not sync browser settings |
| Element Name | Allow users to turn "browser" syncing on. |
| Location | Computer Configuration |
| Path | Windows Components > Sync your settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\SettingSync |
| ADMX File Name | SettingSync.admx |
<!-- PreventUsersFromTurningOnBrowserSyncing-GpMapping-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Examples**:

_**Sync the browser settings automatically**_

   Set both **DoNotSyncBrowserSettings** and **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

_**Prevent syncing of browser settings and prevent users from turning it on**_

1. Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2. Set **PreventUsersFromTurningOnBrowserSyncing** to 1 (Prevented/turned off).

_**Prevent syncing of browser settings and let users turn on syncing**_

1. Set **DoNotSyncBrowserSettings** to 2 (Prevented/turned off).
2. Set **PreventUsersFromTurningOnBrowserSyncing** to 0 (Allowed/turned on).

**Validate**:

1. Select **More > Settings**.
1. See, if the setting is enabled or disabled based on your selection.
<!-- PreventUsersFromTurningOnBrowserSyncing-Examples-End -->

<!-- PreventUsersFromTurningOnBrowserSyncing-End -->

<!-- ShowLockOnUserTile-Begin -->
## ShowLockOnUserTile

<!-- ShowLockOnUserTile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ShowLockOnUserTile-Applicability-End -->

<!-- ShowLockOnUserTile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Experience/ShowLockOnUserTile
```
<!-- ShowLockOnUserTile-OmaUri-End -->

<!-- ShowLockOnUserTile-Description-Begin -->
<!-- Description-Source-ADMX -->
Shows or hides lock from the user tile menu.

- If you enable this policy setting, the lock option will be shown in the User Tile menu.

- If you disable this policy setting, the lock option will never be shown in the User Tile menu.

- If you don't configure this policy setting, users will be able to choose whether they want lock to show through the Power Options Control Panel.
<!-- ShowLockOnUserTile-Description-End -->

<!-- ShowLockOnUserTile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowLockOnUserTile-Editable-End -->

<!-- ShowLockOnUserTile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- ShowLockOnUserTile-DFProperties-End -->

<!-- ShowLockOnUserTile-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | The lock option isn't displayed in the User Tile menu. |
| 1 (Default) | The lock option is displayed in the User Tile menu. |
<!-- ShowLockOnUserTile-AllowedValues-End -->

<!-- ShowLockOnUserTile-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ShowLockOption |
| Friendly Name | Show lock in the user tile menu |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowLockOption |
| ADMX File Name | WindowsExplorer.admx |
<!-- ShowLockOnUserTile-GpMapping-End -->

<!-- ShowLockOnUserTile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowLockOnUserTile-Examples-End -->

<!-- ShowLockOnUserTile-End -->

<!-- Experience-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Experience-CspMoreInfo-End -->

<!-- Experience-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
