---
title: ADMX_ControlPanelDisplay Policy CSP
description: Learn more about the ADMX_ControlPanelDisplay Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ControlPanelDisplay-Begin -->
# Policy CSP - ADMX_ControlPanelDisplay

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ControlPanelDisplay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ControlPanelDisplay-Editable-End -->

<!-- CPL_Display_Disable-Begin -->
## CPL_Display_Disable

<!-- CPL_Display_Disable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Display_Disable-Applicability-End -->

<!-- CPL_Display_Disable-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Display_Disable
```
<!-- CPL_Display_Disable-OmaUri-End -->

<!-- CPL_Display_Disable-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the Display Control Panel.

If you enable this setting, the Display Control Panel doesn't run. When users try to start Display, a message appears explaining that a setting prevents the action.

Also, see the "Prohibit access to the Control Panel" (User Configuration\Administrative Templates\Control Panel) and "Remove programs on Settings menu" (User Configuration\Administrative Templates\Start Menu & Taskbar) settings.
<!-- CPL_Display_Disable-Description-End -->

<!-- CPL_Display_Disable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Display_Disable-Editable-End -->

<!-- CPL_Display_Disable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Display_Disable-DFProperties-End -->

<!-- CPL_Display_Disable-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Display_Disable |
| Friendly Name | Disable the Display Control Panel |
| Location | User Configuration |
| Path | Control Panel > Display |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoDispCPL |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Display_Disable-AdmxBacked-End -->

<!-- CPL_Display_Disable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Display_Disable-Examples-End -->

<!-- CPL_Display_Disable-End -->

<!-- CPL_Display_HideSettings-Begin -->
## CPL_Display_HideSettings

<!-- CPL_Display_HideSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Display_HideSettings-Applicability-End -->

<!-- CPL_Display_HideSettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Display_HideSettings
```
<!-- CPL_Display_HideSettings-OmaUri-End -->

<!-- CPL_Display_HideSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Settings tab from Display in Control Panel.

This setting prevents users from using Control Panel to add, configure, or change the display settings on the computer.
<!-- CPL_Display_HideSettings-Description-End -->

<!-- CPL_Display_HideSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Display_HideSettings-Editable-End -->

<!-- CPL_Display_HideSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Display_HideSettings-DFProperties-End -->

<!-- CPL_Display_HideSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Display_HideSettings |
| Friendly Name | Hide Settings tab |
| Location | User Configuration |
| Path | Control Panel > Display |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoDispSettingsPage |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Display_HideSettings-AdmxBacked-End -->

<!-- CPL_Display_HideSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Display_HideSettings-Examples-End -->

<!-- CPL_Display_HideSettings-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-Begin -->
## CPL_Personalization_DisableColorSchemeChoice

<!-- CPL_Personalization_DisableColorSchemeChoice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_DisableColorSchemeChoice-Applicability-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_DisableColorSchemeChoice
```
<!-- CPL_Personalization_DisableColorSchemeChoice-OmaUri-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting forces the theme color scheme to be the default color scheme.

- If you enable this setting, a user can't change the color scheme of the current desktop theme.

- If you disable or don't configure this setting, a user may change the color scheme of the current desktop theme.

For Windows 7 and later, use the "Prevent changing color and appearance" setting.
<!-- CPL_Personalization_DisableColorSchemeChoice-Description-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_DisableColorSchemeChoice-Editable-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_DisableColorSchemeChoice-DFProperties-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_DisableColorSchemeChoice |
| Friendly Name | Prevent changing color scheme |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoColorChoice |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_DisableColorSchemeChoice-AdmxBacked-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_DisableColorSchemeChoice-Examples-End -->

<!-- CPL_Personalization_DisableColorSchemeChoice-End -->

<!-- CPL_Personalization_DisableThemeChange-Begin -->
## CPL_Personalization_DisableThemeChange

<!-- CPL_Personalization_DisableThemeChange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_DisableThemeChange-Applicability-End -->

<!-- CPL_Personalization_DisableThemeChange-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_DisableThemeChange
```
<!-- CPL_Personalization_DisableThemeChange-OmaUri-End -->

<!-- CPL_Personalization_DisableThemeChange-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting disables the theme gallery in the Personalization Control Panel.

