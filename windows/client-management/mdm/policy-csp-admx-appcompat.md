---
title: ADMX_AppCompat Policy CSP
description: Learn more about the ADMX_AppCompat Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_AppCompat-Begin -->
# Policy CSP - ADMX_AppCompat

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_AppCompat-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppCompat-Editable-End -->

<!-- AppCompatPrevent16BitMach-Begin -->
## AppCompatPrevent16BitMach

<!-- AppCompatPrevent16BitMach-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatPrevent16BitMach-Applicability-End -->

<!-- AppCompatPrevent16BitMach-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatPrevent16BitMach
```
<!-- AppCompatPrevent16BitMach-OmaUri-End -->

<!-- AppCompatPrevent16BitMach-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether to prevent the MS-DOS subsystem (ntvdm.exe) from running on this computer. This setting affects the launching of 16-bit applications in the operating system.

You can use this setting to turn off the MS-DOS subsystem, which will reduce resource usage and prevent users from running 16-bit applications. To run any 16-bit application or any application with 16-bit components, ntvdm.exe must be allowed to run. The MS-DOS subsystem starts when the first 16-bit application is launched. While the MS-DOS subsystem is running, any subsequent 16-bit applications launch faster, but overall resource usage on the system is increased.

If the status is set to Enabled, the MS-DOS subsystem is prevented from running, which then prevents any 16-bit applications from running. In addition, any 32-bit applications with 16-bit installers or other 16-bit components can't run.

If the status is set to Disabled, the MS-DOS subsystem runs for all users on this computer.

If the status is set to Not Configured, the OS falls back on a local policy set by the registry DWORD value HKLM\System\CurrentControlSet\Control\WOW\DisallowedPolicyDefault. If that value is non-0, this prevents all 16-bit applications from running. If that value is 0, 16-bit applications are allowed to run. If that value is also not present, on Windows 10 and above the OS will launch the 16-bit application support control panel to allow an elevated administrator to make the decision; on windows 7 and downlevel, the OS will allow 16-bit applications to run.

> [!NOTE]
> This setting appears in only Computer Configuration.
<!-- AppCompatPrevent16BitMach-Description-End -->

<!-- AppCompatPrevent16BitMach-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatPrevent16BitMach-Editable-End -->

<!-- AppCompatPrevent16BitMach-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatPrevent16BitMach-DFProperties-End -->

<!-- AppCompatPrevent16BitMach-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatPrevent16BitMach |
| Friendly Name | Prevent access to 16-bit applications |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | VDMDisallowed |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatPrevent16BitMach-AdmxBacked-End -->

<!-- AppCompatPrevent16BitMach-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatPrevent16BitMach-Examples-End -->

<!-- AppCompatPrevent16BitMach-End -->

<!-- AppCompatRemoveProgramCompatPropPage-Begin -->
## AppCompatRemoveProgramCompatPropPage

<!-- AppCompatRemoveProgramCompatPropPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatRemoveProgramCompatPropPage-Applicability-End -->

<!-- AppCompatRemoveProgramCompatPropPage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatRemoveProgramCompatPropPage
```
<!-- AppCompatRemoveProgramCompatPropPage-OmaUri-End -->

<!-- AppCompatRemoveProgramCompatPropPage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the visibility of the Program Compatibility property page shell extension. This shell extension is visible on the property context-menu of any program shortcut or executable file.

The compatibility property page displays a list of options that can be selected and applied to the application to resolve the most common issues affecting legacy applications. Enabling this policy setting removes the property page from the context-menus, but doesn't affect previous compatibility settings applied to application using this interface.
<!-- AppCompatRemoveProgramCompatPropPage-Description-End -->

<!-- AppCompatRemoveProgramCompatPropPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatRemoveProgramCompatPropPage-Editable-End -->

<!-- AppCompatRemoveProgramCompatPropPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatRemoveProgramCompatPropPage-DFProperties-End -->

<!-- AppCompatRemoveProgramCompatPropPage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatRemoveProgramCompatPropPage |
| Friendly Name | Remove Program Compatibility Property Page |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisablePropPage |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatRemoveProgramCompatPropPage-AdmxBacked-End -->

<!-- AppCompatRemoveProgramCompatPropPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatRemoveProgramCompatPropPage-Examples-End -->

<!-- AppCompatRemoveProgramCompatPropPage-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-Begin -->
## AppCompatTurnOffApplicationImpactTelemetry

