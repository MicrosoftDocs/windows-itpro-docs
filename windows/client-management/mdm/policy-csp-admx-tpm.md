---
title: ADMX_TPM Policy CSP
description: Learn more about the ADMX_TPM Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_TPM-Begin -->
# Policy CSP - ADMX_TPM

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_TPM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_TPM-Editable-End -->

<!-- BlockedCommandsList_Name-Begin -->
## BlockedCommandsList_Name

<!-- BlockedCommandsList_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BlockedCommandsList_Name-Applicability-End -->

<!-- BlockedCommandsList_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/BlockedCommandsList_Name
```
<!-- BlockedCommandsList_Name-OmaUri-End -->

<!-- BlockedCommandsList_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the Group Policy list of Trusted Platform Module (TPM) commands blocked by Windows.

- If you enable this policy setting, Windows will block the specified commands from being sent to the TPM on the computer. TPM commands are referenced by a command number. For example, command number 129 is TPM_OwnerReadInternalPub, and command number 170 is TPM_FieldUpgrade. To find the command number associated with each TPM command with TPM 1.2, run "tpm.msc" and navigate to the "Command Management" section.

- If you disable or don't configure this policy setting, only those TPM commands specified through the default or local lists may be blocked by Windows. The default list of blocked TPM commands is pre-configured by Windows. You can view the default list by running "tpm.msc", navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. See related policy settings to enforce or ignore the default and local lists of blocked TPM commands.
<!-- BlockedCommandsList_Name-Description-End -->

<!-- BlockedCommandsList_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BlockedCommandsList_Name-Editable-End -->

<!-- BlockedCommandsList_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BlockedCommandsList_Name-DFProperties-End -->

<!-- BlockedCommandsList_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BlockedCommandsList_Name |
| Friendly Name | Configure the list of blocked TPM commands |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Tpm\BlockedCommands |
| Registry Value Name | Enabled |
| ADMX File Name | TPM.admx |
<!-- BlockedCommandsList_Name-AdmxBacked-End -->

<!-- BlockedCommandsList_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockedCommandsList_Name-Examples-End -->

<!-- BlockedCommandsList_Name-End -->

<!-- ClearTPMIfNotReady_Name-Begin -->
## ClearTPMIfNotReady_Name

<!-- ClearTPMIfNotReady_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ClearTPMIfNotReady_Name-Applicability-End -->

<!-- ClearTPMIfNotReady_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/ClearTPMIfNotReady_Name
```
<!-- ClearTPMIfNotReady_Name-OmaUri-End -->

<!-- ClearTPMIfNotReady_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the system to prompt the user to clear the TPM if the TPM is detected to be in any state other than Ready. This policy will take effect only if the system's TPM is in a state other than Ready, including if the TPM is "Ready, with reduced functionality". The prompt to clear the TPM will start occurring after the next reboot, upon user login only if the logged in user is part of the Administrators group for the system. The prompt can be dismissed, but will reappear after every reboot and login until the policy is disabled or until the TPM is in a Ready state.
<!-- ClearTPMIfNotReady_Name-Description-End -->

<!-- ClearTPMIfNotReady_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClearTPMIfNotReady_Name-Editable-End -->

<!-- ClearTPMIfNotReady_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ClearTPMIfNotReady_Name-DFProperties-End -->

<!-- ClearTPMIfNotReady_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ClearTPMIfNotReady_Name |
| Friendly Name | Configure the system to clear the TPM if it is not in a ready state. |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\TPM |
| Registry Value Name | ClearTPMIfNotReadyGP |
| ADMX File Name | TPM.admx |
<!-- ClearTPMIfNotReady_Name-AdmxBacked-End -->

<!-- ClearTPMIfNotReady_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClearTPMIfNotReady_Name-Examples-End -->

<!-- ClearTPMIfNotReady_Name-End -->

<!-- IgnoreDefaultList_Name-Begin -->
## IgnoreDefaultList_Name

<!-- IgnoreDefaultList_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IgnoreDefaultList_Name-Applicability-End -->

