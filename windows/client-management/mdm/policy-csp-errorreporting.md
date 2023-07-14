---
title: ErrorReporting Policy CSP
description: Learn more about the ErrorReporting Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ErrorReporting-Begin -->
# Policy CSP - ErrorReporting

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ErrorReporting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ErrorReporting-Editable-End -->

<!-- CustomizeConsentSettings-Begin -->
## CustomizeConsentSettings

<!-- CustomizeConsentSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- CustomizeConsentSettings-Applicability-End -->

<!-- CustomizeConsentSettings-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ErrorReporting/CustomizeConsentSettings
```
<!-- CustomizeConsentSettings-OmaUri-End -->

<!-- CustomizeConsentSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the consent behavior of Windows Error Reporting for specific event types.

- If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.

- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.

- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.

- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.

- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) doesn't contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.

- 4 (Send all data): Any data requested by Microsoft is sent automatically.

- If you disable or don't configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.
<!-- CustomizeConsentSettings-Description-End -->

<!-- CustomizeConsentSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomizeConsentSettings-Editable-End -->

<!-- CustomizeConsentSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomizeConsentSettings-DFProperties-End -->

<!-- CustomizeConsentSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerConsentCustomize_2 |
| Friendly Name | Customize consent settings |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Consent |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent |
| ADMX File Name | ErrorReporting.admx |
<!-- CustomizeConsentSettings-AdmxBacked-End -->

<!-- CustomizeConsentSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomizeConsentSettings-Examples-End -->

<!-- CustomizeConsentSettings-End -->

<!-- DisableWindowsErrorReporting-Begin -->
## DisableWindowsErrorReporting

<!-- DisableWindowsErrorReporting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisableWindowsErrorReporting-Applicability-End -->

<!-- DisableWindowsErrorReporting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ErrorReporting/DisableWindowsErrorReporting
```
<!-- DisableWindowsErrorReporting-OmaUri-End -->

<!-- DisableWindowsErrorReporting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Windows Error Reporting, so that reports aren't collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.

- If you enable this policy setting, Windows Error Reporting doesn't send any problem information to Microsoft. Additionally, solution information isn't available in Security and Maintenance in Control Panel.

- If you disable or don't configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.
<!-- DisableWindowsErrorReporting-Description-End -->

<!-- DisableWindowsErrorReporting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableWindowsErrorReporting-Editable-End -->

<!-- DisableWindowsErrorReporting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableWindowsErrorReporting-DFProperties-End -->

<!-- DisableWindowsErrorReporting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerDisable_2 |
| Friendly Name | Disable Windows Error Reporting |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | Disabled |
| ADMX File Name | ErrorReporting.admx |
<!-- DisableWindowsErrorReporting-AdmxBacked-End -->

<!-- DisableWindowsErrorReporting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableWindowsErrorReporting-Examples-End -->

<!-- DisableWindowsErrorReporting-End -->

<!-- DisplayErrorNotification-Begin -->
## DisplayErrorNotification

<!-- DisplayErrorNotification-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DisplayErrorNotification-Applicability-End -->

<!-- DisplayErrorNotification-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ErrorReporting/DisplayErrorNotification
```
<!-- DisplayErrorNotification-OmaUri-End -->

<!-- DisplayErrorNotification-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether users are shown an error dialog box that lets them report an error.

- If you enable this policy setting, users are notified in a dialog box that an error has occurred, and can display more details about the error. If the Configure Error Reporting policy setting is also enabled, the user can also report the error.

- If you disable this policy setting, users aren't notified that errors have occurred. If the Configure Error Reporting policy setting is also enabled, errors are reported, but users receive no notification. Disabling this policy setting is useful for servers that don't have interactive users.

- If you don't configure this policy setting, users can change this setting in Control Panel, which is set to enable notification by default on computers that are running Windows XP Personal Edition and Windows XP Professional Edition, and disable notification by default on computers that are running Windows Server.

See also the Configure Error Reporting policy setting.
<!-- DisplayErrorNotification-Description-End -->

<!-- DisplayErrorNotification-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisplayErrorNotification-Editable-End -->

<!-- DisplayErrorNotification-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisplayErrorNotification-DFProperties-End -->

<!-- DisplayErrorNotification-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_ShowUI |
| Friendly Name | Display Error Notification |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| Registry Value Name | ShowUI |
| ADMX File Name | ErrorReporting.admx |
<!-- DisplayErrorNotification-AdmxBacked-End -->

<!-- DisplayErrorNotification-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisplayErrorNotification-Examples-End -->

<!-- DisplayErrorNotification-End -->

<!-- DoNotSendAdditionalData-Begin -->
## DoNotSendAdditionalData

<!-- DoNotSendAdditionalData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DoNotSendAdditionalData-Applicability-End -->

<!-- DoNotSendAdditionalData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ErrorReporting/DoNotSendAdditionalData
```
<!-- DoNotSendAdditionalData-OmaUri-End -->

<!-- DoNotSendAdditionalData-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.

- If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.

- If you disable or don't configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.
<!-- DoNotSendAdditionalData-Description-End -->

<!-- DoNotSendAdditionalData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DoNotSendAdditionalData-Editable-End -->

<!-- DoNotSendAdditionalData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DoNotSendAdditionalData-DFProperties-End -->

<!-- DoNotSendAdditionalData-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerNoSecondLevelData_2 |
| Friendly Name | Do not send additional data |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DontSendAdditionalData |
| ADMX File Name | ErrorReporting.admx |
<!-- DoNotSendAdditionalData-AdmxBacked-End -->

<!-- DoNotSendAdditionalData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DoNotSendAdditionalData-Examples-End -->

<!-- DoNotSendAdditionalData-End -->

<!-- PreventCriticalErrorDisplay-Begin -->
## PreventCriticalErrorDisplay

<!-- PreventCriticalErrorDisplay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventCriticalErrorDisplay-Applicability-End -->

<!-- PreventCriticalErrorDisplay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ErrorReporting/PreventCriticalErrorDisplay
```
<!-- PreventCriticalErrorDisplay-OmaUri-End -->

<!-- PreventCriticalErrorDisplay-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the display of the user interface for critical errors.

- If you enable or don't configure this policy setting, Windows Error Reporting doesn't display any GUI-based error messages or dialog boxes for critical errors.

- If you disable this policy setting, Windows Error Reporting displays the GUI-based error messages or dialog boxes for critical errors.
<!-- PreventCriticalErrorDisplay-Description-End -->

<!-- PreventCriticalErrorDisplay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventCriticalErrorDisplay-Editable-End -->

<!-- PreventCriticalErrorDisplay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventCriticalErrorDisplay-DFProperties-End -->

<!-- PreventCriticalErrorDisplay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerDoNotShowUI |
| Friendly Name | Prevent display of the user interface for critical errors |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DontShowUI |
| ADMX File Name | ErrorReporting.admx |
<!-- PreventCriticalErrorDisplay-AdmxBacked-End -->

<!-- PreventCriticalErrorDisplay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventCriticalErrorDisplay-Examples-End -->

<!-- PreventCriticalErrorDisplay-End -->

<!-- ErrorReporting-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ErrorReporting-CspMoreInfo-End -->

<!-- ErrorReporting-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
