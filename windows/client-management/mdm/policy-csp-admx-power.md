---
title: ADMX_Power Policy CSP
description: Learn more about the ADMX_Power Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Power-Begin -->
# Policy CSP - ADMX_Power

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Power-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Power-Editable-End -->

<!-- ACConnectivityInStandby_2-Begin -->
## ACConnectivityInStandby_2

<!-- ACConnectivityInStandby_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ACConnectivityInStandby_2-Applicability-End -->

<!-- ACConnectivityInStandby_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/ACConnectivityInStandby_2
```
<!-- ACConnectivityInStandby_2-OmaUri-End -->

<!-- ACConnectivityInStandby_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control the network connectivity state in standby on modern standby-capable systems.

- If you enable this policy setting, network connectivity will be maintained in standby.

- If you disable this policy setting, network connectivity in standby isn't guaranteed. This connectivity restriction currently applies to WLAN networks only, and is subject to change.

- If you don't configure this policy setting, users control this setting.
<!-- ACConnectivityInStandby_2-Description-End -->

<!-- ACConnectivityInStandby_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ACConnectivityInStandby_2-Editable-End -->

<!-- ACConnectivityInStandby_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ACConnectivityInStandby_2-DFProperties-End -->

<!-- ACConnectivityInStandby_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ACConnectivityInStandby_2 |
| Friendly Name | Allow network connectivity during connected-standby (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\f15576e8-98b7-4186-b944-eafa664402d9 |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- ACConnectivityInStandby_2-AdmxBacked-End -->

<!-- ACConnectivityInStandby_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ACConnectivityInStandby_2-Examples-End -->

<!-- ACConnectivityInStandby_2-End -->

<!-- ACCriticalSleepTransitionsDisable_2-Begin -->
## ACCriticalSleepTransitionsDisable_2

<!-- ACCriticalSleepTransitionsDisable_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ACCriticalSleepTransitionsDisable_2-Applicability-End -->

<!-- ACCriticalSleepTransitionsDisable_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/ACCriticalSleepTransitionsDisable_2
```
<!-- ACCriticalSleepTransitionsDisable_2-OmaUri-End -->

<!-- ACCriticalSleepTransitionsDisable_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on the ability for applications and services to prevent the system from sleeping.

- If you enable this policy setting, an application or service may prevent the system from sleeping (hybrid Sleep, Stand By, or Hibernate).

- If you disable or don't configure this policy setting, users control this setting.
<!-- ACCriticalSleepTransitionsDisable_2-Description-End -->

<!-- ACCriticalSleepTransitionsDisable_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ACCriticalSleepTransitionsDisable_2-Editable-End -->

<!-- ACCriticalSleepTransitionsDisable_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ACCriticalSleepTransitionsDisable_2-DFProperties-End -->