<!-- IgnoreDefaultList_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/IgnoreDefaultList_Name
```
<!-- IgnoreDefaultList_Name-OmaUri-End -->

<!-- IgnoreDefaultList_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enforce or ignore the computer's default list of blocked Trusted Platform Module (TPM) commands.

- If you enable this policy setting, Windows will ignore the computer's default list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the local list.

The default list of blocked TPM commands is pre-configured by Windows. You can view the default list by running "tpm.msc", navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. See the related policy setting to configure the Group Policy list of blocked TPM commands.

- If you disable or don't configure this policy setting, Windows will block the TPM commands in the default list, in addition to commands in the Group Policy and local lists of blocked TPM commands.
<!-- IgnoreDefaultList_Name-Description-End -->

<!-- IgnoreDefaultList_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IgnoreDefaultList_Name-Editable-End -->

<!-- IgnoreDefaultList_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IgnoreDefaultList_Name-DFProperties-End -->

<!-- IgnoreDefaultList_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IgnoreDefaultList_Name |
| Friendly Name | Ignore the default list of blocked TPM commands |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\TPM\BlockedCommands |
| Registry Value Name | IgnoreDefaultList |
| ADMX File Name | TPM.admx |
<!-- IgnoreDefaultList_Name-AdmxBacked-End -->

<!-- IgnoreDefaultList_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IgnoreDefaultList_Name-Examples-End -->

<!-- IgnoreDefaultList_Name-End -->

<!-- IgnoreLocalList_Name-Begin -->
## IgnoreLocalList_Name

<!-- IgnoreLocalList_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IgnoreLocalList_Name-Applicability-End -->

<!-- IgnoreLocalList_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/IgnoreLocalList_Name
```
<!-- IgnoreLocalList_Name-OmaUri-End -->

<!-- IgnoreLocalList_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enforce or ignore the computer's local list of blocked Trusted Platform Module (TPM) commands.

- If you enable this policy setting, Windows will ignore the computer's local list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the default list.

The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. The default list of blocked TPM commands is pre-configured by Windows. See the related policy setting to configure the Group Policy list of blocked TPM commands.

- If you disable or don't configure this policy setting, Windows will block the TPM commands found in the local list, in addition to commands in the Group Policy and default lists of blocked TPM commands.
<!-- IgnoreLocalList_Name-Description-End -->

<!-- IgnoreLocalList_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IgnoreLocalList_Name-Editable-End -->

<!-- IgnoreLocalList_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IgnoreLocalList_Name-DFProperties-End -->

<!-- IgnoreLocalList_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IgnoreLocalList_Name |
| Friendly Name | Ignore the local list of blocked TPM commands |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\TPM\BlockedCommands |
| Registry Value Name | IgnoreLocalList |
| ADMX File Name | TPM.admx |
<!-- IgnoreLocalList_Name-AdmxBacked-End -->

<!-- IgnoreLocalList_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IgnoreLocalList_Name-Examples-End -->

<!-- IgnoreLocalList_Name-End -->

<!-- OptIntoDSHA_Name-Begin -->
## OptIntoDSHA_Name

<!-- OptIntoDSHA_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- OptIntoDSHA_Name-Applicability-End -->

<!-- OptIntoDSHA_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/OptIntoDSHA_Name
```
<!-- OptIntoDSHA_Name-OmaUri-End -->

<!-- OptIntoDSHA_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This group policy enables Device Health Attestation reporting (DHA-report) on supported devices. It enables supported devices to send Device Health Attestation related information (device boot logs, PCR values, TPM certificate, etc.) to Device Health Attestation Service (DHA-Service) every time a device starts. Device Health Attestation Service validates the security state and health of the devices, and makes the findings accessible to enterprise administrators via a cloud based reporting portal. This policy is independent of DHA reports that are initiated by device manageability solutions (like MDM or SCCM), and won't interfere with their workflows.
<!-- OptIntoDSHA_Name-Description-End -->

<!-- OptIntoDSHA_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OptIntoDSHA_Name-Editable-End -->

<!-- OptIntoDSHA_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OptIntoDSHA_Name-DFProperties-End -->

<!-- OptIntoDSHA_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | OptIntoDSHA_Name |
| Friendly Name | Enable Device Health Attestation Monitoring and Reporting |
| Location | Computer Configuration |
| Path | System > Device Health Attestation Service |
| Registry Key Name | Software\Policies\Microsoft\DeviceHealthAttestationService |
| Registry Value Name | EnableDeviceHealthAttestationService |
| ADMX File Name | TPM.admx |
<!-- OptIntoDSHA_Name-AdmxBacked-End -->

<!-- OptIntoDSHA_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OptIntoDSHA_Name-Examples-End -->

<!-- OptIntoDSHA_Name-End -->

<!-- OSManagedAuth_Name-Begin -->
## OSManagedAuth_Name

<!-- OSManagedAuth_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- OSManagedAuth_Name-Applicability-End -->

<!-- OSManagedAuth_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/OSManagedAuth_Name
```
<!-- OSManagedAuth_Name-OmaUri-End -->

