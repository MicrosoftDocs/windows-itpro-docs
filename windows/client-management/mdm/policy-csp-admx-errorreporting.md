---
title: ADMX_ErrorReporting Policy CSP
description: Learn more about the ADMX_ErrorReporting Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ErrorReporting-Begin -->
# Policy CSP - ADMX_ErrorReporting

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ErrorReporting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ErrorReporting-Editable-End -->

<!-- PCH_AllOrNoneDef-Begin -->
## PCH_AllOrNoneDef

<!-- PCH_AllOrNoneDef-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_AllOrNoneDef-Applicability-End -->

<!-- PCH_AllOrNoneDef-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/PCH_AllOrNoneDef
```
<!-- PCH_AllOrNoneDef-OmaUri-End -->

<!-- PCH_AllOrNoneDef-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether errors in general applications are included in reports when Windows Error Reporting is enabled.

- If you enable this policy setting, you can instruct Windows Error Reporting in the Default pull-down menu to report either all application errors (the default setting), or no application errors.

If the Report all errors in Microsoft applications check box is filled, all errors in Microsoft applications are reported, regardless of the setting in the Default pull-down menu. When the Report all errors in Windows check box is filled, all errors in Windows applications are reported, regardless of the setting in the Default dropdown list. The Windows applications category is a subset of Microsoft applications.

- If you disable or don't configure this policy setting, users can enable or disable Windows Error Reporting in Control Panel. The default setting in Control Panel is Upload all applications.

This policy setting is ignored if the Configure Error Reporting policy setting is disabled or not configured.

For related information, see the Configure Error Reporting and Report Operating System Errors policy settings.
<!-- PCH_AllOrNoneDef-Description-End -->

<!-- PCH_AllOrNoneDef-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_AllOrNoneDef-Editable-End -->

<!-- PCH_AllOrNoneDef-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_AllOrNoneDef-DFProperties-End -->

<!-- PCH_AllOrNoneDef-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_AllOrNoneDef |
| Friendly Name | Default application reporting settings |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| ADMX File Name | ErrorReporting.admx |
<!-- PCH_AllOrNoneDef-AdmxBacked-End -->

<!-- PCH_AllOrNoneDef-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_AllOrNoneDef-Examples-End -->

<!-- PCH_AllOrNoneDef-End -->

<!-- PCH_AllOrNoneEx-Begin -->
## PCH_AllOrNoneEx

<!-- PCH_AllOrNoneEx-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_AllOrNoneEx-Applicability-End -->

<!-- PCH_AllOrNoneEx-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/PCH_AllOrNoneEx
```
<!-- PCH_AllOrNoneEx-OmaUri-End -->

<!-- PCH_AllOrNoneEx-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.

- If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show under the Exclude errors for applications on this list setting, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. Errors that are generated by applications in this list aren't reported, even if the Default Application Reporting Settings policy setting is configured to report all application errors.

- If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence. If an application is listed both in the List of applications to always report errors for policy setting, and in the exclusion list in this policy setting, the application is excluded from error reporting. You can also use the exclusion list in this policy setting to exclude specific Microsoft applications or parts of Windows if the check boxes for these categories are filled in the Default application reporting settings policy setting.

- If you disable or don't configure this policy setting, the Default application reporting settings policy setting takes precedence.
<!-- PCH_AllOrNoneEx-Description-End -->

<!-- PCH_AllOrNoneEx-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_AllOrNoneEx-Editable-End -->

<!-- PCH_AllOrNoneEx-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_AllOrNoneEx-DFProperties-End -->

<!-- PCH_AllOrNoneEx-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_AllOrNoneEx |
| Friendly Name | List of applications to never report errors for |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| ADMX File Name | ErrorReporting.admx |
<!-- PCH_AllOrNoneEx-AdmxBacked-End -->

<!-- PCH_AllOrNoneEx-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_AllOrNoneEx-Examples-End -->

<!-- PCH_AllOrNoneEx-End -->

<!-- PCH_AllOrNoneInc-Begin -->
## PCH_AllOrNoneInc

<!-- PCH_AllOrNoneInc-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_AllOrNoneInc-Applicability-End -->

<!-- PCH_AllOrNoneInc-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/PCH_AllOrNoneInc
```
<!-- PCH_AllOrNoneInc-OmaUri-End -->

<!-- PCH_AllOrNoneInc-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies applications for which Windows Error Reporting should always report errors.

To create a list of applications for which Windows Error Reporting never reports errors, click Show under the Exclude errors for applications on this list setting, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). Errors that are generated by applications in this list aren't reported, even if the Default Application Reporting Settings policy setting is configured to report all application errors.

- If you enable this policy setting, you can create a list of applications that are always included in error reporting. To add applications to the list, click Show under the Report errors for applications on this list setting, and edit the list of application file names in the Show Contents dialog box. The file names must include the .exe file name extension (for example, notepad.exe). Errors that are generated by applications on this list are always reported, even if the Default dropdown in the Default application reporting policy setting is set to report no application errors.

If the Report all errors in Microsoft applications or Report all errors in Windows components check boxes in the Default Application Reporting policy setting are filled, Windows Error Reporting reports errors as if all applications in these categories were added to the list in this policy setting. (Note: The Microsoft applications category includes the Windows components category).

- If you disable this policy setting or don't configure it, the Default application reporting settings policy setting takes precedence.

Also see the "Default Application Reporting" and "Application Exclusion List" policies.

This setting will be ignored if the 'Configure Error Reporting' setting is disabled or not configured.
<!-- PCH_AllOrNoneInc-Description-End -->

<!-- PCH_AllOrNoneInc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_AllOrNoneInc-Editable-End -->

<!-- PCH_AllOrNoneInc-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_AllOrNoneInc-DFProperties-End -->

<!-- PCH_AllOrNoneInc-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_AllOrNoneInc |
| Friendly Name | List of applications to always report errors for |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| ADMX File Name | ErrorReporting.admx |
<!-- PCH_AllOrNoneInc-AdmxBacked-End -->

<!-- PCH_AllOrNoneInc-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_AllOrNoneInc-Examples-End -->

<!-- PCH_AllOrNoneInc-End -->

<!-- PCH_ConfigureReport-Begin -->
## PCH_ConfigureReport

<!-- PCH_ConfigureReport-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_ConfigureReport-Applicability-End -->

<!-- PCH_ConfigureReport-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/PCH_ConfigureReport
```
<!-- PCH_ConfigureReport-OmaUri-End -->

