---
title: ADMX_Taskbar Policy CSP
description: Learn more about the ADMX_Taskbar Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Taskbar-Begin -->
# Policy CSP - ADMX_Taskbar

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Taskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Taskbar-Editable-End -->

<!-- DisableNotificationCenter-Begin -->
## DisableNotificationCenter

<!-- DisableNotificationCenter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableNotificationCenter-Applicability-End -->

<!-- DisableNotificationCenter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/DisableNotificationCenter
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Taskbar/DisableNotificationCenter
```
<!-- DisableNotificationCenter-OmaUri-End -->

<!-- DisableNotificationCenter-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting removes Notifications and Action Center from the notification area on the taskbar.

The notification area is located at the far right end of the taskbar and includes icons for current notifications and the system clock.

- If this setting is enabled, Notifications and Action Center isn't displayed in the notification area. The user will be able to read notifications when they appear, but they won't be able to review any notifications they miss.

- If you disable or don't configure this policy setting, Notification and Security and Maintenance will be displayed on the taskbar.

A reboot is required for this policy setting to take effect.
<!-- DisableNotificationCenter-Description-End -->

<!-- DisableNotificationCenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableNotificationCenter-Editable-End -->

<!-- DisableNotificationCenter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableNotificationCenter-DFProperties-End -->

<!-- DisableNotificationCenter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableNotificationCenter |
| Friendly Name | Remove Notifications and Action Center |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableNotificationCenter |
| ADMX File Name | Taskbar.admx |
<!-- DisableNotificationCenter-AdmxBacked-End -->

<!-- DisableNotificationCenter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableNotificationCenter-Examples-End -->

<!-- DisableNotificationCenter-End -->

<!-- EnableLegacyBalloonNotifications-Begin -->
## EnableLegacyBalloonNotifications

<!-- EnableLegacyBalloonNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableLegacyBalloonNotifications-Applicability-End -->

<!-- EnableLegacyBalloonNotifications-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/EnableLegacyBalloonNotifications
```
<!-- EnableLegacyBalloonNotifications-OmaUri-End -->

<!-- EnableLegacyBalloonNotifications-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- EnableLegacyBalloonNotifications-Description-End -->

<!-- EnableLegacyBalloonNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableLegacyBalloonNotifications-Editable-End -->

<!-- EnableLegacyBalloonNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableLegacyBalloonNotifications-DFProperties-End -->

<!-- EnableLegacyBalloonNotifications-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableLegacyBalloonNotifications |
| Friendly Name | Disable showing balloon notifications as toasts. |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | EnableLegacyBalloonNotifications |
| ADMX File Name | Taskbar.admx |
<!-- EnableLegacyBalloonNotifications-AdmxBacked-End -->

<!-- EnableLegacyBalloonNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableLegacyBalloonNotifications-Examples-End -->

<!-- EnableLegacyBalloonNotifications-End -->

<!-- HideSCAHealth-Begin -->
## HideSCAHealth

<!-- HideSCAHealth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideSCAHealth-Applicability-End -->

<!-- HideSCAHealth-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/HideSCAHealth
```
<!-- HideSCAHealth-OmaUri-End -->

<!-- HideSCAHealth-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove Security and Maintenance from the system control area.

- If you enable this policy setting, the Security and Maintenance icon isn't displayed in the system notification area.

- If you disable or don't configure this policy setting, the Security and Maintenance icon is displayed in the system notification area.
<!-- HideSCAHealth-Description-End -->

<!-- HideSCAHealth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideSCAHealth-Editable-End -->

<!-- HideSCAHealth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideSCAHealth-DFProperties-End -->

<!-- HideSCAHealth-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideSCAHealth |
| Friendly Name | Remove the Security and Maintenance icon |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | HideSCAHealth |
| ADMX File Name | Taskbar.admx |
<!-- HideSCAHealth-AdmxBacked-End -->

<!-- HideSCAHealth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideSCAHealth-Examples-End -->

<!-- HideSCAHealth-End -->

<!-- HideSCANetwork-Begin -->
## HideSCANetwork

<!-- HideSCANetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideSCANetwork-Applicability-End -->

<!-- HideSCANetwork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/HideSCANetwork
```
<!-- HideSCANetwork-OmaUri-End -->