<!-- AppCompatTurnOffApplicationImpactTelemetry-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffApplicationImpactTelemetry-Applicability-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffApplicationImpactTelemetry
```
<!-- AppCompatTurnOffApplicationImpactTelemetry-OmaUri-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-Description-Begin -->
<!-- Description-Source-ADMX -->
The policy controls the state of the Application Telemetry engine in the system.

Application Telemetry is a mechanism that tracks anonymous usage of specific Windows system components by applications.

Turning Application Telemetry off by selecting "enable" will stop the collection of usage data.

If the customer Experience Improvement program is turned off, Application Telemetry will be turned off regardless of how this policy is set.

Disabling telemetry will take effect on any newly launched applications. To ensure that telemetry collection has stopped for all applications, please reboot your machine.
<!-- AppCompatTurnOffApplicationImpactTelemetry-Description-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffApplicationImpactTelemetry-Editable-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffApplicationImpactTelemetry-DFProperties-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffApplicationImpactTelemetry |
| Friendly Name | Turn off Application Telemetry |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | AITEnable |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffApplicationImpactTelemetry-AdmxBacked-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffApplicationImpactTelemetry-Examples-End -->

<!-- AppCompatTurnOffApplicationImpactTelemetry-End -->

<!-- AppCompatTurnOffEngine-Begin -->
## AppCompatTurnOffEngine

<!-- AppCompatTurnOffEngine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffEngine-Applicability-End -->

<!-- AppCompatTurnOffEngine-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffEngine
```
<!-- AppCompatTurnOffEngine-OmaUri-End -->

<!-- AppCompatTurnOffEngine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the state of the application compatibility engine in the system.

The engine is part of the loader and looks through a compatibility database every time an application is started on the system. If a match for the application is found it provides either run-time solutions or compatibility fixes, or displays an Application Help message if the application has a know problem.

Turning off the application compatibility engine will boost system performance. However, this will degrade the compatibility of many popular legacy applications, and won't block known incompatible applications from installing. (For Instance: This may result in a blue screen if an old anti-virus application is installed).

The Windows Resource Protection and User Account Control features of Windows use the application compatibility engine to provide mitigations for application problems. If the engine is turned off, these mitigations won't be applied to applications and their installers and these applications may fail to install or run properly.

This option is useful to server administrators who require faster performance and are aware of the compatibility of the applications they're using. It's particularly useful for a web server where applications may be launched several hundred times a second, and the performance of the loader is essential.

> [!NOTE]
> Many system processes cache the value of this setting for performance reasons. If you make changes to this setting, please reboot to ensure that your system accurately reflects those changes.
<!-- AppCompatTurnOffEngine-Description-End -->

<!-- AppCompatTurnOffEngine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffEngine-Editable-End -->

<!-- AppCompatTurnOffEngine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffEngine-DFProperties-End -->

<!-- AppCompatTurnOffEngine-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffEngine |
| Friendly Name | Turn off Application Compatibility Engine |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableEngine |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffEngine-AdmxBacked-End -->

<!-- AppCompatTurnOffEngine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffEngine-Examples-End -->

<!-- AppCompatTurnOffEngine-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Begin -->
## AppCompatTurnOffProgramCompatibilityAssistant_1

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Applicability-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_1
```
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-OmaUri-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting exists only for backward compatibility, and isn't valid for this version of Windows. To configure the Program Compatibility Assistant, use the 'Turn off Program Compatibility Assistant' setting under Computer Configuration\Administrative Templates\Windows Components\Application Compatibility.
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Description-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Editable-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-DFProperties-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffProgramCompatibilityAssistant_1 |
| Friendly Name | Turn off Program Compatibility Assistant |
| Location | User Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisablePCA |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-AdmxBacked-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-Examples-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_1-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Begin -->
## AppCompatTurnOffProgramCompatibilityAssistant_2

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Applicability-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffProgramCompatibilityAssistant_2
```
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-OmaUri-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the state of the Program Compatibility Assistant (PCA).

The PCA monitors applications run by the user. When a potential compatibility issue with an application is detected, the PCA will prompt the user with recommended solutions. To configure the diagnostic settings for the PCA, go to System->Troubleshooting and Diagnostics->Application Compatibility Diagnostics.

- If you enable this policy setting, the PCA will be turned off. The user won't be presented with solutions to known compatibility issues when running applications. Turning off the PCA can be useful for system administrators who require better performance and are already aware of application compatibility issues.

- If you disable or don't configure this policy setting, the PCA will be turned on. To configure the diagnostic settings for the PCA, go to System->Troubleshooting and Diagnostics->Application Compatibility Diagnostics.

> [!NOTE]
> The Diagnostic Policy Service (DPS) and Program Compatibility Assistant Service must be running for the PCA to run. These services can be configured by using the Services snap-in to the Microsoft Management Console.
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Description-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Editable-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-DFProperties-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffProgramCompatibilityAssistant_2 |
| Friendly Name | Turn off Program Compatibility Assistant |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisablePCA |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-AdmxBacked-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-Examples-End -->

<!-- AppCompatTurnOffProgramCompatibilityAssistant_2-End -->

<!-- AppCompatTurnOffProgramInventory-Begin -->
## AppCompatTurnOffProgramInventory

<!-- AppCompatTurnOffProgramInventory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffProgramInventory-Applicability-End -->