- If you enable this setting, users can't change or save a theme. Elements of a theme such as the desktop background, color, sounds, and screen saver can still be changed (unless policies are set to turn them off).

- If you disable or don't configure this setting, there is no effect.

> [!NOTE]
> If you enable this setting but don't specify a theme using the "load a specific theme" setting, the theme defaults to whatever the user previously set or the system default.
<!-- CPL_Personalization_DisableThemeChange-Description-End -->

<!-- CPL_Personalization_DisableThemeChange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_DisableThemeChange-Editable-End -->

<!-- CPL_Personalization_DisableThemeChange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_DisableThemeChange-DFProperties-End -->

<!-- CPL_Personalization_DisableThemeChange-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_DisableThemeChange |
| Friendly Name | Prevent changing theme |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoThemesTab |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_DisableThemeChange-AdmxBacked-End -->

<!-- CPL_Personalization_DisableThemeChange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_DisableThemeChange-Examples-End -->

<!-- CPL_Personalization_DisableThemeChange-End -->

<!-- CPL_Personalization_DisableVisualStyle-Begin -->
## CPL_Personalization_DisableVisualStyle

<!-- CPL_Personalization_DisableVisualStyle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_DisableVisualStyle-Applicability-End -->

<!-- CPL_Personalization_DisableVisualStyle-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_DisableVisualStyle
```
<!-- CPL_Personalization_DisableVisualStyle-OmaUri-End -->

<!-- CPL_Personalization_DisableVisualStyle-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users or applications from changing the visual style of the windows and buttons displayed on their screens.

When enabled on Windows XP, this setting disables the "Windows and buttons" drop-down list on the Appearance tab in Display Properties.

When enabled on Windows XP and later systems, this setting prevents users and applications from changing the visual style through the command line. Also, a user may not apply a different visual style when changing themes.
<!-- CPL_Personalization_DisableVisualStyle-Description-End -->

<!-- CPL_Personalization_DisableVisualStyle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_DisableVisualStyle-Editable-End -->

<!-- CPL_Personalization_DisableVisualStyle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_DisableVisualStyle-DFProperties-End -->

<!-- CPL_Personalization_DisableVisualStyle-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_DisableVisualStyle |
| Friendly Name | Prevent changing visual style for windows and buttons |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoVisualStyleChoice |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_DisableVisualStyle-AdmxBacked-End -->

<!-- CPL_Personalization_DisableVisualStyle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_DisableVisualStyle-Examples-End -->

<!-- CPL_Personalization_DisableVisualStyle-End -->

<!-- CPL_Personalization_EnableScreenSaver-Begin -->
## CPL_Personalization_EnableScreenSaver

<!-- CPL_Personalization_EnableScreenSaver-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_EnableScreenSaver-Applicability-End -->

<!-- CPL_Personalization_EnableScreenSaver-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_EnableScreenSaver
```
<!-- CPL_Personalization_EnableScreenSaver-OmaUri-End -->

<!-- CPL_Personalization_EnableScreenSaver-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables desktop screen savers.

- If you disable this setting, screen savers don't run. Also, this setting disables the Screen Saver section of the Screen Saver dialog in the Personalization or Display Control Panel. As a result, users can't change the screen saver options.

- If you don't configure it, this setting has no effect on the system.

- If you enable it, a screen saver runs, provided the following two conditions hold: First, a valid screen saver on the client is specified through the "Screen Saver executable name" setting or through Control Panel on the client computer. Second, the screen saver timeout is set to a nonzero value through the setting or Control Panel.

Also, see the "Prevent changing Screen Saver" setting.
<!-- CPL_Personalization_EnableScreenSaver-Description-End -->

<!-- CPL_Personalization_EnableScreenSaver-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_EnableScreenSaver-Editable-End -->

<!-- CPL_Personalization_EnableScreenSaver-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_EnableScreenSaver-DFProperties-End -->

<!-- CPL_Personalization_EnableScreenSaver-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_EnableScreenSaver |
| Friendly Name | Enable screen saver |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Control Panel\Desktop |
| Registry Value Name | ScreenSaveActive |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_EnableScreenSaver-AdmxBacked-End -->

