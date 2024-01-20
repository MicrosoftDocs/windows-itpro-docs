---
title: Education Policy CSP
description: Learn more about the Education Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Education-Begin -->
# Policy CSP - Education

<!-- Education-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Education-Editable-End -->

<!-- AllowGraphingCalculator-Begin -->
## AllowGraphingCalculator

<!-- AllowGraphingCalculator-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041] and later |
<!-- AllowGraphingCalculator-Applicability-End -->

<!-- AllowGraphingCalculator-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Education/AllowGraphingCalculator
```
<!-- AllowGraphingCalculator-OmaUri-End -->

<!-- AllowGraphingCalculator-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether graphing functionality is available in the Windows Calculator app.

- If you disable this policy setting, graphing functionality won't be accessible in the Windows Calculator app.

- If you enable or don't configure this policy setting, users will be able to access graphing functionality.
<!-- AllowGraphingCalculator-Description-End -->

<!-- AllowGraphingCalculator-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowGraphingCalculator-Editable-End -->

<!-- AllowGraphingCalculator-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowGraphingCalculator-DFProperties-End -->

<!-- AllowGraphingCalculator-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- AllowGraphingCalculator-AllowedValues-End -->

<!-- AllowGraphingCalculator-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowGraphingCalculator |
| Friendly Name | Allow Graphing Calculator |
| Location | User Configuration |
| Path | Windows Components > Calculator |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Calculator |
| Registry Value Name | AllowGraphingCalculator |
| ADMX File Name | Programs.admx |
<!-- AllowGraphingCalculator-GpMapping-End -->

<!-- AllowGraphingCalculator-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowGraphingCalculator-Examples-End -->

<!-- AllowGraphingCalculator-End -->

<!-- DefaultPrinterName-Begin -->
## DefaultPrinterName

<!-- DefaultPrinterName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DefaultPrinterName-Applicability-End -->

<!-- DefaultPrinterName-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Education/DefaultPrinterName
```
<!-- DefaultPrinterName-OmaUri-End -->

<!-- DefaultPrinterName-Description-Begin -->
<!-- Description-Source-DDF -->
This policy sets user's default printer.
<!-- DefaultPrinterName-Description-End -->

<!-- DefaultPrinterName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The policy value is expected to be the name (network host name) of an installed printer.
<!-- DefaultPrinterName-Editable-End -->

<!-- DefaultPrinterName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DefaultPrinterName-DFProperties-End -->

<!-- DefaultPrinterName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DefaultPrinterName-Examples-End -->

<!-- DefaultPrinterName-End -->

<!-- EnableEduThemes-Begin -->
## EnableEduThemes

<!-- EnableEduThemes-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- EnableEduThemes-Applicability-End -->

<!-- EnableEduThemes-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Education/EnableEduThemes
```
<!-- EnableEduThemes-OmaUri-End -->

<!-- EnableEduThemes-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to control whether EDU-specific theme packs are available in Settings > Personalization.

- If you disable or don't configure this policy setting, EDU-specific theme packs won't be included.

- If you enable this policy setting, users will be able to personalize their devices with EDU-specific themes.
<!-- EnableEduThemes-Description-End -->

<!-- EnableEduThemes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableEduThemes-Editable-End -->

<!-- EnableEduThemes-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableEduThemes-DFProperties-End -->

<!-- EnableEduThemes-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- EnableEduThemes-AllowedValues-End -->

<!-- EnableEduThemes-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableEduThemes-Examples-End -->

<!-- EnableEduThemes-End -->

<!-- IsEducationEnvironment-Begin -->
## IsEducationEnvironment

<!-- IsEducationEnvironment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- IsEducationEnvironment-Applicability-End -->

<!-- IsEducationEnvironment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Education/IsEducationEnvironment
```
<!-- IsEducationEnvironment-OmaUri-End -->

<!-- IsEducationEnvironment-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows tenant to control whether to declare this OS as an education environment.
<!-- IsEducationEnvironment-Description-End -->

<!-- IsEducationEnvironment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IsEducationEnvironment-Editable-End -->

<!-- IsEducationEnvironment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- IsEducationEnvironment-DFProperties-End -->

<!-- IsEducationEnvironment-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- IsEducationEnvironment-AllowedValues-End -->

<!-- IsEducationEnvironment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IsEducationEnvironment-Examples-End -->

<!-- IsEducationEnvironment-End -->

<!-- PreventAddingNewPrinters-Begin -->
## PreventAddingNewPrinters

<!-- PreventAddingNewPrinters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- PreventAddingNewPrinters-Applicability-End -->

<!-- PreventAddingNewPrinters-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Education/PreventAddingNewPrinters
```
<!-- PreventAddingNewPrinters-OmaUri-End -->

<!-- PreventAddingNewPrinters-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from using familiar methods to add local and network printers.

- If this policy setting is enabled, it removes the Add Printer option from the Start menu. (To find the Add Printer option, click Start, click Printers, and then click Add Printer). This setting also removes Add Printer from the Printers folder in Control Panel.

Also, users can't add printers by dragging a printer icon into the Printers folder. If they try, a message appears explaining that the setting prevents the action.

However, this setting doesn't prevent users from using the Add Hardware Wizard to add a printer. Nor does it prevent users from running other programs to add printers.

This setting doesn't delete printers that users have already added. However, if users haven't added a printer when this setting is applied, they can't print.

> [!NOTE]
> You can use printer permissions to restrict the use of printers without specifying a setting. In the Printers folder, right-click a printer, click Properties, and then click the Security tab.

- If this policy is disabled, or not configured, users can add printers using the methods described above.
<!-- PreventAddingNewPrinters-Description-End -->

<!-- PreventAddingNewPrinters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventAddingNewPrinters-Editable-End -->

<!-- PreventAddingNewPrinters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- PreventAddingNewPrinters-DFProperties-End -->

<!-- PreventAddingNewPrinters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow user installation. |
| 1 | Prevent user installation. |
<!-- PreventAddingNewPrinters-AllowedValues-End -->

<!-- PreventAddingNewPrinters-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NoAddPrinter |
| Friendly Name | Prevent addition of printers |
| Location | User Configuration |
| Path | Control Panel > Printers |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoAddPrinter |
| ADMX File Name | Printing.admx |
<!-- PreventAddingNewPrinters-GpMapping-End -->

<!-- PreventAddingNewPrinters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventAddingNewPrinters-Examples-End -->

<!-- PreventAddingNewPrinters-End -->

<!-- PrinterNames-Begin -->
## PrinterNames

<!-- PrinterNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- PrinterNames-Applicability-End -->

<!-- PrinterNames-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Education/PrinterNames
```
<!-- PrinterNames-OmaUri-End -->

<!-- PrinterNames-Description-Begin -->
<!-- Description-Source-DDF -->
This policy provisions per-user network printers.
<!-- PrinterNames-Description-End -->

<!-- PrinterNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The policy value is expected to be a ```&#xF000;``` separated list of printer names.  The OS will attempt to search and install the matching printer driver for each listed printer.
<!-- PrinterNames-Editable-End -->

<!-- PrinterNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- PrinterNames-DFProperties-End -->

<!-- PrinterNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrinterNames-Examples-End -->

<!-- PrinterNames-End -->

<!-- Education-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Education-CspMoreInfo-End -->

<!-- Education-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
