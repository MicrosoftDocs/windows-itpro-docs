---
title: Notifications Policy CSP
description: Learn more about the Notifications Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Notifications-Begin -->
# Policy CSP - Notifications

<!-- Notifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Notifications-Editable-End -->

<!-- DisableAccountNotifications-Begin -->
## DisableAccountNotifications

<!-- DisableAccountNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DisableAccountNotifications-Applicability-End -->

<!-- DisableAccountNotifications-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Notifications/DisableAccountNotifications
```
<!-- DisableAccountNotifications-OmaUri-End -->

<!-- DisableAccountNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to prevent Windows from displaying notifications to Microsoft account (MSA) and local users in Start (user tile).

Notifications include getting users to: reauthenticate; backup their device; manage cloud storage quotas as well as manage their Microsoft 365 or XBOX subscription.

- If you enable this policy setting, Windows won't send account related notifications for local and MSA users to the user tile in Start.

- If you disable or don't configure this policy setting, Windows will send account related notifications for local and MSA users to the user tile in Start.

No reboots or service restarts are required for this policy setting to take effect.
<!-- DisableAccountNotifications-Description-End -->

<!-- DisableAccountNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAccountNotifications-Editable-End -->

<!-- DisableAccountNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableAccountNotifications-DFProperties-End -->

<!-- DisableAccountNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- DisableAccountNotifications-AllowedValues-End -->

<!-- DisableAccountNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAccountNotifications |
| Friendly Name | Turn off account notifications in Start |
| Location | User Configuration |
| Path | Windows Components > Account Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\AccountNotifications |
| Registry Value Name | DisableAccountNotifications |
| ADMX File Name | AccountNotifications.admx |
<!-- DisableAccountNotifications-GpMapping-End -->

<!-- DisableAccountNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAccountNotifications-Examples-End -->

<!-- DisableAccountNotifications-End -->

<!-- DisallowCloudNotification-Begin -->
## DisallowCloudNotification

<!-- DisallowCloudNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DisallowCloudNotification-Applicability-End -->

<!-- DisallowCloudNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Notifications/DisallowCloudNotification
```
<!-- DisallowCloudNotification-OmaUri-End -->

<!-- DisallowCloudNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting blocks applications from using the network to send notifications to update tiles, tile badges, toast, or raw notifications. This policy setting turns off the connection between Windows and the Windows Push Notification Service (WNS). This policy setting also stops applications from being able to poll application services to update tiles.

- If you enable this policy setting, applications and system features won't be able receive notifications from the network from WNS or via notification polling APIs.

- If you enable this policy setting, notifications can still be raised by applications running on the machine via local API calls from within the application.

- If you disable or don't configure this policy setting, the client computer will connect to WNS at user login and applications will be allowed to poll for tile notification updates in the background.

No reboots or service restarts are required for this policy setting to take effect.
<!-- DisallowCloudNotification-Description-End -->

<!-- DisallowCloudNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

For more information on application services to update tiles, see [Periodic notification overview](/windows/apps/design/shell/tiles-and-notifications/periodic-notification-overview).

> [!WARNING]
> This policy is designed for zero exhaust. This policy may cause some MDM processes to break. The MDM server uses WNS notifications to send real time tasks to the device. Some example tasks include remote wipe, unenroll, remote find, and mandatory app installation. When this policy is set to disallow WNS, those real time processes will no longer work. Some time-sensitive actions also won't work, such as remote wipe or unenrollment. You would use these time-sensitive actions when the device is stolen or compromised.

To validate the configuration:

1. Enable this policy.
1. Restart the computer.
1. Make sure that you can't receive a notification from an app like Facebook when the app isn't running.
<!-- DisallowCloudNotification-Editable-End -->

<!-- DisallowCloudNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowCloudNotification-DFProperties-End -->

<!-- DisallowCloudNotification-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable cloud notification. |
| 1 | Disable cloud notification. |
<!-- DisallowCloudNotification-AllowedValues-End -->

<!-- DisallowCloudNotification-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NoCloudNotification |
| Friendly Name | Turn off notifications network usage |
| Location | Computer Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| Registry Value Name | NoCloudApplicationNotification |
| ADMX File Name | WPN.admx |
<!-- DisallowCloudNotification-GpMapping-End -->

<!-- DisallowCloudNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowCloudNotification-Examples-End -->

<!-- DisallowCloudNotification-End -->

<!-- DisallowNotificationMirroring-Begin -->
## DisallowNotificationMirroring

<!-- DisallowNotificationMirroring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisallowNotificationMirroring-Applicability-End -->