<!-- CPL_Personalization_EnableScreenSaver-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_EnableScreenSaver-Examples-End -->

<!-- CPL_Personalization_EnableScreenSaver-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-Begin -->
## CPL_Personalization_ForceDefaultLockScreen

<!-- CPL_Personalization_ForceDefaultLockScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_ForceDefaultLockScreen-Applicability-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_ForceDefaultLockScreen
```
<!-- CPL_Personalization_ForceDefaultLockScreen-OmaUri-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows you to force a specific default lock screen and logon image by entering the path (location) of the image file. The same image will be used for both the lock and logon screens.

This setting lets you specify the default lock screen and logon image shown when no user is signed in, and also sets the specified image as the default for all users (it replaces the inbox default image).

To use this setting, type the fully qualified path and name of the file that stores the default lock screen and logon image. You can type a local path, such as C:\Windows\Web\Screen\img104.jpg or a UNC path, such as \\Server\Share\Corp.jpg.

This can be used in conjunction with the "Prevent changing lock screen and logon image" setting to always force the specified lock screen and logon image to be shown.

> [!NOTE]
> This setting only applies to Enterprise, Education, and Server SKUs.
<!-- CPL_Personalization_ForceDefaultLockScreen-Description-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_ForceDefaultLockScreen-Editable-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_ForceDefaultLockScreen-DFProperties-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_ForceDefaultLockScreen |
| Friendly Name | Force a specific default lock screen and logon image |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_ForceDefaultLockScreen-AdmxBacked-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_ForceDefaultLockScreen-Examples-End -->

<!-- CPL_Personalization_ForceDefaultLockScreen-End -->

<!-- CPL_Personalization_LockFontSize-Begin -->
## CPL_Personalization_LockFontSize

<!-- CPL_Personalization_LockFontSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_LockFontSize-Applicability-End -->

<!-- CPL_Personalization_LockFontSize-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_LockFontSize
```
<!-- CPL_Personalization_LockFontSize-OmaUri-End -->

<!-- CPL_Personalization_LockFontSize-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the size of the font in the windows and buttons displayed on their screens.

- If this setting is enabled, the "Font size" drop-down list on the Appearance tab in Display Properties is disabled.

- If you disable or don't configure this setting, a user may change the font size using the "Font size" drop-down list on the Appearance tab.
<!-- CPL_Personalization_LockFontSize-Description-End -->

<!-- CPL_Personalization_LockFontSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_LockFontSize-Editable-End -->

<!-- CPL_Personalization_LockFontSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_LockFontSize-DFProperties-End -->

<!-- CPL_Personalization_LockFontSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_LockFontSize |
| Friendly Name | Prohibit selection of visual style font size |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoSizeChoice |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_LockFontSize-AdmxBacked-End -->

<!-- CPL_Personalization_LockFontSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_LockFontSize-Examples-End -->

<!-- CPL_Personalization_LockFontSize-End -->

<!-- CPL_Personalization_NoChangingLockScreen-Begin -->
## CPL_Personalization_NoChangingLockScreen

<!-- CPL_Personalization_NoChangingLockScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoChangingLockScreen-Applicability-End -->

<!-- CPL_Personalization_NoChangingLockScreen-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingLockScreen
```
<!-- CPL_Personalization_NoChangingLockScreen-OmaUri-End -->

<!-- CPL_Personalization_NoChangingLockScreen-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the background image shown when the machine is locked or when on the logon screen.

By default, users can change the background image shown when the machine is locked or displaying the logon screen.

If you enable this setting, the user won't be able to change their lock screen and logon image, and they will instead see the default image.
<!-- CPL_Personalization_NoChangingLockScreen-Description-End -->

<!-- CPL_Personalization_NoChangingLockScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoChangingLockScreen-Editable-End -->

<!-- CPL_Personalization_NoChangingLockScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoChangingLockScreen-DFProperties-End -->

<!-- CPL_Personalization_NoChangingLockScreen-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoChangingLockScreen |
| Friendly Name | Prevent changing lock screen and logon image |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoChangingLockScreen |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoChangingLockScreen-AdmxBacked-End -->

<!-- CPL_Personalization_NoChangingLockScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoChangingLockScreen-Examples-End -->

<!-- CPL_Personalization_NoChangingLockScreen-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-Begin -->
## CPL_Personalization_NoChangingStartMenuBackground

<!-- CPL_Personalization_NoChangingStartMenuBackground-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoChangingStartMenuBackground-Applicability-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoChangingStartMenuBackground
```
<!-- CPL_Personalization_NoChangingStartMenuBackground-OmaUri-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the look of their start menu background, such as its color or accent.

