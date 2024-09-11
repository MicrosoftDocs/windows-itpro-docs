---
title: ADMX_MicrosoftDefenderAntivirus Policy CSP
description: Learn more about the ADMX_MicrosoftDefenderAntivirus Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_MicrosoftDefenderAntivirus-Begin -->
# Policy CSP - ADMX_MicrosoftDefenderAntivirus

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_MicrosoftDefenderAntivirus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MicrosoftDefenderAntivirus-Editable-End -->

<!-- AllowFastServiceStartup-Begin -->
## AllowFastServiceStartup

<!-- AllowFastServiceStartup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowFastServiceStartup-Applicability-End -->

<!-- AllowFastServiceStartup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/AllowFastServiceStartup
```
<!-- AllowFastServiceStartup-OmaUri-End -->

<!-- AllowFastServiceStartup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the load priority for the antimalware service. Increasing the load priority will allow for faster service startup, but may impact performance.

- If you enable or don't configure this setting, the antimalware service will load as a normal priority task.

- If you disable this setting, the antimalware service will load as a low priority task.
<!-- AllowFastServiceStartup-Description-End -->

<!-- AllowFastServiceStartup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFastServiceStartup-Editable-End -->

<!-- AllowFastServiceStartup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowFastServiceStartup-DFProperties-End -->

<!-- AllowFastServiceStartup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowFastServiceStartup |
| Friendly Name | Allow antimalware service to startup with normal priority |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| Registry Value Name | AllowFastServiceStartup |
| ADMX File Name | WindowsDefender.admx |
<!-- AllowFastServiceStartup-AdmxBacked-End -->

<!-- AllowFastServiceStartup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFastServiceStartup-Examples-End -->

<!-- AllowFastServiceStartup-End -->

<!-- DisableAntiSpywareDefender-Begin -->
## DisableAntiSpywareDefender

<!-- DisableAntiSpywareDefender-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAntiSpywareDefender-Applicability-End -->

<!-- DisableAntiSpywareDefender-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/DisableAntiSpywareDefender
```
<!-- DisableAntiSpywareDefender-OmaUri-End -->

<!-- DisableAntiSpywareDefender-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Microsoft Defender Antivirus.

- If you enable this policy setting, Microsoft Defender Antivirus doesn't run, and won't scan computers for malware or other potentially unwanted software.

- If you disable this policy setting, Microsoft Defender Antivirus will run regardless of any other installed antivirus product.

- If you don't configure this policy setting, Windows will internally manage Microsoft Defender Antivirus. If you install another antivirus program, Windows automatically disables Microsoft Defender Antivirus. Otherwise, Microsoft Defender Antivirus will scan your computers for malware and other potentially unwanted software.

Enabling or disabling this policy may lead to unexpected or unsupported behavior. It's recommended that you leave this policy setting unconfigured.
<!-- DisableAntiSpywareDefender-Description-End -->

<!-- DisableAntiSpywareDefender-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- DisableAntiSpywareDefender-Editable-End -->

<!-- DisableAntiSpywareDefender-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAntiSpywareDefender-DFProperties-End -->

<!-- DisableAntiSpywareDefender-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAntiSpywareDefender |
| Friendly Name | Turn off Microsoft Defender Antivirus |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| Registry Value Name | DisableAntiSpyware |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableAntiSpywareDefender-AdmxBacked-End -->

<!-- DisableAntiSpywareDefender-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAntiSpywareDefender-Examples-End -->

<!-- DisableAntiSpywareDefender-End -->

<!-- DisableAutoExclusions-Begin -->
## DisableAutoExclusions

<!-- DisableAutoExclusions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAutoExclusions-Applicability-End -->

<!-- DisableAutoExclusions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/DisableAutoExclusions
```
<!-- DisableAutoExclusions-OmaUri-End -->

<!-- DisableAutoExclusions-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows an administrator to specify if Automatic Exclusions feature for Server SKUs should be turned off.

Disabled (Default):

Microsoft Defender will exclude pre-defined list of paths from the scan to improve performance.

Enabled:

Microsoft Defender won't exclude pre-defined list of paths from scans. This can impact machine performance in some scenarios.

Not configured:

Same as Disabled.
<!-- DisableAutoExclusions-Description-End -->

<!-- DisableAutoExclusions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAutoExclusions-Editable-End -->

<!-- DisableAutoExclusions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAutoExclusions-DFProperties-End -->

<!-- DisableAutoExclusions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAutoExclusions |
| Friendly Name | Turn off Auto Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| Registry Value Name | DisableAutoExclusions |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableAutoExclusions-AdmxBacked-End -->

<!-- DisableAutoExclusions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAutoExclusions-Examples-End -->

<!-- DisableAutoExclusions-End -->

<!-- DisableBlockAtFirstSeen-Begin -->
## DisableBlockAtFirstSeen

<!-- DisableBlockAtFirstSeen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableBlockAtFirstSeen-Applicability-End -->

<!-- DisableBlockAtFirstSeen-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/DisableBlockAtFirstSeen
```
<!-- DisableBlockAtFirstSeen-OmaUri-End -->

<!-- DisableBlockAtFirstSeen-Description-Begin -->
<!-- Description-Source-ADMX -->
This feature ensures the device checks in real time with the Microsoft Active Protection Service (MAPS) before allowing certain content to be run or accessed. If this feature is disabled, the check won't occur, which will lower the protection state of the device.

Enabled - The Block at First Sight setting is turned on.

Disabled - The Block at First Sight setting is turned off.

This feature requires these Group Policy settings to be set as follows:

MAPS -> The "Join Microsoft MAPS" must be enabled or the "Block at First Sight" feature won't function.

MAPS -> The "Send file samples when further analysis is required" should be set to 1 (Send safe samples) or 3 (Send all samples). Setting to 0 (Always Prompt) will lower the protection state of the device. Setting to 2 (Never send) means the "Block at First Sight" feature won't function.

Real-time Protection -> The "Scan all downloaded files and attachments" policy must be enabled or the "Block at First Sight" feature won't function.

Real-time Protection -> Don't enable the "Turn off real-time protection" policy or the "Block at First Sight" feature won't function.
<!-- DisableBlockAtFirstSeen-Description-End -->

<!-- DisableBlockAtFirstSeen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- DisableBlockAtFirstSeen-Editable-End -->

<!-- DisableBlockAtFirstSeen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBlockAtFirstSeen-DFProperties-End -->

<!-- DisableBlockAtFirstSeen-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBlockAtFirstSeen |
| Friendly Name | Configure the 'Block at First Sight' feature |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MAPS |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Spynet |
| Registry Value Name | DisableBlockAtFirstSeen |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableBlockAtFirstSeen-AdmxBacked-End -->

<!-- DisableBlockAtFirstSeen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBlockAtFirstSeen-Examples-End -->

<!-- DisableBlockAtFirstSeen-End -->

<!-- DisableLocalAdminMerge-Begin -->
## DisableLocalAdminMerge

<!-- DisableLocalAdminMerge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocalAdminMerge-Applicability-End -->

<!-- DisableLocalAdminMerge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/DisableLocalAdminMerge
```
<!-- DisableLocalAdminMerge-OmaUri-End -->

<!-- DisableLocalAdminMerge-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether or not complex list settings configured by a local administrator are merged with Group Policy settings. This setting applies to lists such as threats and Exclusions.

- If you disable or don't configure this setting, unique items defined in Group Policy and in preference settings configured by the local administrator will be merged into the resulting effective policy. In the case of conflicts, Group policy Settings will override preference settings.

- If you enable this setting, only items defined by Group Policy will be used in the resulting effective policy. Group Policy settings will override preference settings configured by the local administrator.
<!-- DisableLocalAdminMerge-Description-End -->

<!-- DisableLocalAdminMerge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocalAdminMerge-Editable-End -->

<!-- DisableLocalAdminMerge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocalAdminMerge-DFProperties-End -->

<!-- DisableLocalAdminMerge-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocalAdminMerge |
| Friendly Name | Configure local administrator merge behavior for lists |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| Registry Value Name | DisableLocalAdminMerge |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableLocalAdminMerge-AdmxBacked-End -->

<!-- DisableLocalAdminMerge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocalAdminMerge-Examples-End -->

<!-- DisableLocalAdminMerge-End -->

<!-- DisableRealtimeMonitoring-Begin -->
## DisableRealtimeMonitoring

<!-- DisableRealtimeMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRealtimeMonitoring-Applicability-End -->

<!-- DisableRealtimeMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/DisableRealtimeMonitoring
```
<!-- DisableRealtimeMonitoring-OmaUri-End -->

<!-- DisableRealtimeMonitoring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy turns off real-time protection in Microsoft Defender Antivirus.

Real-time protection consists of always-on scanning with file and process behavior monitoring and heuristics. When real-time protection is on, Microsoft Defender Antivirus detects malware and potentially unwanted software that attempts to install itself or run on your device, and prompts you to take action on malware detections.

- If you enable this policy setting, real-time protection is turned off.

- If you either disable or don't configure this policy setting, real-time protection is turned on.
<!-- DisableRealtimeMonitoring-Description-End -->

<!-- DisableRealtimeMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- DisableRealtimeMonitoring-Editable-End -->

<!-- DisableRealtimeMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRealtimeMonitoring-DFProperties-End -->

<!-- DisableRealtimeMonitoring-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRealtimeMonitoring |
| Friendly Name | Turn off real-time protection |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableRealtimeMonitoring |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableRealtimeMonitoring-AdmxBacked-End -->

<!-- DisableRealtimeMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRealtimeMonitoring-Examples-End -->

<!-- DisableRealtimeMonitoring-End -->

<!-- DisableRoutinelyTakingAction-Begin -->
## DisableRoutinelyTakingAction

<!-- DisableRoutinelyTakingAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRoutinelyTakingAction-Applicability-End -->

<!-- DisableRoutinelyTakingAction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/DisableRoutinelyTakingAction
```
<!-- DisableRoutinelyTakingAction-OmaUri-End -->

<!-- DisableRoutinelyTakingAction-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether Microsoft Defender Antivirus automatically takes action on all detected threats. The action to be taken on a particular threat is determined by the combination of the policy-defined action, user-defined action, and the signature-defined action.

- If you enable this policy setting, Microsoft Defender Antivirus doesn't automatically take action on the detected threats, but prompts users to choose from the actions available for each threat.

- If you disable or don't configure this policy setting, Microsoft Defender Antivirus automatically takes action on all detected threats after a nonconfigurable delay of approximately five seconds.
<!-- DisableRoutinelyTakingAction-Description-End -->

<!-- DisableRoutinelyTakingAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- DisableRoutinelyTakingAction-Editable-End -->

<!-- DisableRoutinelyTakingAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRoutinelyTakingAction-DFProperties-End -->

<!-- DisableRoutinelyTakingAction-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRoutinelyTakingAction |
| Friendly Name | Turn off routine remediation |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| Registry Value Name | DisableRoutinelyTakingAction |
| ADMX File Name | WindowsDefender.admx |
<!-- DisableRoutinelyTakingAction-AdmxBacked-End -->

<!-- DisableRoutinelyTakingAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRoutinelyTakingAction-Examples-End -->

<!-- DisableRoutinelyTakingAction-End -->

<!-- Exclusions_Extensions-Begin -->
## Exclusions_Extensions

<!-- Exclusions_Extensions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Exclusions_Extensions-Applicability-End -->

<!-- Exclusions_Extensions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Exclusions_Extensions
```
<!-- Exclusions_Extensions-OmaUri-End -->

<!-- Exclusions_Extensions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you specify a list of file types that should be excluded from scheduled, custom, and real-time scanning. File types should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the file type extension (such as "obj" or "lib"). The value isn't used and it's recommended that this be set to 0.
<!-- Exclusions_Extensions-Description-End -->

<!-- Exclusions_Extensions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To prevent unauthorized changes to exclusions, apply tamper protection. Tamper protection for exclusions only works when [certain conditions][TAMPER-2] are met.
<!-- Exclusions_Extensions-Editable-End -->

<!-- Exclusions_Extensions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Exclusions_Extensions-DFProperties-End -->

<!-- Exclusions_Extensions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Exclusions_Extensions |
| Friendly Name | Extension Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| Registry Value Name | Exclusions_Extensions |
| ADMX File Name | WindowsDefender.admx |
<!-- Exclusions_Extensions-AdmxBacked-End -->

<!-- Exclusions_Extensions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Exclusions_Extensions-Examples-End -->

<!-- Exclusions_Extensions-End -->

<!-- Exclusions_Paths-Begin -->
## Exclusions_Paths

<!-- Exclusions_Paths-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Exclusions_Paths-Applicability-End -->

<!-- Exclusions_Paths-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Exclusions_Paths
```
<!-- Exclusions_Paths-OmaUri-End -->

<!-- Exclusions_Paths-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to disable scheduled and real-time scanning for files under the paths specified or for the fully qualified resources specified. Paths should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a path or a fully qualified resource name. As an example, a path might be defined as: "c:\Windows" to exclude all files in this directory. A fully qualified resource name might be defined as: "C:\Windows\App.exe". The value isn't used and it's recommended that this be set to 0.
<!-- Exclusions_Paths-Description-End -->

<!-- Exclusions_Paths-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To prevent unauthorized changes to exclusions, apply tamper protection. Tamper protection for exclusions only works when [certain conditions][TAMPER-2] are met.
<!-- Exclusions_Paths-Editable-End -->

<!-- Exclusions_Paths-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Exclusions_Paths-DFProperties-End -->

<!-- Exclusions_Paths-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Exclusions_Paths |
| Friendly Name | Path Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| Registry Value Name | Exclusions_Paths |
| ADMX File Name | WindowsDefender.admx |
<!-- Exclusions_Paths-AdmxBacked-End -->

<!-- Exclusions_Paths-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Exclusions_Paths-Examples-End -->

<!-- Exclusions_Paths-End -->

<!-- Exclusions_Processes-Begin -->
## Exclusions_Processes

<!-- Exclusions_Processes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Exclusions_Processes-Applicability-End -->

<!-- Exclusions_Processes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Exclusions_Processes
```
<!-- Exclusions_Processes-OmaUri-End -->

<!-- Exclusions_Processes-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to disable real-time scanning for any file opened by any of the specified processes. This policy doesn't apply to scheduled scans. The process itself won't be excluded. To exclude the process, use the Path exclusion. Processes should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the path to the process image. Note that only executables can be excluded. For example, a process might be defined as: "c:\windows\app.exe". The value isn't used and it's recommended that this be set to 0.
<!-- Exclusions_Processes-Description-End -->