<!-- PCH_ConfigureReport-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures how errors are reported to Microsoft, and what information is sent when Windows Error Reporting is enabled.

This policy setting doesn't enable or disable Windows Error Reporting. To turn Windows Error Reporting on or off, see the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings.

> [!IMPORTANT]
> If the Turn off Windows Error Reporting policy setting isn't configured, then Control Panel settings for Windows Error Reporting override this policy setting.

- If you enable this policy setting, the setting overrides any user changes made to Windows Error Reporting settings in Control Panel, and default values are applied for any Windows Error Reporting policy settings that aren't configured (even if users have changed settings by using Control Panel).

- If you enable this policy setting, you can configure the following settings in the policy setting:

- "Do not display links to any Microsoft 'More information' websites": Select this option if you don't want error dialog boxes to display links to Microsoft websites.

- "Do not collect additional files": Select this option if you don't want additional files to be collected and included in error reports.

- "Do not collect additional computer data": Select this if you don't want additional information about the computer to be collected and included in error reports.

- "Force queue mode for application errors": Select this option if you don't want users to report errors. When this option is selected, errors are stored in a queue directory, and the next administrator to log on to the computer can send the error reports to Microsoft.

- "Corporate file path": Type a UNC path to enable Corporate Error Reporting. All errors are stored at the specified location instead of being sent directly to Microsoft, and the next administrator to log onto the computer can send the error reports to Microsoft.

- "Replace instances of the word 'Microsoft' with": You can specify text with which to customize your error report dialog boxes. The word "Microsoft" is replaced with the specified text.

- If you don't configure this policy setting, users can change Windows Error Reporting settings in Control Panel. By default, these settings are Enable Reporting on computers that are running Windows XP, and Report to Queue on computers that are running Windows Server 2003.

- If you disable this policy setting, configuration settings in the policy setting are left blank.

See related policy settings Display Error Notification (same folder as this policy setting), and Turn off Windows Error Reporting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings.
<!-- PCH_ConfigureReport-Description-End -->

<!-- PCH_ConfigureReport-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_ConfigureReport-Editable-End -->

<!-- PCH_ConfigureReport-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_ConfigureReport-DFProperties-End -->

<!-- PCH_ConfigureReport-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_ConfigureReport |
| Friendly Name | Configure Error Reporting |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| ADMX File Name | ErrorReporting.admx |
<!-- PCH_ConfigureReport-AdmxBacked-End -->

<!-- PCH_ConfigureReport-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_ConfigureReport-Examples-End -->

<!-- PCH_ConfigureReport-End -->

<!-- PCH_ReportOperatingSystemFaults-Begin -->
## PCH_ReportOperatingSystemFaults

<!-- PCH_ReportOperatingSystemFaults-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PCH_ReportOperatingSystemFaults-Applicability-End -->

<!-- PCH_ReportOperatingSystemFaults-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/PCH_ReportOperatingSystemFaults
```
<!-- PCH_ReportOperatingSystemFaults-OmaUri-End -->

<!-- PCH_ReportOperatingSystemFaults-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether errors in the operating system are included Windows Error Reporting is enabled.

- If you enable this policy setting, Windows Error Reporting includes operating system errors.

- If you disable this policy setting, operating system errors aren't included in error reports.

- If you don't configure this policy setting, users can change this setting in Control Panel. By default, Windows Error Reporting settings in Control Panel are set to upload operating system errors.

See also the Configure Error Reporting policy setting.
<!-- PCH_ReportOperatingSystemFaults-Description-End -->

<!-- PCH_ReportOperatingSystemFaults-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PCH_ReportOperatingSystemFaults-Editable-End -->

<!-- PCH_ReportOperatingSystemFaults-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PCH_ReportOperatingSystemFaults-DFProperties-End -->

<!-- PCH_ReportOperatingSystemFaults-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PCH_ReportOperatingSystemFaults |
| Friendly Name | Report operating system errors |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | Software\Policies\Microsoft\PCHealth\ErrorReporting |
| Registry Value Name | IncludeKernelFaults |
| ADMX File Name | ErrorReporting.admx |
<!-- PCH_ReportOperatingSystemFaults-AdmxBacked-End -->

<!-- PCH_ReportOperatingSystemFaults-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PCH_ReportOperatingSystemFaults-Examples-End -->

<!-- PCH_ReportOperatingSystemFaults-End -->

<!-- WerArchive_1-Begin -->
## WerArchive_1

<!-- WerArchive_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerArchive_1-Applicability-End -->

<!-- WerArchive_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerArchive_1
```
<!-- WerArchive_1-OmaUri-End -->

<!-- WerArchive_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the behavior of the Windows Error Reporting archive.

- If you enable this policy setting, you can configure Windows Error Reporting archiving behavior. If Archive behavior is set to Store all, all data collected for each error report is stored in the appropriate location. If Archive behavior is set to Store parameters only, only the minimum information required to check for an existing solution is stored. The Maximum number of reports to store setting determines how many reports are stored before older reports are automatically deleted.