<!-- OSManagedAuth_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures how much of the TPM owner authorization information is stored in the registry of the local computer. Depending on the amount of TPM owner authorization information stored locally, the operating system and TPM-based applications can perform certain TPM actions which require TPM owner authorization without requiring the user to enter the TPM owner password.

You can choose to have the operating system store either the full TPM owner authorization value, the TPM administrative delegation blob plus the TPM user delegation blob, or none.

If you enable this policy setting, Windows will store the TPM owner authorization in the registry of the local computer according to the operating system managed TPM authentication setting you choose.

Choose the operating system managed TPM authentication setting of "Full" to store the full TPM owner authorization, the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting allows use of the TPM without requiring remote or external storage of the TPM owner authorization value. This setting is appropriate for scenarios which don't depend on preventing reset of the TPM anti-hammering logic or changing the TPM owner authorization value. Some TPM-based applications may require this setting be changed before features which depend on the TPM anti-hammering logic can be used.

Choose the operating system managed TPM authentication setting of "Delegated" to store only the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting is appropriate for use with TPM-based applications that depend on the TPM anti-hammering logic.

Choose the operating system managed TPM authentication setting of "None" for compatibility with previous operating systems and applications or for use with scenarios that require TPM owner authorization not be stored locally. Using this setting might cause issues with some TPM-based applications.

> [!NOTE]
> If the operating system managed TPM authentication setting is changed from "Full" to "Delegated", the full TPM owner authorization value will be regenerated and any copies of the original TPM owner authorization value will be invalid.
<!-- OSManagedAuth_Name-Description-End -->

<!-- OSManagedAuth_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- OSManagedAuth_Name-Editable-End -->

<!-- OSManagedAuth_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- OSManagedAuth_Name-DFProperties-End -->

<!-- OSManagedAuth_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | OSManagedAuth_Name |
| Friendly Name | Configure the level of TPM owner authorization information available to the operating system |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\TPM |
| ADMX File Name | TPM.admx |
<!-- OSManagedAuth_Name-AdmxBacked-End -->

<!-- OSManagedAuth_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- OSManagedAuth_Name-Examples-End -->

<!-- OSManagedAuth_Name-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-Begin -->
## StandardUserAuthorizationFailureDuration_Name

<!-- StandardUserAuthorizationFailureDuration_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- StandardUserAuthorizationFailureDuration_Name-Applicability-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/StandardUserAuthorizationFailureDuration_Name
```
<!-- StandardUserAuthorizationFailureDuration_Name-OmaUri-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the duration in minutes for counting standard user authorization failures for Trusted Platform Module (TPM) commands requiring authorization. If the number of TPM commands with an authorization failure within the duration equals a threshold, a standard user is prevented from sending commands requiring authorization to the TPM.

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than this duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

The Standard User Lockout Threshold Individual value is the maximum number of authorization failures each standard user may have before the user isn't allowed to send commands requiring authorization to the TPM.

The Standard User Lockout Total Threshold value is the maximum total number of authorization failures all standard users may have before all standard users aren't allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it's global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.

If this value isn't configured, a default value of 480 minutes (8 hours) is used.
<!-- StandardUserAuthorizationFailureDuration_Name-Description-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StandardUserAuthorizationFailureDuration_Name-Editable-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StandardUserAuthorizationFailureDuration_Name-DFProperties-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | StandardUserAuthorizationFailureDuration_Name |
| Friendly Name | Standard User Lockout Duration |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\Tpm |
| Registry Value Name | StandardUserAuthorizationFailureDuration |
| ADMX File Name | TPM.admx |
<!-- StandardUserAuthorizationFailureDuration_Name-AdmxBacked-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StandardUserAuthorizationFailureDuration_Name-Examples-End -->

<!-- StandardUserAuthorizationFailureDuration_Name-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Begin -->
## StandardUserAuthorizationFailureIndividualThreshold_Name

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Applicability-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/StandardUserAuthorizationFailureIndividualThreshold_Name
```
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-OmaUri-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the maximum number of authorization failures for each standard user for the Trusted Platform Module (TPM). If the number of authorization failures for the user within the duration for Standard User Lockout Duration equals this value, the standard user is prevented from sending commands to the Trusted Platform Module (TPM) that require authorization.

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

