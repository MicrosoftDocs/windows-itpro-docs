---
title: Power Policy CSP
description: Learn more about the Power Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Power-Begin -->
# Policy CSP - Power

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Power-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Power-Editable-End -->

<!-- AllowHibernate-Begin -->
## AllowHibernate

<!-- AllowHibernate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowHibernate-Applicability-End -->

<!-- AllowHibernate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/AllowHibernate
```
<!-- AllowHibernate-OmaUri-End -->

<!-- AllowHibernate-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting decides if hibernate on the machine is allowed or not. Supported values: 0 - Disable hibernate. 1 (default) - Allow hibernate.
<!-- AllowHibernate-Description-End -->

<!-- AllowHibernate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy does not override **powercfg** configuration and has no effect on the device if Hibernate is disabled using either of the following methods:
> - Running the command `powercfg /hibernate off`.
> - Modifying the **HibernateEnabled** value to **0** in the `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power` registry key.
<!-- AllowHibernate-Editable-End -->

<!-- AllowHibernate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowHibernate-DFProperties-End -->

<!-- AllowHibernate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable hibernate. |
| 1 (Default) | Allow hibernate. |
<!-- AllowHibernate-AllowedValues-End -->

<!-- AllowHibernate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowHibernate-Examples-End -->

<!-- AllowHibernate-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-Begin -->
## AllowStandbyStatesWhenSleepingOnBattery

<!-- AllowStandbyStatesWhenSleepingOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowStandbyStatesWhenSleepingOnBattery-Applicability-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/AllowStandbyStatesWhenSleepingOnBattery
```
<!-- AllowStandbyStatesWhenSleepingOnBattery-OmaUri-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.

- If you enable or don't configure this policy setting, Windows uses standby states to put the computer in a sleep state.