- If you disable or don't configure this policy setting, no Windows Error Reporting information is stored.
<!-- WerArchive_1-Description-End -->

<!-- WerArchive_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerArchive_1-Editable-End -->

<!-- WerArchive_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerArchive_1-DFProperties-End -->

<!-- WerArchive_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerArchive_1 |
| Friendly Name | Configure Report Archive |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DisableArchive |
| ADMX File Name | ErrorReporting.admx |
<!-- WerArchive_1-AdmxBacked-End -->

<!-- WerArchive_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerArchive_1-Examples-End -->

<!-- WerArchive_1-End -->

<!-- WerArchive_2-Begin -->
## WerArchive_2

<!-- WerArchive_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerArchive_2-Applicability-End -->

<!-- WerArchive_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerArchive_2
```
<!-- WerArchive_2-OmaUri-End -->

<!-- WerArchive_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the behavior of the Windows Error Reporting archive.

- If you enable this policy setting, you can configure Windows Error Reporting archiving behavior. If Archive behavior is set to Store all, all data collected for each error report is stored in the appropriate location. If Archive behavior is set to Store parameters only, only the minimum information required to check for an existing solution is stored. The Maximum number of reports to store setting determines how many reports are stored before older reports are automatically deleted.

- If you disable or don't configure this policy setting, no Windows Error Reporting information is stored.
<!-- WerArchive_2-Description-End -->

<!-- WerArchive_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerArchive_2-Editable-End -->

<!-- WerArchive_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerArchive_2-DFProperties-End -->

<!-- WerArchive_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerArchive_2 |
| Friendly Name | Configure Report Archive |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DisableArchive |
| ADMX File Name | ErrorReporting.admx |
<!-- WerArchive_2-AdmxBacked-End -->

<!-- WerArchive_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerArchive_2-Examples-End -->

<!-- WerArchive_2-End -->

<!-- WerAutoApproveOSDumps_1-Begin -->
## WerAutoApproveOSDumps_1

<!-- WerAutoApproveOSDumps_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerAutoApproveOSDumps_1-Applicability-End -->

<!-- WerAutoApproveOSDumps_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerAutoApproveOSDumps_1
```
<!-- WerAutoApproveOSDumps_1-OmaUri-End -->

<!-- WerAutoApproveOSDumps_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether memory dumps in support of OS-generated error reports can be sent to Microsoft automatically. This policy doesn't apply to error reports generated by 3rd-party products, or additional data other than memory dumps.

- If you enable or don't configure this policy setting, any memory dumps generated for error reports by Microsoft Windows are automatically uploaded, without notification to the user.

- If you disable this policy setting, then all memory dumps are uploaded according to the default consent and notification settings.
<!-- WerAutoApproveOSDumps_1-Description-End -->

<!-- WerAutoApproveOSDumps_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerAutoApproveOSDumps_1-Editable-End -->

<!-- WerAutoApproveOSDumps_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerAutoApproveOSDumps_1-DFProperties-End -->

<!-- WerAutoApproveOSDumps_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerAutoApproveOSDumps_1 |
| Friendly Name | Automatically send memory dumps for OS-generated error reports |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | AutoApproveOSDumps |
| ADMX File Name | ErrorReporting.admx |
<!-- WerAutoApproveOSDumps_1-AdmxBacked-End -->

<!-- WerAutoApproveOSDumps_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerAutoApproveOSDumps_1-Examples-End -->

<!-- WerAutoApproveOSDumps_1-End -->

<!-- WerAutoApproveOSDumps_2-Begin -->
## WerAutoApproveOSDumps_2

<!-- WerAutoApproveOSDumps_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerAutoApproveOSDumps_2-Applicability-End -->

<!-- WerAutoApproveOSDumps_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerAutoApproveOSDumps_2
```
<!-- WerAutoApproveOSDumps_2-OmaUri-End -->

<!-- WerAutoApproveOSDumps_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether memory dumps in support of OS-generated error reports can be sent to Microsoft automatically. This policy doesn't apply to error reports generated by 3rd-party products, or additional data other than memory dumps.

- If you enable or don't configure this policy setting, any memory dumps generated for error reports by Microsoft Windows are automatically uploaded, without notification to the user.

- If you disable this policy setting, then all memory dumps are uploaded according to the default consent and notification settings.
<!-- WerAutoApproveOSDumps_2-Description-End -->

<!-- WerAutoApproveOSDumps_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerAutoApproveOSDumps_2-Editable-End -->

<!-- WerAutoApproveOSDumps_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerAutoApproveOSDumps_2-DFProperties-End -->

<!-- WerAutoApproveOSDumps_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerAutoApproveOSDumps_2 |
| Friendly Name | Automatically send memory dumps for OS-generated error reports |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | AutoApproveOSDumps |
| ADMX File Name | ErrorReporting.admx |
<!-- WerAutoApproveOSDumps_2-AdmxBacked-End -->

<!-- WerAutoApproveOSDumps_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerAutoApproveOSDumps_2-Examples-End -->

<!-- WerAutoApproveOSDumps_2-End -->

<!-- WerBypassDataThrottling_1-Begin -->
## WerBypassDataThrottling_1

<!-- WerBypassDataThrottling_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerBypassDataThrottling_1-Applicability-End -->

<!-- WerBypassDataThrottling_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerBypassDataThrottling_1
```
<!-- WerBypassDataThrottling_1-OmaUri-End -->

<!-- WerBypassDataThrottling_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows Error Reporting (WER) sends additional, second-level report data even if a CAB file containing data about the same event types has already been uploaded to the server.