<!-- HideSCANetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the networking icon from the system control area.

- If you enable this policy setting, the networking icon isn't displayed in the system notification area.

- If you disable or don't configure this policy setting, the networking icon is displayed in the system notification area.
<!-- HideSCANetwork-Description-End -->

<!-- HideSCANetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideSCANetwork-Editable-End -->

<!-- HideSCANetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideSCANetwork-DFProperties-End -->

<!-- HideSCANetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideSCANetwork |
| Friendly Name | Remove the networking icon |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | HideSCANetwork |
| ADMX File Name | Taskbar.admx |
<!-- HideSCANetwork-AdmxBacked-End -->

<!-- HideSCANetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideSCANetwork-Examples-End -->

<!-- HideSCANetwork-End -->

<!-- HideSCAPower-Begin -->
## HideSCAPower

<!-- HideSCAPower-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideSCAPower-Applicability-End -->

<!-- HideSCAPower-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/HideSCAPower
```
<!-- HideSCAPower-OmaUri-End -->

<!-- HideSCAPower-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the battery meter from the system control area.

- If you enable this policy setting, the battery meter isn't displayed in the system notification area.

- If you disable or don't configure this policy setting, the battery meter is displayed in the system notification area.
<!-- HideSCAPower-Description-End -->

<!-- HideSCAPower-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideSCAPower-Editable-End -->

<!-- HideSCAPower-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideSCAPower-DFProperties-End -->

<!-- HideSCAPower-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideSCAPower |
| Friendly Name | Remove the battery meter |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | HideSCAPower |
| ADMX File Name | Taskbar.admx |
<!-- HideSCAPower-AdmxBacked-End -->

<!-- HideSCAPower-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideSCAPower-Examples-End -->

<!-- HideSCAPower-End -->

<!-- HideSCAVolume-Begin -->
## HideSCAVolume

<!-- HideSCAVolume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideSCAVolume-Applicability-End -->

<!-- HideSCAVolume-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/HideSCAVolume
```
<!-- HideSCAVolume-OmaUri-End -->

<!-- HideSCAVolume-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the volume control icon from the system control area.

- If you enable this policy setting, the volume control icon isn't displayed in the system notification area.

- If you disable or don't configure this policy setting, the volume control icon is displayed in the system notification area.
<!-- HideSCAVolume-Description-End -->

<!-- HideSCAVolume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideSCAVolume-Editable-End -->

<!-- HideSCAVolume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideSCAVolume-DFProperties-End -->

<!-- HideSCAVolume-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideSCAVolume |
| Friendly Name | Remove the volume control icon |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | HideSCAVolume |
| ADMX File Name | Taskbar.admx |
<!-- HideSCAVolume-AdmxBacked-End -->

<!-- HideSCAVolume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideSCAVolume-Examples-End -->

<!-- HideSCAVolume-End -->

<!-- NoBalloonFeatureAdvertisements-Begin -->
## NoBalloonFeatureAdvertisements

<!-- NoBalloonFeatureAdvertisements-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoBalloonFeatureAdvertisements-Applicability-End -->