<!-- AppCompatTurnOffProgramInventory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffProgramInventory
```
<!-- AppCompatTurnOffProgramInventory-OmaUri-End -->

<!-- AppCompatTurnOffProgramInventory-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the state of the Inventory Collector.

The Inventory Collector inventories applications, files, devices, and drivers on the system and sends the information to Microsoft. This information is used to help diagnose compatibility problems.

- If you enable this policy setting, the Inventory Collector will be turned off and data won't be sent to Microsoft. Collection of installation data through the Program Compatibility Assistant is also disabled.

- If you disable or don't configure this policy setting, the Inventory Collector will be turned on.

> [!NOTE]
> This policy setting has no effect if the Customer Experience Improvement Program is turned off. The Inventory Collector will be off.
<!-- AppCompatTurnOffProgramInventory-Description-End -->

<!-- AppCompatTurnOffProgramInventory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffProgramInventory-Editable-End -->

<!-- AppCompatTurnOffProgramInventory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffProgramInventory-DFProperties-End -->

<!-- AppCompatTurnOffProgramInventory-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffProgramInventory |
| Friendly Name | Turn off Inventory Collector |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableInventory |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffProgramInventory-AdmxBacked-End -->

<!-- AppCompatTurnOffProgramInventory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffProgramInventory-Examples-End -->

<!-- AppCompatTurnOffProgramInventory-End -->

<!-- AppCompatTurnOffSwitchBack-Begin -->
## AppCompatTurnOffSwitchBack

<!-- AppCompatTurnOffSwitchBack-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffSwitchBack-Applicability-End -->

<!-- AppCompatTurnOffSwitchBack-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffSwitchBack
```
<!-- AppCompatTurnOffSwitchBack-OmaUri-End -->

<!-- AppCompatTurnOffSwitchBack-Description-Begin -->
<!-- Description-Source-ADMX -->
The policy controls the state of the Switchback compatibility engine in the system.

Switchback is a mechanism that provides generic compatibility mitigations to older applications by providing older behavior to old applications and new behavior to new applications.

Switchback is on by default.

- If you enable this policy setting, Switchback will be turned off. Turning Switchback off may degrade the compatibility of older applications. This option is useful for server administrators who require performance and are aware of compatibility of the applications they're using.

- If you disable or don't configure this policy setting, the Switchback will be turned on.

Please reboot the system after changing the setting to ensure that your system accurately reflects those changes.
<!-- AppCompatTurnOffSwitchBack-Description-End -->

<!-- AppCompatTurnOffSwitchBack-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffSwitchBack-Editable-End -->

<!-- AppCompatTurnOffSwitchBack-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffSwitchBack-DFProperties-End -->

<!-- AppCompatTurnOffSwitchBack-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffSwitchBack |
| Friendly Name | Turn off SwitchBack Compatibility Engine |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | SbEnable |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffSwitchBack-AdmxBacked-End -->

<!-- AppCompatTurnOffSwitchBack-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffSwitchBack-Examples-End -->

<!-- AppCompatTurnOffSwitchBack-End -->

<!-- AppCompatTurnOffUserActionRecord-Begin -->
## AppCompatTurnOffUserActionRecord

<!-- AppCompatTurnOffUserActionRecord-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AppCompatTurnOffUserActionRecord-Applicability-End -->

<!-- AppCompatTurnOffUserActionRecord-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppCompat/AppCompatTurnOffUserActionRecord
```
<!-- AppCompatTurnOffUserActionRecord-OmaUri-End -->

<!-- AppCompatTurnOffUserActionRecord-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the state of Steps Recorder.

Steps Recorder keeps a record of steps taken by the user. The data generated by Steps Recorder can be used in feedback systems such as Windows Error Reporting to help developers understand and fix problems. The data includes user actions such as keyboard input and mouse input, user interface data, and screen shots. Steps Recorder includes an option to turn on and off data collection.

- If you enable this policy setting, Steps Recorder will be disabled.

- If you disable or don't configure this policy setting, Steps Recorder will be enabled.
<!-- AppCompatTurnOffUserActionRecord-Description-End -->

<!-- AppCompatTurnOffUserActionRecord-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppCompatTurnOffUserActionRecord-Editable-End -->

<!-- AppCompatTurnOffUserActionRecord-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AppCompatTurnOffUserActionRecord-DFProperties-End -->

<!-- AppCompatTurnOffUserActionRecord-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AppCompatTurnOffUserActionRecord |
| Friendly Name | Turn off Steps Recorder |
| Location | Computer Configuration |
| Path | Windows Components > Application Compatibility |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableUAR |
| ADMX File Name | AppCompat.admx |
<!-- AppCompatTurnOffUserActionRecord-AdmxBacked-End -->

<!-- AppCompatTurnOffUserActionRecord-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AppCompatTurnOffUserActionRecord-Examples-End -->

<!-- AppCompatTurnOffUserActionRecord-End -->

<!-- ADMX_AppCompat-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppCompat-CspMoreInfo-End -->

<!-- ADMX_AppCompat-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
