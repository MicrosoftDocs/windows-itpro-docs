---
title: ADMX_ControlPanel Policy CSP
description: Learn more about the ADMX_ControlPanel Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ControlPanel-Begin -->
# Policy CSP - ADMX_ControlPanel

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ControlPanel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ControlPanel-Editable-End -->

<!-- DisallowCpls-Begin -->
## DisallowCpls

<!-- DisallowCpls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowCpls-Applicability-End -->

<!-- DisallowCpls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanel/DisallowCpls
```
<!-- DisallowCpls-OmaUri-End -->

<!-- DisallowCpls-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows you to display or hide specified Control Panel items, such as Mouse, System, or Personalization, from the Control Panel window and the Start screen. The setting affects the Start screen and Control Panel window, as well as other ways to access Control Panel items, such as shortcuts in Help and Support or command lines that use control.exe. This policy has no effect on items displayed in PC settings.

If you enable this setting, you can select specific items not to display on the Control Panel window and the Start screen.

To hide a Control Panel item, enable this policy setting and click Show to access the list of disallowed Control Panel items. In the Show Contents dialog box in the Value column, enter the Control Panel item's canonical name. For example, enter Microsoft. Mouse, Microsoft. System, or Microsoft. Personalization.

> [!NOTE]
> For Windows Vista, Windows Server 2008, and earlier versions of Windows, the module name should be entered, for example timedate.cpl or inetcpl.cpl. If a Control Panel item doesn't have a CPL file, or the CPL file contains multiple applets, then its module name and string resource identification number should be entered, for example @systemcpl.dll,-1 for System, or @themecpl.dll,-1 for Personalization. A complete list of canonical and module names can be found in MSDN by searching "Control Panel items".

If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.

> [!NOTE]
> The Display Control Panel item can't be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.

> [!NOTE]
> To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.
<!-- DisallowCpls-Description-End -->

<!-- DisallowCpls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowCpls-Editable-End -->

<!-- DisallowCpls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowCpls-DFProperties-End -->

<!-- DisallowCpls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowCpls |
| Friendly Name | Hide specified Control Panel items |
| Location | User Configuration |
| Path | Control Panel |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisallowCpl |
| ADMX File Name | ControlPanel.admx |
<!-- DisallowCpls-AdmxBacked-End -->

<!-- DisallowCpls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowCpls-Examples-End -->

<!-- DisallowCpls-End -->

<!-- ForceClassicControlPanel-Begin -->
## ForceClassicControlPanel

<!-- ForceClassicControlPanel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForceClassicControlPanel-Applicability-End -->

<!-- ForceClassicControlPanel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanel/ForceClassicControlPanel
```
<!-- ForceClassicControlPanel-OmaUri-End -->

<!-- ForceClassicControlPanel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the default Control Panel view, whether by category or icons.

- If this policy setting is enabled, the Control Panel opens to the icon view.

- If this policy setting is disabled, the Control Panel opens to the category view.

- If this policy setting isn't configured, the Control Panel opens to the view used in the last Control Panel session.

> [!NOTE]
> Icon size is dependent upon what the user has set it to in the previous session.
<!-- ForceClassicControlPanel-Description-End -->

<!-- ForceClassicControlPanel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForceClassicControlPanel-Editable-End -->

<!-- ForceClassicControlPanel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForceClassicControlPanel-DFProperties-End -->

<!-- ForceClassicControlPanel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForceClassicControlPanel |
| Friendly Name | Always open All Control Panel Items when opening Control Panel |
| Location | User Configuration |
| Path | Control Panel |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ForceClassicControlPanel |
| ADMX File Name | ControlPanel.admx |
<!-- ForceClassicControlPanel-AdmxBacked-End -->

<!-- ForceClassicControlPanel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForceClassicControlPanel-Examples-End -->

<!-- ForceClassicControlPanel-End -->

<!-- NoControlPanel-Begin -->
## NoControlPanel