This value is the maximum number of authorization failures each standard user may have before the user isn't allowed to send commands requiring authorization to the TPM.

The Standard User Lockout Total Threshold value is the maximum total number of authorization failures all standard users may have before all standard users aren't allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it's global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.

If this value isn't configured, a default value of 4 is used.

A value of zero means the OS won't allow standard users to send commands to the TPM which may cause an authorization failure.
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Description-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Editable-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-DFProperties-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | StandardUserAuthorizationFailureIndividualThreshold_Name |
| Friendly Name | Standard User Individual Lockout Threshold |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\Tpm |
| Registry Value Name | StandardUserAuthorizationFailureIndividualThreshold |
| ADMX File Name | TPM.admx |
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-AdmxBacked-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-Examples-End -->

<!-- StandardUserAuthorizationFailureIndividualThreshold_Name-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Begin -->
## StandardUserAuthorizationFailureTotalThreshold_Name

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Applicability-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/StandardUserAuthorizationFailureTotalThreshold_Name
```
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-OmaUri-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the maximum number of authorization failures for all standard users for the Trusted Platform Module (TPM). If the total number of authorization failures for all standard users within the duration for Standard User Lockout Duration equals this value, all standard users are prevented from sending commands to the Trusted Platform Module (TPM) that require authorization.

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

The Standard User Individual Lockout value is the maximum number of authorization failures each standard user may have before the user isn't allowed to send commands requiring authorization to the TPM.

This value is the maximum total number of authorization failures all standard users may have before all standard users aren't allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it's global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.

If this value isn't configured, a default value of 9 is used.

A value of zero means the OS won't allow standard users to send commands to the TPM which may cause an authorization failure.
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Description-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Editable-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-DFProperties-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | StandardUserAuthorizationFailureTotalThreshold_Name |
| Friendly Name | Standard User Total Lockout Threshold |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\Tpm |
| Registry Value Name | StandardUserAuthorizationFailureTotalThreshold |
| ADMX File Name | TPM.admx |
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-AdmxBacked-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StandardUserAuthorizationFailureTotalThreshold_Name-Examples-End -->

<!-- StandardUserAuthorizationFailureTotalThreshold_Name-End -->

<!-- UseLegacyDAP_Name-Begin -->
## UseLegacyDAP_Name

<!-- UseLegacyDAP_Name-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UseLegacyDAP_Name-Applicability-End -->

<!-- UseLegacyDAP_Name-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TPM/UseLegacyDAP_Name
```
<!-- UseLegacyDAP_Name-OmaUri-End -->

<!-- UseLegacyDAP_Name-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the TPM to use the Dictionary Attack Prevention Parameters (lockout threshold and recovery time) to the values that were used for Windows 10 Version 1607 and below. Setting this policy will take effect only if a) the TPM was originally prepared using a version of Windows after Windows 10 Version 1607 and b) the System has a TPM 2.0. Note that enabling this policy will only take effect after the TPM maintenance task runs (which typically happens after a system restart). Once this policy has been enabled on a system and has taken effect (after a system restart), disabling it will have no impact and the system's TPM will remain configured using the legacy Dictionary Attack Prevention parameters, regardless of the value of this group policy. The only way for the disabled setting of this policy to take effect on a system where it was once enabled is to a) disable it from group policy and b)clear the TPM on the system.
<!-- UseLegacyDAP_Name-Description-End -->

<!-- UseLegacyDAP_Name-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UseLegacyDAP_Name-Editable-End -->

<!-- UseLegacyDAP_Name-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UseLegacyDAP_Name-DFProperties-End -->

<!-- UseLegacyDAP_Name-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UseLegacyDAP_Name |
| Friendly Name | Configure the system to use legacy Dictionary Attack Prevention Parameters setting for TPM 2.0. |
| Location | Computer Configuration |
| Path | System > Trusted Platform Module Services |
| Registry Key Name | Software\Policies\Microsoft\TPM |
| Registry Value Name | UseLegacyDictionaryAttackParameters |
| ADMX File Name | TPM.admx |
<!-- UseLegacyDAP_Name-AdmxBacked-End -->

<!-- UseLegacyDAP_Name-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UseLegacyDAP_Name-Examples-End -->

<!-- UseLegacyDAP_Name-End -->

<!-- ADMX_TPM-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_TPM-CspMoreInfo-End -->

<!-- ADMX_TPM-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
