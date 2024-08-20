---
title: ADMX_CtrlAltDel Policy CSP
description: Learn more about the ADMX_CtrlAltDel Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_CtrlAltDel-Begin -->
# Policy CSP - ADMX_CtrlAltDel

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_CtrlAltDel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CtrlAltDel-Editable-End -->

<!-- DisableChangePassword-Begin -->
## DisableChangePassword

<!-- DisableChangePassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableChangePassword-Applicability-End -->

<!-- DisableChangePassword-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/DisableChangePassword
```
<!-- DisableChangePassword-OmaUri-End -->

<!-- DisableChangePassword-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from changing their Windows password on demand.

If you enable this policy setting, the 'Change Password' button on the Windows Security dialog box won't appear when you press Ctrl+Alt+Del.

However, users are still able to change their password when prompted by the system. The system prompts users for a new password when an administrator requires a new password or their password is expiring.
<!-- DisableChangePassword-Description-End -->

<!-- DisableChangePassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableChangePassword-Editable-End -->

<!-- DisableChangePassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableChangePassword-DFProperties-End -->

<!-- DisableChangePassword-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLockComputer-Applicability-End -->

<!-- DisableLockComputer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/DisableLockComputer
```
<!-- DisableLockComputer-OmaUri-End -->

<!-- DisableLockComputer-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from locking the system.

While locked, the desktop is hidden and the system can't be used. Only the user who locked the system or the system administrator can unlock it.

- If you enable this policy setting, users can't lock the computer from the keyboard using Ctrl+Alt+Del.

- If you disable or don't configure this policy setting, users will be able to lock the computer from the keyboard using Ctrl+Alt+Del.

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
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLockComputer-DFProperties-End -->

<!-- DisableLockComputer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
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

- If you enable this policy setting, users won't be able to access Task Manager. If users try to start Task Manager, a message appears explaining that a policy prevents the action.

- If you disable or don't configure this policy setting, users can access Task Manager to start and stop programs, monitor the performance of their computers, view and monitor all programs running on their computers, including system services, find the executable names of programs, and change the priority of the process in which programs run.
<!-- DisableTaskMgr-Description-End -->

<!-- DisableTaskMgr-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableTaskMgr-Editable-End -->

<!-- DisableTaskMgr-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableTaskMgr-DFProperties-End -->

<!-- DisableTaskMgr-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoLogoff-Applicability-End -->

<!-- NoLogoff-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_CtrlAltDel/NoLogoff
```
<!-- NoLogoff-OmaUri-End -->

<!-- NoLogoff-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting disables or removes all menu items and buttons that log the user off the system.

- If you enable this policy setting, users won't see the Log off menu item when they press Ctrl+Alt+Del. This will prevent them from logging off unless they restart or shutdown the computer, or clicking Log off from the Start menu.

Also, see the 'Remove Logoff on the Start Menu' policy setting.

- If you disable or don't configure this policy setting, users can see and select the Log off menu item when they press Ctrl+Alt+Del.
<!-- NoLogoff-Description-End -->

<!-- NoLogoff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoLogoff-Editable-End -->

<!-- NoLogoff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoLogoff-DFProperties-End -->

<!-- NoLogoff-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