- If you enable this policy setting, WER doesn't throttle data; that is, WER uploads additional CAB files that can contain data about the same event types as an earlier uploaded report.

- If you disable or don't configure this policy setting, WER throttles data by default; that is, WER doesn't upload more than one CAB file for a report that contains data about the same event types.
<!-- WerBypassDataThrottling_1-Description-End -->

<!-- WerBypassDataThrottling_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerBypassDataThrottling_1-Editable-End -->

<!-- WerBypassDataThrottling_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerBypassDataThrottling_1-DFProperties-End -->

<!-- WerBypassDataThrottling_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerBypassDataThrottling_1 |
| Friendly Name | Do not throttle additional data |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | BypassDataThrottling |
| ADMX File Name | ErrorReporting.admx |
<!-- WerBypassDataThrottling_1-AdmxBacked-End -->

<!-- WerBypassDataThrottling_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerBypassDataThrottling_1-Examples-End -->

<!-- WerBypassDataThrottling_1-End -->

<!-- WerBypassDataThrottling_2-Begin -->
## WerBypassDataThrottling_2

<!-- WerBypassDataThrottling_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerBypassDataThrottling_2-Applicability-End -->

<!-- WerBypassDataThrottling_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerBypassDataThrottling_2
```
<!-- WerBypassDataThrottling_2-OmaUri-End -->

<!-- WerBypassDataThrottling_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows Error Reporting (WER) sends additional, second-level report data even if a CAB file containing data about the same event types has already been uploaded to the server.

- If you enable this policy setting, WER doesn't throttle data; that is, WER uploads additional CAB files that can contain data about the same event types as an earlier uploaded report.

- If you disable or don't configure this policy setting, WER throttles data by default; that is, WER doesn't upload more than one CAB file for a report that contains data about the same event types.
<!-- WerBypassDataThrottling_2-Description-End -->

<!-- WerBypassDataThrottling_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerBypassDataThrottling_2-Editable-End -->

<!-- WerBypassDataThrottling_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerBypassDataThrottling_2-DFProperties-End -->

<!-- WerBypassDataThrottling_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerBypassDataThrottling_2 |
| Friendly Name | Do not throttle additional data |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | BypassDataThrottling |
| ADMX File Name | ErrorReporting.admx |
<!-- WerBypassDataThrottling_2-AdmxBacked-End -->

<!-- WerBypassDataThrottling_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerBypassDataThrottling_2-Examples-End -->

<!-- WerBypassDataThrottling_2-End -->

<!-- WerBypassNetworkCostThrottling_1-Begin -->
## WerBypassNetworkCostThrottling_1

<!-- WerBypassNetworkCostThrottling_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerBypassNetworkCostThrottling_1-Applicability-End -->

<!-- WerBypassNetworkCostThrottling_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerBypassNetworkCostThrottling_1
```
<!-- WerBypassNetworkCostThrottling_1-OmaUri-End -->

<!-- WerBypassNetworkCostThrottling_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows Error Reporting (WER) checks for a network cost policy that restricts the amount of data that's sent over the network.

- If you enable this policy setting, WER doesn't check for network cost policy restrictions, and transmits data even if network cost is restricted.

- If you disable or don't configure this policy setting, WER doesn't send data, but will check the network cost policy again if the network profile is changed.
<!-- WerBypassNetworkCostThrottling_1-Description-End -->

<!-- WerBypassNetworkCostThrottling_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerBypassNetworkCostThrottling_1-Editable-End -->

<!-- WerBypassNetworkCostThrottling_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerBypassNetworkCostThrottling_1-DFProperties-End -->

<!-- WerBypassNetworkCostThrottling_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerBypassNetworkCostThrottling_1 |
| Friendly Name | Send data when on connected to a restricted/costed network |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | BypassNetworkCostThrottling |
| ADMX File Name | ErrorReporting.admx |
<!-- WerBypassNetworkCostThrottling_1-AdmxBacked-End -->

<!-- WerBypassNetworkCostThrottling_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerBypassNetworkCostThrottling_1-Examples-End -->

<!-- WerBypassNetworkCostThrottling_1-End -->

<!-- WerBypassNetworkCostThrottling_2-Begin -->
## WerBypassNetworkCostThrottling_2

<!-- WerBypassNetworkCostThrottling_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerBypassNetworkCostThrottling_2-Applicability-End -->

<!-- WerBypassNetworkCostThrottling_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerBypassNetworkCostThrottling_2
```
<!-- WerBypassNetworkCostThrottling_2-OmaUri-End -->

<!-- WerBypassNetworkCostThrottling_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows Error Reporting (WER) checks for a network cost policy that restricts the amount of data that's sent over the network.

- If you enable this policy setting, WER doesn't check for network cost policy restrictions, and transmits data even if network cost is restricted.

- If you disable or don't configure this policy setting, WER doesn't send data, but will check the network cost policy again if the network profile is changed.
<!-- WerBypassNetworkCostThrottling_2-Description-End -->

<!-- WerBypassNetworkCostThrottling_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerBypassNetworkCostThrottling_2-Editable-End -->

<!-- WerBypassNetworkCostThrottling_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerBypassNetworkCostThrottling_2-DFProperties-End -->

<!-- WerBypassNetworkCostThrottling_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerBypassNetworkCostThrottling_2 |
| Friendly Name | Send data when on connected to a restricted/costed network |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | BypassNetworkCostThrottling |
| ADMX File Name | ErrorReporting.admx |
<!-- WerBypassNetworkCostThrottling_2-AdmxBacked-End -->

<!-- WerBypassNetworkCostThrottling_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerBypassNetworkCostThrottling_2-Examples-End -->

<!-- WerBypassNetworkCostThrottling_2-End -->

<!-- WerBypassPowerThrottling_1-Begin -->
## WerBypassPowerThrottling_1

<!-- WerBypassPowerThrottling_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerBypassPowerThrottling_1-Applicability-End -->

<!-- WerBypassPowerThrottling_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerBypassPowerThrottling_1
```
<!-- WerBypassPowerThrottling_1-OmaUri-End -->