By default, users can change the look of their start menu background, such as its color or accent.

If you enable this setting, the user will be assigned the default start menu background and colors and won't be allowed to change them.

If the "Force a specific background and accent color" policy is also set on a supported version of Windows, then those colors take precedence over this policy.

If the "Force a specific Start background" policy is also set on a supported version of Windows, then that background takes precedence over this policy.
<!-- CPL_Personalization_NoChangingStartMenuBackground-Description-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoChangingStartMenuBackground-Editable-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoChangingStartMenuBackground-DFProperties-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoChangingStartMenuBackground |
| Friendly Name | Prevent changing start menu background |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoChangingStartMenuBackground |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoChangingStartMenuBackground-AdmxBacked-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoChangingStartMenuBackground-Examples-End -->

<!-- CPL_Personalization_NoChangingStartMenuBackground-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-Begin -->
## CPL_Personalization_NoColorAppearanceUI

<!-- CPL_Personalization_NoColorAppearanceUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoColorAppearanceUI-Applicability-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoColorAppearanceUI
```
<!-- CPL_Personalization_NoColorAppearanceUI-OmaUri-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the Color (or Window Color) page in the Personalization Control Panel, or the Color Scheme dialog in the Display Control Panel on systems where the Personalization feature isn't available.

This setting prevents users from using Control Panel to change the window border and taskbar color (on Windows 8), glass color (on Windows Vista and Windows 7), system colors, or color scheme of the desktop and windows.

If this setting is disabled or not configured, the Color (or Window Color) page or Color Scheme dialog is available in the Personalization or Display Control Panel.

For systems prior to Windows Vista, this setting hides the Appearance and Themes tabs in the in Display in Control Panel.
<!-- CPL_Personalization_NoColorAppearanceUI-Description-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoColorAppearanceUI-Editable-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoColorAppearanceUI-DFProperties-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoColorAppearanceUI |
| Friendly Name | Prevent changing color and appearance |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoDispAppearancePage |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoColorAppearanceUI-AdmxBacked-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoColorAppearanceUI-Examples-End -->

<!-- CPL_Personalization_NoColorAppearanceUI-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-Begin -->
## CPL_Personalization_NoDesktopBackgroundUI

<!-- CPL_Personalization_NoDesktopBackgroundUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoDesktopBackgroundUI-Applicability-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopBackgroundUI
```
<!-- CPL_Personalization_NoDesktopBackgroundUI-OmaUri-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from adding or changing the background design of the desktop.

By default, users can use the Desktop Background page in the Personalization or Display Control Panel to add a background design (wallpaper) to their desktop.

If you enable this setting, none of the Desktop Background settings can be changed by the user.

To specify wallpaper for a group, use the "Desktop Wallpaper" setting.

> [!NOTE]
> You must also enable the "Desktop Wallpaper" setting to prevent users from changing the desktop wallpaper. Refer to KB article: Q327998 for more information.

Also, see the "Allow only bitmapped wallpaper" setting.
<!-- CPL_Personalization_NoDesktopBackgroundUI-Description-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoDesktopBackgroundUI-Editable-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoDesktopBackgroundUI-DFProperties-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoDesktopBackgroundUI |
| Friendly Name | Prevent changing desktop background |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoChangingWallPaper |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoDesktopBackgroundUI-AdmxBacked-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoDesktopBackgroundUI-Examples-End -->

<!-- CPL_Personalization_NoDesktopBackgroundUI-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-Begin -->
## CPL_Personalization_NoDesktopIconsUI