<!-- NoBalloonFeatureAdvertisements-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/NoBalloonFeatureAdvertisements
```
<!-- NoBalloonFeatureAdvertisements-OmaUri-End -->

<!-- NoBalloonFeatureAdvertisements-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off feature advertisement balloon notifications.

If you enable this policy setting, certain notification balloons that are marked as feature advertisements aren't shown.

If you disable don't configure this policy setting, feature advertisement balloons are shown.
<!-- NoBalloonFeatureAdvertisements-Description-End -->

<!-- NoBalloonFeatureAdvertisements-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoBalloonFeatureAdvertisements-Editable-End -->

<!-- NoBalloonFeatureAdvertisements-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoBalloonFeatureAdvertisements-DFProperties-End -->

<!-- NoBalloonFeatureAdvertisements-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoBalloonFeatureAdvertisements |
| Friendly Name | Turn off feature advertisement balloon notifications |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoBalloonFeatureAdvertisements |
| ADMX File Name | Taskbar.admx |
<!-- NoBalloonFeatureAdvertisements-AdmxBacked-End -->

<!-- NoBalloonFeatureAdvertisements-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoBalloonFeatureAdvertisements-Examples-End -->

<!-- NoBalloonFeatureAdvertisements-End -->

<!-- NoPinningStoreToTaskbar-Begin -->
## NoPinningStoreToTaskbar

<!-- NoPinningStoreToTaskbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPinningStoreToTaskbar-Applicability-End -->

<!-- NoPinningStoreToTaskbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/NoPinningStoreToTaskbar
```
<!-- NoPinningStoreToTaskbar-OmaUri-End -->

<!-- NoPinningStoreToTaskbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control pinning the Store app to the Taskbar.

- If you enable this policy setting, users can't pin the Store app to the Taskbar. If the Store app is already pinned to the Taskbar, it will be removed from the Taskbar on next login.

- If you disable or don't configure this policy setting, users can pin the Store app to the Taskbar.
<!-- NoPinningStoreToTaskbar-Description-End -->

<!-- NoPinningStoreToTaskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPinningStoreToTaskbar-Editable-End -->

<!-- NoPinningStoreToTaskbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPinningStoreToTaskbar-DFProperties-End -->

<!-- NoPinningStoreToTaskbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPinningStoreToTaskbar |
| Friendly Name | Do not allow pinning Store app to the Taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoPinningStoreToTaskbar |
| ADMX File Name | Taskbar.admx |
<!-- NoPinningStoreToTaskbar-AdmxBacked-End -->

<!-- NoPinningStoreToTaskbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPinningStoreToTaskbar-Examples-End -->

<!-- NoPinningStoreToTaskbar-End -->

<!-- NoPinningToDestinations-Begin -->
## NoPinningToDestinations

<!-- NoPinningToDestinations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPinningToDestinations-Applicability-End -->

<!-- NoPinningToDestinations-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/NoPinningToDestinations
```
<!-- NoPinningToDestinations-OmaUri-End -->

<!-- NoPinningToDestinations-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control pinning items in Jump Lists.

- If you enable this policy setting, users can't pin files, folders, websites, or other items to their Jump Lists in the Start Menu and Taskbar. Users also can't unpin existing items pinned to their Jump Lists. Existing items already pinned to their Jump Lists will continue to show.

- If you disable or don't configure this policy setting, users can pin files, folders, websites, and other items to a program's Jump List so that the items is always present in this menu.
<!-- NoPinningToDestinations-Description-End -->

<!-- NoPinningToDestinations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPinningToDestinations-Editable-End -->

<!-- NoPinningToDestinations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPinningToDestinations-DFProperties-End -->

<!-- NoPinningToDestinations-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPinningToDestinations |
| Friendly Name | Do not allow pinning items in Jump Lists |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoPinningToDestinations |
| ADMX File Name | Taskbar.admx |
<!-- NoPinningToDestinations-AdmxBacked-End -->

<!-- NoPinningToDestinations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPinningToDestinations-Examples-End -->

<!-- NoPinningToDestinations-End -->

<!-- NoPinningToTaskbar-Begin -->
## NoPinningToTaskbar

<!-- NoPinningToTaskbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPinningToTaskbar-Applicability-End -->

<!-- NoPinningToTaskbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/NoPinningToTaskbar
```
<!-- NoPinningToTaskbar-OmaUri-End -->

<!-- NoPinningToTaskbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control pinning programs to the Taskbar.