<!-- WerBypassPowerThrottling_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows Error Reporting (WER) checks if the computer is running on battery power. By default, when a computer is running on battery power, WER only checks for solutions, but doesn't upload additional report data until the computer is connected to a more permanent power source.

- If you enable this policy setting, WER doesn't determine whether the computer is running on battery power, but checks for solutions and uploads report data normally.

- If you disable or don't configure this policy setting, WER checks for solutions while a computer is running on battery power, but doesn't upload report data until the computer is connected to a more permanent power source.
<!-- WerBypassPowerThrottling_1-Description-End -->

<!-- WerBypassPowerThrottling_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerBypassPowerThrottling_1-Editable-End -->

<!-- WerBypassPowerThrottling_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerBypassPowerThrottling_1-DFProperties-End -->

<!-- WerBypassPowerThrottling_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerBypassPowerThrottling_1 |
| Friendly Name | Send additional data when on battery power |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | BypassPowerThrottling |
| ADMX File Name | ErrorReporting.admx |
<!-- WerBypassPowerThrottling_1-AdmxBacked-End -->

<!-- WerBypassPowerThrottling_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerBypassPowerThrottling_1-Examples-End -->

<!-- WerBypassPowerThrottling_1-End -->

<!-- WerBypassPowerThrottling_2-Begin -->
## WerBypassPowerThrottling_2

<!-- WerBypassPowerThrottling_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerBypassPowerThrottling_2-Applicability-End -->

<!-- WerBypassPowerThrottling_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerBypassPowerThrottling_2
```
<!-- WerBypassPowerThrottling_2-OmaUri-End -->

<!-- WerBypassPowerThrottling_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows Error Reporting (WER) checks if the computer is running on battery power. By default, when a computer is running on battery power, WER only checks for solutions, but doesn't upload additional report data until the computer is connected to a more permanent power source.

- If you enable this policy setting, WER doesn't determine whether the computer is running on battery power, but checks for solutions and uploads report data normally.

- If you disable or don't configure this policy setting, WER checks for solutions while a computer is running on battery power, but doesn't upload report data until the computer is connected to a more permanent power source.
<!-- WerBypassPowerThrottling_2-Description-End -->

<!-- WerBypassPowerThrottling_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerBypassPowerThrottling_2-Editable-End -->

<!-- WerBypassPowerThrottling_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerBypassPowerThrottling_2-DFProperties-End -->

<!-- WerBypassPowerThrottling_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerBypassPowerThrottling_2 |
| Friendly Name | Send additional data when on battery power |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | BypassPowerThrottling |
| ADMX File Name | ErrorReporting.admx |
<!-- WerBypassPowerThrottling_2-AdmxBacked-End -->

<!-- WerBypassPowerThrottling_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerBypassPowerThrottling_2-Examples-End -->

<!-- WerBypassPowerThrottling_2-End -->

<!-- WerCER-Begin -->
## WerCER

<!-- WerCER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerCER-Applicability-End -->

<!-- WerCER-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerCER
```
<!-- WerCER-OmaUri-End -->