<!-- CPL_Personalization_NoDesktopIconsUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoDesktopIconsUI-Applicability-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoDesktopIconsUI
```
<!-- CPL_Personalization_NoDesktopIconsUI-OmaUri-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the desktop icons.

By default, users can use the Desktop Icon Settings dialog in the Personalization or Display Control Panel to show, hide, or change the desktop icons.

If you enable this setting, none of the desktop icons can be changed by the user.

For systems prior to Windows Vista, this setting also hides the Desktop tab in the Display Control Panel.
<!-- CPL_Personalization_NoDesktopIconsUI-Description-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoDesktopIconsUI-Editable-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoDesktopIconsUI-DFProperties-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoDesktopIconsUI |
| Friendly Name | Prevent changing desktop icons |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoDispBackgroundPage |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoDesktopIconsUI-AdmxBacked-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoDesktopIconsUI-Examples-End -->

<!-- CPL_Personalization_NoDesktopIconsUI-End -->

<!-- CPL_Personalization_NoLockScreen-Begin -->
## CPL_Personalization_NoLockScreen

<!-- CPL_Personalization_NoLockScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoLockScreen-Applicability-End -->

<!-- CPL_Personalization_NoLockScreen-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoLockScreen
```
<!-- CPL_Personalization_NoLockScreen-OmaUri-End -->

<!-- CPL_Personalization_NoLockScreen-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the lock screen appears for users.

- If you enable this policy setting, users that aren't required to press CTRL + ALT + DEL before signing in will see their selected tile after locking their PC.

- If you disable or don't configure this policy setting, users that aren't required to press CTRL + ALT + DEL before signing in will see a lock screen after locking their PC. They must dismiss the lock screen using touch, the keyboard, or by dragging it with the mouse.
<!-- CPL_Personalization_NoLockScreen-Description-End -->

<!-- CPL_Personalization_NoLockScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoLockScreen-Editable-End -->

<!-- CPL_Personalization_NoLockScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoLockScreen-DFProperties-End -->

<!-- CPL_Personalization_NoLockScreen-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoLockScreen |
| Friendly Name | Do not display the lock screen |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoLockScreen |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoLockScreen-AdmxBacked-End -->

<!-- CPL_Personalization_NoLockScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoLockScreen-Examples-End -->

<!-- CPL_Personalization_NoLockScreen-End -->

<!-- CPL_Personalization_NoMousePointersUI-Begin -->
## CPL_Personalization_NoMousePointersUI

<!-- CPL_Personalization_NoMousePointersUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoMousePointersUI-Applicability-End -->

<!-- CPL_Personalization_NoMousePointersUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoMousePointersUI
```
<!-- CPL_Personalization_NoMousePointersUI-OmaUri-End -->

<!-- CPL_Personalization_NoMousePointersUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the mouse pointers.

By default, users can use the Pointers tab in the Mouse Control Panel to add, remove, or change the mouse pointers.

If you enable this setting, none of the mouse pointer scheme settings can be changed by the user.
<!-- CPL_Personalization_NoMousePointersUI-Description-End -->

<!-- CPL_Personalization_NoMousePointersUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoMousePointersUI-Editable-End -->

<!-- CPL_Personalization_NoMousePointersUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoMousePointersUI-DFProperties-End -->

<!-- CPL_Personalization_NoMousePointersUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoMousePointersUI |
| Friendly Name | Prevent changing mouse pointers |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoChangingMousePointers |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoMousePointersUI-AdmxBacked-End -->

<!-- CPL_Personalization_NoMousePointersUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoMousePointersUI-Examples-End -->

<!-- CPL_Personalization_NoMousePointersUI-End -->

<!-- CPL_Personalization_NoScreenSaverUI-Begin -->
## CPL_Personalization_NoScreenSaverUI

<!-- CPL_Personalization_NoScreenSaverUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoScreenSaverUI-Applicability-End -->

<!-- CPL_Personalization_NoScreenSaverUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoScreenSaverUI
```
<!-- CPL_Personalization_NoScreenSaverUI-OmaUri-End -->

<!-- CPL_Personalization_NoScreenSaverUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the Screen Saver dialog from opening in the Personalization or Display Control Panel.

This setting prevents users from using Control Panel to add, configure, or change the screen saver on the computer. It doesn't prevent a screen saver from running.
<!-- CPL_Personalization_NoScreenSaverUI-Description-End -->

<!-- CPL_Personalization_NoScreenSaverUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoScreenSaverUI-Editable-End -->

