---
title: ADMX_WPN Policy CSP
description: Learn more about the ADMX_WPN Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WPN-Begin -->
# Policy CSP - ADMX_WPN

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WPN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WPN-Editable-End -->

<!-- NoCallsDuringQuietHours-Begin -->
## NoCallsDuringQuietHours

<!-- NoCallsDuringQuietHours-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoCallsDuringQuietHours-Applicability-End -->

<!-- NoCallsDuringQuietHours-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WPN/NoCallsDuringQuietHours
```
<!-- NoCallsDuringQuietHours-OmaUri-End -->

<!-- NoCallsDuringQuietHours-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting blocks voice and video calls during Quiet Hours.

- If you enable this policy setting, voice and video calls will be blocked during the designated Quiet Hours time window each day, and users will not be able to customize any other Quiet Hours settings.

- If you disable this policy setting, voice and video calls will be allowed during Quiet Hours, and users will not be able to customize this or any other Quiet Hours settings.

- If you do not configure this policy setting, voice and video calls will be allowed during Quiet Hours by default. Adminstrators and users will be able to modify this setting.
<!-- NoCallsDuringQuietHours-Description-End -->

<!-- NoCallsDuringQuietHours-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoCallsDuringQuietHours-Editable-End -->

<!-- NoCallsDuringQuietHours-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoCallsDuringQuietHours-DFProperties-End -->

<!-- NoCallsDuringQuietHours-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoCallsDuringQuietHours |
| Friendly Name | Turn off calls during Quiet Hours |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours |
| Registry Value Name | AllowCalls |
| ADMX File Name | WPN.admx |
<!-- NoCallsDuringQuietHours-AdmxBacked-End -->

<!-- NoCallsDuringQuietHours-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoCallsDuringQuietHours-Examples-End -->

<!-- NoCallsDuringQuietHours-End -->

<!-- NoLockScreenToastNotification-Begin -->
## NoLockScreenToastNotification

<!-- NoLockScreenToastNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoLockScreenToastNotification-Applicability-End -->

<!-- NoLockScreenToastNotification-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WPN/NoLockScreenToastNotification
```
<!-- NoLockScreenToastNotification-OmaUri-End -->

<!-- NoLockScreenToastNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off toast notifications on the lock screen.

- If you enable this policy setting, applications will not be able to raise toast notifications on the lock screen.

- If you disable or do not configure this policy setting, toast notifications on the lock screen are enabled and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.
<!-- NoLockScreenToastNotification-Description-End -->

<!-- NoLockScreenToastNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoLockScreenToastNotification-Editable-End -->

<!-- NoLockScreenToastNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoLockScreenToastNotification-DFProperties-End -->

<!-- NoLockScreenToastNotification-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoLockScreenToastNotification |
| Friendly Name | Turn off toast notifications on the lock screen |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| Registry Value Name | NoToastApplicationNotificationOnLockScreen |
| ADMX File Name | WPN.admx |
<!-- NoLockScreenToastNotification-AdmxBacked-End -->

<!-- NoLockScreenToastNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoLockScreenToastNotification-Examples-End -->

<!-- NoLockScreenToastNotification-End -->

<!-- NoQuietHours-Begin -->
## NoQuietHours

<!-- NoQuietHours-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoQuietHours-Applicability-End -->

<!-- NoQuietHours-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WPN/NoQuietHours
```
<!-- NoQuietHours-OmaUri-End -->

<!-- NoQuietHours-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Quiet Hours functionality.

- If you enable this policy setting, toast notifications will not be suppressed and some background tasks will not be deferred during the designated Quiet Hours time window each day.

- If you disable this policy setting, toast notifications will be suppressed and some background task deferred during the designated Quiet Hours time window. Users will not be able to change this or any other Quiet Hours settings.

- If you do not configure this policy setting, Quiet Hours are enabled by default but can be turned off or by the administrator or user.
<!-- NoQuietHours-Description-End -->

<!-- NoQuietHours-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoQuietHours-Editable-End -->

<!-- NoQuietHours-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoQuietHours-DFProperties-End -->

<!-- NoQuietHours-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoQuietHours |
| Friendly Name | Turn off Quiet Hours |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours |
| Registry Value Name | Enable |
| ADMX File Name | WPN.admx |
<!-- NoQuietHours-AdmxBacked-End -->

<!-- NoQuietHours-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoQuietHours-Examples-End -->

<!-- NoQuietHours-End -->

<!-- NoToastNotification-Begin -->
## NoToastNotification

<!-- NoToastNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoToastNotification-Applicability-End -->

<!-- NoToastNotification-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WPN/NoToastNotification
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WPN/NoToastNotification
```
<!-- NoToastNotification-OmaUri-End -->