<!-- WerCER-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies a corporate server to which Windows Error Reporting sends reports (if you don't want to send error reports to Microsoft).

- If you enable this policy setting, you can specify the name or IP address of an error report destination server on your organization's network. You can also select Connect using SSL to transmit error reports over a Secure Sockets Layer (SSL) connection, and specify a port number on the destination server for transmission.

- If you disable or don't configure this policy setting, Windows Error Reporting sends error reports to Microsoft.
<!-- WerCER-Description-End -->

<!-- WerCER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerCER-Editable-End -->

<!-- WerCER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerCER-DFProperties-End -->

<!-- WerCER-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerCER |
| Friendly Name | Configure Corporate Windows Error Reporting |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| ADMX File Name | ErrorReporting.admx |
<!-- WerCER-AdmxBacked-End -->

<!-- WerCER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerCER-Examples-End -->

<!-- WerCER-End -->

<!-- WerConsentCustomize_1-Begin -->
## WerConsentCustomize_1

<!-- WerConsentCustomize_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerConsentCustomize_1-Applicability-End -->

<!-- WerConsentCustomize_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerConsentCustomize_1
```
<!-- WerConsentCustomize_1-OmaUri-End -->

<!-- WerConsentCustomize_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the consent behavior of Windows Error Reporting for specific event types.

- If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.

- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.

- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.

- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.

- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) doesn't contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.

- 4 (Send all data): Any data requested by Microsoft is sent automatically.

- If you disable or don't configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.
<!-- WerConsentCustomize_1-Description-End -->

<!-- WerConsentCustomize_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerConsentCustomize_1-Editable-End -->

<!-- WerConsentCustomize_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerConsentCustomize_1-DFProperties-End -->

<!-- WerConsentCustomize_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerConsentCustomize_1 |
| Friendly Name | Customize consent settings |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting > Consent |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent |
| ADMX File Name | ErrorReporting.admx |
<!-- WerConsentCustomize_1-AdmxBacked-End -->

<!-- WerConsentCustomize_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerConsentCustomize_1-Examples-End -->

<!-- WerConsentCustomize_1-End -->

<!-- WerConsentOverride_1-Begin -->
## WerConsentOverride_1

<!-- WerConsentOverride_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerConsentOverride_1-Applicability-End -->

<!-- WerConsentOverride_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerConsentOverride_1
```
<!-- WerConsentOverride_1-OmaUri-End -->

<!-- WerConsentOverride_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the behavior of the Configure Default Consent setting in relation to custom consent settings.

- If you enable this policy setting, the default consent levels of Windows Error Reporting always override any other consent policy setting.

- If you disable or don't configure this policy setting, custom consent policy settings for error reporting determine the consent level for specified event types, and the default consent setting determines only the consent level of any other error reports.
<!-- WerConsentOverride_1-Description-End -->

<!-- WerConsentOverride_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerConsentOverride_1-Editable-End -->

<!-- WerConsentOverride_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerConsentOverride_1-DFProperties-End -->

<!-- WerConsentOverride_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerConsentOverride_1 |
| Friendly Name | Ignore custom consent settings |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting > Consent |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent |
| Registry Value Name | DefaultOverrideBehavior |
| ADMX File Name | ErrorReporting.admx |
<!-- WerConsentOverride_1-AdmxBacked-End -->

<!-- WerConsentOverride_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerConsentOverride_1-Examples-End -->

<!-- WerConsentOverride_1-End -->

<!-- WerConsentOverride_2-Begin -->
## WerConsentOverride_2

<!-- WerConsentOverride_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerConsentOverride_2-Applicability-End -->

<!-- WerConsentOverride_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerConsentOverride_2
```
<!-- WerConsentOverride_2-OmaUri-End -->

<!-- WerConsentOverride_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the behavior of the Configure Default Consent setting in relation to custom consent settings.

- If you enable this policy setting, the default consent levels of Windows Error Reporting always override any other consent policy setting.

- If you disable or don't configure this policy setting, custom consent policy settings for error reporting determine the consent level for specified event types, and the default consent setting determines only the consent level of any other error reports.
<!-- WerConsentOverride_2-Description-End -->

<!-- WerConsentOverride_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerConsentOverride_2-Editable-End -->

<!-- WerConsentOverride_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerConsentOverride_2-DFProperties-End -->

<!-- WerConsentOverride_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerConsentOverride_2 |
| Friendly Name | Ignore custom consent settings |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Consent |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent |
| Registry Value Name | DefaultOverrideBehavior |
| ADMX File Name | ErrorReporting.admx |
<!-- WerConsentOverride_2-AdmxBacked-End -->

<!-- WerConsentOverride_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerConsentOverride_2-Examples-End -->

<!-- WerConsentOverride_2-End -->

<!-- WerDefaultConsent_1-Begin -->
## WerDefaultConsent_1

<!-- WerDefaultConsent_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerDefaultConsent_1-Applicability-End -->

<!-- WerDefaultConsent_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerDefaultConsent_1
```
<!-- WerDefaultConsent_1-OmaUri-End -->

<!-- WerDefaultConsent_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the default consent behavior of Windows Error Reporting.

- If you enable this policy setting, you can set the default consent handling for error reports. The following list describes the Consent level settings that are available in the pull-down menu in this policy setting:

- Always ask before sending data: Windows prompts users for consent to send reports.

- Send parameters: Only the minimum data that's required to check for an existing solution is sent automatically, and Windows prompts users for consent to send any additional data that's requested by Microsoft.

- Send parameters and safe additional data: the minimum data that's required to check for an existing solution, along with data which Windows has determined (within a high probability) doesn't contain personally-identifiable information is sent automatically, and Windows prompts the user for consent to send any additional data that's requested by Microsoft.

- Send all data: any error reporting data requested by Microsoft is sent automatically.

- If this policy setting is disabled or not configured, then the consent level defaults to the highest-privacy setting: Always ask before sending data.
<!-- WerDefaultConsent_1-Description-End -->

<!-- WerDefaultConsent_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerDefaultConsent_1-Editable-End -->

<!-- WerDefaultConsent_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerDefaultConsent_1-DFProperties-End -->

<!-- WerDefaultConsent_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerDefaultConsent_1 |
| Friendly Name | Configure Default consent |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting > Consent |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent |
| ADMX File Name | ErrorReporting.admx |
<!-- WerDefaultConsent_1-AdmxBacked-End -->

<!-- WerDefaultConsent_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerDefaultConsent_1-Examples-End -->

<!-- WerDefaultConsent_1-End -->

<!-- WerDefaultConsent_2-Begin -->
## WerDefaultConsent_2

<!-- WerDefaultConsent_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerDefaultConsent_2-Applicability-End -->

<!-- WerDefaultConsent_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerDefaultConsent_2
```
<!-- WerDefaultConsent_2-OmaUri-End -->

<!-- WerDefaultConsent_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the default consent behavior of Windows Error Reporting.

- If you enable this policy setting, you can set the default consent handling for error reports. The following list describes the Consent level settings that are available in the pull-down menu in this policy setting:

- Always ask before sending data: Windows prompts users for consent to send reports.

- Send parameters: Only the minimum data that's required to check for an existing solution is sent automatically, and Windows prompts users for consent to send any additional data that's requested by Microsoft.

- Send parameters and safe additional data: the minimum data that's required to check for an existing solution, along with data which Windows has determined (within a high probability) doesn't contain personally-identifiable information is sent automatically, and Windows prompts the user for consent to send any additional data that's requested by Microsoft.

- Send all data: any error reporting data requested by Microsoft is sent automatically.

- If this policy setting is disabled or not configured, then the consent level defaults to the highest-privacy setting: Always ask before sending data.
<!-- WerDefaultConsent_2-Description-End -->

<!-- WerDefaultConsent_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerDefaultConsent_2-Editable-End -->

<!-- WerDefaultConsent_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerDefaultConsent_2-DFProperties-End -->

<!-- WerDefaultConsent_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerDefaultConsent_2 |
| Friendly Name | Configure Default consent |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Consent |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting\Consent |
| ADMX File Name | ErrorReporting.admx |
<!-- WerDefaultConsent_2-AdmxBacked-End -->

<!-- WerDefaultConsent_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerDefaultConsent_2-Examples-End -->

<!-- WerDefaultConsent_2-End -->

<!-- WerDisable_1-Begin -->
## WerDisable_1

<!-- WerDisable_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerDisable_1-Applicability-End -->

<!-- WerDisable_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerDisable_1
```
<!-- WerDisable_1-OmaUri-End -->

<!-- WerDisable_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Windows Error Reporting, so that reports aren't collected or sent to either Microsoft or internal servers within your organization when software unexpectedly stops working or fails.

- If you enable this policy setting, Windows Error Reporting doesn't send any problem information to Microsoft. Additionally, solution information isn't available in Security and Maintenance in Control Panel.

- If you disable or don't configure this policy setting, the Turn off Windows Error Reporting policy setting in Computer Configuration/Administrative Templates/System/Internet Communication Management/Internet Communication settings takes precedence. If Turn off Windows Error Reporting is also either disabled or not configured, user settings in Control Panel for Windows Error Reporting are applied.
<!-- WerDisable_1-Description-End -->

<!-- WerDisable_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerDisable_1-Editable-End -->

<!-- WerDisable_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerDisable_1-DFProperties-End -->

<!-- WerDisable_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerDisable_1 |
| Friendly Name | Disable Windows Error Reporting |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | Disabled |
| ADMX File Name | ErrorReporting.admx |
<!-- WerDisable_1-AdmxBacked-End -->

<!-- WerDisable_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerDisable_1-Examples-End -->

<!-- WerDisable_1-End -->

<!-- WerExlusion_1-Begin -->
## WerExlusion_1

<!-- WerExlusion_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerExlusion_1-Applicability-End -->

<!-- WerExlusion_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerExlusion_1
```
<!-- WerExlusion_1-OmaUri-End -->

<!-- WerExlusion_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.

- If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. To remove an application from the list, click the name, and then press DELETE.

- If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence.

- If you disable or don't configure this policy setting, errors are reported on all Microsoft and Windows applications by default.
<!-- WerExlusion_1-Description-End -->

<!-- WerExlusion_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerExlusion_1-Editable-End -->

<!-- WerExlusion_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerExlusion_1-DFProperties-End -->

<!-- WerExlusion_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerExlusion_1 |
| Friendly Name | List of applications to be excluded |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| ADMX File Name | ErrorReporting.admx |
<!-- WerExlusion_1-AdmxBacked-End -->

<!-- WerExlusion_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerExlusion_1-Examples-End -->

<!-- WerExlusion_1-End -->

<!-- WerExlusion_2-Begin -->
## WerExlusion_2

<!-- WerExlusion_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerExlusion_2-Applicability-End -->

<!-- WerExlusion_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerExlusion_2
```
<!-- WerExlusion_2-OmaUri-End -->

<!-- WerExlusion_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting limits Windows Error Reporting behavior for errors in general applications when Windows Error Reporting is turned on.

- If you enable this policy setting, you can create a list of applications that are never included in error reports. To create a list of applications for which Windows Error Reporting never reports errors, click Show, and then add or remove applications from the list of application file names in the Show Contents dialog box (example: notepad.exe). File names must always include the .exe file name extension. To remove an application from the list, click the name, and then press DELETE.

- If this policy setting is enabled, the Exclude errors for applications on this list setting takes precedence.

- If you disable or don't configure this policy setting, errors are reported on all Microsoft and Windows applications by default.
<!-- WerExlusion_2-Description-End -->

<!-- WerExlusion_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerExlusion_2-Editable-End -->

<!-- WerExlusion_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerExlusion_2-DFProperties-End -->

<!-- WerExlusion_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerExlusion_2 |
| Friendly Name | List of applications to be excluded |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| ADMX File Name | ErrorReporting.admx |
<!-- WerExlusion_2-AdmxBacked-End -->

<!-- WerExlusion_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerExlusion_2-Examples-End -->

<!-- WerExlusion_2-End -->

<!-- WerNoLogging_1-Begin -->
## WerNoLogging_1

<!-- WerNoLogging_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerNoLogging_1-Applicability-End -->

<!-- WerNoLogging_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerNoLogging_1
```
<!-- WerNoLogging_1-OmaUri-End -->

<!-- WerNoLogging_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether Windows Error Reporting saves its own events and error messages to the system event log.

- If you enable this policy setting, Windows Error Reporting events aren't recorded in the system event log.

- If you disable or don't configure this policy setting, Windows Error Reporting events and errors are logged to the system event log, as with other Windows-based programs.
<!-- WerNoLogging_1-Description-End -->

<!-- WerNoLogging_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerNoLogging_1-Editable-End -->

<!-- WerNoLogging_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerNoLogging_1-DFProperties-End -->

<!-- WerNoLogging_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerNoLogging_1 |
| Friendly Name | Disable logging |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | LoggingDisabled |
| ADMX File Name | ErrorReporting.admx |
<!-- WerNoLogging_1-AdmxBacked-End -->

<!-- WerNoLogging_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerNoLogging_1-Examples-End -->

<!-- WerNoLogging_1-End -->

<!-- WerNoLogging_2-Begin -->
## WerNoLogging_2

<!-- WerNoLogging_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerNoLogging_2-Applicability-End -->

<!-- WerNoLogging_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerNoLogging_2
```
<!-- WerNoLogging_2-OmaUri-End -->

<!-- WerNoLogging_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether Windows Error Reporting saves its own events and error messages to the system event log.

- If you enable this policy setting, Windows Error Reporting events aren't recorded in the system event log.

- If you disable or don't configure this policy setting, Windows Error Reporting events and errors are logged to the system event log, as with other Windows-based programs.
<!-- WerNoLogging_2-Description-End -->

<!-- WerNoLogging_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerNoLogging_2-Editable-End -->

<!-- WerNoLogging_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerNoLogging_2-DFProperties-End -->

<!-- WerNoLogging_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerNoLogging_2 |
| Friendly Name | Disable logging |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | LoggingDisabled |
| ADMX File Name | ErrorReporting.admx |
<!-- WerNoLogging_2-AdmxBacked-End -->

<!-- WerNoLogging_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerNoLogging_2-Examples-End -->

<!-- WerNoLogging_2-End -->

<!-- WerNoSecondLevelData_1-Begin -->
## WerNoSecondLevelData_1

<!-- WerNoSecondLevelData_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerNoSecondLevelData_1-Applicability-End -->

<!-- WerNoSecondLevelData_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerNoSecondLevelData_1
```
<!-- WerNoSecondLevelData_1-OmaUri-End -->

<!-- WerNoSecondLevelData_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.

- If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.

- If you disable or don't configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.
<!-- WerNoSecondLevelData_1-Description-End -->

<!-- WerNoSecondLevelData_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerNoSecondLevelData_1-Editable-End -->

<!-- WerNoSecondLevelData_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerNoSecondLevelData_1-DFProperties-End -->

<!-- WerNoSecondLevelData_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerNoSecondLevelData_1 |
| Friendly Name | Do not send additional data |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DontSendAdditionalData |
| ADMX File Name | ErrorReporting.admx |
<!-- WerNoSecondLevelData_1-AdmxBacked-End -->

<!-- WerNoSecondLevelData_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerNoSecondLevelData_1-Examples-End -->

<!-- WerNoSecondLevelData_1-End -->

<!-- WerQueue_1-Begin -->
## WerQueue_1

<!-- WerQueue_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerQueue_1-Applicability-End -->

<!-- WerQueue_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerQueue_1
```
<!-- WerQueue_1-OmaUri-End -->

<!-- WerQueue_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the behavior of the Windows Error Reporting report queue.

- If you enable this policy setting, you can configure report queue behavior by using the controls in the policy setting. When the Queuing behavior pull-down list is set to Default, Windows determines, when a problem occurs, whether the report should be placed in the reporting queue, or the user should be prompted to send it immediately. When Queuing behavior is set to Always queue, all reports are added to the queue until the user is prompted to send the reports, or until the user sends problem reports by using the Solutions to Problems page in Control Panel.

The Maximum number of reports to queue setting determines how many reports can be queued before older reports are automatically deleted. The setting for Number of days between solution check reminders determines the interval time between the display of system notifications that remind the user to check for solutions to problems. A value of 0 disables the reminder.

- If you disable or don't configure this policy setting, Windows Error Reporting reports aren't queued, and users can only send reports at the time that a problem occurs.
<!-- WerQueue_1-Description-End -->

<!-- WerQueue_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerQueue_1-Editable-End -->

<!-- WerQueue_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerQueue_1-DFProperties-End -->

<!-- WerQueue_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerQueue_1 |
| Friendly Name | Configure Report Queue |
| Location | User Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DisableQueue |
| ADMX File Name | ErrorReporting.admx |
<!-- WerQueue_1-AdmxBacked-End -->

<!-- WerQueue_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerQueue_1-Examples-End -->

<!-- WerQueue_1-End -->

<!-- WerQueue_2-Begin -->
## WerQueue_2

<!-- WerQueue_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WerQueue_2-Applicability-End -->

<!-- WerQueue_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ErrorReporting/WerQueue_2
```
<!-- WerQueue_2-OmaUri-End -->

<!-- WerQueue_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines the behavior of the Windows Error Reporting report queue.

- If you enable this policy setting, you can configure report queue behavior by using the controls in the policy setting. When the Queuing behavior pull-down list is set to Default, Windows determines, when a problem occurs, whether the report should be placed in the reporting queue, or the user should be prompted to send it immediately. When Queuing behavior is set to Always queue, all reports are added to the queue until the user is prompted to send the reports, or until the user sends problem reports by using the Solutions to Problems page in Control Panel. If Queuing behavior is set to Always queue for administrator, reports are queued until an administrator is prompted to send them, or until the administrator sends them by using the Solutions to Problems page in Control Panel.

The Maximum number of reports to queue setting determines how many reports can be queued before older reports are automatically deleted. The setting for Number of days between solution check reminders determines the interval time between the display of system notifications that remind the user to check for solutions to problems. A value of 0 disables the reminder.

- If you disable or don't configure this policy setting, Windows Error Reporting reports aren't queued, and users can only send reports at the time that a problem occurs.
<!-- WerQueue_2-Description-End -->

<!-- WerQueue_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WerQueue_2-Editable-End -->

<!-- WerQueue_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WerQueue_2-DFProperties-End -->

<!-- WerQueue_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WerQueue_2 |
| Friendly Name | Configure Report Queue |
| Location | Computer Configuration |
| Path | Windows Components > Windows Error Reporting > Advanced Error Reporting Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting |
| Registry Value Name | DisableQueue |
| ADMX File Name | ErrorReporting.admx |
<!-- WerQueue_2-AdmxBacked-End -->

<!-- WerQueue_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WerQueue_2-Examples-End -->

<!-- WerQueue_2-End -->

<!-- ADMX_ErrorReporting-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ErrorReporting-CspMoreInfo-End -->

<!-- ADMX_ErrorReporting-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