<!-- ACCriticalSleepTransitionsDisable_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ACCriticalSleepTransitionsDisable_2 |
| Friendly Name | Turn on the ability for applications to prevent sleep transitions (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\B7A27025-E569-46c2-A504-2B96CAD225A1 |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- ACCriticalSleepTransitionsDisable_2-AdmxBacked-End -->

<!-- ACCriticalSleepTransitionsDisable_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ACCriticalSleepTransitionsDisable_2-Examples-End -->

<!-- ACCriticalSleepTransitionsDisable_2-End -->

<!-- ACStartMenuButtonAction_2-Begin -->
## ACStartMenuButtonAction_2

<!-- ACStartMenuButtonAction_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ACStartMenuButtonAction_2-Applicability-End -->

<!-- ACStartMenuButtonAction_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/ACStartMenuButtonAction_2
```
<!-- ACStartMenuButtonAction_2-OmaUri-End -->

<!-- ACStartMenuButtonAction_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user presses the Start menu Power button.

- If you enable this policy setting, select one of the following actions:

-Sleep
-Hibernate
-Shut down.

- If you disable this policy or don't configure this policy setting, users control this setting.
<!-- ACStartMenuButtonAction_2-Description-End -->

<!-- ACStartMenuButtonAction_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ACStartMenuButtonAction_2-Editable-End -->

<!-- ACStartMenuButtonAction_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ACStartMenuButtonAction_2-DFProperties-End -->

<!-- ACStartMenuButtonAction_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ACStartMenuButtonAction_2 |
| Friendly Name | Select the Start menu Power button action (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\A7066653-8D6C-40A8-910E-A1F54B84C7E5 |
| ADMX File Name | Power.admx |
<!-- ACStartMenuButtonAction_2-AdmxBacked-End -->

<!-- ACStartMenuButtonAction_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ACStartMenuButtonAction_2-Examples-End -->

<!-- ACStartMenuButtonAction_2-End -->

<!-- AllowSystemPowerRequestAC-Begin -->
## AllowSystemPowerRequestAC

<!-- AllowSystemPowerRequestAC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSystemPowerRequestAC-Applicability-End -->

<!-- AllowSystemPowerRequestAC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/AllowSystemPowerRequestAC
```
<!-- AllowSystemPowerRequestAC-OmaUri-End -->

<!-- AllowSystemPowerRequestAC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows applications and services to prevent automatic sleep.

- If you enable this policy setting, any application, service, or device driver prevents Windows from automatically transitioning to sleep after a period of user inactivity.

- If you disable or don't configure this policy setting, applications, services, or drivers don't prevent Windows from automatically transitioning to sleep. Only user input is used to determine if Windows should automatically sleep.
<!-- AllowSystemPowerRequestAC-Description-End -->

<!-- AllowSystemPowerRequestAC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSystemPowerRequestAC-Editable-End -->

<!-- AllowSystemPowerRequestAC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSystemPowerRequestAC-DFProperties-End -->

<!-- AllowSystemPowerRequestAC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSystemPowerRequestAC |
| Friendly Name | Allow applications to prevent automatic sleep (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\A4B195F5-8225-47D8-8012-9D41369786E2 |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- AllowSystemPowerRequestAC-AdmxBacked-End -->

<!-- AllowSystemPowerRequestAC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSystemPowerRequestAC-Examples-End -->

<!-- AllowSystemPowerRequestAC-End -->

<!-- AllowSystemPowerRequestDC-Begin -->
## AllowSystemPowerRequestDC

<!-- AllowSystemPowerRequestDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSystemPowerRequestDC-Applicability-End -->

<!-- AllowSystemPowerRequestDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/AllowSystemPowerRequestDC
```
<!-- AllowSystemPowerRequestDC-OmaUri-End -->

<!-- AllowSystemPowerRequestDC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows applications and services to prevent automatic sleep.

- If you enable this policy setting, any application, service, or device driver prevents Windows from automatically transitioning to sleep after a period of user inactivity.

- If you disable or don't configure this policy setting, applications, services, or drivers don't prevent Windows from automatically transitioning to sleep. Only user input is used to determine if Windows should automatically sleep.
<!-- AllowSystemPowerRequestDC-Description-End -->

<!-- AllowSystemPowerRequestDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSystemPowerRequestDC-Editable-End -->

<!-- AllowSystemPowerRequestDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSystemPowerRequestDC-DFProperties-End -->

<!-- AllowSystemPowerRequestDC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSystemPowerRequestDC |
| Friendly Name | Allow applications to prevent automatic sleep (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\A4B195F5-8225-47D8-8012-9D41369786E2 |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- AllowSystemPowerRequestDC-AdmxBacked-End -->

<!-- AllowSystemPowerRequestDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSystemPowerRequestDC-Examples-End -->

<!-- AllowSystemPowerRequestDC-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-Begin -->
## AllowSystemSleepWithRemoteFilesOpenAC

<!-- AllowSystemSleepWithRemoteFilesOpenAC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSystemSleepWithRemoteFilesOpenAC-Applicability-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/AllowSystemSleepWithRemoteFilesOpenAC
```
<!-- AllowSystemSleepWithRemoteFilesOpenAC-OmaUri-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage automatic sleep with open network files.

- If you enable this policy setting, the computer automatically sleeps when network files are open.

- If you disable or don't configure this policy setting, the computer doesn't automatically sleep when network files are open.
<!-- AllowSystemSleepWithRemoteFilesOpenAC-Description-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSystemSleepWithRemoteFilesOpenAC-Editable-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSystemSleepWithRemoteFilesOpenAC-DFProperties-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSystemSleepWithRemoteFilesOpenAC |
| Friendly Name | Allow automatic sleep with Open Network Files (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\d4c1d4c8-d5cc-43d3-b83e-fc51215cb04d |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- AllowSystemSleepWithRemoteFilesOpenAC-AdmxBacked-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSystemSleepWithRemoteFilesOpenAC-Examples-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenAC-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-Begin -->
## AllowSystemSleepWithRemoteFilesOpenDC

<!-- AllowSystemSleepWithRemoteFilesOpenDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowSystemSleepWithRemoteFilesOpenDC-Applicability-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/AllowSystemSleepWithRemoteFilesOpenDC
```
<!-- AllowSystemSleepWithRemoteFilesOpenDC-OmaUri-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage automatic sleep with open network files.

- If you enable this policy setting, the computer automatically sleeps when network files are open.

- If you disable or don't configure this policy setting, the computer doesn't automatically sleep when network files are open.
<!-- AllowSystemSleepWithRemoteFilesOpenDC-Description-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSystemSleepWithRemoteFilesOpenDC-Editable-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowSystemSleepWithRemoteFilesOpenDC-DFProperties-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSystemSleepWithRemoteFilesOpenDC |
| Friendly Name | Allow automatic sleep with Open Network Files (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\d4c1d4c8-d5cc-43d3-b83e-fc51215cb04d |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- AllowSystemSleepWithRemoteFilesOpenDC-AdmxBacked-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSystemSleepWithRemoteFilesOpenDC-Examples-End -->

<!-- AllowSystemSleepWithRemoteFilesOpenDC-End -->

<!-- CustomActiveSchemeOverride_2-Begin -->
## CustomActiveSchemeOverride_2

<!-- CustomActiveSchemeOverride_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomActiveSchemeOverride_2-Applicability-End -->

<!-- CustomActiveSchemeOverride_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/CustomActiveSchemeOverride_2
```
<!-- CustomActiveSchemeOverride_2-OmaUri-End -->

<!-- CustomActiveSchemeOverride_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the active power plan from a specified power plan's GUID. The GUID for a custom power plan GUID can be retrieved by using powercfg, the power configuration command line tool.

- If you enable this policy setting, you must specify a power plan, specified as a GUID using the following format: XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX (For example, 103eea6e-9fcd-4544-a713-c282d8e50083), indicating the power plan to be active.

- If you disable or don't configure this policy setting, users can see and change this setting.
<!-- CustomActiveSchemeOverride_2-Description-End -->

<!-- CustomActiveSchemeOverride_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomActiveSchemeOverride_2-Editable-End -->

<!-- CustomActiveSchemeOverride_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomActiveSchemeOverride_2-DFProperties-End -->

<!-- CustomActiveSchemeOverride_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomActiveSchemeOverride_2 |
| Friendly Name | Specify a custom active power plan |
| Location | Computer Configuration |
| Path | System > Power Management |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings |
| ADMX File Name | Power.admx |
<!-- CustomActiveSchemeOverride_2-AdmxBacked-End -->

<!-- CustomActiveSchemeOverride_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomActiveSchemeOverride_2-Examples-End -->

<!-- CustomActiveSchemeOverride_2-End -->

<!-- DCBatteryDischargeAction0_2-Begin -->
## DCBatteryDischargeAction0_2

<!-- DCBatteryDischargeAction0_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCBatteryDischargeAction0_2-Applicability-End -->

<!-- DCBatteryDischargeAction0_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCBatteryDischargeAction0_2
```
<!-- DCBatteryDischargeAction0_2-OmaUri-End -->

<!-- DCBatteryDischargeAction0_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when battery capacity reaches the critical battery notification level.

- If you enable this policy setting, select one of the following actions:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you disable or don't configure this policy setting, users control this setting.
<!-- DCBatteryDischargeAction0_2-Description-End -->

<!-- DCBatteryDischargeAction0_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCBatteryDischargeAction0_2-Editable-End -->

<!-- DCBatteryDischargeAction0_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCBatteryDischargeAction0_2-DFProperties-End -->

<!-- DCBatteryDischargeAction0_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCBatteryDischargeAction0_2 |
| Friendly Name | Critical battery notification action |
| Location | Computer Configuration |
| Path | System > Power Management > Notification Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\637EA02F-BBCB-4015-8E2C-A1C7B9C0B546 |
| ADMX File Name | Power.admx |
<!-- DCBatteryDischargeAction0_2-AdmxBacked-End -->

<!-- DCBatteryDischargeAction0_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCBatteryDischargeAction0_2-Examples-End -->

<!-- DCBatteryDischargeAction0_2-End -->

<!-- DCBatteryDischargeAction1_2-Begin -->
## DCBatteryDischargeAction1_2

<!-- DCBatteryDischargeAction1_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCBatteryDischargeAction1_2-Applicability-End -->

<!-- DCBatteryDischargeAction1_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCBatteryDischargeAction1_2
```
<!-- DCBatteryDischargeAction1_2-OmaUri-End -->

<!-- DCBatteryDischargeAction1_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when battery capacity reaches the low battery notification level.

- If you enable this policy setting, select one of the following actions:

-Take no action
-Sleep
-Hibernate
-Shut down.

- If you disable or don't configure this policy setting, users control this setting.
<!-- DCBatteryDischargeAction1_2-Description-End -->

<!-- DCBatteryDischargeAction1_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCBatteryDischargeAction1_2-Editable-End -->

<!-- DCBatteryDischargeAction1_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCBatteryDischargeAction1_2-DFProperties-End -->

<!-- DCBatteryDischargeAction1_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCBatteryDischargeAction1_2 |
| Friendly Name | Low battery notification action |
| Location | Computer Configuration |
| Path | System > Power Management > Notification Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\d8742dcb-3e6a-4b3c-b3fe-374623cdcf06 |
| ADMX File Name | Power.admx |
<!-- DCBatteryDischargeAction1_2-AdmxBacked-End -->

<!-- DCBatteryDischargeAction1_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCBatteryDischargeAction1_2-Examples-End -->

<!-- DCBatteryDischargeAction1_2-End -->

<!-- DCBatteryDischargeLevel0_2-Begin -->
## DCBatteryDischargeLevel0_2

<!-- DCBatteryDischargeLevel0_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCBatteryDischargeLevel0_2-Applicability-End -->

<!-- DCBatteryDischargeLevel0_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCBatteryDischargeLevel0_2
```
<!-- DCBatteryDischargeLevel0_2-OmaUri-End -->

<!-- DCBatteryDischargeLevel0_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the percentage of battery capacity remaining that triggers the critical battery notification action.

- If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the critical notification.

To set the action that's triggered, see the "Critical Battery Notification Action" policy setting.

- If you disable this policy setting or don't configure it, users control this setting.
<!-- DCBatteryDischargeLevel0_2-Description-End -->

<!-- DCBatteryDischargeLevel0_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCBatteryDischargeLevel0_2-Editable-End -->

<!-- DCBatteryDischargeLevel0_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCBatteryDischargeLevel0_2-DFProperties-End -->

<!-- DCBatteryDischargeLevel0_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCBatteryDischargeLevel0_2 |
| Friendly Name | Critical battery notification level |
| Location | Computer Configuration |
| Path | System > Power Management > Notification Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\9A66D8D7-4FF7-4EF9-B5A2-5A326CA2A469 |
| ADMX File Name | Power.admx |
<!-- DCBatteryDischargeLevel0_2-AdmxBacked-End -->

<!-- DCBatteryDischargeLevel0_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCBatteryDischargeLevel0_2-Examples-End -->

<!-- DCBatteryDischargeLevel0_2-End -->

<!-- DCBatteryDischargeLevel1_2-Begin -->
## DCBatteryDischargeLevel1_2

<!-- DCBatteryDischargeLevel1_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCBatteryDischargeLevel1_2-Applicability-End -->

<!-- DCBatteryDischargeLevel1_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCBatteryDischargeLevel1_2
```
<!-- DCBatteryDischargeLevel1_2-OmaUri-End -->

<!-- DCBatteryDischargeLevel1_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the percentage of battery capacity remaining that triggers the low battery notification action.

- If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the low notification.

To set the action that's triggered, see the "Low Battery Notification Action" policy setting.

- If you disable this policy setting or don't configure it, users control this setting.
<!-- DCBatteryDischargeLevel1_2-Description-End -->

<!-- DCBatteryDischargeLevel1_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCBatteryDischargeLevel1_2-Editable-End -->

<!-- DCBatteryDischargeLevel1_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCBatteryDischargeLevel1_2-DFProperties-End -->

<!-- DCBatteryDischargeLevel1_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCBatteryDischargeLevel1_2 |
| Friendly Name | Low battery notification level |
| Location | Computer Configuration |
| Path | System > Power Management > Notification Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\8183ba9a-e910-48da-8769-14ae6dc1170a |
| ADMX File Name | Power.admx |
<!-- DCBatteryDischargeLevel1_2-AdmxBacked-End -->

<!-- DCBatteryDischargeLevel1_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCBatteryDischargeLevel1_2-Examples-End -->

<!-- DCBatteryDischargeLevel1_2-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-Begin -->
## DCBatteryDischargeLevel1UINotification_2

<!-- DCBatteryDischargeLevel1UINotification_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCBatteryDischargeLevel1UINotification_2-Applicability-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCBatteryDischargeLevel1UINotification_2
```
<!-- DCBatteryDischargeLevel1UINotification_2-OmaUri-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the user notification when the battery capacity remaining equals the low battery notification level.

- If you enable this policy setting, Windows shows a notification when the battery capacity remaining equals the low battery notification level. To configure the low battery notification level, see the "Low Battery Notification Level" policy setting.

The notification will only be shown if the "Low Battery Notification Action" policy setting is configured to "No Action".

- If you disable or don't configure this policy setting, users can control this setting.
<!-- DCBatteryDischargeLevel1UINotification_2-Description-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCBatteryDischargeLevel1UINotification_2-Editable-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCBatteryDischargeLevel1UINotification_2-DFProperties-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCBatteryDischargeLevel1UINotification_2 |
| Friendly Name | Turn off low battery user notification |
| Location | Computer Configuration |
| Path | System > Power Management > Notification Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\bcded951-187b-4d05-bccc-f7e51960c258 |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- DCBatteryDischargeLevel1UINotification_2-AdmxBacked-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCBatteryDischargeLevel1UINotification_2-Examples-End -->

<!-- DCBatteryDischargeLevel1UINotification_2-End -->

<!-- DCConnectivityInStandby_2-Begin -->
## DCConnectivityInStandby_2

<!-- DCConnectivityInStandby_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCConnectivityInStandby_2-Applicability-End -->

<!-- DCConnectivityInStandby_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCConnectivityInStandby_2
```
<!-- DCConnectivityInStandby_2-OmaUri-End -->

<!-- DCConnectivityInStandby_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control the network connectivity state in standby on modern standby-capable systems.

- If you enable this policy setting, network connectivity will be maintained in standby.

- If you disable this policy setting, network connectivity in standby isn't guaranteed. This connectivity restriction currently applies to WLAN networks only, and is subject to change.

- If you don't configure this policy setting, users control this setting.
<!-- DCConnectivityInStandby_2-Description-End -->

<!-- DCConnectivityInStandby_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCConnectivityInStandby_2-Editable-End -->

<!-- DCConnectivityInStandby_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCConnectivityInStandby_2-DFProperties-End -->

<!-- DCConnectivityInStandby_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCConnectivityInStandby_2 |
| Friendly Name | Allow network connectivity during connected-standby (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\f15576e8-98b7-4186-b944-eafa664402d9 |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- DCConnectivityInStandby_2-AdmxBacked-End -->

<!-- DCConnectivityInStandby_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCConnectivityInStandby_2-Examples-End -->

<!-- DCConnectivityInStandby_2-End -->

<!-- DCCriticalSleepTransitionsDisable_2-Begin -->
## DCCriticalSleepTransitionsDisable_2

<!-- DCCriticalSleepTransitionsDisable_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCCriticalSleepTransitionsDisable_2-Applicability-End -->

<!-- DCCriticalSleepTransitionsDisable_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCCriticalSleepTransitionsDisable_2
```
<!-- DCCriticalSleepTransitionsDisable_2-OmaUri-End -->

<!-- DCCriticalSleepTransitionsDisable_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn on the ability for applications and services to prevent the system from sleeping.

- If you enable this policy setting, an application or service may prevent the system from sleeping (hybrid Sleep, Stand By, or Hibernate).

- If you disable or don't configure this policy setting, users control this setting.
<!-- DCCriticalSleepTransitionsDisable_2-Description-End -->

<!-- DCCriticalSleepTransitionsDisable_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCCriticalSleepTransitionsDisable_2-Editable-End -->

<!-- DCCriticalSleepTransitionsDisable_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCCriticalSleepTransitionsDisable_2-DFProperties-End -->

<!-- DCCriticalSleepTransitionsDisable_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCCriticalSleepTransitionsDisable_2 |
| Friendly Name | Turn on the ability for applications to prevent sleep transitions (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Sleep Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\B7A27025-E569-46c2-A504-2B96CAD225A1 |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- DCCriticalSleepTransitionsDisable_2-AdmxBacked-End -->

<!-- DCCriticalSleepTransitionsDisable_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCCriticalSleepTransitionsDisable_2-Examples-End -->

<!-- DCCriticalSleepTransitionsDisable_2-End -->

<!-- DCStartMenuButtonAction_2-Begin -->
## DCStartMenuButtonAction_2

<!-- DCStartMenuButtonAction_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DCStartMenuButtonAction_2-Applicability-End -->

<!-- DCStartMenuButtonAction_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DCStartMenuButtonAction_2
```
<!-- DCStartMenuButtonAction_2-OmaUri-End -->

<!-- DCStartMenuButtonAction_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the action that Windows takes when a user presses the Start menu Power button.

- If you enable this policy setting, select one of the following actions:

-Sleep
-Hibernate
-Shut down.

- If you disable this policy or don't configure this policy setting, users control this setting.
<!-- DCStartMenuButtonAction_2-Description-End -->

<!-- DCStartMenuButtonAction_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DCStartMenuButtonAction_2-Editable-End -->

<!-- DCStartMenuButtonAction_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DCStartMenuButtonAction_2-DFProperties-End -->

<!-- DCStartMenuButtonAction_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DCStartMenuButtonAction_2 |
| Friendly Name | Select the Start menu Power button action (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Button Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\A7066653-8D6C-40A8-910E-A1F54B84C7E5 |
| ADMX File Name | Power.admx |
<!-- DCStartMenuButtonAction_2-AdmxBacked-End -->

<!-- DCStartMenuButtonAction_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DCStartMenuButtonAction_2-Examples-End -->

<!-- DCStartMenuButtonAction_2-End -->

<!-- DiskACPowerDownTimeOut_2-Begin -->
## DiskACPowerDownTimeOut_2

<!-- DiskACPowerDownTimeOut_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DiskACPowerDownTimeOut_2-Applicability-End -->

<!-- DiskACPowerDownTimeOut_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DiskACPowerDownTimeOut_2
```
<!-- DiskACPowerDownTimeOut_2-OmaUri-End -->

<!-- DiskACPowerDownTimeOut_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the period of inactivity before Windows turns off the hard disk.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the hard disk.

- If you disable or don't configure this policy setting, users can see and change this setting.
<!-- DiskACPowerDownTimeOut_2-Description-End -->

<!-- DiskACPowerDownTimeOut_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DiskACPowerDownTimeOut_2-Editable-End -->

<!-- DiskACPowerDownTimeOut_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DiskACPowerDownTimeOut_2-DFProperties-End -->

<!-- DiskACPowerDownTimeOut_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DiskACPowerDownTimeOut_2 |
| Friendly Name | Turn Off the hard disk (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Hard Disk Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\6738E2C4-E8A5-4A42-B16A-E040E769756E |
| ADMX File Name | Power.admx |
<!-- DiskACPowerDownTimeOut_2-AdmxBacked-End -->

<!-- DiskACPowerDownTimeOut_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DiskACPowerDownTimeOut_2-Examples-End -->

<!-- DiskACPowerDownTimeOut_2-End -->

<!-- DiskDCPowerDownTimeOut_2-Begin -->
## DiskDCPowerDownTimeOut_2

<!-- DiskDCPowerDownTimeOut_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DiskDCPowerDownTimeOut_2-Applicability-End -->

<!-- DiskDCPowerDownTimeOut_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/DiskDCPowerDownTimeOut_2
```
<!-- DiskDCPowerDownTimeOut_2-OmaUri-End -->

<!-- DiskDCPowerDownTimeOut_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the period of inactivity before Windows turns off the hard disk.

- If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the hard disk.

- If you disable or don't configure this policy setting, users can see and change this setting.
<!-- DiskDCPowerDownTimeOut_2-Description-End -->

<!-- DiskDCPowerDownTimeOut_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DiskDCPowerDownTimeOut_2-Editable-End -->

<!-- DiskDCPowerDownTimeOut_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DiskDCPowerDownTimeOut_2-DFProperties-End -->

<!-- DiskDCPowerDownTimeOut_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DiskDCPowerDownTimeOut_2 |
| Friendly Name | Turn Off the hard disk (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Hard Disk Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\6738E2C4-E8A5-4A42-B16A-E040E769756E |
| ADMX File Name | Power.admx |
<!-- DiskDCPowerDownTimeOut_2-AdmxBacked-End -->

<!-- DiskDCPowerDownTimeOut_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DiskDCPowerDownTimeOut_2-Examples-End -->

<!-- DiskDCPowerDownTimeOut_2-End -->

<!-- Dont_PowerOff_AfterShutdown-Begin -->
## Dont_PowerOff_AfterShutdown

<!-- Dont_PowerOff_AfterShutdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Dont_PowerOff_AfterShutdown-Applicability-End -->

<!-- Dont_PowerOff_AfterShutdown-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/Dont_PowerOff_AfterShutdown
```
<!-- Dont_PowerOff_AfterShutdown-OmaUri-End -->

<!-- Dont_PowerOff_AfterShutdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether power is automatically turned off when Windows shutdown completes. This setting doesn't affect Windows shutdown behavior when shutdown is manually selected using the Start menu or Task Manager user interfaces. Applications such as UPS software may rely on Windows shutdown behavior.

This setting is only applicable when Windows shutdown is initiated by software programs invoking the Windows programming interfaces ExitWindowsEx() or InitiateSystemShutdown().

- If you enable this policy setting, the computer system safely shuts down and remains in a powered state, ready for power to be safely removed.

- If you disable or don't configure this policy setting, the computer system safely shuts down to a fully powered-off state.
<!-- Dont_PowerOff_AfterShutdown-Description-End -->

<!-- Dont_PowerOff_AfterShutdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Dont_PowerOff_AfterShutdown-Editable-End -->

<!-- Dont_PowerOff_AfterShutdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Dont_PowerOff_AfterShutdown-DFProperties-End -->

<!-- Dont_PowerOff_AfterShutdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Dont_PowerOff_AfterShutdown |
| Friendly Name | Do not turn off system power after a Windows system shutdown has occurred. |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows NT |
| Registry Value Name | DontPowerOffAfterShutdown |
| ADMX File Name | Power.admx |
<!-- Dont_PowerOff_AfterShutdown-AdmxBacked-End -->

<!-- Dont_PowerOff_AfterShutdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Dont_PowerOff_AfterShutdown-Examples-End -->

<!-- Dont_PowerOff_AfterShutdown-End -->

<!-- EnableDesktopSlideShowAC-Begin -->
## EnableDesktopSlideShowAC

<!-- EnableDesktopSlideShowAC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableDesktopSlideShowAC-Applicability-End -->

<!-- EnableDesktopSlideShowAC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/EnableDesktopSlideShowAC
```
<!-- EnableDesktopSlideShowAC-OmaUri-End -->

<!-- EnableDesktopSlideShowAC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify if Windows should enable the desktop background slideshow.

- If you enable this policy setting, desktop background slideshow is enabled.

- If you disable this policy setting, the desktop background slideshow is disabled.

- If you disable or don't configure this policy setting, users control this setting.
<!-- EnableDesktopSlideShowAC-Description-End -->

<!-- EnableDesktopSlideShowAC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDesktopSlideShowAC-Editable-End -->

<!-- EnableDesktopSlideShowAC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDesktopSlideShowAC-DFProperties-End -->

<!-- EnableDesktopSlideShowAC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableDesktopSlideShowAC |
| Friendly Name | Turn on desktop background slideshow (plugged in) |
| Location | Computer Configuration |
| Path | System > Power Management > Video and Display Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\309dce9b-bef4-4119-9921-a851fb12f0f4 |
| Registry Value Name | ACSettingIndex |
| ADMX File Name | Power.admx |
<!-- EnableDesktopSlideShowAC-AdmxBacked-End -->

<!-- EnableDesktopSlideShowAC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDesktopSlideShowAC-Examples-End -->

<!-- EnableDesktopSlideShowAC-End -->

<!-- EnableDesktopSlideShowDC-Begin -->
## EnableDesktopSlideShowDC

<!-- EnableDesktopSlideShowDC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableDesktopSlideShowDC-Applicability-End -->

<!-- EnableDesktopSlideShowDC-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/EnableDesktopSlideShowDC
```
<!-- EnableDesktopSlideShowDC-OmaUri-End -->

<!-- EnableDesktopSlideShowDC-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify if Windows should enable the desktop background slideshow.

- If you enable this policy setting, desktop background slideshow is enabled.

- If you disable this policy setting, the desktop background slideshow is disabled.

- If you disable or don't configure this policy setting, users control this setting.
<!-- EnableDesktopSlideShowDC-Description-End -->

<!-- EnableDesktopSlideShowDC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDesktopSlideShowDC-Editable-End -->

<!-- EnableDesktopSlideShowDC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDesktopSlideShowDC-DFProperties-End -->

<!-- EnableDesktopSlideShowDC-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableDesktopSlideShowDC |
| Friendly Name | Turn on desktop background slideshow (on battery) |
| Location | Computer Configuration |
| Path | System > Power Management > Video and Display Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\309dce9b-bef4-4119-9921-a851fb12f0f4 |
| Registry Value Name | DCSettingIndex |
| ADMX File Name | Power.admx |
<!-- EnableDesktopSlideShowDC-AdmxBacked-End -->

<!-- EnableDesktopSlideShowDC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDesktopSlideShowDC-Examples-End -->

<!-- EnableDesktopSlideShowDC-End -->

<!-- InboxActiveSchemeOverride_2-Begin -->
## InboxActiveSchemeOverride_2

<!-- InboxActiveSchemeOverride_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- InboxActiveSchemeOverride_2-Applicability-End -->

<!-- InboxActiveSchemeOverride_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/InboxActiveSchemeOverride_2
```
<!-- InboxActiveSchemeOverride_2-OmaUri-End -->

<!-- InboxActiveSchemeOverride_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the active power plan from a list of default Windows power plans. To specify a custom power plan, use the Custom Active Power Plan setting.

- If you enable this policy setting, specify a power plan from the Active Power Plan list.

- If you disable or don't configure this policy setting, users control this setting.
<!-- InboxActiveSchemeOverride_2-Description-End -->

<!-- InboxActiveSchemeOverride_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InboxActiveSchemeOverride_2-Editable-End -->

<!-- InboxActiveSchemeOverride_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InboxActiveSchemeOverride_2-DFProperties-End -->

<!-- InboxActiveSchemeOverride_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | InboxActiveSchemeOverride_2 |
| Friendly Name | Select an active power plan |
| Location | Computer Configuration |
| Path | System > Power Management |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings |
| ADMX File Name | Power.admx |
<!-- InboxActiveSchemeOverride_2-AdmxBacked-End -->

<!-- InboxActiveSchemeOverride_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InboxActiveSchemeOverride_2-Examples-End -->

<!-- InboxActiveSchemeOverride_2-End -->

<!-- PowerThrottlingTurnOff-Begin -->
## PowerThrottlingTurnOff

<!-- PowerThrottlingTurnOff-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PowerThrottlingTurnOff-Applicability-End -->

<!-- PowerThrottlingTurnOff-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/PowerThrottlingTurnOff
```
<!-- PowerThrottlingTurnOff-OmaUri-End -->

<!-- PowerThrottlingTurnOff-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Power Throttling.

- If you enable this policy setting, Power Throttling will be turned off.

- If you disable or don't configure this policy setting, users control this setting.
<!-- PowerThrottlingTurnOff-Description-End -->

<!-- PowerThrottlingTurnOff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PowerThrottlingTurnOff-Editable-End -->

<!-- PowerThrottlingTurnOff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PowerThrottlingTurnOff-DFProperties-End -->

<!-- PowerThrottlingTurnOff-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PowerThrottlingTurnOff |
| Friendly Name | Turn off Power Throttling |
| Location | Computer Configuration |
| Path | System > Power Management > Power Throttling Settings |
| Registry Key Name | System\CurrentControlSet\Control\Power\PowerThrottling |
| Registry Value Name | PowerThrottlingOff |
| ADMX File Name | Power.admx |
<!-- PowerThrottlingTurnOff-AdmxBacked-End -->

<!-- PowerThrottlingTurnOff-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PowerThrottlingTurnOff-Examples-End -->

<!-- PowerThrottlingTurnOff-End -->

<!-- PW_PromptPasswordOnResume-Begin -->
## PW_PromptPasswordOnResume

<!-- PW_PromptPasswordOnResume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PW_PromptPasswordOnResume-Applicability-End -->

<!-- PW_PromptPasswordOnResume-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Power/PW_PromptPasswordOnResume
```
<!-- PW_PromptPasswordOnResume-OmaUri-End -->

<!-- PW_PromptPasswordOnResume-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure client computers to lock and prompt for a password when resuming from a hibernate or suspend state.

- If you enable this policy setting, the client computer is locked and prompted for a password when it's resumed from a suspend or hibernate state.

- If you disable or don't configure this policy setting, users control if their computer is automatically locked or not after performing a resume operation.
<!-- PW_PromptPasswordOnResume-Description-End -->

<!-- PW_PromptPasswordOnResume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PW_PromptPasswordOnResume-Editable-End -->

<!-- PW_PromptPasswordOnResume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PW_PromptPasswordOnResume-DFProperties-End -->

<!-- PW_PromptPasswordOnResume-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PW_PromptPasswordOnResume |
| Friendly Name | Prompt for password on resume from hibernate/suspend |
| Location | User Configuration |
| Path | System > Power Management |
| Registry Key Name | Software\Policies\Microsoft\Windows\System\Power |
| Registry Value Name | PromptPasswordOnResume |
| ADMX File Name | Power.admx |
<!-- PW_PromptPasswordOnResume-AdmxBacked-End -->

<!-- PW_PromptPasswordOnResume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PW_PromptPasswordOnResume-Examples-End -->

<!-- PW_PromptPasswordOnResume-End -->

<!-- ReserveBatteryNotificationLevel-Begin -->
## ReserveBatteryNotificationLevel

<!-- ReserveBatteryNotificationLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ReserveBatteryNotificationLevel-Applicability-End -->

<!-- ReserveBatteryNotificationLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Power/ReserveBatteryNotificationLevel
```
<!-- ReserveBatteryNotificationLevel-OmaUri-End -->

<!-- ReserveBatteryNotificationLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the percentage of battery capacity remaining that triggers the reserve power mode.

- If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the reserve power notification.

- If you disable or don't configure this policy setting, users can see and change this setting.
<!-- ReserveBatteryNotificationLevel-Description-End -->

<!-- ReserveBatteryNotificationLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ReserveBatteryNotificationLevel-Editable-End -->

<!-- ReserveBatteryNotificationLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ReserveBatteryNotificationLevel-DFProperties-End -->

<!-- ReserveBatteryNotificationLevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ReserveBatteryNotificationLevel |
| Friendly Name | Reserve battery notification level |
| Location | Computer Configuration |
| Path | System > Power Management > Notification Settings |
| Registry Key Name | Software\Policies\Microsoft\Power\PowerSettings\F3C5027D-CD16-4930-AA6B-90DB844A8F00 |
| ADMX File Name | Power.admx |
<!-- ReserveBatteryNotificationLevel-AdmxBacked-End -->

<!-- ReserveBatteryNotificationLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ReserveBatteryNotificationLevel-Examples-End -->

<!-- ReserveBatteryNotificationLevel-End -->

<!-- ADMX_Power-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Power-CspMoreInfo-End -->

<!-- ADMX_Power-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