<!-- CPL_Personalization_NoScreenSaverUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoScreenSaverUI-DFProperties-End -->

<!-- CPL_Personalization_NoScreenSaverUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoScreenSaverUI |
| Friendly Name | Prevent changing screen saver |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | NoDispScrSavPage |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoScreenSaverUI-AdmxBacked-End -->

<!-- CPL_Personalization_NoScreenSaverUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoScreenSaverUI-Examples-End -->

<!-- CPL_Personalization_NoScreenSaverUI-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-Begin -->
## CPL_Personalization_NoSoundSchemeUI

<!-- CPL_Personalization_NoSoundSchemeUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_NoSoundSchemeUI-Applicability-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_NoSoundSchemeUI
```
<!-- CPL_Personalization_NoSoundSchemeUI-OmaUri-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the sound scheme.

By default, users can use the Sounds tab in the Sound Control Panel to add, remove, or change the system Sound Scheme.

If you enable this setting, none of the Sound Scheme settings can be changed by the user.
<!-- CPL_Personalization_NoSoundSchemeUI-Description-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_NoSoundSchemeUI-Editable-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_NoSoundSchemeUI-DFProperties-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoSoundSchemeUI |
| Friendly Name | Prevent changing sounds |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoChangingSoundScheme |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_NoSoundSchemeUI-AdmxBacked-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_NoSoundSchemeUI-Examples-End -->

<!-- CPL_Personalization_NoSoundSchemeUI-End -->

<!-- CPL_Personalization_PersonalColors-Begin -->
## CPL_Personalization_PersonalColors

<!-- CPL_Personalization_PersonalColors-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_PersonalColors-Applicability-End -->

<!-- CPL_Personalization_PersonalColors-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_PersonalColors
```
<!-- CPL_Personalization_PersonalColors-OmaUri-End -->

<!-- CPL_Personalization_PersonalColors-Description-Begin -->
<!-- Description-Source-ADMX -->
Forces Windows to use the specified colors for the background and accent. The color values are specified in hex as #RGB.

By default, users can change the background and accent colors.

If this setting is enabled, the background and accent colors of Windows will be set to the specified colors and users can't change those colors. This setting won't be applied if the specified colors don't meet a contrast ratio of 2:1 with white text.
<!-- CPL_Personalization_PersonalColors-Description-End -->

<!-- CPL_Personalization_PersonalColors-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_PersonalColors-Editable-End -->

<!-- CPL_Personalization_PersonalColors-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_PersonalColors-DFProperties-End -->

<!-- CPL_Personalization_PersonalColors-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_PersonalColors |
| Friendly Name | Force a specific background and accent color |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_PersonalColors-AdmxBacked-End -->

<!-- CPL_Personalization_PersonalColors-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_PersonalColors-Examples-End -->

<!-- CPL_Personalization_PersonalColors-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-Begin -->
## CPL_Personalization_ScreenSaverIsSecure

<!-- CPL_Personalization_ScreenSaverIsSecure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_ScreenSaverIsSecure-Applicability-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverIsSecure
```
<!-- CPL_Personalization_ScreenSaverIsSecure-OmaUri-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines whether screen savers used on the computer are password protected.

- If you enable this setting, all screen savers are password protected.

- If you disable this setting, password protection can't be set on any screen saver.

This setting also disables the "Password protected" checkbox on the Screen Saver dialog in the Personalization or Display Control Panel, preventing users from changing the password protection setting.

- If you don't configure this setting, users can choose whether or not to set password protection on each screen saver.

To ensure that a computer will be password protected, enable the "Enable Screen Saver" setting and specify a timeout via the "Screen Saver timeout" setting.

> [!NOTE]
> To remove the Screen Saver dialog, use the "Prevent changing Screen Saver" setting.
<!-- CPL_Personalization_ScreenSaverIsSecure-Description-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_ScreenSaverIsSecure-Editable-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_ScreenSaverIsSecure-DFProperties-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_ScreenSaverIsSecure |
| Friendly Name | Password protect the screen saver |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Control Panel\Desktop |
| Registry Value Name | ScreenSaverIsSecure |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_ScreenSaverIsSecure-AdmxBacked-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_ScreenSaverIsSecure-Examples-End -->

<!-- CPL_Personalization_ScreenSaverIsSecure-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-Begin -->
## CPL_Personalization_ScreenSaverTimeOut

<!-- CPL_Personalization_ScreenSaverTimeOut-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_ScreenSaverTimeOut-Applicability-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_ScreenSaverTimeOut
```
<!-- CPL_Personalization_ScreenSaverTimeOut-OmaUri-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies how much user idle time must elapse before the screen saver is launched.