<!-- NoControlPanel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoControlPanel-Applicability-End -->

<!-- NoControlPanel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanel/NoControlPanel
```
<!-- NoControlPanel-OmaUri-End -->

<!-- NoControlPanel-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables all Control Panel programs and the PC settings app.

This setting prevents Control.exe and SystemSettings.exe, the program files for Control Panel and PC settings, from starting. As a result, users can't start Control Panel or PC settings, or run any of their items.

This setting removes Control Panel from:

The Start screen.

File Explorer.

This setting removes PC settings from:

The Start screen.

Settings charm.

Account picture.

Search results.

If users try to select a Control Panel item from the Properties item on a context menu, a message appears explaining that a setting prevents the action.
<!-- NoControlPanel-Description-End -->

<!-- NoControlPanel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoControlPanel-Editable-End -->

<!-- NoControlPanel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoControlPanel-DFProperties-End -->

<!-- NoControlPanel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoControlPanel |
| Friendly Name | Prohibit access to Control Panel and PC settings |
| Location | User Configuration |
| Path | Control Panel |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoControlPanel |
| ADMX File Name | ControlPanel.admx |
<!-- NoControlPanel-AdmxBacked-End -->

<!-- NoControlPanel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoControlPanel-Examples-End -->

<!-- NoControlPanel-End -->

<!-- RestrictCpls-Begin -->
## RestrictCpls

<!-- RestrictCpls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RestrictCpls-Applicability-End -->

<!-- RestrictCpls-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanel/RestrictCpls
```
<!-- RestrictCpls-OmaUri-End -->

<!-- RestrictCpls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls which Control Panel items such as Mouse, System, or Personalization, are displayed on the Control Panel window and the Start screen. The only items displayed in Control Panel are those you specify in this setting. This setting affects the Start screen and Control Panel, as well as other ways to access Control Panel items such as shortcuts in Help and Support or command lines that use control.exe. This policy has no effect on items displayed in PC settings.

To display a Control Panel item, enable this policy setting and click Show to access the list of allowed Control Panel items. In the Show Contents dialog box in the Value column, enter the Control Panel item's canonical name. For example, enter Microsoft. Mouse, Microsoft. System, or Microsoft. Personalization.

> [!NOTE]
> For Windows Vista, Windows Server 2008, and earlier versions of Windows, the module name, for example timedate.cpl or inetcpl.cpl, should be entered. If a Control Panel item doesn't have a CPL file, or the CPL file contains multiple applets, then its module name and string resource identification number should be entered. For example, enter @systemcpl.dll,-1 for System or @themecpl.dll,-1 for Personalization. A complete list of canonical and module names of Control Panel items can be found in MSDN by searching "Control Panel items".

If both the "Hide specified Control Panel items" setting and the "Show only specified Control Panel items" setting are enabled, the "Show only specified Control Panel items" setting is ignored.

> [!NOTE]
> The Display Control Panel item can't be hidden in the Desktop context menu by using this setting. To hide the Display Control Panel item and prevent users from modifying the computer's display settings use the "Disable Display Control Panel" setting instead.

> [!NOTE]
> To hide pages in the System Settings app, use the "Settings Page Visibility" setting under Computer Configuration.
<!-- RestrictCpls-Description-End -->

<!-- RestrictCpls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestrictCpls-Editable-End -->

<!-- RestrictCpls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RestrictCpls-DFProperties-End -->

<!-- RestrictCpls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RestrictCpls |
| Friendly Name | Show only specified Control Panel items |
| Location | User Configuration |
| Path | Control Panel |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | RestrictCpl |
| ADMX File Name | ControlPanel.admx |
<!-- RestrictCpls-AdmxBacked-End -->

<!-- RestrictCpls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictCpls-Examples-End -->

<!-- RestrictCpls-End -->

<!-- ADMX_ControlPanel-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ControlPanel-CspMoreInfo-End -->

<!-- ADMX_ControlPanel-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