- If you enable this policy setting, users can't change the programs currently pinned to the Taskbar. If any programs are already pinned to the Taskbar, these programs continue to show in the Taskbar. However, users can't unpin these programs already pinned to the Taskbar, and they can't pin new programs to the Taskbar.

- If you disable or don't configure this policy setting, users can change the programs currently pinned to the Taskbar.
<!-- NoPinningToTaskbar-Description-End -->

<!-- NoPinningToTaskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPinningToTaskbar-Editable-End -->

<!-- NoPinningToTaskbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPinningToTaskbar-DFProperties-End -->

<!-- NoPinningToTaskbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPinningToTaskbar |
| Friendly Name | Do not allow pinning programs to the Taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoPinningToTaskbar |
| ADMX File Name | Taskbar.admx |
<!-- NoPinningToTaskbar-AdmxBacked-End -->

<!-- NoPinningToTaskbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPinningToTaskbar-Examples-End -->

<!-- NoPinningToTaskbar-End -->

<!-- NoRemoteDestinations-Begin -->
## NoRemoteDestinations

<!-- NoRemoteDestinations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRemoteDestinations-Applicability-End -->

<!-- NoRemoteDestinations-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/NoRemoteDestinations
```
<!-- NoRemoteDestinations-OmaUri-End -->

<!-- NoRemoteDestinations-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control displaying or tracking items in Jump Lists from remote locations.

The Start Menu and Taskbar display Jump Lists off of programs. These menus include files, folders, websites and other relevant items for that program. This helps users more easily reopen their most important documents and other tasks.

- If you enable this policy setting, the Start Menu and Taskbar only track the files that the user opens locally on this computer. Files that the user opens over the network from remote computers aren't tracked or shown in the Jump Lists. Use this setting to reduce network traffic, particularly over slow network connections.

- If you disable or don't configure this policy setting, all files that the user opens appear in the menus, including files located remotely on another computer.

> [!NOTE]
> This setting doesn't prevent Windows from displaying remote files that the user has explicitly pinned to the Jump Lists. See the "Do not allow pinning items in Jump Lists" policy setting.
<!-- NoRemoteDestinations-Description-End -->

<!-- NoRemoteDestinations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRemoteDestinations-Editable-End -->

<!-- NoRemoteDestinations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRemoteDestinations-DFProperties-End -->

<!-- NoRemoteDestinations-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRemoteDestinations |
| Friendly Name | Do not display or track items in Jump Lists from remote locations |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoRemoteDestinations |
| ADMX File Name | Taskbar.admx |
<!-- NoRemoteDestinations-AdmxBacked-End -->

<!-- NoRemoteDestinations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRemoteDestinations-Examples-End -->

<!-- NoRemoteDestinations-End -->

<!-- NoSystraySystemPromotion-Begin -->
## NoSystraySystemPromotion

<!-- NoSystraySystemPromotion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSystraySystemPromotion-Applicability-End -->

<!-- NoSystraySystemPromotion-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/NoSystraySystemPromotion
```
<!-- NoSystraySystemPromotion-OmaUri-End -->

<!-- NoSystraySystemPromotion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off automatic promotion of notification icons to the taskbar.

- If you enable this policy setting, newly added notification icons aren't temporarily promoted to the Taskbar. Users can still configure icons to be shown or hidden in the Notification Control Panel.

- If you disable or don't configure this policy setting, newly added notification icons are temporarily promoted to the Taskbar.
<!-- NoSystraySystemPromotion-Description-End -->

<!-- NoSystraySystemPromotion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSystraySystemPromotion-Editable-End -->

<!-- NoSystraySystemPromotion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSystraySystemPromotion-DFProperties-End -->

<!-- NoSystraySystemPromotion-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSystraySystemPromotion |
| Friendly Name | Turn off automatic promotion of notification icons to the taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoSystraySystemPromotion |
| ADMX File Name | Taskbar.admx |
<!-- NoSystraySystemPromotion-AdmxBacked-End -->

