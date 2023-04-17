---
title: ADMX_CtrlAltDel Policy CSP
description: Learn more about the ADMX_CtrlAltDel Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_CtrlAltDel-Begin -->
# Policy CSP - ADMX_CtrlAltDel

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_CtrlAltDel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CtrlAltDel-Editable-End -->

<!-- DisableChangePassword-Begin -->
## DisableChangePassword

<!-- DisableChangePassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableChangePassword-Applicability-End -->

<!-- DisableChangePassword-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/DisableChangePassword
```
<!-- DisableChangePassword-OmaUri-End -->

<!-- DisableChangePassword-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from changing their Windows password on demand.

If you enable this policy setting, the 'Change Password' button on the Windows Security dialog box will not appear when you press Ctrl+Alt+Del.

However, users are still able to change their password when prompted by the system. The system prompts users for a new password when an administrator requires a new password or their password is expiring.
<!-- DisableChangePassword-Description-End -->

<!-- DisableChangePassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableChangePassword-Editable-End -->

<!-- DisableChangePassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableChangePassword-DFProperties-End -->

<!-- DisableChangePassword-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableChangePassword |
| Friendly Name | Remove Change Password |
| Location | User Configuration |
| Path | System > Ctrl+Alt+Del Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableChangePassword |
| ADMX File Name | CtrlAltDel.admx |
<!-- DisableChangePassword-AdmxBacked-End -->

<!-- DisableChangePassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableChangePassword-Examples-End -->

<!-- DisableChangePassword-End -->

<!-- DisableLockComputer-Begin -->
## DisableLockComputer

<!-- DisableLockComputer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLockComputer-Applicability-End -->

<!-- DisableLockComputer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/DisableLockComputer
```
<!-- DisableLockComputer-OmaUri-End -->

<!-- DisableLockComputer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from locking the system.

While locked, the desktop is hidden and the system cannot be used. Only the user who locked the system or the system administrator can unlock it.

- If you enable this policy setting, users cannot lock the computer from the keyboard using Ctrl+Alt+Del.

- If you disable or do not configure this policy setting, users will be able to lock the computer from the keyboard using Ctrl+Alt+Del.

> [!TIP]
> To lock a computer without configuring a setting, press Ctrl+Alt+Delete, and then click Lock this computer.
<!-- DisableLockComputer-Description-End -->

<!-- DisableLockComputer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLockComputer-Editable-End -->

<!-- DisableLockComputer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLockComputer-DFProperties-End -->

<!-- DisableLockComputer-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLockComputer |
| Friendly Name | Remove Lock Computer |
| Location | User Configuration |
| Path | System > Ctrl+Alt+Del Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableLockWorkstation |
| ADMX File Name | CtrlAltDel.admx |
<!-- DisableLockComputer-AdmxBacked-End -->

<!-- DisableLockComputer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLockComputer-Examples-End -->

<!-- DisableLockComputer-End -->

<!-- DisableTaskMgr-Begin -->
## DisableTaskMgr

<!-- DisableTaskMgr-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableTaskMgr-Applicability-End -->

<!-- DisableTaskMgr-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/DisableTaskMgr
```
<!-- DisableTaskMgr-OmaUri-End -->

<!-- DisableTaskMgr-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from starting Task Manager.

Task Manager (taskmgr.exe) lets users start and stop programs; monitor the performance of their computers; view and monitor all programs running on their computers, including system services; find the executable names of programs; and change the priority of the process in which programs run.

- If you enable this policy setting, users will not be able to access Task Manager. If users try to start Task Manager, a message appears explaining that a policy prevents the action.

- If you disable or do not configure this policy setting, users can access Task Manager to start and stop programs, monitor the performance of their computers, view and monitor all programs running on their computers, including system services, find the executable names of programs, and change the priority of the process in which programs run.
<!-- DisableTaskMgr-Description-End -->

<!-- DisableTaskMgr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableTaskMgr-Editable-End -->

<!-- DisableTaskMgr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableTaskMgr-DFProperties-End -->

<!-- DisableTaskMgr-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableTaskMgr |
| Friendly Name | Remove Task Manager |
| Location | User Configuration |
| Path | System > Ctrl+Alt+Del Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableTaskMgr |
| ADMX File Name | CtrlAltDel.admx |
<!-- DisableTaskMgr-AdmxBacked-End -->

<!-- DisableTaskMgr-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableTaskMgr-Examples-End -->

<!-- DisableTaskMgr-End -->

<!-- NoLogoff-Begin -->
## NoLogoff

<!-- NoLogoff-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoLogoff-Applicability-End -->

<!-- NoLogoff-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/NoLogoff
```
<!-- NoLogoff-OmaUri-End -->

<!-- NoLogoff-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting disables or removes all menu items and buttons that log the user off the system.

- If you enable this policy setting, users will not see the Log off menu item when they press Ctrl+Alt+Del. This will prevent them from logging off unless they restart or shutdown the computer, or clicking Log off from the Start menu.

Also, see the 'Remove Logoff on the Start Menu' policy setting.

- If you disable or do not configure this policy setting, users can see and select the Log off menu item when they press Ctrl+Alt+Del.
<!-- NoLogoff-Description-End -->

<!-- NoLogoff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoLogoff-Editable-End -->

<!-- NoLogoff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoLogoff-DFProperties-End -->

<!-- NoLogoff-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoLogoff |
| Friendly Name | Remove Logoff |
| Location | User Configuration |
| Path | System > Ctrl+Alt+Del Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoLogoff |
| ADMX File Name | CtrlAltDel.admx |
<!-- NoLogoff-AdmxBacked-End -->

<!-- NoLogoff-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoLogoff-Examples-End -->

<!-- NoLogoff-End -->

<!-- ADMX_CtrlAltDel-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_CtrlAltDel-CspMoreInfo-End -->

<!-- ADMX_CtrlAltDel-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
