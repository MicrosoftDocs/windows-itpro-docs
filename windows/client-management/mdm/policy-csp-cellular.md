---
title: Cellular Policy CSP
description: Learn more about the Cellular Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Cellular-Begin -->
# Policy CSP - Cellular

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Cellular-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Cellular-Editable-End -->

<!-- LetAppsAccessCellularData-Begin -->
## LetAppsAccessCellularData

<!-- LetAppsAccessCellularData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LetAppsAccessCellularData-Applicability-End -->

<!-- LetAppsAccessCellularData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cellular/LetAppsAccessCellularData
```
<!-- LetAppsAccessCellularData-OmaUri-End -->

<!-- LetAppsAccessCellularData-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access cellular data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access cellular data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCellularData-Description-End -->

<!-- LetAppsAccessCellularData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access cellular data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCellularData-Editable-End -->

<!-- LetAppsAccessCellularData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- LetAppsAccessCellularData-DFProperties-End -->

<!-- LetAppsAccessCellularData-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | User is in control. |
| 1 | Force Allow. |
| 2 | Force Deny. |
<!-- LetAppsAccessCellularData-AllowedValues-End -->

<!-- LetAppsAccessCellularData-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCellularData |
| Friendly Name | Let Windows apps access cellular data |
| Element Name | Default for all apps. |
| Location | Computer Configuration |
| Path | Network > WWAN Service > Cellular Data Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\CellularDataAccess |
| ADMX File Name | wwansvc.admx |
<!-- LetAppsAccessCellularData-GpMapping-End -->

<!-- LetAppsAccessCellularData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData-Examples-End -->

<!-- LetAppsAccessCellularData-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Begin -->
## LetAppsAccessCellularData_ForceAllowTheseApps

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Applicability-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cellular/LetAppsAccessCellularData_ForceAllowTheseApps
```
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-OmaUri-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access cellular data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access cellular data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Description-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Editable-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-DFProperties-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCellularData |
| Friendly Name | Let Windows apps access cellular data |
| Location | Computer Configuration |
| Path | Network > WWAN Service > Cellular Data Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\CellularDataAccess |
| ADMX File Name | wwansvc.admx |
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-GpMapping-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData_ForceAllowTheseApps-Examples-End -->

<!-- LetAppsAccessCellularData_ForceAllowTheseApps-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Begin -->
## LetAppsAccessCellularData_ForceDenyTheseApps

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Applicability-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cellular/LetAppsAccessCellularData_ForceDenyTheseApps
```
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-OmaUri-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access cellular data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access cellular data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Description-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Editable-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-DFProperties-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCellularData |
| Friendly Name | Let Windows apps access cellular data |
| Location | Computer Configuration |
| Path | Network > WWAN Service > Cellular Data Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\CellularDataAccess |
| ADMX File Name | wwansvc.admx |
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-GpMapping-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData_ForceDenyTheseApps-Examples-End -->

<!-- LetAppsAccessCellularData_ForceDenyTheseApps-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Begin -->
## LetAppsAccessCellularData_UserInControlOfTheseApps

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Applicability-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps
```
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-OmaUri-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Windows apps can access cellular data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access cellular data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Description-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Editable-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-DFProperties-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | LetAppsAccessCellularData |
| Friendly Name | Let Windows apps access cellular data |
| Location | Computer Configuration |
| Path | Network > WWAN Service > Cellular Data Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\CellularDataAccess |
| ADMX File Name | wwansvc.admx |
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-GpMapping-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-Examples-End -->

<!-- LetAppsAccessCellularData_UserInControlOfTheseApps-End -->

<!-- ShowAppCellularAccessUI-Begin -->
## ShowAppCellularAccessUI

<!-- ShowAppCellularAccessUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- ShowAppCellularAccessUI-Applicability-End -->

<!-- ShowAppCellularAccessUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cellular/ShowAppCellularAccessUI
```
<!-- ShowAppCellularAccessUI-OmaUri-End -->

<!-- ShowAppCellularAccessUI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the visibility of the link to the per-application cellular access control page in the cellular setting UX.

- If this policy setting is enabled, a drop-down list box presenting possible values will be active. Select "Hide" or "Show" to hide or show the link to the per-application cellular access control page.

- If this policy setting is disabled or isn't configured, the link to the per-application cellular access control page is showed by default.
<!-- ShowAppCellularAccessUI-Description-End -->

<!-- ShowAppCellularAccessUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowAppCellularAccessUI-Editable-End -->

<!-- ShowAppCellularAccessUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowAppCellularAccessUI-DFProperties-End -->

<!-- ShowAppCellularAccessUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowAppCellularAccessUI |
| Friendly Name | Set Per-App Cellular Access UI Visibility |
| Location | Computer Configuration |
| Path | Network > WWAN Service > WWAN UI Settings |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\UISettings |
| ADMX File Name | wwansvc.admx |
<!-- ShowAppCellularAccessUI-AdmxBacked-End -->

<!-- ShowAppCellularAccessUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowAppCellularAccessUI-Examples-End -->

<!-- ShowAppCellularAccessUI-End -->

<!-- Cellular-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Cellular-CspMoreInfo-End -->

<!-- Cellular-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