<!-- NoSystraySystemPromotion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSystraySystemPromotion-Examples-End -->

<!-- NoSystraySystemPromotion-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-Begin -->
## ShowWindowsStoreAppsOnTaskbar

<!-- ShowWindowsStoreAppsOnTaskbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowWindowsStoreAppsOnTaskbar-Applicability-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/ShowWindowsStoreAppsOnTaskbar
```
<!-- ShowWindowsStoreAppsOnTaskbar-OmaUri-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to see packaged Microsoft Store apps on the taskbar.

- If you enable this policy setting, users will see packaged Microsoft Store apps on the taskbar.

- If you disable this policy setting, users won't see packaged Microsoft Store apps on the taskbar.

- If you don't configure this policy setting, the default setting for the user's device will be used, and the user can choose to change it.
<!-- ShowWindowsStoreAppsOnTaskbar-Description-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowWindowsStoreAppsOnTaskbar-Editable-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowWindowsStoreAppsOnTaskbar-DFProperties-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowWindowsStoreAppsOnTaskbar |
| Friendly Name | Show packaged Microsoft Store apps on the taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowWindowsStoreAppsOnTaskbar |
| ADMX File Name | Taskbar.admx |
<!-- ShowWindowsStoreAppsOnTaskbar-AdmxBacked-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowWindowsStoreAppsOnTaskbar-Examples-End -->

<!-- ShowWindowsStoreAppsOnTaskbar-End -->

<!-- TaskbarLockAll-Begin -->
## TaskbarLockAll

<!-- TaskbarLockAll-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarLockAll-Applicability-End -->

<!-- TaskbarLockAll-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarLockAll
```
<!-- TaskbarLockAll-OmaUri-End -->

<!-- TaskbarLockAll-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to lock all taskbar settings.

- If you enable this policy setting, the user can't access the taskbar control panel. The user is also unable to resize, move or rearrange toolbars on their taskbar.

- If you disable or don't configure this policy setting, the user will be able to set any taskbar setting that isn't prevented by another policy setting.
<!-- TaskbarLockAll-Description-End -->

<!-- TaskbarLockAll-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarLockAll-Editable-End -->

<!-- TaskbarLockAll-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarLockAll-DFProperties-End -->

<!-- TaskbarLockAll-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarLockAll |
| Friendly Name | Lock all taskbar settings |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarLockAll |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarLockAll-AdmxBacked-End -->

<!-- TaskbarLockAll-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarLockAll-Examples-End -->

<!-- TaskbarLockAll-End -->

<!-- TaskbarNoAddRemoveToolbar-Begin -->
## TaskbarNoAddRemoveToolbar

<!-- TaskbarNoAddRemoveToolbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoAddRemoveToolbar-Applicability-End -->

<!-- TaskbarNoAddRemoveToolbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoAddRemoveToolbar
```
<!-- TaskbarNoAddRemoveToolbar-OmaUri-End -->

<!-- TaskbarNoAddRemoveToolbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from adding or removing toolbars.

- If you enable this policy setting, the user isn't allowed to add or remove any toolbars to the taskbar. Applications aren't able to add toolbars either.

- If you disable or don't configure this policy setting, the users and applications are able to add toolbars to the taskbar.
<!-- TaskbarNoAddRemoveToolbar-Description-End -->

<!-- TaskbarNoAddRemoveToolbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoAddRemoveToolbar-Editable-End -->

<!-- TaskbarNoAddRemoveToolbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoAddRemoveToolbar-DFProperties-End -->

<!-- TaskbarNoAddRemoveToolbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoAddRemoveToolbar |
| Friendly Name | Prevent users from adding or removing toolbars |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarNoAddRemoveToolbar |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoAddRemoveToolbar-AdmxBacked-End -->

<!-- TaskbarNoAddRemoveToolbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoAddRemoveToolbar-Examples-End -->

<!-- TaskbarNoAddRemoveToolbar-End -->

<!-- TaskbarNoDragToolbar-Begin -->
## TaskbarNoDragToolbar

<!-- TaskbarNoDragToolbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoDragToolbar-Applicability-End -->

<!-- TaskbarNoDragToolbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoDragToolbar
```
<!-- TaskbarNoDragToolbar-OmaUri-End -->

<!-- TaskbarNoDragToolbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from rearranging toolbars.

- If you enable this policy setting, users aren't able to drag or drop toolbars to the taskbar.

- If you disable or don't configure this policy setting, users are able to rearrange the toolbars on the taskbar.
<!-- TaskbarNoDragToolbar-Description-End -->

<!-- TaskbarNoDragToolbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoDragToolbar-Editable-End -->

<!-- TaskbarNoDragToolbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoDragToolbar-DFProperties-End -->

<!-- TaskbarNoDragToolbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoDragToolbar |
| Friendly Name | Prevent users from rearranging toolbars |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarNoDragToolbar |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoDragToolbar-AdmxBacked-End -->

<!-- TaskbarNoDragToolbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoDragToolbar-Examples-End -->

<!-- TaskbarNoDragToolbar-End -->

<!-- TaskbarNoMultimon-Begin -->
## TaskbarNoMultimon

<!-- TaskbarNoMultimon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoMultimon-Applicability-End -->

<!-- TaskbarNoMultimon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoMultimon
```
<!-- TaskbarNoMultimon-OmaUri-End -->

<!-- TaskbarNoMultimon-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent taskbars from being displayed on more than one monitor.

- If you enable this policy setting, users aren't able to show taskbars on more than one display. The multiple display section isn't enabled in the taskbar properties dialog.

- If you disable or don't configure this policy setting, users can show taskbars on more than one display.
<!-- TaskbarNoMultimon-Description-End -->

<!-- TaskbarNoMultimon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoMultimon-Editable-End -->

<!-- TaskbarNoMultimon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoMultimon-DFProperties-End -->

<!-- TaskbarNoMultimon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoMultimon |
| Friendly Name | Do not allow taskbars on more than one display |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | TaskbarNoMultimon |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoMultimon-AdmxBacked-End -->

<!-- TaskbarNoMultimon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoMultimon-Examples-End -->

<!-- TaskbarNoMultimon-End -->

<!-- TaskbarNoNotification-Begin -->
## TaskbarNoNotification

<!-- TaskbarNoNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoNotification-Applicability-End -->

<!-- TaskbarNoNotification-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoNotification
```
<!-- TaskbarNoNotification-OmaUri-End -->

<!-- TaskbarNoNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off all notification balloons.

- If you enable this policy setting, no notification balloons are shown to the user.

- If you disable or don't configure this policy setting, notification balloons are shown to the user.
<!-- TaskbarNoNotification-Description-End -->

<!-- TaskbarNoNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoNotification-Editable-End -->

<!-- TaskbarNoNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoNotification-DFProperties-End -->

<!-- TaskbarNoNotification-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoNotification |
| Friendly Name | Turn off all balloon notifications |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarNoNotification |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoNotification-AdmxBacked-End -->

<!-- TaskbarNoNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoNotification-Examples-End -->

<!-- TaskbarNoNotification-End -->

<!-- TaskbarNoPinnedList-Begin -->
## TaskbarNoPinnedList

<!-- TaskbarNoPinnedList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoPinnedList-Applicability-End -->