- If you disable this policy setting, standby states (S1-S3) aren't allowed.
<!-- AllowStandbyStatesWhenSleepingOnBattery-Description-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStandbyStatesWhenSleepingOnBattery-Editable-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowStandbyStatesWhenSleepingOnBattery-DFProperties-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowStandbyStatesDC_2 |
| Friendly Name | Allow standby states (S1-S3) when sleeping (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\abfc2519-3608-4c2a-94ea-171b0ed546ab |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- AllowStandbyStatesWhenSleepingOnBattery-AdmxBacked-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStandbyStatesWhenSleepingOnBattery-Examples-End -->

<!-- AllowStandbyStatesWhenSleepingOnBattery-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-Begin -->
## AllowStandbyWhenSleepingPluggedIn

<!-- AllowStandbyWhenSleepingPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowStandbyWhenSleepingPluggedIn-Applicability-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/AllowStandbyWhenSleepingPluggedIn
```
<!-- AllowStandbyWhenSleepingPluggedIn-OmaUri-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.

- If you enable or don't configure this policy setting, Windows uses standby states to put the computer in a sleep state.

- If you disable this policy setting, standby states (S1-S3) aren't allowed.
<!-- AllowStandbyWhenSleepingPluggedIn-Description-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStandbyWhenSleepingPluggedIn-Editable-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowStandbyWhenSleepingPluggedIn-DFProperties-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowStandbyStatesAC_2 |
| Friendly Name | Allow standby states (S1-S3) when sleeping (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\abfc2519-3608-4c2a-94ea-171b0ed546ab |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- AllowStandbyWhenSleepingPluggedIn-AdmxBacked-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStandbyWhenSleepingPluggedIn-Examples-End -->

<!-- AllowStandbyWhenSleepingPluggedIn-End -->

<!-- DisplayOffTimeoutOnBattery-Begin -->
## DisplayOffTimeoutOnBattery

<!-- DisplayOffTimeoutOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisplayOffTimeoutOnBattery-Applicability-End -->

<!-- DisplayOffTimeoutOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/DisplayOffTimeoutOnBattery
```
<!-- DisplayOffTimeoutOnBattery-OmaUri-End -->

<!-- DisplayOffTimeoutOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows turns off the display.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- DisplayOffTimeoutOnBattery-Description-End -->

<!-- DisplayOffTimeoutOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisplayOffTimeoutOnBattery-Editable-End -->

<!-- DisplayOffTimeoutOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisplayOffTimeoutOnBattery-DFProperties-End -->

<!-- DisplayOffTimeoutOnBattery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VideoPowerDownTimeOutDC_2 |
| Friendly Name | Turn off the display (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Video and Display Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\3C0BC021-C8A8-4E07-A973-6B14CBCB2B7E |
| ADMX File Name | Power.admx |
<!-- DisplayOffTimeoutOnBattery-AdmxBacked-End -->

<!-- DisplayOffTimeoutOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisplayOffTimeoutOnBattery-Examples-End -->

<!-- DisplayOffTimeoutOnBattery-End -->

<!-- DisplayOffTimeoutPluggedIn-Begin -->
## DisplayOffTimeoutPluggedIn

<!-- DisplayOffTimeoutPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisplayOffTimeoutPluggedIn-Applicability-End -->

<!-- DisplayOffTimeoutPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/DisplayOffTimeoutPluggedIn
```
<!-- DisplayOffTimeoutPluggedIn-OmaUri-End -->

<!-- DisplayOffTimeoutPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows turns off the display.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- DisplayOffTimeoutPluggedIn-Description-End -->

<!-- DisplayOffTimeoutPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisplayOffTimeoutPluggedIn-Editable-End -->

<!-- DisplayOffTimeoutPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisplayOffTimeoutPluggedIn-DFProperties-End -->

<!-- DisplayOffTimeoutPluggedIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | VideoPowerDownTimeOutAC_2 |
| Friendly Name | Turn off the display (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Video and Display Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\3C0BC021-C8A8-4E07-A973-6B14CBCB2B7E |
| ADMX File Name | Power.admx |
<!-- DisplayOffTimeoutPluggedIn-AdmxBacked-End -->

<!-- DisplayOffTimeoutPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisplayOffTimeoutPluggedIn-Examples-End -->

<!-- DisplayOffTimeoutPluggedIn-End -->

<!-- EnergySaverBatteryThresholdOnBattery-Begin -->
## EnergySaverBatteryThresholdOnBattery

<!-- EnergySaverBatteryThresholdOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- EnergySaverBatteryThresholdOnBattery-Applicability-End -->

<!-- EnergySaverBatteryThresholdOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/EnergySaverBatteryThresholdOnBattery
```
<!-- EnergySaverBatteryThresholdOnBattery-OmaUri-End -->

<!-- EnergySaverBatteryThresholdOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify battery charge level at which Energy Saver is turned on.

- If you enable this policy setting, you must provide a percent value, indicating the battery charge level. Energy Saver will be automatically turned on at (and below) the specified level.

- If you disable or don't configure this policy setting, users control this setting.
<!-- EnergySaverBatteryThresholdOnBattery-Description-End -->

<!-- EnergySaverBatteryThresholdOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnergySaverBatteryThresholdOnBattery-Editable-End -->

<!-- EnergySaverBatteryThresholdOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 0 |
<!-- EnergySaverBatteryThresholdOnBattery-DFProperties-End -->

<!-- EnergySaverBatteryThresholdOnBattery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EsBattThresholdDC |
| Friendly Name | Energy Saver Battery Threshold (on battery) |
| Element Name | Energy Saver Battery Threshold (percent) |
| Location | Computer Configuration |
| Path | System > Power Management > Energy Saver Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\E69653CA-CF7F-4F05-AA73-CB833FA90AD4 |
| ADMX File Name | Power.admx |
<!-- EnergySaverBatteryThresholdOnBattery-GpMapping-End -->

<!-- EnergySaverBatteryThresholdOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnergySaverBatteryThresholdOnBattery-Examples-End -->

<!-- EnergySaverBatteryThresholdOnBattery-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-Begin -->
## EnergySaverBatteryThresholdPluggedIn

<!-- EnergySaverBatteryThresholdPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- EnergySaverBatteryThresholdPluggedIn-Applicability-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/EnergySaverBatteryThresholdPluggedIn
```
<!-- EnergySaverBatteryThresholdPluggedIn-OmaUri-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify battery charge level at which Energy Saver is turned on.

- If you enable this policy setting, you must provide a percent value, indicating the battery charge level. Energy Saver will be automatically turned on at (and below) the specified level.

- If you disable or don't configure this policy setting, users control this setting.
<!-- EnergySaverBatteryThresholdPluggedIn-Description-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnergySaverBatteryThresholdPluggedIn-Editable-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-100]` |
| Default Value  | 0 |
<!-- EnergySaverBatteryThresholdPluggedIn-DFProperties-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EsBattThresholdAC |
| Friendly Name | Energy Saver Battery Threshold (plugged in) |
| Element Name | Energy Saver Battery Threshold (percent) |
| Location | Computer Configuration |
| Path | System > Power Management > Energy Saver Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\E69653CA-CF7F-4F05-AA73-CB833FA90AD4 |
| ADMX File Name | Power.admx |
<!-- EnergySaverBatteryThresholdPluggedIn-GpMapping-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnergySaverBatteryThresholdPluggedIn-Examples-End -->

<!-- EnergySaverBatteryThresholdPluggedIn-End -->

<!-- HibernateTimeoutOnBattery-Begin -->
## HibernateTimeoutOnBattery

<!-- HibernateTimeoutOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- HibernateTimeoutOnBattery-Applicability-End -->

<!-- HibernateTimeoutOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/HibernateTimeoutOnBattery
```
<!-- HibernateTimeoutOnBattery-OmaUri-End -->

<!-- HibernateTimeoutOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- HibernateTimeoutOnBattery-Description-End -->

<!-- HibernateTimeoutOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HibernateTimeoutOnBattery-Editable-End -->

<!-- HibernateTimeoutOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HibernateTimeoutOnBattery-DFProperties-End -->

<!-- HibernateTimeoutOnBattery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCHibernateTimeOut_2 |
| Friendly Name | Specify the system hibernate timeout (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\9D7815A6-7EE4-497E-8888-515A05F02364 |
| ADMX File Name | Power.admx |
<!-- HibernateTimeoutOnBattery-AdmxBacked-End -->

<!-- HibernateTimeoutOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HibernateTimeoutOnBattery-Examples-End -->

<!-- HibernateTimeoutOnBattery-End -->

<!-- HibernateTimeoutPluggedIn-Begin -->
## HibernateTimeoutPluggedIn

<!-- HibernateTimeoutPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- HibernateTimeoutPluggedIn-Applicability-End -->

<!-- HibernateTimeoutPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/HibernateTimeoutPluggedIn
```
<!-- HibernateTimeoutPluggedIn-OmaUri-End -->

<!-- HibernateTimeoutPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- HibernateTimeoutPluggedIn-Description-End -->

<!-- HibernateTimeoutPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HibernateTimeoutPluggedIn-Editable-End -->

<!-- HibernateTimeoutPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HibernateTimeoutPluggedIn-DFProperties-End -->

<!-- HibernateTimeoutPluggedIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ACHibernateTimeOut_2 |
| Friendly Name | Specify the system hibernate timeout (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\9D7815A6-7EE4-497E-8888-515A05F02364 |
| ADMX File Name | Power.admx |
<!-- HibernateTimeoutPluggedIn-AdmxBacked-End -->

<!-- HibernateTimeoutPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HibernateTimeoutPluggedIn-Examples-End -->

<!-- HibernateTimeoutPluggedIn-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-Begin -->
## RequirePasswordWhenComputerWakesOnBattery

<!-- RequirePasswordWhenComputerWakesOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RequirePasswordWhenComputerWakesOnBattery-Applicability-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/RequirePasswordWhenComputerWakesOnBattery
```
<!-- RequirePasswordWhenComputerWakesOnBattery-OmaUri-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

- If you enable or don't configure this policy setting, the user is prompted for a password when the system resumes from sleep.

- If you disable this policy setting, the user isn't prompted for a password when the system resumes from sleep.
<!-- RequirePasswordWhenComputerWakesOnBattery-Description-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequirePasswordWhenComputerWakesOnBattery-Editable-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RequirePasswordWhenComputerWakesOnBattery-DFProperties-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCPromptForPasswordOnResume_2 |
| Friendly Name | Require a password when a computer wakes (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51 |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- RequirePasswordWhenComputerWakesOnBattery-AdmxBacked-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequirePasswordWhenComputerWakesOnBattery-Examples-End -->

<!-- RequirePasswordWhenComputerWakesOnBattery-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-Begin -->
## RequirePasswordWhenComputerWakesPluggedIn

<!-- RequirePasswordWhenComputerWakesPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- RequirePasswordWhenComputerWakesPluggedIn-Applicability-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/RequirePasswordWhenComputerWakesPluggedIn
```
<!-- RequirePasswordWhenComputerWakesPluggedIn-OmaUri-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

- If you enable or don't configure this policy setting, the user is prompted for a password when the system resumes from sleep.

- If you disable this policy setting, the user isn't prompted for a password when the system resumes from sleep.
<!-- RequirePasswordWhenComputerWakesPluggedIn-Description-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequirePasswordWhenComputerWakesPluggedIn-Editable-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RequirePasswordWhenComputerWakesPluggedIn-DFProperties-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ACPromptForPasswordOnResume_2 |
| Friendly Name | Require a password when a computer wakes (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51 |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- RequirePasswordWhenComputerWakesPluggedIn-AdmxBacked-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequirePasswordWhenComputerWakesPluggedIn-Examples-End -->

<!-- RequirePasswordWhenComputerWakesPluggedIn-End -->

<!-- SelectLidCloseActionOnBattery-Begin -->
## SelectLidCloseActionOnBattery

<!-- SelectLidCloseActionOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- SelectLidCloseActionOnBattery-Applicability-End -->

<!-- SelectLidCloseActionOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/SelectLidCloseActionOnBattery
```
<!-- SelectLidCloseActionOnBattery-OmaUri-End -->

<!-- SelectLidCloseActionOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user closes the lid on a mobile PC.

Possible actions include:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you enable this policy setting, you must select the desired action.

- If you disable this policy setting or don't configure it, users can see and change this setting.
<!-- SelectLidCloseActionOnBattery-Description-End -->

<!-- SelectLidCloseActionOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SelectLidCloseActionOnBattery-Editable-End -->

<!-- SelectLidCloseActionOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SelectLidCloseActionOnBattery-DFProperties-End -->

<!-- SelectLidCloseActionOnBattery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Take no action. |
| 1 (Default) | Sleep. |
| 2 | System hibernate sleep state. |
| 3 | System shutdown. |
<!-- SelectLidCloseActionOnBattery-AllowedValues-End -->

<!-- SelectLidCloseActionOnBattery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DCSystemLidAction_2 |
| Friendly Name | Select the lid switch action (on battery) |
| Element Name | Lid Switch Action. |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\5CA83367-6E45-459F-A27B-476B1D01C936 |
| ADMX File Name | Power.admx |
<!-- SelectLidCloseActionOnBattery-GpMapping-End -->

<!-- SelectLidCloseActionOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SelectLidCloseActionOnBattery-Examples-End -->

<!-- SelectLidCloseActionOnBattery-End -->

<!-- SelectLidCloseActionPluggedIn-Begin -->
## SelectLidCloseActionPluggedIn

<!-- SelectLidCloseActionPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- SelectLidCloseActionPluggedIn-Applicability-End -->

<!-- SelectLidCloseActionPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/SelectLidCloseActionPluggedIn
```
<!-- SelectLidCloseActionPluggedIn-OmaUri-End -->

<!-- SelectLidCloseActionPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user closes the lid on a mobile PC.

Possible actions include:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you enable this policy setting, you must select the desired action.

- If you disable this policy setting or don't configure it, users can see and change this setting.
<!-- SelectLidCloseActionPluggedIn-Description-End -->

<!-- SelectLidCloseActionPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SelectLidCloseActionPluggedIn-Editable-End -->

<!-- SelectLidCloseActionPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SelectLidCloseActionPluggedIn-DFProperties-End -->

<!-- SelectLidCloseActionPluggedIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Take no action. |
| 1 (Default) | Sleep. |
| 2 | System hibernate sleep state. |
| 3 | System shutdown. |
<!-- SelectLidCloseActionPluggedIn-AllowedValues-End -->

<!-- SelectLidCloseActionPluggedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ACSystemLidAction_2 |
| Friendly Name | Select the lid switch action (plugged in) |
| Element Name | Lid Switch Action. |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\5CA83367-6E45-459F-A27B-476B1D01C936 |
| ADMX File Name | Power.admx |
<!-- SelectLidCloseActionPluggedIn-GpMapping-End -->

<!-- SelectLidCloseActionPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SelectLidCloseActionPluggedIn-Examples-End -->

<!-- SelectLidCloseActionPluggedIn-End -->

<!-- SelectPowerButtonActionOnBattery-Begin -->
## SelectPowerButtonActionOnBattery

<!-- SelectPowerButtonActionOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- SelectPowerButtonActionOnBattery-Applicability-End -->

<!-- SelectPowerButtonActionOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/SelectPowerButtonActionOnBattery
```
<!-- SelectPowerButtonActionOnBattery-OmaUri-End -->

<!-- SelectPowerButtonActionOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user presses the power button.

Possible actions include:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you enable this policy setting, you must select the desired action.

- If you disable this policy setting or don't configure it, users can see and change this setting.
<!-- SelectPowerButtonActionOnBattery-Description-End -->

<!-- SelectPowerButtonActionOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SelectPowerButtonActionOnBattery-Editable-End -->

<!-- SelectPowerButtonActionOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SelectPowerButtonActionOnBattery-DFProperties-End -->

<!-- SelectPowerButtonActionOnBattery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Take no action. |
| 1 (Default) | Sleep. |
| 2 | System hibernate sleep state. |
| 3 | System shutdown. |
<!-- SelectPowerButtonActionOnBattery-AllowedValues-End -->

<!-- SelectPowerButtonActionOnBattery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DCPowerButtonAction_2 |
| Friendly Name | Select the Power button action (on battery) |
| Element Name | Power Button Action. |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\7648EFA3-DD9C-4E3E-B566-50F929386280 |
| ADMX File Name | Power.admx |
<!-- SelectPowerButtonActionOnBattery-GpMapping-End -->

<!-- SelectPowerButtonActionOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SelectPowerButtonActionOnBattery-Examples-End -->

<!-- SelectPowerButtonActionOnBattery-End -->

<!-- SelectPowerButtonActionPluggedIn-Begin -->
## SelectPowerButtonActionPluggedIn

<!-- SelectPowerButtonActionPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- SelectPowerButtonActionPluggedIn-Applicability-End -->

<!-- SelectPowerButtonActionPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/SelectPowerButtonActionPluggedIn
```
<!-- SelectPowerButtonActionPluggedIn-OmaUri-End -->

<!-- SelectPowerButtonActionPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user presses the power button.

Possible actions include:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you enable this policy setting, you must select the desired action.

- If you disable this policy setting or don't configure it, users can see and change this setting.
<!-- SelectPowerButtonActionPluggedIn-Description-End -->

<!-- SelectPowerButtonActionPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SelectPowerButtonActionPluggedIn-Editable-End -->

<!-- SelectPowerButtonActionPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SelectPowerButtonActionPluggedIn-DFProperties-End -->

<!-- SelectPowerButtonActionPluggedIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Take no action. |
| 1 (Default) | Sleep. |
| 2 | System hibernate sleep state. |
| 3 | System shutdown. |
<!-- SelectPowerButtonActionPluggedIn-AllowedValues-End -->

<!-- SelectPowerButtonActionPluggedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ACPowerButtonAction_2 |
| Friendly Name | Select the Power button action (plugged in) |
| Element Name | Power Button Action. |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\7648EFA3-DD9C-4E3E-B566-50F929386280 |
| ADMX File Name | Power.admx |
<!-- SelectPowerButtonActionPluggedIn-GpMapping-End -->

<!-- SelectPowerButtonActionPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SelectPowerButtonActionPluggedIn-Examples-End -->

<!-- SelectPowerButtonActionPluggedIn-End -->

<!-- SelectSleepButtonActionOnBattery-Begin -->
## SelectSleepButtonActionOnBattery

<!-- SelectSleepButtonActionOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- SelectSleepButtonActionOnBattery-Applicability-End -->

<!-- SelectSleepButtonActionOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/SelectSleepButtonActionOnBattery
```
<!-- SelectSleepButtonActionOnBattery-OmaUri-End -->

<!-- SelectSleepButtonActionOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user presses the sleep button.

Possible actions include:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you enable this policy setting, you must select the desired action.

- If you disable this policy setting or don't configure it, users can see and change this setting.
<!-- SelectSleepButtonActionOnBattery-Description-End -->

<!-- SelectSleepButtonActionOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SelectSleepButtonActionOnBattery-Editable-End -->

<!-- SelectSleepButtonActionOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SelectSleepButtonActionOnBattery-DFProperties-End -->

<!-- SelectSleepButtonActionOnBattery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Take no action. |
| 1 (Default) | Sleep. |
| 2 | System hibernate sleep state. |
| 3 | System shutdown. |
<!-- SelectSleepButtonActionOnBattery-AllowedValues-End -->

<!-- SelectSleepButtonActionOnBattery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DCSleepButtonAction_2 |
| Friendly Name | Select the Sleep button action (on battery) |
| Element Name | Sleep Button Action. |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\96996BC0-AD50-47EC-923B-6F41874DD9EB |
| ADMX File Name | Power.admx |
<!-- SelectSleepButtonActionOnBattery-GpMapping-End -->

<!-- SelectSleepButtonActionOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SelectSleepButtonActionOnBattery-Examples-End -->

<!-- SelectSleepButtonActionOnBattery-End -->

<!-- SelectSleepButtonActionPluggedIn-Begin -->
## SelectSleepButtonActionPluggedIn

<!-- SelectSleepButtonActionPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- SelectSleepButtonActionPluggedIn-Applicability-End -->

<!-- SelectSleepButtonActionPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/SelectSleepButtonActionPluggedIn
```
<!-- SelectSleepButtonActionPluggedIn-OmaUri-End -->

<!-- SelectSleepButtonActionPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user presses the sleep button.

Possible actions include:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you enable this policy setting, you must select the desired action.

- If you disable this policy setting or don't configure it, users can see and change this setting.
<!-- SelectSleepButtonActionPluggedIn-Description-End -->

<!-- SelectSleepButtonActionPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SelectSleepButtonActionPluggedIn-Editable-End -->

<!-- SelectSleepButtonActionPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- SelectSleepButtonActionPluggedIn-DFProperties-End -->

<!-- SelectSleepButtonActionPluggedIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Take no action. |
| 1 (Default) | Sleep. |
| 2 | System hibernate sleep state. |
| 3 | System shutdown. |
<!-- SelectSleepButtonActionPluggedIn-AllowedValues-End -->

<!-- SelectSleepButtonActionPluggedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ACSleepButtonAction_2 |
| Friendly Name | Select the Sleep button action (plugged in) |
| Element Name | Sleep Button Action. |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\96996BC0-AD50-47EC-923B-6F41874DD9EB |
| ADMX File Name | Power.admx |
<!-- SelectSleepButtonActionPluggedIn-GpMapping-End -->

<!-- SelectSleepButtonActionPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SelectSleepButtonActionPluggedIn-Examples-End -->

<!-- SelectSleepButtonActionPluggedIn-End -->

<!-- StandbyTimeoutOnBattery-Begin -->
## StandbyTimeoutOnBattery

<!-- StandbyTimeoutOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- StandbyTimeoutOnBattery-Applicability-End -->

<!-- StandbyTimeoutOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/StandbyTimeoutOnBattery
```
<!-- StandbyTimeoutOnBattery-OmaUri-End -->

<!-- StandbyTimeoutOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- StandbyTimeoutOnBattery-Description-End -->

<!-- StandbyTimeoutOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StandbyTimeoutOnBattery-Editable-End -->

<!-- StandbyTimeoutOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StandbyTimeoutOnBattery-DFProperties-End -->

<!-- StandbyTimeoutOnBattery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCStandbyTimeOut_2 |
| Friendly Name | Specify the system sleep timeout (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\29F6C1DB-86DA-48C5-9FDB-F2B67B1F44DA |
| ADMX File Name | Power.admx |
<!-- StandbyTimeoutOnBattery-AdmxBacked-End -->

<!-- StandbyTimeoutOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StandbyTimeoutOnBattery-Examples-End -->

<!-- StandbyTimeoutOnBattery-End -->

<!-- StandbyTimeoutPluggedIn-Begin -->
## StandbyTimeoutPluggedIn

<!-- StandbyTimeoutPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- StandbyTimeoutPluggedIn-Applicability-End -->

<!-- StandbyTimeoutPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/StandbyTimeoutPluggedIn
```
<!-- StandbyTimeoutPluggedIn-OmaUri-End -->

<!-- StandbyTimeoutPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- StandbyTimeoutPluggedIn-Description-End -->

<!-- StandbyTimeoutPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StandbyTimeoutPluggedIn-Editable-End -->

<!-- StandbyTimeoutPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StandbyTimeoutPluggedIn-DFProperties-End -->

<!-- StandbyTimeoutPluggedIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ACStandbyTimeOut_2 |
| Friendly Name | Specify the system sleep timeout (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\29F6C1DB-86DA-48C5-9FDB-F2B67B1F44DA |
| ADMX File Name | Power.admx |
<!-- StandbyTimeoutPluggedIn-AdmxBacked-End -->

<!-- StandbyTimeoutPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StandbyTimeoutPluggedIn-Examples-End -->

<!-- StandbyTimeoutPluggedIn-End -->

<!-- TurnOffHybridSleepOnBattery-Begin -->
## TurnOffHybridSleepOnBattery

<!-- TurnOffHybridSleepOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- TurnOffHybridSleepOnBattery-Applicability-End -->

<!-- TurnOffHybridSleepOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/TurnOffHybridSleepOnBattery
```
<!-- TurnOffHybridSleepOnBattery-OmaUri-End -->

<!-- TurnOffHybridSleepOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Hybrid Sleep.

- If you enable this policy setting, a hiberfile isn't generated when the system transitions to sleep (Stand By).

- If you disable or don't configure this policy setting, users control this setting.
<!-- TurnOffHybridSleepOnBattery-Description-End -->

<!-- TurnOffHybridSleepOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffHybridSleepOnBattery-Editable-End -->

<!-- TurnOffHybridSleepOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TurnOffHybridSleepOnBattery-DFProperties-End -->

<!-- TurnOffHybridSleepOnBattery-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | . |
| 1 | Hybrid Sleep. |
<!-- TurnOffHybridSleepOnBattery-AllowedValues-End -->

<!-- TurnOffHybridSleepOnBattery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DCStandbyWithHiberfileEnable_2 |
| Friendly Name | Turn off hybrid sleep (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\94ac6d29-73ce-41a6-809f-6363ba21b47e |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- TurnOffHybridSleepOnBattery-GpMapping-End -->

<!-- TurnOffHybridSleepOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffHybridSleepOnBattery-Examples-End -->

<!-- TurnOffHybridSleepOnBattery-End -->

<!-- TurnOffHybridSleepPluggedIn-Begin -->
## TurnOffHybridSleepPluggedIn

<!-- TurnOffHybridSleepPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- TurnOffHybridSleepPluggedIn-Applicability-End -->

<!-- TurnOffHybridSleepPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/TurnOffHybridSleepPluggedIn
```
<!-- TurnOffHybridSleepPluggedIn-OmaUri-End -->

<!-- TurnOffHybridSleepPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Hybrid Sleep.

- If you enable this policy setting, a hiberfile isn't generated when the system transitions to sleep (Stand By).

- If you disable or don't configure this policy setting, users control this setting.
<!-- TurnOffHybridSleepPluggedIn-Description-End -->

<!-- TurnOffHybridSleepPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffHybridSleepPluggedIn-Editable-End -->

<!-- TurnOffHybridSleepPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TurnOffHybridSleepPluggedIn-DFProperties-End -->

<!-- TurnOffHybridSleepPluggedIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | . |
| 1 | Hybrid Sleep. |
<!-- TurnOffHybridSleepPluggedIn-AllowedValues-End -->

<!-- TurnOffHybridSleepPluggedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ACStandbyWithHiberfileEnable_2 |
| Friendly Name | Turn off hybrid sleep (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\94ac6d29-73ce-41a6-809f-6363ba21b47e |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- TurnOffHybridSleepPluggedIn-GpMapping-End -->

<!-- TurnOffHybridSleepPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffHybridSleepPluggedIn-Examples-End -->

<!-- TurnOffHybridSleepPluggedIn-End -->

<!-- UnattendedSleepTimeoutOnBattery-Begin -->
## UnattendedSleepTimeoutOnBattery

<!-- UnattendedSleepTimeoutOnBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- UnattendedSleepTimeoutOnBattery-Applicability-End -->

<!-- UnattendedSleepTimeoutOnBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/UnattendedSleepTimeoutOnBattery
```
<!-- UnattendedSleepTimeoutOnBattery-OmaUri-End -->

<!-- UnattendedSleepTimeoutOnBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows transitions to sleep automatically when a user isn't present at the computer.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically transitions to sleep when left unattended. If you specify 0 seconds, Windows doesn't automatically transition to sleep.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- UnattendedSleepTimeoutOnBattery-Description-End -->

<!-- UnattendedSleepTimeoutOnBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UnattendedSleepTimeoutOnBattery-Editable-End -->

<!-- UnattendedSleepTimeoutOnBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- UnattendedSleepTimeoutOnBattery-DFProperties-End -->

<!-- UnattendedSleepTimeoutOnBattery-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UnattendedSleepTimeOutDC |
| Friendly Name | Specify the unattended sleep timeout (on battery) |
| Element Name | Unattended Sleep Timeout (seconds) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\7bc4a2f9-d8fc-4469-b07b-33eb785aaca0 |
| ADMX File Name | Power.admx |
<!-- UnattendedSleepTimeoutOnBattery-GpMapping-End -->

<!-- UnattendedSleepTimeoutOnBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UnattendedSleepTimeoutOnBattery-Examples-End -->

<!-- UnattendedSleepTimeoutOnBattery-End -->

<!-- UnattendedSleepTimeoutPluggedIn-Begin -->
## UnattendedSleepTimeoutPluggedIn

<!-- UnattendedSleepTimeoutPluggedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- UnattendedSleepTimeoutPluggedIn-Applicability-End -->

<!-- UnattendedSleepTimeoutPluggedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Power/UnattendedSleepTimeoutPluggedIn
```
<!-- UnattendedSleepTimeoutPluggedIn-OmaUri-End -->

<!-- UnattendedSleepTimeoutPluggedIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the period of inactivity before Windows transitions to sleep automatically when a user isn't present at the computer.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically transitions to sleep when left unattended. If you specify 0 seconds, Windows doesn't automatically transition to sleep.

- If you disable or don't configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
<!-- UnattendedSleepTimeoutPluggedIn-Description-End -->

<!-- UnattendedSleepTimeoutPluggedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UnattendedSleepTimeoutPluggedIn-Editable-End -->

<!-- UnattendedSleepTimeoutPluggedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- UnattendedSleepTimeoutPluggedIn-DFProperties-End -->

<!-- UnattendedSleepTimeoutPluggedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | UnattendedSleepTimeOutAC |
| Friendly Name | Specify the unattended sleep timeout (plugged in) |
| Element Name | Unattended Sleep Timeout (seconds) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\7bc4a2f9-d8fc-4469-b07b-33eb785aaca0 |
| ADMX File Name | Power.admx |
<!-- UnattendedSleepTimeoutPluggedIn-GpMapping-End -->

<!-- UnattendedSleepTimeoutPluggedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UnattendedSleepTimeoutPluggedIn-Examples-End -->

<!-- UnattendedSleepTimeoutPluggedIn-End -->

<!-- Power-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Power-CspMoreInfo-End -->

<!-- Power-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