When configured, this idle time can be set from a minimum of 1 second to a maximum of 86,400 seconds, or 24 hours. If set to zero, the screen saver won't be started.

This setting has no effect under any of the following circumstances:

- The setting is disabled or not configured.

- The wait time is set to zero.

- The "Enable Screen Saver" setting is disabled.

- Neither the "Screen saver executable name" setting nor the Screen Saver dialog of the client computer's Personalization or Display Control Panel specifies a valid existing screen saver program on the client.

When not configured, whatever wait time is set on the client through the Screen Saver dialog in the Personalization or Display Control Panel is used. The default is 15 minutes.
<!-- CPL_Personalization_ScreenSaverTimeOut-Description-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_ScreenSaverTimeOut-Editable-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_ScreenSaverTimeOut-DFProperties-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_ScreenSaverTimeOut |
| Friendly Name | Screen saver timeout |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Control Panel\Desktop |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_ScreenSaverTimeOut-AdmxBacked-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_ScreenSaverTimeOut-Examples-End -->

<!-- CPL_Personalization_ScreenSaverTimeOut-End -->

<!-- CPL_Personalization_SetScreenSaver-Begin -->
## CPL_Personalization_SetScreenSaver

<!-- CPL_Personalization_SetScreenSaver-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_SetScreenSaver-Applicability-End -->

<!-- CPL_Personalization_SetScreenSaver-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_SetScreenSaver
```
<!-- CPL_Personalization_SetScreenSaver-OmaUri-End -->

<!-- CPL_Personalization_SetScreenSaver-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the screen saver for the user's desktop.

- If you enable this setting, the system displays the specified screen saver on the user's desktop. Also, this setting disables the drop-down list of screen savers in the Screen Saver dialog in the Personalization or Display Control Panel, which prevents users from changing the screen saver.

- If you disable this setting or don't configure it, users can select any screen saver.

- If you enable this setting, type the name of the file that contains the screen saver, including the .scr file name extension. If the screen saver file isn't in the %Systemroot%\System32 directory, type the fully qualified path to the file.

If the specified screen saver isn't installed on a computer to which this setting applies, the setting is ignored.

> [!NOTE]
> This setting can be superseded by the "Enable Screen Saver" setting. If the "Enable Screen Saver" setting is disabled, this setting is ignored, and screen savers don't run.
<!-- CPL_Personalization_SetScreenSaver-Description-End -->

<!-- CPL_Personalization_SetScreenSaver-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_SetScreenSaver-Editable-End -->

<!-- CPL_Personalization_SetScreenSaver-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_SetScreenSaver-DFProperties-End -->

<!-- CPL_Personalization_SetScreenSaver-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_SetScreenSaver |
| Friendly Name | Force specific screen saver |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Control Panel\Desktop |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_SetScreenSaver-AdmxBacked-End -->

<!-- CPL_Personalization_SetScreenSaver-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_SetScreenSaver-Examples-End -->

<!-- CPL_Personalization_SetScreenSaver-End -->

<!-- CPL_Personalization_SetTheme-Begin -->
## CPL_Personalization_SetTheme

<!-- CPL_Personalization_SetTheme-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_SetTheme-Applicability-End -->

<!-- CPL_Personalization_SetTheme-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_SetTheme
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_SetTheme
```
<!-- CPL_Personalization_SetTheme-OmaUri-End -->

<!-- CPL_Personalization_SetTheme-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies which theme file is applied to the computer the first time a user logs on.

- If you enable this setting, the theme that you specify will be applied when a new user logs on for the first time. This policy doesn't prevent the user from changing the theme or any of the theme elements such as the desktop background, color, sounds, or screen saver after the first logon.