<!-- TaskbarNoPinnedList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoPinnedList
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoPinnedList
```
<!-- TaskbarNoPinnedList-OmaUri-End -->

<!-- TaskbarNoPinnedList-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove pinned programs from the taskbar.

- If you enable this policy setting, pinned programs are prevented from being shown on the Taskbar. Users can't pin programs to the Taskbar.

- If you disable or don't configure this policy setting, users can pin programs so that the program shortcuts stay on the Taskbar.
<!-- TaskbarNoPinnedList-Description-End -->

<!-- TaskbarNoPinnedList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoPinnedList-Editable-End -->

<!-- TaskbarNoPinnedList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoPinnedList-DFProperties-End -->

<!-- TaskbarNoPinnedList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoPinnedList |
| Friendly Name | Remove pinned programs from the Taskbar |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | TaskbarNoPinnedList |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoPinnedList-AdmxBacked-End -->

<!-- TaskbarNoPinnedList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoPinnedList-Examples-End -->

<!-- TaskbarNoPinnedList-End -->

<!-- TaskbarNoRedock-Begin -->
## TaskbarNoRedock

<!-- TaskbarNoRedock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoRedock-Applicability-End -->

<!-- TaskbarNoRedock-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoRedock
```
<!-- TaskbarNoRedock-OmaUri-End -->

<!-- TaskbarNoRedock-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from moving taskbar to another screen dock location.

- If you enable this policy setting, users aren't able to drag their taskbar to another area of the monitor(s).

- If you disable or don't configure this policy setting, users are able to drag their taskbar to another area of the monitor unless prevented by another policy setting.
<!-- TaskbarNoRedock-Description-End -->

<!-- TaskbarNoRedock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoRedock-Editable-End -->

<!-- TaskbarNoRedock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoRedock-DFProperties-End -->

<!-- TaskbarNoRedock-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoRedock |
| Friendly Name | Prevent users from moving taskbar to another screen dock location |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarNoRedock |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoRedock-AdmxBacked-End -->

<!-- TaskbarNoRedock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoRedock-Examples-End -->

<!-- TaskbarNoRedock-End -->

<!-- TaskbarNoResize-Begin -->
## TaskbarNoResize

<!-- TaskbarNoResize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoResize-Applicability-End -->

<!-- TaskbarNoResize-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoResize
```
<!-- TaskbarNoResize-OmaUri-End -->

<!-- TaskbarNoResize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from resizing the taskbar.

- If you enable this policy setting, users aren't be able to resize their taskbar.

- If you disable or don't configure this policy setting, users are able to resize their taskbar unless prevented by another setting.
<!-- TaskbarNoResize-Description-End -->

<!-- TaskbarNoResize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoResize-Editable-End -->

<!-- TaskbarNoResize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoResize-DFProperties-End -->

<!-- TaskbarNoResize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoResize |
| Friendly Name | Prevent users from resizing the taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarNoResize |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoResize-AdmxBacked-End -->

<!-- TaskbarNoResize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoResize-Examples-End -->

<!-- TaskbarNoResize-End -->

<!-- TaskbarNoThumbnail-Begin -->
## TaskbarNoThumbnail

<!-- TaskbarNoThumbnail-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TaskbarNoThumbnail-Applicability-End -->

<!-- TaskbarNoThumbnail-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Taskbar/TaskbarNoThumbnail
```
<!-- TaskbarNoThumbnail-OmaUri-End -->

<!-- TaskbarNoThumbnail-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off taskbar thumbnails.

- If you enable this policy setting, the taskbar thumbnails aren't displayed and the system uses standard text for the tooltips.

- If you disable or don't configure this policy setting, the taskbar thumbnails are displayed.
<!-- TaskbarNoThumbnail-Description-End -->

<!-- TaskbarNoThumbnail-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskbarNoThumbnail-Editable-End -->

<!-- TaskbarNoThumbnail-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TaskbarNoThumbnail-DFProperties-End -->

<!-- TaskbarNoThumbnail-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TaskbarNoThumbnail |
| Friendly Name | Turn off taskbar thumbnails |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TaskbarNoThumbnail |
| ADMX File Name | Taskbar.admx |
<!-- TaskbarNoThumbnail-AdmxBacked-End -->

<!-- TaskbarNoThumbnail-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TaskbarNoThumbnail-Examples-End -->

<!-- TaskbarNoThumbnail-End -->

<!-- ADMX_Taskbar-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Taskbar-CspMoreInfo-End -->

<!-- ADMX_Taskbar-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