<!-- NoToastNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off toast notifications for applications.

- If you enable this policy setting, applications will not be able to raise toast notifications.

**Note** that this policy does not affect taskbar notification balloons.

**Note** that Windows system features are not affected by this policy. You must enable/disable system features individually to stop their ability to raise toast notifications.

- If you disable or do not configure this policy setting, toast notifications are enabled and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.
<!-- NoToastNotification-Description-End -->

<!-- NoToastNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoToastNotification-Editable-End -->

<!-- NoToastNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoToastNotification-DFProperties-End -->

<!-- NoToastNotification-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoToastNotification |
| Friendly Name | Turn off toast notifications |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications |
| Registry Value Name | NoToastApplicationNotification |
| ADMX File Name | WPN.admx |
<!-- NoToastNotification-AdmxBacked-End -->

<!-- NoToastNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoToastNotification-Examples-End -->

<!-- NoToastNotification-End -->

<!-- QuietHoursDailyBeginMinute-Begin -->
## QuietHoursDailyBeginMinute

<!-- QuietHoursDailyBeginMinute-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- QuietHoursDailyBeginMinute-Applicability-End -->

<!-- QuietHoursDailyBeginMinute-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WPN/QuietHoursDailyBeginMinute
```
<!-- QuietHoursDailyBeginMinute-OmaUri-End -->

<!-- QuietHoursDailyBeginMinute-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the number of minutes after midnight (local time) that Quiet Hours is to begin each day.

- If you enable this policy setting, the specified time will be used, and users will not be able to customize any Quiet Hours settings.

- If you disable this policy setting, a default value will be used, and users will not be able to change it or any other Quiet Hours setting.

- If you do not configure this policy setting, a default value will be used, which administrators and users will be able to modify.
<!-- QuietHoursDailyBeginMinute-Description-End -->

<!-- QuietHoursDailyBeginMinute-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QuietHoursDailyBeginMinute-Editable-End -->

<!-- QuietHoursDailyBeginMinute-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QuietHoursDailyBeginMinute-DFProperties-End -->

<!-- QuietHoursDailyBeginMinute-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QuietHoursDailyBeginMinute |
| Friendly Name | Set the time Quiet Hours begins each day |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours |
| ADMX File Name | WPN.admx |
<!-- QuietHoursDailyBeginMinute-AdmxBacked-End -->

<!-- QuietHoursDailyBeginMinute-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QuietHoursDailyBeginMinute-Examples-End -->

<!-- QuietHoursDailyBeginMinute-End -->

<!-- QuietHoursDailyEndMinute-Begin -->
## QuietHoursDailyEndMinute

<!-- QuietHoursDailyEndMinute-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- QuietHoursDailyEndMinute-Applicability-End -->

<!-- QuietHoursDailyEndMinute-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WPN/QuietHoursDailyEndMinute
```
<!-- QuietHoursDailyEndMinute-OmaUri-End -->

<!-- QuietHoursDailyEndMinute-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the number of minutes after midnight (local time) that Quiet Hours is to end each day.

- If you enable this policy setting, the specified time will be used, and users will not be able to customize any Quiet Hours settings.

- If you disable this policy setting, a default value will be used, and users will not be able to change it or any other Quiet Hours setting.

- If you do not configure this policy setting, a default value will be used, which administrators and users will be able to modify.
<!-- QuietHoursDailyEndMinute-Description-End -->

<!-- QuietHoursDailyEndMinute-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QuietHoursDailyEndMinute-Editable-End -->

<!-- QuietHoursDailyEndMinute-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QuietHoursDailyEndMinute-DFProperties-End -->

<!-- QuietHoursDailyEndMinute-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QuietHoursDailyEndMinute |
| Friendly Name | Set the time Quiet Hours ends each day |
| Location | User Configuration |
| Path | Start Menu and Taskbar > Notifications |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\QuietHours |
| ADMX File Name | WPN.admx |
<!-- QuietHoursDailyEndMinute-AdmxBacked-End -->

<!-- QuietHoursDailyEndMinute-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QuietHoursDailyEndMinute-Examples-End -->

<!-- QuietHoursDailyEndMinute-End -->

<!-- ADMX_WPN-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WPN-CspMoreInfo-End -->

<!-- ADMX_WPN-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