<!-- DisallowNotificationMirroring-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Notifications/DisallowNotificationMirroring
```
<!-- DisallowNotificationMirroring-OmaUri-End -->

<!-- DisallowNotificationMirroring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off notification mirroring.

- If you enable this policy setting, notifications from applications and system won't be mirrored to your other devices.

- If you disable or don't configure this policy setting, notifications will be mirrored, and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.
<!-- DisallowNotificationMirroring-Description-End -->

<!-- DisallowNotificationMirroring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This feature can be turned off by apps that don't want to participate in notification mirroring. This feature can also be turned off by the user in the Cortana settings page.
<!-- DisallowNotificationMirroring-Editable-End -->

<!-- DisallowNotificationMirroring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowNotificationMirroring-DFProperties-End -->

<!-- DisallowNotificationMirroring-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable notification mirroring. |
| 1 | Disable notification mirroring. |
<!-- DisallowNotificationMirroring-AllowedValues-End -->

<!-- DisallowNotificationMirroring-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NoNotificationMirroring |
| Friendly Name | Turn off notification mirroring |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| Registry Value Name | DisallowNotificationMirroring |
| ADMX File Name | WPN.admx |
<!-- DisallowNotificationMirroring-GpMapping-End -->

<!-- DisallowNotificationMirroring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowNotificationMirroring-Examples-End -->

<!-- DisallowNotificationMirroring-End -->

<!-- DisallowTileNotification-Begin -->
## DisallowTileNotification

<!-- DisallowTileNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DisallowTileNotification-Applicability-End -->

<!-- DisallowTileNotification-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Notifications/DisallowTileNotification
```
<!-- DisallowTileNotification-OmaUri-End -->

<!-- DisallowTileNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off tile notifications.

- If you enable this policy setting, applications and system features won't be able to update their tiles and tile badges in the Start screen.

- If you disable or don't configure this policy setting, tile and badge notifications are enabled and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.
<!-- DisallowTileNotification-Description-End -->

<!-- DisallowTileNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowTileNotification-Editable-End -->

<!-- DisallowTileNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowTileNotification-DFProperties-End -->

<!-- DisallowTileNotification-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- DisallowTileNotification-AllowedValues-End -->

<!-- DisallowTileNotification-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NoTileNotification |
| Friendly Name | Turn off tile notifications |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| Registry Value Name | NoTileApplicationNotification |
| ADMX File Name | WPN.admx |
<!-- DisallowTileNotification-GpMapping-End -->

<!-- DisallowTileNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowTileNotification-Examples-End -->

<!-- DisallowTileNotification-End -->

<!-- EnableExpandedToastNotifications-Begin -->
## EnableExpandedToastNotifications

<!-- EnableExpandedToastNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1620] and later |
<!-- EnableExpandedToastNotifications-Applicability-End -->

<!-- EnableExpandedToastNotifications-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Notifications/EnableExpandedToastNotifications
```
<!-- EnableExpandedToastNotifications-OmaUri-End -->

<!-- EnableExpandedToastNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns on multiple expanded toast notifications in action center.

- If you enable this policy setting, the first three notifications of each application will be expanded by default in action center.

- If you disable or don't configure this policy setting, only the first notification of each application will be expanded by default in action center.

Windows 10 only. This will be immediately deprecated for Windows 11.

No reboots or service restarts are required for this policy setting to take effect.
<!-- EnableExpandedToastNotifications-Description-End -->

<!-- EnableExpandedToastNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableExpandedToastNotifications-Editable-End -->

<!-- EnableExpandedToastNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableExpandedToastNotifications-DFProperties-End -->

<!-- EnableExpandedToastNotifications-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable multiple expanded toasts in action center. |
| 1 | Enable multiple expanded toasts in action center. |
<!-- EnableExpandedToastNotifications-AllowedValues-End -->

<!-- EnableExpandedToastNotifications-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ExpandedToastNotifications |
| Friendly Name | Turn on multiple expanded toast notifications in action center |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| Registry Value Name | EnableExpandedToastNotifications |
| ADMX File Name | WPN.admx |
<!-- EnableExpandedToastNotifications-GpMapping-End -->

<!-- EnableExpandedToastNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableExpandedToastNotifications-Examples-End -->

<!-- EnableExpandedToastNotifications-End -->

<!-- WnsEndpoint-Begin -->
## WnsEndpoint

<!-- WnsEndpoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WnsEndpoint-Applicability-End -->

<!-- WnsEndpoint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Notifications/WnsEndpoint
```
<!-- WnsEndpoint-OmaUri-End -->

<!-- WnsEndpoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy sets a special WNS FQDN for specific environments.
<!-- WnsEndpoint-Description-End -->

<!-- WnsEndpoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy setting determines which Windows Notification Service (WNS) endpoint will be used to connect for Windows push notifications.

If you disable or don't configure this setting, the push notifications will connect to the default endpoint of `client.wns.windows.com`.

> [!NOTE]
> Make sure the proper WNS FQDNs, VIPs, IPs and ports are also allowed through the firewall.
<!-- WnsEndpoint-Editable-End -->

<!-- WnsEndpoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WnsEndpoint-DFProperties-End -->

<!-- WnsEndpoint-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | WnsEndpoint_Policy |
| Friendly Name | Enables group policy for the WNS FQDN |
| Element Name | FQDN for WNS. |
| Location | Computer Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| ADMX File Name | WPN.admx |
<!-- WnsEndpoint-GpMapping-End -->

<!-- WnsEndpoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WnsEndpoint-Examples-End -->

<!-- WnsEndpoint-End -->

<!-- Notifications-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Notifications-CspMoreInfo-End -->

<!-- Notifications-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