<!-- Exclusions_Processes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To prevent unauthorized changes to exclusions, apply tamper protection. Tamper protection for exclusions only works when [certain conditions][TAMPER-2] are met.
<!-- Exclusions_Processes-Editable-End -->

<!-- Exclusions_Processes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Exclusions_Processes-DFProperties-End -->

<!-- Exclusions_Processes-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Exclusions_Processes |
| Friendly Name | Process Exclusions |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Exclusions |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Exclusions |
| Registry Value Name | Exclusions_Processes |
| ADMX File Name | WindowsDefender.admx |
<!-- Exclusions_Processes-AdmxBacked-End -->

<!-- Exclusions_Processes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Exclusions_Processes-Examples-End -->

<!-- Exclusions_Processes-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-Begin -->
## ExploitGuard_ASR_ASROnlyExclusions

<!-- ExploitGuard_ASR_ASROnlyExclusions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ExploitGuard_ASR_ASROnlyExclusions-Applicability-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_ASROnlyExclusions
```
<!-- ExploitGuard_ASR_ASROnlyExclusions-OmaUri-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-Description-Begin -->
<!-- Description-Source-ADMX -->
Exclude files and paths from Attack Surface Reduction (ASR) rules.

Enabled:

Specify the folders or files and resources that should be excluded from ASR rules in the Options section.

Enter each rule on a new line as a name-value pair:

- Name column: Enter a folder path or a fully qualified resource name. For example, "C:\Windows" will exclude all files in that directory. "C:\Windows\App.exe" will exclude only that specific file in that specific folder
- Value column: Enter "0" for each item.

Disabled:

No exclusions will be applied to the ASR rules.

Not configured:

Same as Disabled.

You can configure ASR rules in the Configure Attack Surface Reduction rules GP setting.
<!-- ExploitGuard_ASR_ASROnlyExclusions-Description-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExploitGuard_ASR_ASROnlyExclusions-Editable-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ExploitGuard_ASR_ASROnlyExclusions-DFProperties-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ASR_ASROnlyExclusions |
| Friendly Name | Exclude files and paths from Attack Surface Reduction Rules |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Attack Surface Reduction |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR |
| Registry Value Name | ExploitGuard_ASR_ASROnlyExclusions |
| ADMX File Name | WindowsDefender.admx |
<!-- ExploitGuard_ASR_ASROnlyExclusions-AdmxBacked-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExploitGuard_ASR_ASROnlyExclusions-Examples-End -->

<!-- ExploitGuard_ASR_ASROnlyExclusions-End -->

<!-- ExploitGuard_ASR_Rules-Begin -->
## ExploitGuard_ASR_Rules

<!-- ExploitGuard_ASR_Rules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ExploitGuard_ASR_Rules-Applicability-End -->

<!-- ExploitGuard_ASR_Rules-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ASR_Rules
```
<!-- ExploitGuard_ASR_Rules-OmaUri-End -->

<!-- ExploitGuard_ASR_Rules-Description-Begin -->
<!-- Description-Source-ADMX -->
Set the state for each Attack Surface Reduction (ASR) rule.

After enabling this setting, you can set each rule to the following in the Options section:

- Block: the rule will be applied
- Audit Mode: if the rule would normally cause an event, then it will be recorded (although the rule won't actually be applied)
- Off: the rule won't be applied
- Not Configured: the rule is enabled with default values
- Warn: the rule will be applied and the end-user will have the option to bypass the block.

Unless the ASR rule is disabled, a subsample of audit events are collected for ASR rules with the value of not configured.

Enabled:

Specify the state for each ASR rule under the Options section for this setting.

Enter each rule on a new line as a name-value pair:

- Name column: Enter a valid ASR rule ID
- Value column: Enter the status ID that relates to state you want to specify for the associated rule.

The following status IDs are permitted under the value column:

- 1 (Block)
- 0 (Off)
- 2 (Audit)
- 5 (Not Configured)
- 6 (Warn)

Example:

xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
0
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
1
xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
2

Disabled:

No ASR rules will be configured.

Not configured:

Same as Disabled.

You can exclude folders or files in the "Exclude files and paths from Attack Surface Reduction Rules" GP setting.
<!-- ExploitGuard_ASR_Rules-Description-End -->

<!-- ExploitGuard_ASR_Rules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExploitGuard_ASR_Rules-Editable-End -->

<!-- ExploitGuard_ASR_Rules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ExploitGuard_ASR_Rules-DFProperties-End -->

<!-- ExploitGuard_ASR_Rules-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ASR_Rules |
| Friendly Name | Configure Attack Surface Reduction rules |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Attack Surface Reduction |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\ASR |
| Registry Value Name | ExploitGuard_ASR_Rules |
| ADMX File Name | WindowsDefender.admx |
<!-- ExploitGuard_ASR_Rules-AdmxBacked-End -->

<!-- ExploitGuard_ASR_Rules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExploitGuard_ASR_Rules-Examples-End -->

<!-- ExploitGuard_ASR_Rules-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Begin -->
## ExploitGuard_ControlledFolderAccess_AllowedApplications

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Applicability-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_AllowedApplications
```
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-OmaUri-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Description-Begin -->
<!-- Description-Source-ADMX -->
Add additional applications that should be considered "trusted" by controlled folder access.

These applications are allowed to modify or delete files in controlled folder access folders.

Microsoft Defender Antivirus automatically determines which applications should be trusted. You can configure this setting to add additional applications.

Enabled:

Specify additional allowed applications in the Options section.

Disabled:

No additional applications will be added to the trusted list.

Not configured:

Same as Disabled.

You can enable controlled folder access in the Configure controlled folder access GP setting.

Default system folders are automatically guarded, but you can add folders in the configure protected folders GP setting.
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Description-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Editable-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-DFProperties-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ControlledFolderAccess_AllowedApplications |
| Friendly Name | Configure allowed applications |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Controlled Folder Access |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access |
| Registry Value Name | ExploitGuard_ControlledFolderAccess_AllowedApplications |
| ADMX File Name | WindowsDefender.admx |
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-AdmxBacked-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-Examples-End -->

<!-- ExploitGuard_ControlledFolderAccess_AllowedApplications-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Begin -->
## ExploitGuard_ControlledFolderAccess_ProtectedFolders

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Applicability-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ExploitGuard_ControlledFolderAccess_ProtectedFolders
```
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-OmaUri-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Specify additional folders that should be guarded by the Controlled folder access feature.

Files in these folders can't be modified or deleted by untrusted applications.

Default system folders are automatically protected. You can configure this setting to add additional folders.

The list of default system folders that are protected is shown in Windows Security.

Enabled:

Specify additional folders that should be protected in the Options section.

Disabled:

No additional folders will be protected.

Not configured:

Same as Disabled.

You can enable controlled folder access in the Configure controlled folder access GP setting.

Microsoft Defender Antivirus automatically determines which applications can be trusted. You can add additional trusted applications in the Configure allowed applications GP setting.
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Description-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Editable-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-DFProperties-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ExploitGuard_ControlledFolderAccess_ProtectedFolders |
| Friendly Name | Configure protected folders |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Controlled Folder Access |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access |
| Registry Value Name | ExploitGuard_ControlledFolderAccess_ProtectedFolders |
| ADMX File Name | WindowsDefender.admx |
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-AdmxBacked-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-Examples-End -->

<!-- ExploitGuard_ControlledFolderAccess_ProtectedFolders-End -->

<!-- MpEngine_EnableFileHashComputation-Begin -->
## MpEngine_EnableFileHashComputation

<!-- MpEngine_EnableFileHashComputation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MpEngine_EnableFileHashComputation-Applicability-End -->

<!-- MpEngine_EnableFileHashComputation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/MpEngine_EnableFileHashComputation
```
<!-- MpEngine_EnableFileHashComputation-OmaUri-End -->

<!-- MpEngine_EnableFileHashComputation-Description-Begin -->
<!-- Description-Source-ADMX -->
Enable or disable file hash computation feature.

Enabled:

When this feature is enabled Microsoft Defender will compute hash value for files it scans.

Disabled:

File hash value isn't computed.

Not configured:

Same as Disabled.
<!-- MpEngine_EnableFileHashComputation-Description-End -->

<!-- MpEngine_EnableFileHashComputation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MpEngine_EnableFileHashComputation-Editable-End -->

<!-- MpEngine_EnableFileHashComputation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MpEngine_EnableFileHashComputation-DFProperties-End -->

<!-- MpEngine_EnableFileHashComputation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MpEngine_EnableFileHashComputation |
| Friendly Name | Enable file hash computation feature |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MpEngine |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\MpEngine |
| Registry Value Name | EnableFileHashComputation |
| ADMX File Name | WindowsDefender.admx |
<!-- MpEngine_EnableFileHashComputation-AdmxBacked-End -->

<!-- MpEngine_EnableFileHashComputation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MpEngine_EnableFileHashComputation-Examples-End -->

<!-- MpEngine_EnableFileHashComputation-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Begin -->
## Nis_Consumers_IPS_DisableSignatureRetirement

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Applicability-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_DisableSignatureRetirement
```
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-OmaUri-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure definition retirement for network protection against exploits of known vulnerabilities. Definition retirement checks to see if a computer has the required security updates necessary to protect it against a particular vulnerability. If the system isn't vulnerable to the exploit detected by a definition, then that definition is "retired". If all security intelligence for a given protocal are retired then that protocol is no longer parsed. Enabling this feature helps to improve performance. On a computer that's up-to-date with all the latest security updates, network protection will have no impact on network performance.

- If you enable or don't configure this setting, definition retirement will be enabled.

- If you disable this setting, definition retirement will be disabled.
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Description-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Editable-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-DFProperties-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Nis_Consumers_IPS_DisableSignatureRetirement |
| Friendly Name | Turn on definition retirement |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Network Inspection System |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\NIS\Consumers\IPS |
| Registry Value Name | DisableSignatureRetirement |
| ADMX File Name | WindowsDefender.admx |
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-AdmxBacked-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Nis_Consumers_IPS_DisableSignatureRetirement-Examples-End -->

<!-- Nis_Consumers_IPS_DisableSignatureRetirement-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Begin -->
## Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Applicability-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid
```
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-OmaUri-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines additional definition sets to enable for network traffic inspection. Definition set GUIDs should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of a definition set GUID. As an example, the definition set GUID to enable test security intelligence is defined as: "{b54b6ac9-a737-498e-9120-6616ad3bf590}". The value isn't used and it's recommended that this be set to 0.
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Description-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Editable-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-DFProperties-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid |
| Friendly Name | Specify additional definition sets for network traffic inspection |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Network Inspection System |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\NIS\Consumers\IPS\SKU Differentiation |
| Registry Value Name | Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid |
| ADMX File Name | WindowsDefender.admx |
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-AdmxBacked-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-Examples-End -->

<!-- Nis_Consumers_IPS_sku_differentiation_Signature_Set_Guid-End -->

<!-- Nis_DisableProtocolRecognition-Begin -->
## Nis_DisableProtocolRecognition

<!-- Nis_DisableProtocolRecognition-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Nis_DisableProtocolRecognition-Applicability-End -->

<!-- Nis_DisableProtocolRecognition-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Nis_DisableProtocolRecognition
```
<!-- Nis_DisableProtocolRecognition-OmaUri-End -->

<!-- Nis_DisableProtocolRecognition-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure protocol recognition for network protection against exploits of known vulnerabilities.

- If you enable or don't configure this setting, protocol recognition will be enabled.

- If you disable this setting, protocol recognition will be disabled.
<!-- Nis_DisableProtocolRecognition-Description-End -->

<!-- Nis_DisableProtocolRecognition-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Nis_DisableProtocolRecognition-Editable-End -->

<!-- Nis_DisableProtocolRecognition-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Nis_DisableProtocolRecognition-DFProperties-End -->

<!-- Nis_DisableProtocolRecognition-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Nis_DisableProtocolRecognition |
| Friendly Name | Turn on protocol recognition |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Network Inspection System |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\NIS |
| Registry Value Name | DisableProtocolRecognition |
| ADMX File Name | WindowsDefender.admx |
<!-- Nis_DisableProtocolRecognition-AdmxBacked-End -->

<!-- Nis_DisableProtocolRecognition-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Nis_DisableProtocolRecognition-Examples-End -->

<!-- Nis_DisableProtocolRecognition-End -->

<!-- ProxyBypass-Begin -->
## ProxyBypass

<!-- ProxyBypass-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProxyBypass-Applicability-End -->

<!-- ProxyBypass-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ProxyBypass
```
<!-- ProxyBypass-OmaUri-End -->

<!-- ProxyBypass-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy, if defined, will prevent antimalware from using the configured proxy server when communicating with the specified IP addresses. The address value should be entered as a valid URL.

- If you enable this setting, the proxy server will be bypassed for the specified addresses.

- If you disable or don't configure this setting, the proxy server won't be bypassed for the specified addresses.
<!-- ProxyBypass-Description-End -->

<!-- ProxyBypass-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProxyBypass-Editable-End -->

<!-- ProxyBypass-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProxyBypass-DFProperties-End -->

<!-- ProxyBypass-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProxyBypass |
| Friendly Name | Define addresses to bypass proxy server |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| ADMX File Name | WindowsDefender.admx |
<!-- ProxyBypass-AdmxBacked-End -->

<!-- ProxyBypass-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProxyBypass-Examples-End -->

<!-- ProxyBypass-End -->

<!-- ProxyPacUrl-Begin -->
## ProxyPacUrl

<!-- ProxyPacUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProxyPacUrl-Applicability-End -->

<!-- ProxyPacUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ProxyPacUrl
```
<!-- ProxyPacUrl-OmaUri-End -->

<!-- ProxyPacUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the URL of a proxy .pac file that should be used when the client attempts to connect the network for security intelligence updates and MAPS reporting. If the proxy auto-config fails or if there is no proxy auto-config specified, the client will fall back to the alternative options (in order):

1. Proxy server (if specified)
1. Proxy .pac URL (if specified)

1. None
1. Internet Explorer proxy settings.

1. Autodetect.

- If you enable this setting, the proxy setting will be set to use the specified proxy .pac according to the order specified above.

- If you disable or don't configure this setting, the proxy will skip over this fallback step according to the order specified above.
<!-- ProxyPacUrl-Description-End -->

<!-- ProxyPacUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProxyPacUrl-Editable-End -->

<!-- ProxyPacUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProxyPacUrl-DFProperties-End -->

<!-- ProxyPacUrl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProxyPacUrl |
| Friendly Name | Define proxy auto-config (.pac) for connecting to the network |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| ADMX File Name | WindowsDefender.admx |
<!-- ProxyPacUrl-AdmxBacked-End -->

<!-- ProxyPacUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProxyPacUrl-Examples-End -->

<!-- ProxyPacUrl-End -->

<!-- ProxyServer-Begin -->
## ProxyServer

<!-- ProxyServer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProxyServer-Applicability-End -->

<!-- ProxyServer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ProxyServer
```
<!-- ProxyServer-OmaUri-End -->

<!-- ProxyServer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the named proxy that should be used when the client attempts to connect to the network for security intelligence updates and MAPS reporting. If the named proxy fails or if there is no proxy specified, the client will fall back to the alternative options (in order):

1. Proxy server (if specified)
1. Proxy .pac URL (if specified)

1. None
1. Internet Explorer proxy settings.

1. Autodetect.

- If you enable this setting, the proxy will be set to the specified URL according to the order specified above. The URL should be proceeded with either https:// or https://.

- If you disable or don't configure this setting, the proxy will skip over this fallback step according to the order specified above.
<!-- ProxyServer-Description-End -->

<!-- ProxyServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProxyServer-Editable-End -->

<!-- ProxyServer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProxyServer-DFProperties-End -->

<!-- ProxyServer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProxyServer |
| Friendly Name | Define proxy server for connecting to the network |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| ADMX File Name | WindowsDefender.admx |
<!-- ProxyServer-AdmxBacked-End -->

<!-- ProxyServer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProxyServer-Examples-End -->

<!-- ProxyServer-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Begin -->
## Quarantine_LocalSettingOverridePurgeItemsAfterDelay

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Applicability-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Quarantine_LocalSettingOverridePurgeItemsAfterDelay
```
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-OmaUri-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of the number of days items should be kept in the Quarantine folder before being removed. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Description-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Editable-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-DFProperties-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Quarantine_LocalSettingOverridePurgeItemsAfterDelay |
| Friendly Name | Configure local setting override for the removal of items from Quarantine folder |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Quarantine |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Quarantine |
| Registry Value Name | LocalSettingOverridePurgeItemsAfterDelay |
| ADMX File Name | WindowsDefender.admx |
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-AdmxBacked-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-Examples-End -->

<!-- Quarantine_LocalSettingOverridePurgeItemsAfterDelay-End -->

<!-- Quarantine_PurgeItemsAfterDelay-Begin -->
## Quarantine_PurgeItemsAfterDelay

<!-- Quarantine_PurgeItemsAfterDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Quarantine_PurgeItemsAfterDelay-Applicability-End -->

<!-- Quarantine_PurgeItemsAfterDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Quarantine_PurgeItemsAfterDelay
```
<!-- Quarantine_PurgeItemsAfterDelay-OmaUri-End -->

<!-- Quarantine_PurgeItemsAfterDelay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the number of days items should be kept in the Quarantine folder before being removed.

- If you enable this setting, items will be removed from the Quarantine folder after the number of days specified.

- If you disable or don't configure this setting, items will be kept in the quarantine folder indefinitely and won't be automatically removed.
<!-- Quarantine_PurgeItemsAfterDelay-Description-End -->

<!-- Quarantine_PurgeItemsAfterDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Quarantine_PurgeItemsAfterDelay-Editable-End -->

<!-- Quarantine_PurgeItemsAfterDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Quarantine_PurgeItemsAfterDelay-DFProperties-End -->

<!-- Quarantine_PurgeItemsAfterDelay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Quarantine_PurgeItemsAfterDelay |
| Friendly Name | Configure removal of items from Quarantine folder |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Quarantine |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Quarantine |
| Registry Value Name | PurgeItemsAfterDelay |
| ADMX File Name | WindowsDefender.admx |
<!-- Quarantine_PurgeItemsAfterDelay-AdmxBacked-End -->

<!-- Quarantine_PurgeItemsAfterDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Quarantine_PurgeItemsAfterDelay-Examples-End -->

<!-- Quarantine_PurgeItemsAfterDelay-End -->

<!-- RandomizeScheduleTaskTimes-Begin -->
## RandomizeScheduleTaskTimes

<!-- RandomizeScheduleTaskTimes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RandomizeScheduleTaskTimes-Applicability-End -->

<!-- RandomizeScheduleTaskTimes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RandomizeScheduleTaskTimes
```
<!-- RandomizeScheduleTaskTimes-OmaUri-End -->

<!-- RandomizeScheduleTaskTimes-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the scheduled scan, and the scheduled security intelligence update, start time window in hours.

- If you disable or don't configure this setting, scheduled tasks will begin at a random time within 4 hours after the time specified in Task Scheduler.

- If you enable this setting, you can widen, or narrow, this randomization period. Specify a randomization window of between 1 and 23 hours.
<!-- RandomizeScheduleTaskTimes-Description-End -->

<!-- RandomizeScheduleTaskTimes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RandomizeScheduleTaskTimes-Editable-End -->

<!-- RandomizeScheduleTaskTimes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RandomizeScheduleTaskTimes-DFProperties-End -->

<!-- RandomizeScheduleTaskTimes-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RandomizeScheduleTaskTimes |
| Friendly Name | Randomize scheduled task times |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| Registry Value Name | RandomizeScheduleTaskTimes |
| ADMX File Name | WindowsDefender.admx |
<!-- RandomizeScheduleTaskTimes-AdmxBacked-End -->

<!-- RandomizeScheduleTaskTimes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RandomizeScheduleTaskTimes-Examples-End -->

<!-- RandomizeScheduleTaskTimes-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-Begin -->
## RealtimeProtection_DisableBehaviorMonitoring

<!-- RealtimeProtection_DisableBehaviorMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_DisableBehaviorMonitoring-Applicability-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableBehaviorMonitoring
```
<!-- RealtimeProtection_DisableBehaviorMonitoring-OmaUri-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure behavior monitoring.

- If you enable or don't configure this setting, behavior monitoring will be enabled.

- If you disable this setting, behavior monitoring will be disabled.
<!-- RealtimeProtection_DisableBehaviorMonitoring-Description-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- RealtimeProtection_DisableBehaviorMonitoring-Editable-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_DisableBehaviorMonitoring-DFProperties-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableBehaviorMonitoring |
| Friendly Name | Turn on behavior monitoring |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableBehaviorMonitoring |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_DisableBehaviorMonitoring-AdmxBacked-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_DisableBehaviorMonitoring-Examples-End -->

<!-- RealtimeProtection_DisableBehaviorMonitoring-End -->

<!-- RealtimeProtection_DisableIOAVProtection-Begin -->
## RealtimeProtection_DisableIOAVProtection

<!-- RealtimeProtection_DisableIOAVProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_DisableIOAVProtection-Applicability-End -->

<!-- RealtimeProtection_DisableIOAVProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableIOAVProtection
```
<!-- RealtimeProtection_DisableIOAVProtection-OmaUri-End -->

<!-- RealtimeProtection_DisableIOAVProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning for all downloaded files and attachments.

- If you enable or don't configure this setting, scanning for all downloaded files and attachments will be enabled.

- If you disable this setting, scanning for all downloaded files and attachments will be disabled.
<!-- RealtimeProtection_DisableIOAVProtection-Description-End -->

<!-- RealtimeProtection_DisableIOAVProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- RealtimeProtection_DisableIOAVProtection-Editable-End -->

<!-- RealtimeProtection_DisableIOAVProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_DisableIOAVProtection-DFProperties-End -->

<!-- RealtimeProtection_DisableIOAVProtection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableIOAVProtection |
| Friendly Name | Scan all downloaded files and attachments |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableIOAVProtection |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_DisableIOAVProtection-AdmxBacked-End -->

<!-- RealtimeProtection_DisableIOAVProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_DisableIOAVProtection-Examples-End -->

<!-- RealtimeProtection_DisableIOAVProtection-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-Begin -->
## RealtimeProtection_DisableOnAccessProtection

<!-- RealtimeProtection_DisableOnAccessProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_DisableOnAccessProtection-Applicability-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableOnAccessProtection
```
<!-- RealtimeProtection_DisableOnAccessProtection-OmaUri-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure monitoring for file and program activity.

- If you enable or don't configure this setting, monitoring for file and program activity will be enabled.

- If you disable this setting, monitoring for file and program activity will be disabled.
<!-- RealtimeProtection_DisableOnAccessProtection-Description-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- RealtimeProtection_DisableOnAccessProtection-Editable-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_DisableOnAccessProtection-DFProperties-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableOnAccessProtection |
| Friendly Name | Monitor file and program activity on your computer |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableOnAccessProtection |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_DisableOnAccessProtection-AdmxBacked-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_DisableOnAccessProtection-Examples-End -->

<!-- RealtimeProtection_DisableOnAccessProtection-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-Begin -->
## RealtimeProtection_DisableRawWriteNotification

<!-- RealtimeProtection_DisableRawWriteNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_DisableRawWriteNotification-Applicability-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableRawWriteNotification
```
<!-- RealtimeProtection_DisableRawWriteNotification-OmaUri-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether raw volume write notifications are sent to behavior monitoring.

- If you enable or don't configure this setting, raw write notifications will be enabled.

- If you disable this setting, raw write notifications be disabled.
<!-- RealtimeProtection_DisableRawWriteNotification-Description-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_DisableRawWriteNotification-Editable-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_DisableRawWriteNotification-DFProperties-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableRawWriteNotification |
| Friendly Name | Turn on raw volume write notifications |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableRawWriteNotification |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_DisableRawWriteNotification-AdmxBacked-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_DisableRawWriteNotification-Examples-End -->

<!-- RealtimeProtection_DisableRawWriteNotification-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Begin -->
## RealtimeProtection_DisableScanOnRealtimeEnable

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Applicability-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_DisableScanOnRealtimeEnable
```
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-OmaUri-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure process scanning when real-time protection is turned on. This helps to catch malware which could start when real-time protection is turned off.

- If you enable or don't configure this setting, a process scan will be initiated when real-time protection is turned on.

- If you disable this setting, a process scan won't be initiated when real-time protection is turned on.
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Description-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Editable-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-DFProperties-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_DisableScanOnRealtimeEnable |
| Friendly Name | Turn on process scanning whenever real-time protection is enabled |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | DisableScanOnRealtimeEnable |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-AdmxBacked-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_DisableScanOnRealtimeEnable-Examples-End -->

<!-- RealtimeProtection_DisableScanOnRealtimeEnable-End -->

<!-- RealtimeProtection_IOAVMaxSize-Begin -->
## RealtimeProtection_IOAVMaxSize

<!-- RealtimeProtection_IOAVMaxSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_IOAVMaxSize-Applicability-End -->

<!-- RealtimeProtection_IOAVMaxSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_IOAVMaxSize
```
<!-- RealtimeProtection_IOAVMaxSize-OmaUri-End -->

<!-- RealtimeProtection_IOAVMaxSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the maximum size (in kilobytes) of downloaded files and attachments that will be scanned.

- If you enable this setting, downloaded files and attachments smaller than the size specified will be scanned.

- If you disable or don't configure this setting, a default size will be applied.
<!-- RealtimeProtection_IOAVMaxSize-Description-End -->

<!-- RealtimeProtection_IOAVMaxSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_IOAVMaxSize-Editable-End -->

<!-- RealtimeProtection_IOAVMaxSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_IOAVMaxSize-DFProperties-End -->

<!-- RealtimeProtection_IOAVMaxSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_IOAVMaxSize |
| Friendly Name | Define the maximum size of downloaded files and attachments to be scanned |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | IOAVMaxSize |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_IOAVMaxSize-AdmxBacked-End -->

<!-- RealtimeProtection_IOAVMaxSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_IOAVMaxSize-Examples-End -->

<!-- RealtimeProtection_IOAVMaxSize-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Begin -->
## RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Applicability-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring
```
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-OmaUri-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of behavior monitoring. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Description-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Editable-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-DFProperties-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring |
| Friendly Name | Configure local setting override for turn on behavior monitoring |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | LocalSettingOverrideDisableBehaviorMonitoring |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-AdmxBacked-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-Examples-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableBehaviorMonitoring-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Begin -->
## RealtimeProtection_LocalSettingOverrideDisableIOAVProtection

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Applicability-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableIOAVProtection
```
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-OmaUri-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of scanning for all downloaded files and attachments. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Description-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Editable-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-DFProperties-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_LocalSettingOverrideDisableIOAVProtection |
| Friendly Name | Configure local setting override for scanning all downloaded files and attachments |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | LocalSettingOverrideDisableIOAVProtection |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-AdmxBacked-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-Examples-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableIOAVProtection-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Begin -->
## RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Applicability-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection
```
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-OmaUri-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of monitoring for file and program activity on your computer. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Description-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Editable-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-DFProperties-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection |
| Friendly Name | Configure local setting override for monitoring file and program activity on your computer |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | LocalSettingOverrideDisableOnAccessProtection |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-AdmxBacked-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-Examples-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Begin -->
## RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Applicability-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring
```
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-OmaUri-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration to turn on real-time protection. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Description-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Editable-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-DFProperties-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring |
| Friendly Name | Configure local setting override to turn on real-time protection |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | LocalSettingOverrideDisableRealtimeMonitoring |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-AdmxBacked-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-Examples-End -->

<!-- RealtimeProtection_LocalSettingOverrideDisableRealtimeMonitoring-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Begin -->
## RealtimeProtection_LocalSettingOverrideRealtimeScanDirection

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Applicability-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/RealtimeProtection_LocalSettingOverrideRealtimeScanDirection
```
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-OmaUri-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of monitoring for incoming and outgoing file activity. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Description-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Editable-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-DFProperties-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RealtimeProtection_LocalSettingOverrideRealtimeScanDirection |
| Friendly Name | Configure local setting override for monitoring for incoming and outgoing file activity |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Real-time Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Real-Time Protection |
| Registry Value Name | LocalSettingOverrideRealtimeScanDirection |
| ADMX File Name | WindowsDefender.admx |
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-AdmxBacked-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-Examples-End -->

<!-- RealtimeProtection_LocalSettingOverrideRealtimeScanDirection-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Begin -->
## Remediation_LocalSettingOverrideScan_ScheduleTime

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Applicability-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Remediation_LocalSettingOverrideScan_ScheduleTime
```
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-OmaUri-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of the time to run a scheduled full scan to complete remediation. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Description-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Editable-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-DFProperties-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Remediation_LocalSettingOverrideScan_ScheduleTime |
| Friendly Name | Configure local setting override for the time of day to run a scheduled full scan to complete remediation |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Remediation |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Remediation |
| Registry Value Name | LocalSettingOverrideScan_ScheduleTime |
| ADMX File Name | WindowsDefender.admx |
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-AdmxBacked-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-Examples-End -->

<!-- Remediation_LocalSettingOverrideScan_ScheduleTime-End -->

<!-- Remediation_Scan_ScheduleDay-Begin -->
## Remediation_Scan_ScheduleDay

<!-- Remediation_Scan_ScheduleDay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Remediation_Scan_ScheduleDay-Applicability-End -->

<!-- Remediation_Scan_ScheduleDay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleDay
```
<!-- Remediation_Scan_ScheduleDay-OmaUri-End -->

<!-- Remediation_Scan_ScheduleDay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the day of the week on which to perform a scheduled full scan in order to complete remediation. The scan can also be configured to run every day or to never run at all.

This setting can be configured with the following ordinal number values:

(0x0) Every Day (0x1) Sunday (0x2) Monday (0x3) Tuesday (0x4) Wednesday (0x5) Thursday (0x6) Friday (0x7) Saturday (0x8) Never (default)

- If you enable this setting, a scheduled full scan to complete remediation will run at the frequency specified.

- If you disable or don't configure this setting, a scheduled full scan to complete remediation will run at a default frequency.
<!-- Remediation_Scan_ScheduleDay-Description-End -->

<!-- Remediation_Scan_ScheduleDay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Remediation_Scan_ScheduleDay-Editable-End -->

<!-- Remediation_Scan_ScheduleDay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Remediation_Scan_ScheduleDay-DFProperties-End -->

<!-- Remediation_Scan_ScheduleDay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Remediation_Scan_ScheduleDay |
| Friendly Name | Specify the day of the week to run a scheduled full scan to complete remediation |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Remediation |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Remediation |
| Registry Value Name | Scan_ScheduleDay |
| ADMX File Name | WindowsDefender.admx |
<!-- Remediation_Scan_ScheduleDay-AdmxBacked-End -->

<!-- Remediation_Scan_ScheduleDay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Remediation_Scan_ScheduleDay-Examples-End -->

<!-- Remediation_Scan_ScheduleDay-End -->

<!-- Remediation_Scan_ScheduleTime-Begin -->
## Remediation_Scan_ScheduleTime

<!-- Remediation_Scan_ScheduleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Remediation_Scan_ScheduleTime-Applicability-End -->

<!-- Remediation_Scan_ScheduleTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Remediation_Scan_ScheduleTime
```
<!-- Remediation_Scan_ScheduleTime-OmaUri-End -->

<!-- Remediation_Scan_ScheduleTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the time of day at which to perform a scheduled full scan in order to complete remediation. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. The schedule is based on local time on the computer where the scan is executing.

- If you enable this setting, a scheduled full scan to complete remediation will run at the time of day specified.

- If you disable or don't configure this setting, a scheduled full scan to complete remediation will run at a default time.
<!-- Remediation_Scan_ScheduleTime-Description-End -->

<!-- Remediation_Scan_ScheduleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Remediation_Scan_ScheduleTime-Editable-End -->

<!-- Remediation_Scan_ScheduleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Remediation_Scan_ScheduleTime-DFProperties-End -->

<!-- Remediation_Scan_ScheduleTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Remediation_Scan_ScheduleTime |
| Friendly Name | Specify the time of day to run a scheduled full scan to complete remediation |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Remediation |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Remediation |
| Registry Value Name | Scan_ScheduleTime |
| ADMX File Name | WindowsDefender.admx |
<!-- Remediation_Scan_ScheduleTime-AdmxBacked-End -->

<!-- Remediation_Scan_ScheduleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Remediation_Scan_ScheduleTime-Examples-End -->

<!-- Remediation_Scan_ScheduleTime-End -->

<!-- Reporting_AdditionalActionTimeout-Begin -->
## Reporting_AdditionalActionTimeout

<!-- Reporting_AdditionalActionTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_AdditionalActionTimeout-Applicability-End -->

<!-- Reporting_AdditionalActionTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_AdditionalActionTimeout
```
<!-- Reporting_AdditionalActionTimeout-OmaUri-End -->

<!-- Reporting_AdditionalActionTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the time in minutes before a detection in the "additional action" state moves to the "cleared" state.
<!-- Reporting_AdditionalActionTimeout-Description-End -->

<!-- Reporting_AdditionalActionTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_AdditionalActionTimeout-Editable-End -->

<!-- Reporting_AdditionalActionTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_AdditionalActionTimeout-DFProperties-End -->

<!-- Reporting_AdditionalActionTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_AdditionalActionTimeout |
| Friendly Name | Configure time out for detections requiring additional action |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | AdditionalActionTimeout |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_AdditionalActionTimeout-AdmxBacked-End -->

<!-- Reporting_AdditionalActionTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_AdditionalActionTimeout-Examples-End -->

<!-- Reporting_AdditionalActionTimeout-End -->

<!-- Reporting_CriticalFailureTimeout-Begin -->
## Reporting_CriticalFailureTimeout

<!-- Reporting_CriticalFailureTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_CriticalFailureTimeout-Applicability-End -->

<!-- Reporting_CriticalFailureTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_CriticalFailureTimeout
```
<!-- Reporting_CriticalFailureTimeout-OmaUri-End -->

<!-- Reporting_CriticalFailureTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the time in minutes before a detection in the "critically failed" state to moves to either the "additional action" state or the "cleared" state.
<!-- Reporting_CriticalFailureTimeout-Description-End -->

<!-- Reporting_CriticalFailureTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_CriticalFailureTimeout-Editable-End -->

<!-- Reporting_CriticalFailureTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_CriticalFailureTimeout-DFProperties-End -->

<!-- Reporting_CriticalFailureTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_CriticalFailureTimeout |
| Friendly Name | Configure time out for detections in critically failed state |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | CriticalFailureTimeout |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_CriticalFailureTimeout-AdmxBacked-End -->

<!-- Reporting_CriticalFailureTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_CriticalFailureTimeout-Examples-End -->

<!-- Reporting_CriticalFailureTimeout-End -->

<!-- Reporting_DisableEnhancedNotifications-Begin -->
## Reporting_DisableEnhancedNotifications

<!-- Reporting_DisableEnhancedNotifications-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_DisableEnhancedNotifications-Applicability-End -->

<!-- Reporting_DisableEnhancedNotifications-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_DisableEnhancedNotifications
```
<!-- Reporting_DisableEnhancedNotifications-OmaUri-End -->

<!-- Reporting_DisableEnhancedNotifications-Description-Begin -->
<!-- Description-Source-ADMX -->
Use this policy setting to specify if you want Microsoft Defender Antivirus enhanced notifications to display on clients.

- If you disable or don't configure this setting, Microsoft Defender Antivirus enhanced notifications will display on clients.

- If you enable this setting, Microsoft Defender Antivirus enhanced notifications won't display on clients.
<!-- Reporting_DisableEnhancedNotifications-Description-End -->

<!-- Reporting_DisableEnhancedNotifications-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- Reporting_DisableEnhancedNotifications-Editable-End -->

<!-- Reporting_DisableEnhancedNotifications-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_DisableEnhancedNotifications-DFProperties-End -->

<!-- Reporting_DisableEnhancedNotifications-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_DisableEnhancedNotifications |
| Friendly Name | Turn off enhanced notifications |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | DisableEnhancedNotifications |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_DisableEnhancedNotifications-AdmxBacked-End -->

<!-- Reporting_DisableEnhancedNotifications-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_DisableEnhancedNotifications-Examples-End -->

<!-- Reporting_DisableEnhancedNotifications-End -->

<!-- Reporting_DisablegenericrePorts-Begin -->
## Reporting_DisablegenericrePorts

<!-- Reporting_DisablegenericrePorts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_DisablegenericrePorts-Applicability-End -->

<!-- Reporting_DisablegenericrePorts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_DisablegenericrePorts
```
<!-- Reporting_DisablegenericrePorts-OmaUri-End -->

<!-- Reporting_DisablegenericrePorts-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not Watson events are sent.

- If you enable or don't configure this setting, Watson events will be sent.

- If you disable this setting, Watson events won't be sent.
<!-- Reporting_DisablegenericrePorts-Description-End -->

<!-- Reporting_DisablegenericrePorts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_DisablegenericrePorts-Editable-End -->

<!-- Reporting_DisablegenericrePorts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_DisablegenericrePorts-DFProperties-End -->

<!-- Reporting_DisablegenericrePorts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_DisablegenericrePorts |
| Friendly Name | Configure Watson events |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | DisableGenericRePorts |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_DisablegenericrePorts-AdmxBacked-End -->

<!-- Reporting_DisablegenericrePorts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_DisablegenericrePorts-Examples-End -->

<!-- Reporting_DisablegenericrePorts-End -->

<!-- Reporting_NonCriticalTimeout-Begin -->
## Reporting_NonCriticalTimeout

<!-- Reporting_NonCriticalTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_NonCriticalTimeout-Applicability-End -->

<!-- Reporting_NonCriticalTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_NonCriticalTimeout
```
<!-- Reporting_NonCriticalTimeout-OmaUri-End -->

<!-- Reporting_NonCriticalTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the time in minutes before a detection in the "non-critically failed" state moves to the "cleared" state.
<!-- Reporting_NonCriticalTimeout-Description-End -->

<!-- Reporting_NonCriticalTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_NonCriticalTimeout-Editable-End -->

<!-- Reporting_NonCriticalTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_NonCriticalTimeout-DFProperties-End -->

<!-- Reporting_NonCriticalTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_NonCriticalTimeout |
| Friendly Name | Configure time out for detections in non-critical failed state |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | NonCriticalTimeout |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_NonCriticalTimeout-AdmxBacked-End -->

<!-- Reporting_NonCriticalTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_NonCriticalTimeout-Examples-End -->

<!-- Reporting_NonCriticalTimeout-End -->

<!-- Reporting_RecentlyCleanedTimeout-Begin -->
## Reporting_RecentlyCleanedTimeout

<!-- Reporting_RecentlyCleanedTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_RecentlyCleanedTimeout-Applicability-End -->

<!-- Reporting_RecentlyCleanedTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_RecentlyCleanedTimeout
```
<!-- Reporting_RecentlyCleanedTimeout-OmaUri-End -->

<!-- Reporting_RecentlyCleanedTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the time in minutes before a detection in the "completed" state moves to the "cleared" state.
<!-- Reporting_RecentlyCleanedTimeout-Description-End -->

<!-- Reporting_RecentlyCleanedTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_RecentlyCleanedTimeout-Editable-End -->

<!-- Reporting_RecentlyCleanedTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_RecentlyCleanedTimeout-DFProperties-End -->

<!-- Reporting_RecentlyCleanedTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_RecentlyCleanedTimeout |
| Friendly Name | Configure time out for detections in recently remediated state |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | RecentlyCleanedTimeout |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_RecentlyCleanedTimeout-AdmxBacked-End -->

<!-- Reporting_RecentlyCleanedTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_RecentlyCleanedTimeout-Examples-End -->

<!-- Reporting_RecentlyCleanedTimeout-End -->

<!-- Reporting_WppTracingComponents-Begin -->
## Reporting_WppTracingComponents

<!-- Reporting_WppTracingComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_WppTracingComponents-Applicability-End -->

<!-- Reporting_WppTracingComponents-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingComponents
```
<!-- Reporting_WppTracingComponents-OmaUri-End -->

<!-- Reporting_WppTracingComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy configures Windows software trace preprocessor (WPP Software Tracing) components.
<!-- Reporting_WppTracingComponents-Description-End -->

<!-- Reporting_WppTracingComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_WppTracingComponents-Editable-End -->

<!-- Reporting_WppTracingComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_WppTracingComponents-DFProperties-End -->

<!-- Reporting_WppTracingComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_WppTracingComponents |
| Friendly Name | Configure Windows software trace preprocessor components |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | WppTracingComponents |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_WppTracingComponents-AdmxBacked-End -->

<!-- Reporting_WppTracingComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_WppTracingComponents-Examples-End -->

<!-- Reporting_WppTracingComponents-End -->

<!-- Reporting_WppTracingLevel-Begin -->
## Reporting_WppTracingLevel

<!-- Reporting_WppTracingLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Reporting_WppTracingLevel-Applicability-End -->

<!-- Reporting_WppTracingLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Reporting_WppTracingLevel
```
<!-- Reporting_WppTracingLevel-OmaUri-End -->

<!-- Reporting_WppTracingLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to configure tracing levels for Windows software trace preprocessor (WPP Software Tracing).

Tracing levels are defined as:

1 - Error
2 - Warning
3 - Info
4 - Debug.
<!-- Reporting_WppTracingLevel-Description-End -->

<!-- Reporting_WppTracingLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Reporting_WppTracingLevel-Editable-End -->

<!-- Reporting_WppTracingLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Reporting_WppTracingLevel-DFProperties-End -->

<!-- Reporting_WppTracingLevel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Reporting_WppTracingLevel |
| Friendly Name | Configure WPP tracing level |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Reporting |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Reporting |
| Registry Value Name | WppTracingLevel |
| ADMX File Name | WindowsDefender.admx |
<!-- Reporting_WppTracingLevel-AdmxBacked-End -->

<!-- Reporting_WppTracingLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Reporting_WppTracingLevel-Examples-End -->

<!-- Reporting_WppTracingLevel-End -->

<!-- Scan_AllowPause-Begin -->
## Scan_AllowPause

<!-- Scan_AllowPause-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_AllowPause-Applicability-End -->

<!-- Scan_AllowPause-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_AllowPause
```
<!-- Scan_AllowPause-OmaUri-End -->

<!-- Scan_AllowPause-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether or not end users can pause a scan in progress.

- If you enable or don't configure this setting, a new context menu will be added to the task tray icon to allow the user to pause a scan.

- If you disable this setting, users won't be able to pause scans.
<!-- Scan_AllowPause-Description-End -->

<!-- Scan_AllowPause-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_AllowPause-Editable-End -->

<!-- Scan_AllowPause-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_AllowPause-DFProperties-End -->

<!-- Scan_AllowPause-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_AllowPause |
| Friendly Name | Allow users to pause scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | AllowPause |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_AllowPause-AdmxBacked-End -->

<!-- Scan_AllowPause-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_AllowPause-Examples-End -->

<!-- Scan_AllowPause-End -->

<!-- Scan_ArchiveMaxDepth-Begin -->
## Scan_ArchiveMaxDepth

<!-- Scan_ArchiveMaxDepth-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_ArchiveMaxDepth-Applicability-End -->

<!-- Scan_ArchiveMaxDepth-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxDepth
```
<!-- Scan_ArchiveMaxDepth-OmaUri-End -->

<!-- Scan_ArchiveMaxDepth-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the maximum directory depth level into which archive files such as . ZIP or . CAB are unpacked during scanning. The default directory depth level is 0.

- If you enable this setting, archive files will be scanned to the directory depth level specified.

- If you disable or don't configure this setting, archive files will be scanned to the default directory depth level.
<!-- Scan_ArchiveMaxDepth-Description-End -->

<!-- Scan_ArchiveMaxDepth-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_ArchiveMaxDepth-Editable-End -->

<!-- Scan_ArchiveMaxDepth-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_ArchiveMaxDepth-DFProperties-End -->

<!-- Scan_ArchiveMaxDepth-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ArchiveMaxDepth |
| Friendly Name | Specify the maximum depth to scan archive files |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | ArchiveMaxDepth |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_ArchiveMaxDepth-AdmxBacked-End -->

<!-- Scan_ArchiveMaxDepth-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_ArchiveMaxDepth-Examples-End -->

<!-- Scan_ArchiveMaxDepth-End -->

<!-- Scan_ArchiveMaxSize-Begin -->
## Scan_ArchiveMaxSize

<!-- Scan_ArchiveMaxSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_ArchiveMaxSize-Applicability-End -->

<!-- Scan_ArchiveMaxSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_ArchiveMaxSize
```
<!-- Scan_ArchiveMaxSize-OmaUri-End -->

<!-- Scan_ArchiveMaxSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the maximum size of archive files such as . ZIP or . CAB that will be scanned. The value represents file size in kilobytes (KB). The default value is 0 and represents no limit to archive size for scanning.

- If you enable this setting, archive files less than or equal to the size specified will be scanned.

- If you disable or don't configure this setting, archive files will be scanned according to the default value.
<!-- Scan_ArchiveMaxSize-Description-End -->

<!-- Scan_ArchiveMaxSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_ArchiveMaxSize-Editable-End -->

<!-- Scan_ArchiveMaxSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_ArchiveMaxSize-DFProperties-End -->

<!-- Scan_ArchiveMaxSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ArchiveMaxSize |
| Friendly Name | Specify the maximum size of archive files to be scanned |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | ArchiveMaxSize |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_ArchiveMaxSize-AdmxBacked-End -->

<!-- Scan_ArchiveMaxSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_ArchiveMaxSize-Examples-End -->

<!-- Scan_ArchiveMaxSize-End -->

<!-- Scan_DisableArchiveScanning-Begin -->
## Scan_DisableArchiveScanning

<!-- Scan_DisableArchiveScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableArchiveScanning-Applicability-End -->

<!-- Scan_DisableArchiveScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableArchiveScanning
```
<!-- Scan_DisableArchiveScanning-OmaUri-End -->

<!-- Scan_DisableArchiveScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scans for malicious software and unwanted software in archive files such as . ZIP or . CAB files.

- If you enable or don't configure this setting, archive files will be scanned.

- If you disable this setting, archive files won't be scanned. However, archives are always scanned during directed scans.
<!-- Scan_DisableArchiveScanning-Description-End -->

<!-- Scan_DisableArchiveScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- Scan_DisableArchiveScanning-Editable-End -->

<!-- Scan_DisableArchiveScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableArchiveScanning-DFProperties-End -->

<!-- Scan_DisableArchiveScanning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableArchiveScanning |
| Friendly Name | Scan archive files |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableArchiveScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableArchiveScanning-AdmxBacked-End -->

<!-- Scan_DisableArchiveScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableArchiveScanning-Examples-End -->

<!-- Scan_DisableArchiveScanning-End -->

<!-- Scan_DisableEmailScanning-Begin -->
## Scan_DisableEmailScanning

<!-- Scan_DisableEmailScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableEmailScanning-Applicability-End -->

<!-- Scan_DisableEmailScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableEmailScanning
```
<!-- Scan_DisableEmailScanning-OmaUri-End -->

<!-- Scan_DisableEmailScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure e-mail scanning. When e-mail scanning is enabled, the engine will parse the mailbox and mail files, according to their specific format, in order to analyze the mail bodies and attachments. Several e-mail formats are currently supported, for example: pst (Outlook), dbx, mbx, mime (Outlook Express), binhex (Mac). Email scanning isn't supported on modern email clients.

- If you enable this setting, e-mail scanning will be enabled.

- If you disable or don't configure this setting, e-mail scanning will be disabled.
<!-- Scan_DisableEmailScanning-Description-End -->

<!-- Scan_DisableEmailScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableEmailScanning-Editable-End -->

<!-- Scan_DisableEmailScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableEmailScanning-DFProperties-End -->

<!-- Scan_DisableEmailScanning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableEmailScanning |
| Friendly Name | Turn on e-mail scanning |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableEmailScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableEmailScanning-AdmxBacked-End -->

<!-- Scan_DisableEmailScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableEmailScanning-Examples-End -->

<!-- Scan_DisableEmailScanning-End -->

<!-- Scan_DisableHeuristics-Begin -->
## Scan_DisableHeuristics

<!-- Scan_DisableHeuristics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableHeuristics-Applicability-End -->

<!-- Scan_DisableHeuristics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableHeuristics
```
<!-- Scan_DisableHeuristics-OmaUri-End -->

<!-- Scan_DisableHeuristics-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure heuristics. Suspicious detections will be suppressed right before reporting to the engine client. Turning off heuristics will reduce the capability to flag new threats. It's recommended that you don't turn off heuristics.

- If you enable or don't configure this setting, heuristics will be enabled.

- If you disable this setting, heuristics will be disabled.
<!-- Scan_DisableHeuristics-Description-End -->

<!-- Scan_DisableHeuristics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableHeuristics-Editable-End -->

<!-- Scan_DisableHeuristics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableHeuristics-DFProperties-End -->

<!-- Scan_DisableHeuristics-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableHeuristics |
| Friendly Name | Turn on heuristics |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableHeuristics |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableHeuristics-AdmxBacked-End -->

<!-- Scan_DisableHeuristics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableHeuristics-Examples-End -->

<!-- Scan_DisableHeuristics-End -->

<!-- Scan_DisablePackedExeScanning-Begin -->
## Scan_DisablePackedExeScanning

<!-- Scan_DisablePackedExeScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisablePackedExeScanning-Applicability-End -->

<!-- Scan_DisablePackedExeScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisablePackedExeScanning
```
<!-- Scan_DisablePackedExeScanning-OmaUri-End -->

<!-- Scan_DisablePackedExeScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning for packed executables. It's recommended that this type of scanning remain enabled.

- If you enable or don't configure this setting, packed executables will be scanned.

- If you disable this setting, packed executables won't be scanned.
<!-- Scan_DisablePackedExeScanning-Description-End -->

<!-- Scan_DisablePackedExeScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisablePackedExeScanning-Editable-End -->

<!-- Scan_DisablePackedExeScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisablePackedExeScanning-DFProperties-End -->

<!-- Scan_DisablePackedExeScanning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisablePackedExeScanning |
| Friendly Name | Scan packed executables |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisablePackedExeScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisablePackedExeScanning-AdmxBacked-End -->

<!-- Scan_DisablePackedExeScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisablePackedExeScanning-Examples-End -->

<!-- Scan_DisablePackedExeScanning-End -->

<!-- Scan_DisableRemovableDriveScanning-Begin -->
## Scan_DisableRemovableDriveScanning

<!-- Scan_DisableRemovableDriveScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableRemovableDriveScanning-Applicability-End -->

<!-- Scan_DisableRemovableDriveScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableRemovableDriveScanning
```
<!-- Scan_DisableRemovableDriveScanning-OmaUri-End -->

<!-- Scan_DisableRemovableDriveScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether or not to scan for malicious software and unwanted software in the contents of removable drives, such as USB flash drives, when running a full scan.

- If you enable this setting, removable drives will be scanned during any type of scan.

- If you disable or don't configure this setting, removable drives won't be scanned during a full scan. Removable drives may still be scanned during quick scan and custom scan.
<!-- Scan_DisableRemovableDriveScanning-Description-End -->

<!-- Scan_DisableRemovableDriveScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableRemovableDriveScanning-Editable-End -->

<!-- Scan_DisableRemovableDriveScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableRemovableDriveScanning-DFProperties-End -->

<!-- Scan_DisableRemovableDriveScanning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableRemovableDriveScanning |
| Friendly Name | Scan removable drives |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableRemovableDriveScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableRemovableDriveScanning-AdmxBacked-End -->

<!-- Scan_DisableRemovableDriveScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableRemovableDriveScanning-Examples-End -->

<!-- Scan_DisableRemovableDriveScanning-End -->

<!-- Scan_DisableReparsePointScanning-Begin -->
## Scan_DisableReparsePointScanning

<!-- Scan_DisableReparsePointScanning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableReparsePointScanning-Applicability-End -->

<!-- Scan_DisableReparsePointScanning-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableReparsePointScanning
```
<!-- Scan_DisableReparsePointScanning-OmaUri-End -->

<!-- Scan_DisableReparsePointScanning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure reparse point scanning. If you allow reparse points to be scanned, there is a possible risk of recursion. However, the engine supports following reparse points to a maximum depth so at worst scanning could be slowed. Reparse point scanning is disabled by default and this is the recommended state for this functionality.

- If you enable this setting, reparse point scanning will be enabled.

- If you disable or don't configure this setting, reparse point scanning will be disabled.
<!-- Scan_DisableReparsePointScanning-Description-End -->

<!-- Scan_DisableReparsePointScanning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableReparsePointScanning-Editable-End -->

<!-- Scan_DisableReparsePointScanning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableReparsePointScanning-DFProperties-End -->

<!-- Scan_DisableReparsePointScanning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableReparsePointScanning |
| Friendly Name | Turn on reparse point scanning |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableReparsePointScanning |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableReparsePointScanning-AdmxBacked-End -->

<!-- Scan_DisableReparsePointScanning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableReparsePointScanning-Examples-End -->

<!-- Scan_DisableReparsePointScanning-End -->

<!-- Scan_DisableRestorePoint-Begin -->
## Scan_DisableRestorePoint

<!-- Scan_DisableRestorePoint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableRestorePoint-Applicability-End -->

<!-- Scan_DisableRestorePoint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableRestorePoint
```
<!-- Scan_DisableRestorePoint-OmaUri-End -->

<!-- Scan_DisableRestorePoint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to create a system restore point on the computer on a daily basis prior to cleaning.

- If you enable this setting, a system restore point will be created.

- If you disable or don't configure this setting, a system restore point won't be created.
<!-- Scan_DisableRestorePoint-Description-End -->

<!-- Scan_DisableRestorePoint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableRestorePoint-Editable-End -->

<!-- Scan_DisableRestorePoint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableRestorePoint-DFProperties-End -->

<!-- Scan_DisableRestorePoint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableRestorePoint |
| Friendly Name | Create a system restore point |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableRestorePoint |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableRestorePoint-AdmxBacked-End -->

<!-- Scan_DisableRestorePoint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableRestorePoint-Examples-End -->

<!-- Scan_DisableRestorePoint-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Begin -->
## Scan_DisableScanningMappedNetworkDrivesForFullScan

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Applicability-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningMappedNetworkDrivesForFullScan
```
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-OmaUri-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning mapped network drives.

- If you enable this setting, mapped network drives will be scanned.

- If you disable or don't configure this setting, mapped network drives won't be scanned.
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Description-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Editable-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-DFProperties-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableScanningMappedNetworkDrivesForFullScan |
| Friendly Name | Run full scan on mapped network drives |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableScanningMappedNetworkDrivesForFullScan |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-AdmxBacked-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-Examples-End -->

<!-- Scan_DisableScanningMappedNetworkDrivesForFullScan-End -->

<!-- Scan_DisableScanningNetworkFiles-Begin -->
## Scan_DisableScanningNetworkFiles

<!-- Scan_DisableScanningNetworkFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_DisableScanningNetworkFiles-Applicability-End -->

<!-- Scan_DisableScanningNetworkFiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_DisableScanningNetworkFiles
```
<!-- Scan_DisableScanningNetworkFiles-OmaUri-End -->

<!-- Scan_DisableScanningNetworkFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scanning for network files. It's recommended that you don't enable this setting.

- If you enable this setting, network files will be scanned.

- If you disable or don't configure this setting, network files won't be scanned.
<!-- Scan_DisableScanningNetworkFiles-Description-End -->

<!-- Scan_DisableScanningNetworkFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_DisableScanningNetworkFiles-Editable-End -->

<!-- Scan_DisableScanningNetworkFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_DisableScanningNetworkFiles-DFProperties-End -->

<!-- Scan_DisableScanningNetworkFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_DisableScanningNetworkFiles |
| Friendly Name | Scan network files |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | DisableScanningNetworkFiles |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_DisableScanningNetworkFiles-AdmxBacked-End -->

<!-- Scan_DisableScanningNetworkFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_DisableScanningNetworkFiles-Examples-End -->

<!-- Scan_DisableScanningNetworkFiles-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Begin -->
## Scan_LocalSettingOverrideAvgCPULoadFactor

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Applicability-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideAvgCPULoadFactor
```
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-OmaUri-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of maximum percentage of CPU utilization during scan. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Description-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Editable-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-DFProperties-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LocalSettingOverrideAvgCPULoadFactor |
| Friendly Name | Configure local setting override for maximum percentage of CPU utilization |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | LocalSettingOverrideAvgCPULoadFactor |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-AdmxBacked-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-Examples-End -->

<!-- Scan_LocalSettingOverrideAvgCPULoadFactor-End -->

<!-- Scan_LocalSettingOverrideScanParameters-Begin -->
## Scan_LocalSettingOverrideScanParameters

<!-- Scan_LocalSettingOverrideScanParameters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_LocalSettingOverrideScanParameters-Applicability-End -->

<!-- Scan_LocalSettingOverrideScanParameters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScanParameters
```
<!-- Scan_LocalSettingOverrideScanParameters-OmaUri-End -->

<!-- Scan_LocalSettingOverrideScanParameters-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of the scan type to use during a scheduled scan. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Scan_LocalSettingOverrideScanParameters-Description-End -->

<!-- Scan_LocalSettingOverrideScanParameters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScanParameters-Editable-End -->

<!-- Scan_LocalSettingOverrideScanParameters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_LocalSettingOverrideScanParameters-DFProperties-End -->

<!-- Scan_LocalSettingOverrideScanParameters-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LocalSettingOverrideScanParameters |
| Friendly Name | Configure local setting override for the scan type to use for a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | LocalSettingOverrideScanParameters |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_LocalSettingOverrideScanParameters-AdmxBacked-End -->

<!-- Scan_LocalSettingOverrideScanParameters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScanParameters-Examples-End -->

<!-- Scan_LocalSettingOverrideScanParameters-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-Begin -->
## Scan_LocalSettingOverrideScheduleDay

<!-- Scan_LocalSettingOverrideScheduleDay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_LocalSettingOverrideScheduleDay-Applicability-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleDay
```
<!-- Scan_LocalSettingOverrideScheduleDay-OmaUri-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of scheduled scan day. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Scan_LocalSettingOverrideScheduleDay-Description-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScheduleDay-Editable-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_LocalSettingOverrideScheduleDay-DFProperties-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LocalSettingOverrideScheduleDay |
| Friendly Name | Configure local setting override for schedule scan day |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | LocalSettingOverrideScheduleDay |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_LocalSettingOverrideScheduleDay-AdmxBacked-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScheduleDay-Examples-End -->

<!-- Scan_LocalSettingOverrideScheduleDay-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Begin -->
## Scan_LocalSettingOverrideScheduleQuickScantime

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Applicability-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleQuickScantime
```
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-OmaUri-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of scheduled quick scan time. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Description-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Editable-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-DFProperties-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LocalSettingOverrideScheduleQuickScantime |
| Friendly Name | Configure local setting override for scheduled quick scan time |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | LocalSettingOverrideScheduleQuickScanTime |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-AdmxBacked-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScheduleQuickScantime-Examples-End -->

<!-- Scan_LocalSettingOverrideScheduleQuickScantime-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-Begin -->
## Scan_LocalSettingOverrideScheduleTime

<!-- Scan_LocalSettingOverrideScheduleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_LocalSettingOverrideScheduleTime-Applicability-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_LocalSettingOverrideScheduleTime
```
<!-- Scan_LocalSettingOverrideScheduleTime-OmaUri-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration of scheduled scan time. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Scan_LocalSettingOverrideScheduleTime-Description-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScheduleTime-Editable-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_LocalSettingOverrideScheduleTime-DFProperties-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LocalSettingOverrideScheduleTime |
| Friendly Name | Configure local setting override for scheduled scan time |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | LocalSettingOverrideScheduleTime |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_LocalSettingOverrideScheduleTime-AdmxBacked-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_LocalSettingOverrideScheduleTime-Examples-End -->

<!-- Scan_LocalSettingOverrideScheduleTime-End -->

<!-- Scan_LowCpuPriority-Begin -->
## Scan_LowCpuPriority

<!-- Scan_LowCpuPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_LowCpuPriority-Applicability-End -->

<!-- Scan_LowCpuPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_LowCpuPriority
```
<!-- Scan_LowCpuPriority-OmaUri-End -->

<!-- Scan_LowCpuPriority-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable or disable low CPU priority for scheduled scans.

- If you enable this setting, low CPU priority will be used during scheduled scans.

- If you disable or don't configure this setting, not changes will be made to CPU priority for scheduled scans.
<!-- Scan_LowCpuPriority-Description-End -->

<!-- Scan_LowCpuPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_LowCpuPriority-Editable-End -->

<!-- Scan_LowCpuPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_LowCpuPriority-DFProperties-End -->

<!-- Scan_LowCpuPriority-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_LowCpuPriority |
| Friendly Name | Configure low CPU priority for scheduled scans |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | LowCpuPriority |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_LowCpuPriority-AdmxBacked-End -->

<!-- Scan_LowCpuPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_LowCpuPriority-Examples-End -->

<!-- Scan_LowCpuPriority-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-Begin -->
## Scan_MissedScheduledScanCountBeforeCatchup

<!-- Scan_MissedScheduledScanCountBeforeCatchup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_MissedScheduledScanCountBeforeCatchup-Applicability-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_MissedScheduledScanCountBeforeCatchup
```
<!-- Scan_MissedScheduledScanCountBeforeCatchup-OmaUri-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the number of consecutive scheduled scans that can be missed after which a catch-up scan will be forced. By default, the value of this setting is 2 consecutive scheduled scans.

- If you enable this setting, a catch-up scan will occur after the specified number consecutive missed scheduled scans.

- If you disable or don't configure this setting, a catch-up scan will occur after the 2 consecutive missed scheduled scans.
<!-- Scan_MissedScheduledScanCountBeforeCatchup-Description-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_MissedScheduledScanCountBeforeCatchup-Editable-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_MissedScheduledScanCountBeforeCatchup-DFProperties-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_MissedScheduledScanCountBeforeCatchup |
| Friendly Name | Define the number of days after which a catch-up scan is forced |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | MissedScheduledScanCountBeforeCatchup |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_MissedScheduledScanCountBeforeCatchup-AdmxBacked-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_MissedScheduledScanCountBeforeCatchup-Examples-End -->

<!-- Scan_MissedScheduledScanCountBeforeCatchup-End -->

<!-- Scan_PurgeItemsAfterDelay-Begin -->
## Scan_PurgeItemsAfterDelay

<!-- Scan_PurgeItemsAfterDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_PurgeItemsAfterDelay-Applicability-End -->

<!-- Scan_PurgeItemsAfterDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_PurgeItemsAfterDelay
```
<!-- Scan_PurgeItemsAfterDelay-OmaUri-End -->

<!-- Scan_PurgeItemsAfterDelay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the number of days items should be kept in the scan history folder before being permanently removed. The value represents the number of days to keep items in the folder. If set to zero, items will be kept forever and won't be automatically removed. By default, the value is set to 30 days.

- If you enable this setting, items will be removed from the scan history folder after the number of days specified.

- If you disable or don't configure this setting, items will be kept in the scan history folder for the default number of days.
<!-- Scan_PurgeItemsAfterDelay-Description-End -->

<!-- Scan_PurgeItemsAfterDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_PurgeItemsAfterDelay-Editable-End -->

<!-- Scan_PurgeItemsAfterDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_PurgeItemsAfterDelay-DFProperties-End -->

<!-- Scan_PurgeItemsAfterDelay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_PurgeItemsAfterDelay |
| Friendly Name | Turn on removal of items from scan history folder |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | PurgeItemsAfterDelay |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_PurgeItemsAfterDelay-AdmxBacked-End -->

<!-- Scan_PurgeItemsAfterDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_PurgeItemsAfterDelay-Examples-End -->

<!-- Scan_PurgeItemsAfterDelay-End -->

<!-- Scan_QuickScanInterval-Begin -->
## Scan_QuickScanInterval

<!-- Scan_QuickScanInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_QuickScanInterval-Applicability-End -->

<!-- Scan_QuickScanInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_QuickScanInterval
```
<!-- Scan_QuickScanInterval-OmaUri-End -->

<!-- Scan_QuickScanInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify an interval at which to perform a quick scan. The time value is represented as the number of hours between quick scans. Valid values range from 1 (every hour) to 24 (once per day). If set to zero, interval quick scans won't occur. By default, this setting is set to 0.

- If you enable this setting, a quick scan will run at the interval specified.

- If you disable or don't configure this setting, quick scan controlled by this config won't be run.
<!-- Scan_QuickScanInterval-Description-End -->

<!-- Scan_QuickScanInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_QuickScanInterval-Editable-End -->

<!-- Scan_QuickScanInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_QuickScanInterval-DFProperties-End -->

<!-- Scan_QuickScanInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_QuickScanInterval |
| Friendly Name | Specify the interval to run quick scans per day |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | QuickScanInterval |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_QuickScanInterval-AdmxBacked-End -->

<!-- Scan_QuickScanInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_QuickScanInterval-Examples-End -->

<!-- Scan_QuickScanInterval-End -->

<!-- Scan_ScanOnlyIfIdle-Begin -->
## Scan_ScanOnlyIfIdle

<!-- Scan_ScanOnlyIfIdle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_ScanOnlyIfIdle-Applicability-End -->

<!-- Scan_ScanOnlyIfIdle-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_ScanOnlyIfIdle
```
<!-- Scan_ScanOnlyIfIdle-OmaUri-End -->

<!-- Scan_ScanOnlyIfIdle-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure scheduled scans to start only when your computer is on but not in use.

- If you enable or don't configure this setting, scheduled scans will only run when the computer is on but not in use.

- If you disable this setting, scheduled scans will run at the scheduled time.
<!-- Scan_ScanOnlyIfIdle-Description-End -->

<!-- Scan_ScanOnlyIfIdle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_ScanOnlyIfIdle-Editable-End -->

<!-- Scan_ScanOnlyIfIdle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_ScanOnlyIfIdle-DFProperties-End -->

<!-- Scan_ScanOnlyIfIdle-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScanOnlyIfIdle |
| Friendly Name | Start the scheduled scan only when computer is on but not in use |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | ScanOnlyIfIdle |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_ScanOnlyIfIdle-AdmxBacked-End -->

<!-- Scan_ScanOnlyIfIdle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_ScanOnlyIfIdle-Examples-End -->

<!-- Scan_ScanOnlyIfIdle-End -->

<!-- Scan_ScheduleDay-Begin -->
## Scan_ScheduleDay

<!-- Scan_ScheduleDay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_ScheduleDay-Applicability-End -->

<!-- Scan_ScheduleDay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleDay
```
<!-- Scan_ScheduleDay-OmaUri-End -->

<!-- Scan_ScheduleDay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the day of the week on which to perform a scheduled scan. The scan can also be configured to run every day or to never run at all.

This setting can be configured with the following ordinal number values:

(0x0) Every Day (0x1) Sunday (0x2) Monday (0x3) Tuesday (0x4) Wednesday (0x5) Thursday (0x6) Friday (0x7) Saturday (0x8) Never (default)

- If you enable this setting, a scheduled scan will run at the frequency specified.

- If you disable or don't configure this setting, a scheduled scan will run at a default frequency.
<!-- Scan_ScheduleDay-Description-End -->

<!-- Scan_ScheduleDay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_ScheduleDay-Editable-End -->

<!-- Scan_ScheduleDay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_ScheduleDay-DFProperties-End -->

<!-- Scan_ScheduleDay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScheduleDay |
| Friendly Name | Specify the day of the week to run a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | ScheduleDay |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_ScheduleDay-AdmxBacked-End -->

<!-- Scan_ScheduleDay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_ScheduleDay-Examples-End -->

<!-- Scan_ScheduleDay-End -->

<!-- Scan_ScheduleTime-Begin -->
## Scan_ScheduleTime

<!-- Scan_ScheduleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Scan_ScheduleTime-Applicability-End -->

<!-- Scan_ScheduleTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Scan_ScheduleTime
```
<!-- Scan_ScheduleTime-OmaUri-End -->

<!-- Scan_ScheduleTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the time of day at which to perform a scheduled scan. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. By default, this setting is set to a time value of 2:00 AM. The schedule is based on local time on the computer where the scan is executing.

- If you enable this setting, a scheduled scan will run at the time of day specified.

- If you disable or don't configure this setting, a scheduled scan will run at a default time.
<!-- Scan_ScheduleTime-Description-End -->

<!-- Scan_ScheduleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Scan_ScheduleTime-Editable-End -->

<!-- Scan_ScheduleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Scan_ScheduleTime-DFProperties-End -->

<!-- Scan_ScheduleTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Scan_ScheduleTime |
| Friendly Name | Specify the time of day to run a scheduled scan |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Scan |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Scan |
| Registry Value Name | ScheduleTime |
| ADMX File Name | WindowsDefender.admx |
<!-- Scan_ScheduleTime-AdmxBacked-End -->

<!-- Scan_ScheduleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Scan_ScheduleTime-Examples-End -->

<!-- Scan_ScheduleTime-End -->

<!-- ServiceKeepAlive-Begin -->
## ServiceKeepAlive

<!-- ServiceKeepAlive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ServiceKeepAlive-Applicability-End -->

<!-- ServiceKeepAlive-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/ServiceKeepAlive
```
<!-- ServiceKeepAlive-OmaUri-End -->

<!-- ServiceKeepAlive-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not the antimalware service remains running when antivirus and antispyware security intelligence is disabled. It's recommended that this setting remain disabled.

- If you enable this setting, the antimalware service will always remain running even if both antivirus and antispyware security intelligence is disabled.

- If you disable or don't configure this setting, the antimalware service will be stopped when both antivirus and antispyware security intelligence is disabled. If the computer is restarted, the service will be started if it's set to Automatic startup. After the service has started, there will be a check to see if antivirus and antispyware security intelligence is enabled. If at least one is enabled, the service will remain running. If both are disabled, the service will be stopped.
<!-- ServiceKeepAlive-Description-End -->

<!-- ServiceKeepAlive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ServiceKeepAlive-Editable-End -->

<!-- ServiceKeepAlive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ServiceKeepAlive-DFProperties-End -->

<!-- ServiceKeepAlive-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ServiceKeepAlive |
| Friendly Name | Allow antimalware service to remain running always |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender |
| Registry Value Name | ServiceKeepAlive |
| ADMX File Name | WindowsDefender.admx |
<!-- ServiceKeepAlive-AdmxBacked-End -->

<!-- ServiceKeepAlive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ServiceKeepAlive-Examples-End -->

<!-- ServiceKeepAlive-End -->

<!-- SignatureUpdate_ASSignatureDue-Begin -->
## SignatureUpdate_ASSignatureDue

<!-- SignatureUpdate_ASSignatureDue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_ASSignatureDue-Applicability-End -->

<!-- SignatureUpdate_ASSignatureDue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ASSignatureDue
```
<!-- SignatureUpdate_ASSignatureDue-OmaUri-End -->

<!-- SignatureUpdate_ASSignatureDue-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the number of days that must pass before spyware security intelligence is considered out of date. If security intelligence is determined to be out of date, this state may trigger several additional actions, including falling back to an alternative update source or displaying a warning icon in the user interface. By default, this value is set to 7 days.

- If you enable this setting, spyware security intelligence will be considered out of date after the number of days specified have passed without an update.

- If you disable or don't configure this setting, spyware security intelligence will be considered out of date after the default number of days have passed without an update.
<!-- SignatureUpdate_ASSignatureDue-Description-End -->

<!-- SignatureUpdate_ASSignatureDue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_ASSignatureDue-Editable-End -->

<!-- SignatureUpdate_ASSignatureDue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_ASSignatureDue-DFProperties-End -->

<!-- SignatureUpdate_ASSignatureDue-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_ASSignatureDue |
| Friendly Name | Define the number of days before spyware security intelligence is considered out of date |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | ASSignatureDue |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_ASSignatureDue-AdmxBacked-End -->

<!-- SignatureUpdate_ASSignatureDue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_ASSignatureDue-Examples-End -->

<!-- SignatureUpdate_ASSignatureDue-End -->

<!-- SignatureUpdate_AVSignatureDue-Begin -->
## SignatureUpdate_AVSignatureDue

<!-- SignatureUpdate_AVSignatureDue-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_AVSignatureDue-Applicability-End -->

<!-- SignatureUpdate_AVSignatureDue-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_AVSignatureDue
```
<!-- SignatureUpdate_AVSignatureDue-OmaUri-End -->

<!-- SignatureUpdate_AVSignatureDue-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the number of days that must pass before virus security intelligence is considered out of date. If security intelligence is determined to be out of date, this state may trigger several additional actions, including falling back to an alternative update source or displaying a warning icon in the user interface. By default, this value is set to 7 days.

- If you enable this setting, virus security intelligence will be considered out of date after the number of days specified have passed without an update.

- If you disable or don't configure this setting, virus security intelligence will be considered out of date after the default number of days have passed without an update.
<!-- SignatureUpdate_AVSignatureDue-Description-End -->

<!-- SignatureUpdate_AVSignatureDue-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_AVSignatureDue-Editable-End -->

<!-- SignatureUpdate_AVSignatureDue-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_AVSignatureDue-DFProperties-End -->

<!-- SignatureUpdate_AVSignatureDue-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_AVSignatureDue |
| Friendly Name | Define the number of days before virus security intelligence is considered out of date |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | AVSignatureDue |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_AVSignatureDue-AdmxBacked-End -->

<!-- SignatureUpdate_AVSignatureDue-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_AVSignatureDue-Examples-End -->

<!-- SignatureUpdate_AVSignatureDue-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Begin -->
## SignatureUpdate_DefinitionUpdateFileSharesSources

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Applicability-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DefinitionUpdateFileSharesSources
```
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-OmaUri-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure UNC file share sources for downloading security intelligence updates. Sources will be contacted in the order specified. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources. For example: "`{\\unc1 | \\unc2 }`". The list is empty by default.

- If you enable this setting, the specified sources will be contacted for security intelligence updates. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list won't be contacted.

- If you disable or don't configure this setting, the list will remain empty by default and no sources will be contacted.
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Description-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Editable-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-DFProperties-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_DefinitionUpdateFileSharesSources |
| Friendly Name | Define file shares for downloading security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-AdmxBacked-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-Examples-End -->

<!-- SignatureUpdate_DefinitionUpdateFileSharesSources-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-Begin -->
## SignatureUpdate_DisableScanOnUpdate

<!-- SignatureUpdate_DisableScanOnUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_DisableScanOnUpdate-Applicability-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScanOnUpdate
```
<!-- SignatureUpdate_DisableScanOnUpdate-OmaUri-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the automatic scan which starts after a security intelligence update has occurred.

- If you enable or don't configure this setting, a scan will start following a security intelligence update.

- If you disable this setting, a scan won't start following a security intelligence update.
<!-- SignatureUpdate_DisableScanOnUpdate-Description-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_DisableScanOnUpdate-Editable-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_DisableScanOnUpdate-DFProperties-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_DisableScanOnUpdate |
| Friendly Name | Turn on scan after security intelligence update |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | DisableScanOnUpdate |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_DisableScanOnUpdate-AdmxBacked-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_DisableScanOnUpdate-Examples-End -->

<!-- SignatureUpdate_DisableScanOnUpdate-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Begin -->
## SignatureUpdate_DisableScheduledSignatureUpdateonBattery

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Applicability-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableScheduledSignatureUpdateonBattery
```
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-OmaUri-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure security intelligence updates when the computer is running on battery power.

- If you enable or don't configure this setting, security intelligence updates will occur as usual regardless of power state.

- If you disable this setting, security intelligence updates will be turned off while the computer is running on battery power.
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Description-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Editable-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-DFProperties-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_DisableScheduledSignatureUpdateonBattery |
| Friendly Name | Allow security intelligence updates when running on battery power |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | DisableScheduledSignatureUpdateOnBattery |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-AdmxBacked-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-Examples-End -->

<!-- SignatureUpdate_DisableScheduledSignatureUpdateonBattery-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Begin -->
## SignatureUpdate_DisableUpdateOnStartupWithoutEngine

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Applicability-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_DisableUpdateOnStartupWithoutEngine
```
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-OmaUri-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure security intelligence updates on startup when there is no antimalware engine present.

- If you enable or don't configure this setting, security intelligence updates will be initiated on startup when there is no antimalware engine present.

- If you disable this setting, security intelligence updates won't be initiated on startup when there is no antimalware engine present.
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Description-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Editable-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-DFProperties-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_DisableUpdateOnStartupWithoutEngine |
| Friendly Name | Initiate security intelligence update on startup |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | DisableUpdateOnStartupWithoutEngine |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-AdmxBacked-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-Examples-End -->

<!-- SignatureUpdate_DisableUpdateOnStartupWithoutEngine-End -->

<!-- SignatureUpdate_FallbackOrder-Begin -->
## SignatureUpdate_FallbackOrder

<!-- SignatureUpdate_FallbackOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_FallbackOrder-Applicability-End -->

<!-- SignatureUpdate_FallbackOrder-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_FallbackOrder
```
<!-- SignatureUpdate_FallbackOrder-OmaUri-End -->

<!-- SignatureUpdate_FallbackOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the order in which different security intelligence update sources should be contacted. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources in order. Possible values are: "InternalDefinitionUpdateServer", "MicrosoftUpdateServer", "MMPC", and "FileShares".

For Example: `{ InternalDefinitionUpdateServer | MicrosoftUpdateServer | MMPC }`

- If you enable this setting, security intelligence update sources will be contacted in the order specified. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list won't be contacted.

- If you disable or don't configure this setting, security intelligence update sources will be contacted in a default order.
<!-- SignatureUpdate_FallbackOrder-Description-End -->

<!-- SignatureUpdate_FallbackOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_FallbackOrder-Editable-End -->

<!-- SignatureUpdate_FallbackOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_FallbackOrder-DFProperties-End -->

<!-- SignatureUpdate_FallbackOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_FallbackOrder |
| Friendly Name | Define the order of sources for downloading security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_FallbackOrder-AdmxBacked-End -->

<!-- SignatureUpdate_FallbackOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_FallbackOrder-Examples-End -->

<!-- SignatureUpdate_FallbackOrder-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-Begin -->
## SignatureUpdate_ForceUpdateFromMU

<!-- SignatureUpdate_ForceUpdateFromMU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_ForceUpdateFromMU-Applicability-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ForceUpdateFromMU
```
<!-- SignatureUpdate_ForceUpdateFromMU-OmaUri-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable download of security intelligence updates from Microsoft Update even if the Automatic Updates default server is configured to another download source such as Windows Update.

- If you enable this setting, security intelligence updates will be downloaded from Microsoft Update.

- If you disable or don't configure this setting, security intelligence updates will be downloaded from the configured download source.
<!-- SignatureUpdate_ForceUpdateFromMU-Description-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_ForceUpdateFromMU-Editable-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_ForceUpdateFromMU-DFProperties-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_ForceUpdateFromMU |
| Friendly Name | Allow security intelligence updates from Microsoft Update |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | ForceUpdateFromMU |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_ForceUpdateFromMU-AdmxBacked-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_ForceUpdateFromMU-Examples-End -->

<!-- SignatureUpdate_ForceUpdateFromMU-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-Begin -->
## SignatureUpdate_RealtimeSignatureDelivery

<!-- SignatureUpdate_RealtimeSignatureDelivery-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_RealtimeSignatureDelivery-Applicability-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_RealtimeSignatureDelivery
```
<!-- SignatureUpdate_RealtimeSignatureDelivery-OmaUri-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable real-time security intelligence updates in response to reports sent to Microsoft MAPS. If the service reports a file as an unknown and Microsoft MAPS finds that the latest security intelligence update has security intelligence for a threat involving that file, the service will receive all of the latest security intelligence for that threat immediately. You must have configured your computer to join Microsoft MAPS for this functionality to work.

- If you enable or don't configure this setting, real-time security intelligence updates will be enabled.

- If you disable this setting, real-time security intelligence updates will disabled.
<!-- SignatureUpdate_RealtimeSignatureDelivery-Description-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_RealtimeSignatureDelivery-Editable-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_RealtimeSignatureDelivery-DFProperties-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_RealtimeSignatureDelivery |
| Friendly Name | Allow real-time security intelligence updates based on reports to Microsoft MAPS |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | RealtimeSignatureDelivery |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_RealtimeSignatureDelivery-AdmxBacked-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_RealtimeSignatureDelivery-Examples-End -->

<!-- SignatureUpdate_RealtimeSignatureDelivery-End -->

<!-- SignatureUpdate_ScheduleDay-Begin -->
## SignatureUpdate_ScheduleDay

<!-- SignatureUpdate_ScheduleDay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_ScheduleDay-Applicability-End -->

<!-- SignatureUpdate_ScheduleDay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleDay
```
<!-- SignatureUpdate_ScheduleDay-OmaUri-End -->

<!-- SignatureUpdate_ScheduleDay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the day of the week on which to check for security intelligence updates. The check can also be configured to run every day or to never run at all.

This setting can be configured with the following ordinal number values:

(0x0) Every Day (default)
(0x1) Sunday (0x2) Monday (0x3) Tuesday (0x4) Wednesday (0x5) Thursday (0x6) Friday (0x7) Saturday (0x8) Never.

- If you enable this setting, the check for security intelligence updates will occur at the frequency specified.

- If you disable or don't configure this setting, the check for security intelligence updates will occur at a default frequency.
<!-- SignatureUpdate_ScheduleDay-Description-End -->

<!-- SignatureUpdate_ScheduleDay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_ScheduleDay-Editable-End -->

<!-- SignatureUpdate_ScheduleDay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_ScheduleDay-DFProperties-End -->

<!-- SignatureUpdate_ScheduleDay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_ScheduleDay |
| Friendly Name | Specify the day of the week to check for security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | ScheduleDay |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_ScheduleDay-AdmxBacked-End -->

<!-- SignatureUpdate_ScheduleDay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_ScheduleDay-Examples-End -->

<!-- SignatureUpdate_ScheduleDay-End -->

<!-- SignatureUpdate_ScheduleTime-Begin -->
## SignatureUpdate_ScheduleTime

<!-- SignatureUpdate_ScheduleTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_ScheduleTime-Applicability-End -->

<!-- SignatureUpdate_ScheduleTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_ScheduleTime
```
<!-- SignatureUpdate_ScheduleTime-OmaUri-End -->

<!-- SignatureUpdate_ScheduleTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the time of day at which to check for security intelligence updates. The time value is represented as the number of minutes past midnight (00:00). For example, 120 (0x78) is equivalent to 02:00 AM. By default this setting is configured to check for security intelligence updates 15 minutes before the scheduled scan time. The schedule is based on local time on the computer where the check is occurring.

- If you enable this setting, the check for security intelligence updates will occur at the time of day specified.

- If you disable or don't configure this setting, the check for security intelligence updates will occur at the default time.
<!-- SignatureUpdate_ScheduleTime-Description-End -->

<!-- SignatureUpdate_ScheduleTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_ScheduleTime-Editable-End -->

<!-- SignatureUpdate_ScheduleTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_ScheduleTime-DFProperties-End -->

<!-- SignatureUpdate_ScheduleTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_ScheduleTime |
| Friendly Name | Specify the time to check for security intelligence updates |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | ScheduleTime |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_ScheduleTime-AdmxBacked-End -->

<!-- SignatureUpdate_ScheduleTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_ScheduleTime-Examples-End -->

<!-- SignatureUpdate_ScheduleTime-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-Begin -->
## SignatureUpdate_SharedSignaturesLocation

<!-- SignatureUpdate_SharedSignaturesLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_SharedSignaturesLocation-Applicability-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SharedSignaturesLocation
```
<!-- SignatureUpdate_SharedSignaturesLocation-OmaUri-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the security intelligence location for VDI-configured computers.

If you disable or don't configure this setting, security intelligence will be referred from the default local source.
<!-- SignatureUpdate_SharedSignaturesLocation-Description-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_SharedSignaturesLocation-Editable-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_SharedSignaturesLocation-DFProperties-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_SharedSignaturesLocation |
| Friendly Name | Define security intelligence location for VDI clients. |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_SharedSignaturesLocation-AdmxBacked-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_SharedSignaturesLocation-Examples-End -->

<!-- SignatureUpdate_SharedSignaturesLocation-End -->

<!-- SignatureUpdate_SignatureDisableNotification-Begin -->
## SignatureUpdate_SignatureDisableNotification

<!-- SignatureUpdate_SignatureDisableNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_SignatureDisableNotification-Applicability-End -->

<!-- SignatureUpdate_SignatureDisableNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureDisableNotification
```
<!-- SignatureUpdate_SignatureDisableNotification-OmaUri-End -->

<!-- SignatureUpdate_SignatureDisableNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the antimalware service to receive notifications to disable individual security intelligence in response to reports it sends to Microsoft MAPS. Microsoft MAPS uses these notifications to disable security intelligence that are causing false positive reports. You must have configured your computer to join Microsoft MAPS for this functionality to work.

- If you enable this setting or don't configure, the antimalware service will receive notifications to disable security intelligence.

- If you disable this setting, the antimalware service won't receive notifications to disable security intelligence.
<!-- SignatureUpdate_SignatureDisableNotification-Description-End -->

<!-- SignatureUpdate_SignatureDisableNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_SignatureDisableNotification-Editable-End -->

<!-- SignatureUpdate_SignatureDisableNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_SignatureDisableNotification-DFProperties-End -->

<!-- SignatureUpdate_SignatureDisableNotification-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_SignatureDisableNotification |
| Friendly Name | Allow notifications to disable security intelligence based reports to Microsoft MAPS |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | SignatureDisableNotification |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_SignatureDisableNotification-AdmxBacked-End -->

<!-- SignatureUpdate_SignatureDisableNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_SignatureDisableNotification-Examples-End -->

<!-- SignatureUpdate_SignatureDisableNotification-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Begin -->
## SignatureUpdate_SignatureUpdateCatchupInterval

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Applicability-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_SignatureUpdateCatchupInterval
```
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-OmaUri-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to define the number of days after which a catch-up security intelligence update will be required. By default, the value of this setting is 1 day.

- If you enable this setting, a catch-up security intelligence update will occur after the specified number of days.

- If you disable or don't configure this setting, a catch-up security intelligence update will be required after the default number of days.
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Description-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Editable-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-DFProperties-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_SignatureUpdateCatchupInterval |
| Friendly Name | Define the number of days after which a catch-up security intelligence update is required |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | SignatureUpdateCatchupInterval |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-AdmxBacked-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_SignatureUpdateCatchupInterval-Examples-End -->

<!-- SignatureUpdate_SignatureUpdateCatchupInterval-End -->

<!-- SignatureUpdate_UpdateOnStartup-Begin -->
## SignatureUpdate_UpdateOnStartup

<!-- SignatureUpdate_UpdateOnStartup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SignatureUpdate_UpdateOnStartup-Applicability-End -->

<!-- SignatureUpdate_UpdateOnStartup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SignatureUpdate_UpdateOnStartup
```
<!-- SignatureUpdate_UpdateOnStartup-OmaUri-End -->

<!-- SignatureUpdate_UpdateOnStartup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a check for new virus and spyware security intelligence will occur immediately after service startup.

- If you enable this setting, a check for new security intelligence will occur after service startup.

- If you disable this setting or don't configure this setting, a check for new security intelligence won't occur after service startup.
<!-- SignatureUpdate_UpdateOnStartup-Description-End -->

<!-- SignatureUpdate_UpdateOnStartup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SignatureUpdate_UpdateOnStartup-Editable-End -->

<!-- SignatureUpdate_UpdateOnStartup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SignatureUpdate_UpdateOnStartup-DFProperties-End -->

<!-- SignatureUpdate_UpdateOnStartup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SignatureUpdate_UpdateOnStartup |
| Friendly Name | Check for the latest virus and spyware security intelligence on startup |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Security Intelligence Updates |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Signature Updates |
| Registry Value Name | UpdateOnStartUp |
| ADMX File Name | WindowsDefender.admx |
<!-- SignatureUpdate_UpdateOnStartup-AdmxBacked-End -->

<!-- SignatureUpdate_UpdateOnStartup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SignatureUpdate_UpdateOnStartup-Examples-End -->

<!-- SignatureUpdate_UpdateOnStartup-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-Begin -->
## Spynet_LocalSettingOverrideSpynetReporting

<!-- Spynet_LocalSettingOverrideSpynetReporting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Spynet_LocalSettingOverrideSpynetReporting-Applicability-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Spynet_LocalSettingOverrideSpynetReporting
```
<!-- Spynet_LocalSettingOverrideSpynetReporting-OmaUri-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures a local override for the configuration to join Microsoft MAPS. This setting can only be set by Group Policy.

- If you enable this setting, the local preference setting will take priority over Group Policy.

- If you disable or don't configure this setting, Group Policy will take priority over the local preference setting.
<!-- Spynet_LocalSettingOverrideSpynetReporting-Description-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Spynet_LocalSettingOverrideSpynetReporting-Editable-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Spynet_LocalSettingOverrideSpynetReporting-DFProperties-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Spynet_LocalSettingOverrideSpynetReporting |
| Friendly Name | Configure local setting override for reporting to Microsoft MAPS |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MAPS |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Spynet |
| Registry Value Name | LocalSettingOverrideSpynetReporting |
| ADMX File Name | WindowsDefender.admx |
<!-- Spynet_LocalSettingOverrideSpynetReporting-AdmxBacked-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Spynet_LocalSettingOverrideSpynetReporting-Examples-End -->

<!-- Spynet_LocalSettingOverrideSpynetReporting-End -->

<!-- SpynetReporting-Begin -->
## SpynetReporting

<!-- SpynetReporting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SpynetReporting-Applicability-End -->

<!-- SpynetReporting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/SpynetReporting
```
<!-- SpynetReporting-OmaUri-End -->

<!-- SpynetReporting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to join Microsoft MAPS. Microsoft MAPS is the online community that helps you choose how to respond to potential threats. The community also helps stop the spread of new malicious software infections.

You can choose to send basic or additional information about detected software. Additional information helps Microsoft create new security intelligence and help it to protect your computer. This information can include things like location of detected items on your computer if harmful software was removed. The information will be automatically collected and sent. In some instances, personal information might unintentionally be sent to Microsoft. However, Microsoft won't use this information to identify you or contact you.

Possible options are:

(0x0) Disabled (default)
(0x1) Basic membership (0x2) Advanced membership.

Basic membership will send basic information to Microsoft about software that has been detected, including where the software came from, the actions that you apply or that are applied automatically, and whether the actions were successful.

Advanced membership, in addition to basic information, will send more information to Microsoft about malicious software, spyware, and potentially unwanted software, including the location of the software, file names, how the software operates, and how it has impacted your computer.

- If you enable this setting, you'll join Microsoft MAPS with the membership specified.

- If you disable or don't configure this setting, you won't join Microsoft MAPS.

In Windows 10, Basic membership is no longer available, so setting the value to 1 or 2 enrolls the device into Advanced membership.
<!-- SpynetReporting-Description-End -->

<!-- SpynetReporting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpynetReporting-Editable-End -->

<!-- SpynetReporting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpynetReporting-DFProperties-End -->

<!-- SpynetReporting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SpynetReporting |
| Friendly Name | Join Microsoft MAPS |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > MAPS |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Spynet |
| Registry Value Name | SpynetReporting |
| ADMX File Name | WindowsDefender.admx |
<!-- SpynetReporting-AdmxBacked-End -->

<!-- SpynetReporting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpynetReporting-Examples-End -->

<!-- SpynetReporting-End -->

<!-- Threats_ThreatIdDefaultAction-Begin -->
## Threats_ThreatIdDefaultAction

<!-- Threats_ThreatIdDefaultAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Threats_ThreatIdDefaultAction-Applicability-End -->

<!-- Threats_ThreatIdDefaultAction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/Threats_ThreatIdDefaultAction
```
<!-- Threats_ThreatIdDefaultAction-OmaUri-End -->

<!-- Threats_ThreatIdDefaultAction-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting customize which remediation action will be taken for each listed Threat ID when it's detected during a scan. Threats should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a valid Threat ID, while the value contains the action ID for the remediation action that should be taken.

Valid remediation action values are:

2 = Quarantine
3 = Remove
6 = Ignore.
<!-- Threats_ThreatIdDefaultAction-Description-End -->

<!-- Threats_ThreatIdDefaultAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Threats_ThreatIdDefaultAction-Editable-End -->

<!-- Threats_ThreatIdDefaultAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Threats_ThreatIdDefaultAction-DFProperties-End -->

<!-- Threats_ThreatIdDefaultAction-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Threats_ThreatIdDefaultAction |
| Friendly Name | Specify threats upon which default action should not be taken when detected |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Threats |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\Threats |
| Registry Value Name | Threats_ThreatIdDefaultAction |
| ADMX File Name | WindowsDefender.admx |
<!-- Threats_ThreatIdDefaultAction-AdmxBacked-End -->

<!-- Threats_ThreatIdDefaultAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Threats_ThreatIdDefaultAction-Examples-End -->

<!-- Threats_ThreatIdDefaultAction-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-Begin -->
## UX_Configuration_CustomDefaultActionToastString

<!-- UX_Configuration_CustomDefaultActionToastString-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UX_Configuration_CustomDefaultActionToastString-Applicability-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/UX_Configuration_CustomDefaultActionToastString
```
<!-- UX_Configuration_CustomDefaultActionToastString-OmaUri-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not to display additional text to clients when they need to perform an action. The text displayed is a custom administrator-defined string. For example, the phone number to call the company help desk. The client interface will only display a maximum of 1024 characters. Longer strings will be truncated before display.

- If you enable this setting, the additional text specified will be displayed.

- If you disable or don't configure this setting, there will be no additional text displayed.
<!-- UX_Configuration_CustomDefaultActionToastString-Description-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UX_Configuration_CustomDefaultActionToastString-Editable-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UX_Configuration_CustomDefaultActionToastString-DFProperties-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UX_Configuration_CustomDefaultActionToastString |
| Friendly Name | Display additional text to clients when they need to perform an action |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Client Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\UX Configuration |
| ADMX File Name | WindowsDefender.admx |
<!-- UX_Configuration_CustomDefaultActionToastString-AdmxBacked-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UX_Configuration_CustomDefaultActionToastString-Examples-End -->

<!-- UX_Configuration_CustomDefaultActionToastString-End -->

<!-- UX_Configuration_Notification_Suppress-Begin -->
## UX_Configuration_Notification_Suppress

<!-- UX_Configuration_Notification_Suppress-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UX_Configuration_Notification_Suppress-Applicability-End -->

<!-- UX_Configuration_Notification_Suppress-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/UX_Configuration_Notification_Suppress
```
<!-- UX_Configuration_Notification_Suppress-OmaUri-End -->

<!-- UX_Configuration_Notification_Suppress-Description-Begin -->
<!-- Description-Source-ADMX -->
Use this policy setting to specify if you want Microsoft Defender Antivirus notifications to display on clients.

- If you disable or don't configure this setting, Microsoft Defender Antivirus notifications will display on clients.

- If you enable this setting, Microsoft Defender Antivirus notifications won't display on clients.
<!-- UX_Configuration_Notification_Suppress-Description-End -->

<!-- UX_Configuration_Notification_Suppress-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- UX_Configuration_Notification_Suppress-Editable-End -->

<!-- UX_Configuration_Notification_Suppress-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UX_Configuration_Notification_Suppress-DFProperties-End -->

<!-- UX_Configuration_Notification_Suppress-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UX_Configuration_Notification_Suppress |
| Friendly Name | Suppress all notifications |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Client Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\UX Configuration |
| Registry Value Name | Notification_Suppress |
| ADMX File Name | WindowsDefender.admx |
<!-- UX_Configuration_Notification_Suppress-AdmxBacked-End -->

<!-- UX_Configuration_Notification_Suppress-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UX_Configuration_Notification_Suppress-Examples-End -->

<!-- UX_Configuration_Notification_Suppress-End -->

<!-- UX_Configuration_SuppressRebootNotification-Begin -->
## UX_Configuration_SuppressRebootNotification

<!-- UX_Configuration_SuppressRebootNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UX_Configuration_SuppressRebootNotification-Applicability-End -->

<!-- UX_Configuration_SuppressRebootNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/UX_Configuration_SuppressRebootNotification
```
<!-- UX_Configuration_SuppressRebootNotification-OmaUri-End -->

<!-- UX_Configuration_SuppressRebootNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows user to supress reboot notifications in UI only mode (for cases where UI can't be in lockdown mode).

If you enable this setting AM UI won't show reboot notifications.
<!-- UX_Configuration_SuppressRebootNotification-Description-End -->

<!-- UX_Configuration_SuppressRebootNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Changes to this setting are not applied when [tamper protection][TAMPER-1] is enabled.
<!-- UX_Configuration_SuppressRebootNotification-Editable-End -->

<!-- UX_Configuration_SuppressRebootNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UX_Configuration_SuppressRebootNotification-DFProperties-End -->

<!-- UX_Configuration_SuppressRebootNotification-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UX_Configuration_SuppressRebootNotification |
| Friendly Name | Suppresses reboot notifications |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Client Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\UX Configuration |
| Registry Value Name | SuppressRebootNotification |
| ADMX File Name | WindowsDefender.admx |
<!-- UX_Configuration_SuppressRebootNotification-AdmxBacked-End -->

<!-- UX_Configuration_SuppressRebootNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UX_Configuration_SuppressRebootNotification-Examples-End -->

<!-- UX_Configuration_SuppressRebootNotification-End -->

<!-- UX_Configuration_UILockdown-Begin -->
## UX_Configuration_UILockdown

<!-- UX_Configuration_UILockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UX_Configuration_UILockdown-Applicability-End -->

<!-- UX_Configuration_UILockdown-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MicrosoftDefenderAntivirus/UX_Configuration_UILockdown
```
<!-- UX_Configuration_UILockdown-OmaUri-End -->

<!-- UX_Configuration_UILockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not to display AM UI to the users.

If you enable this setting AM UI won't be available to users.
<!-- UX_Configuration_UILockdown-Description-End -->

<!-- UX_Configuration_UILockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UX_Configuration_UILockdown-Editable-End -->

<!-- UX_Configuration_UILockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UX_Configuration_UILockdown-DFProperties-End -->

<!-- UX_Configuration_UILockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UX_Configuration_UILockdown |
| Friendly Name | Enable headless UI mode |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Defender Antivirus > Client Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows Defender\UX Configuration |
| Registry Value Name | UILockdown |
| ADMX File Name | WindowsDefender.admx |
<!-- UX_Configuration_UILockdown-AdmxBacked-End -->

<!-- UX_Configuration_UILockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UX_Configuration_UILockdown-Examples-End -->

<!-- UX_Configuration_UILockdown-End -->

<!-- ADMX_MicrosoftDefenderAntivirus-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Links -->
[TAMPER-1]: /microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection
[TAMPER-2]: /microsoft-365/security/defender-endpoint/prevent-changes-to-security-settings-with-tamper-protection#what-about-exclusions
<!-- ADMX_MicrosoftDefenderAntivirus-CspMoreInfo-End -->

<!-- ADMX_MicrosoftDefenderAntivirus-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