- If you disable or don't configure this setting, the default theme will be applied at the first logon.
<!-- CPL_Personalization_SetTheme-Description-End -->

<!-- CPL_Personalization_SetTheme-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_SetTheme-Editable-End -->

<!-- CPL_Personalization_SetTheme-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_SetTheme-DFProperties-End -->

<!-- CPL_Personalization_SetTheme-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_SetTheme |
| Friendly Name | Load a specific theme |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_SetTheme-AdmxBacked-End -->

<!-- CPL_Personalization_SetTheme-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_SetTheme-Examples-End -->

<!-- CPL_Personalization_SetTheme-End -->

<!-- CPL_Personalization_SetVisualStyle-Begin -->
## CPL_Personalization_SetVisualStyle

<!-- CPL_Personalization_SetVisualStyle-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_SetVisualStyle-Applicability-End -->

<!-- CPL_Personalization_SetVisualStyle-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_SetVisualStyle
```
<!-- CPL_Personalization_SetVisualStyle-OmaUri-End -->

<!-- CPL_Personalization_SetVisualStyle-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows you to force a specific visual style file by entering the path (location) of the visual style file.

This can be a local computer visual style (aero.msstyles), or a file located on a remote server using a UNC path (\\Server\Share\aero.msstyles).

- If you enable this setting, the visual style file that you specify will be used. Also, a user may not apply a different visual style when changing themes.

- If you disable or don't configure this setting, the users can select the visual style that they want to use by changing themes (if the Personalization Control Panel is available).

> [!NOTE]
> If this setting is enabled and the file isn't available at user logon, the default visual style is loaded.

> [!NOTE]
> When running Windows XP, you can select the Luna visual style by typing %windir%\resources\Themes\Luna\Luna.msstyles.

> [!NOTE]
> To select the Windows Classic visual style, leave the box blank beside "Path to Visual Style:" and enable this setting. When running Windows 8 or Windows RT, you can't apply the Windows Classic visual style.
<!-- CPL_Personalization_SetVisualStyle-Description-End -->

<!-- CPL_Personalization_SetVisualStyle-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_SetVisualStyle-Editable-End -->

<!-- CPL_Personalization_SetVisualStyle-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_SetVisualStyle-DFProperties-End -->

<!-- CPL_Personalization_SetVisualStyle-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_SetVisualStyle |
| Friendly Name | Force a specific visual style file or force Windows Classic |
| Location | User Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_SetVisualStyle-AdmxBacked-End -->

<!-- CPL_Personalization_SetVisualStyle-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_SetVisualStyle-Examples-End -->

<!-- CPL_Personalization_SetVisualStyle-End -->

<!-- CPL_Personalization_StartBackground-Begin -->
## CPL_Personalization_StartBackground

<!-- CPL_Personalization_StartBackground-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CPL_Personalization_StartBackground-Applicability-End -->

<!-- CPL_Personalization_StartBackground-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ControlPanelDisplay/CPL_Personalization_StartBackground
```
<!-- CPL_Personalization_StartBackground-OmaUri-End -->

<!-- CPL_Personalization_StartBackground-Description-Begin -->
<!-- Description-Source-ADMX -->
Forces the Start screen to use one of the available backgrounds, 1 through 20, and prevents the user from changing it.

If this setting is set to zero or not configured, then Start uses the default background, and users can change it.

If this setting is set to a nonzero value, then Start uses the specified background, and users can't change it. If the specified background isn't supported, the default background is used.
<!-- CPL_Personalization_StartBackground-Description-End -->

<!-- CPL_Personalization_StartBackground-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CPL_Personalization_StartBackground-Editable-End -->

<!-- CPL_Personalization_StartBackground-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CPL_Personalization_StartBackground-DFProperties-End -->

<!-- CPL_Personalization_StartBackground-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_StartBackground |
| Friendly Name | Force a specific Start background |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- CPL_Personalization_StartBackground-AdmxBacked-End -->

<!-- CPL_Personalization_StartBackground-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CPL_Personalization_StartBackground-Examples-End -->

<!-- CPL_Personalization_StartBackground-End -->

<!-- ADMX_ControlPanelDisplay-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ControlPanelDisplay-CspMoreInfo-End -->

<!-- ADMX_ControlPanelDisplay-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
