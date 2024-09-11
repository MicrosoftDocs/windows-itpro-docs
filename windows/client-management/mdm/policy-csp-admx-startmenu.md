---
title: ADMX_StartMenu Policy CSP
description: Learn more about the ADMX_StartMenu Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_StartMenu-Begin -->
# Policy CSP - ADMX_StartMenu

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_StartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_StartMenu-Editable-End -->

<!-- AddSearchInternetLinkInStartMenu-Begin -->
## AddSearchInternetLinkInStartMenu

<!-- AddSearchInternetLinkInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AddSearchInternetLinkInStartMenu-Applicability-End -->

<!-- AddSearchInternetLinkInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/AddSearchInternetLinkInStartMenu
```
<!-- AddSearchInternetLinkInStartMenu-OmaUri-End -->

<!-- AddSearchInternetLinkInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, a "Search the Internet" link is shown when the user performs a search in the start menu search box. This button launches the default browser with the search terms.

- If you disable this policy, there won't be a "Search the Internet" link when the user performs a search in the start menu search box.

- If you don't configure this policy (default), there won't be a "Search the Internet" link on the start menu.
<!-- AddSearchInternetLinkInStartMenu-Description-End -->

<!-- AddSearchInternetLinkInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AddSearchInternetLinkInStartMenu-Editable-End -->

<!-- AddSearchInternetLinkInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AddSearchInternetLinkInStartMenu-DFProperties-End -->

<!-- AddSearchInternetLinkInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AddSearchInternetLinkInStartMenu |
| Friendly Name | Add Search Internet link to Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | AddSearchInternetLinkInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- AddSearchInternetLinkInStartMenu-AdmxBacked-End -->

<!-- AddSearchInternetLinkInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AddSearchInternetLinkInStartMenu-Examples-End -->

<!-- AddSearchInternetLinkInStartMenu-End -->

<!-- ClearRecentDocsOnExit-Begin -->
## ClearRecentDocsOnExit

<!-- ClearRecentDocsOnExit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ClearRecentDocsOnExit-Applicability-End -->

<!-- ClearRecentDocsOnExit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ClearRecentDocsOnExit
```
<!-- ClearRecentDocsOnExit-OmaUri-End -->

<!-- ClearRecentDocsOnExit-Description-Begin -->
<!-- Description-Source-ADMX -->
Clear history of recently opened documents on exit.

- If you enable this setting, the system deletes shortcuts to recently used document files when the user logs off. As a result, the Recent Items menu on the Start menu is always empty when the user logs on. In addition, recently and frequently used items in the Jump Lists off of programs in the Start Menu and Taskbar will be cleared when the user logs off.

- If you disable or don't configure this setting, the system retains document shortcuts, and when a user logs on, the Recent Items menu and the Jump Lists appear just as it did when the user logged off.

> [!NOTE]
> The system saves document shortcuts in the user profile in the System-drive\Users\User-name\Recent folder.

Also, see the "Remove Recent Items menu from Start Menu" and "Do not keep history of recently opened documents" policies in this folder. The system only uses this setting when neither of these related settings are selected.

This setting doesn't clear the list of recent files that Windows programs display at the bottom of the File menu. See the "Do not keep history of recently opened documents" setting.

This policy setting also doesn't hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.

This policy also doesn't clear items that the user may have pinned to the Jump Lists, or Tasks that the application has provided for their menu. See the "Do not allow pinning items in Jump Lists" setting.
<!-- ClearRecentDocsOnExit-Description-End -->

<!-- ClearRecentDocsOnExit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClearRecentDocsOnExit-Editable-End -->

<!-- ClearRecentDocsOnExit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ClearRecentDocsOnExit-DFProperties-End -->

<!-- ClearRecentDocsOnExit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ClearRecentDocsOnExit |
| Friendly Name | Clear history of recently opened documents on exit |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ClearRecentDocsOnExit |
| ADMX File Name | StartMenu.admx |
<!-- ClearRecentDocsOnExit-AdmxBacked-End -->

<!-- ClearRecentDocsOnExit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClearRecentDocsOnExit-Examples-End -->

<!-- ClearRecentDocsOnExit-End -->

<!-- ClearRecentProgForNewUserInStartMenu-Begin -->
## ClearRecentProgForNewUserInStartMenu

<!-- ClearRecentProgForNewUserInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ClearRecentProgForNewUserInStartMenu-Applicability-End -->

<!-- ClearRecentProgForNewUserInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ClearRecentProgForNewUserInStartMenu
```
<!-- ClearRecentProgForNewUserInStartMenu-OmaUri-End -->

<!-- ClearRecentProgForNewUserInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting, the recent programs list in the start menu will be blank for each new user.

- If you disable or don't configure this policy, the start menu recent programs list will be pre-populated with programs for each new user.
<!-- ClearRecentProgForNewUserInStartMenu-Description-End -->

<!-- ClearRecentProgForNewUserInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClearRecentProgForNewUserInStartMenu-Editable-End -->

<!-- ClearRecentProgForNewUserInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ClearRecentProgForNewUserInStartMenu-DFProperties-End -->

<!-- ClearRecentProgForNewUserInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ClearRecentProgForNewUserInStartMenu |
| Friendly Name | Clear the recent programs list for new users |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ClearRecentProgForNewUserInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- ClearRecentProgForNewUserInStartMenu-AdmxBacked-End -->

<!-- ClearRecentProgForNewUserInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClearRecentProgForNewUserInStartMenu-Examples-End -->

<!-- ClearRecentProgForNewUserInStartMenu-End -->

<!-- ClearTilesOnExit-Begin -->
## ClearTilesOnExit

<!-- ClearTilesOnExit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ClearTilesOnExit-Applicability-End -->

<!-- ClearTilesOnExit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ClearTilesOnExit
```
<!-- ClearTilesOnExit-OmaUri-End -->

<!-- ClearTilesOnExit-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this setting, the system deletes tile notifications when the user logs on. As a result, the Tiles in the start view will always show their default content when the user logs on. In addition, any cached versions of these notifications will be cleared when the user logs on.

- If you disable or don't configure this setting, the system retains notifications, and when a user logs on, the tiles appear just as they did when the user logged off, including the history of previous notifications for each tile.

This setting doesn't prevent new notifications from appearing. See the "Turn off Application Notifications" setting to prevent new notifications.
<!-- ClearTilesOnExit-Description-End -->

<!-- ClearTilesOnExit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClearTilesOnExit-Editable-End -->

<!-- ClearTilesOnExit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ClearTilesOnExit-DFProperties-End -->

<!-- ClearTilesOnExit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ClearTilesOnExit |
| Friendly Name | Clear tile notifications during log on |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ClearTilesOnExit |
| ADMX File Name | StartMenu.admx |
<!-- ClearTilesOnExit-AdmxBacked-End -->

<!-- ClearTilesOnExit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClearTilesOnExit-Examples-End -->

<!-- ClearTilesOnExit-End -->

<!-- DesktopAppsFirstInAppsView-Begin -->
## DesktopAppsFirstInAppsView

<!-- DesktopAppsFirstInAppsView-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DesktopAppsFirstInAppsView-Applicability-End -->

<!-- DesktopAppsFirstInAppsView-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/DesktopAppsFirstInAppsView
```
<!-- DesktopAppsFirstInAppsView-OmaUri-End -->

<!-- DesktopAppsFirstInAppsView-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows desktop apps to be listed first in the Apps view in Start.

- If you enable this policy setting, desktop apps would be listed first when the apps are sorted by category in the Apps view. The other sorting options would continue to be available and the user could choose to change their default sorting options.

- If you disable or don't configure this policy setting, the desktop apps won't be listed first when the apps are sorted by category, and the user can configure this setting.
<!-- DesktopAppsFirstInAppsView-Description-End -->

<!-- DesktopAppsFirstInAppsView-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DesktopAppsFirstInAppsView-Editable-End -->

<!-- DesktopAppsFirstInAppsView-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DesktopAppsFirstInAppsView-DFProperties-End -->

<!-- DesktopAppsFirstInAppsView-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DesktopAppsFirstInAppsView |
| Friendly Name | List desktop apps first in the Apps view |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DesktopAppsFirstInAppsView |
| ADMX File Name | StartMenu.admx |
<!-- DesktopAppsFirstInAppsView-AdmxBacked-End -->

<!-- DesktopAppsFirstInAppsView-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DesktopAppsFirstInAppsView-Examples-End -->

<!-- DesktopAppsFirstInAppsView-End -->

<!-- DisableGlobalSearchOnAppsView-Begin -->
## DisableGlobalSearchOnAppsView

<!-- DisableGlobalSearchOnAppsView-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableGlobalSearchOnAppsView-Applicability-End -->

<!-- DisableGlobalSearchOnAppsView-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/DisableGlobalSearchOnAppsView
```
<!-- DisableGlobalSearchOnAppsView-OmaUri-End -->

<!-- DisableGlobalSearchOnAppsView-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the user from searching apps, files, settings (and the web if enabled) when the user searches from the Apps view.

This policy setting is only applied when the Apps view is set as the default view for Start.

- If you enable this policy setting, searching from the Apps view will only search the list of installed apps.

- If you disable or don't configure this policy setting, the user can configure this setting.
<!-- DisableGlobalSearchOnAppsView-Description-End -->

<!-- DisableGlobalSearchOnAppsView-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableGlobalSearchOnAppsView-Editable-End -->

<!-- DisableGlobalSearchOnAppsView-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableGlobalSearchOnAppsView-DFProperties-End -->

<!-- DisableGlobalSearchOnAppsView-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableGlobalSearchOnAppsView |
| Friendly Name | Search just apps from the Apps view |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableGlobalSearchOnAppsView |
| ADMX File Name | StartMenu.admx |
<!-- DisableGlobalSearchOnAppsView-AdmxBacked-End -->

<!-- DisableGlobalSearchOnAppsView-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableGlobalSearchOnAppsView-Examples-End -->

<!-- DisableGlobalSearchOnAppsView-End -->

<!-- ForceStartMenuLogOff-Begin -->
## ForceStartMenuLogOff

<!-- ForceStartMenuLogOff-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForceStartMenuLogOff-Applicability-End -->

<!-- ForceStartMenuLogOff-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ForceStartMenuLogOff
```
<!-- ForceStartMenuLogOff-OmaUri-End -->

<!-- ForceStartMenuLogOff-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy only applies to the classic version of the start menu and doesn't affect the new style start menu.

Adds the "Log Off `<username>`" item to the Start menu and prevents users from removing it.

- If you enable this setting, the Log Off `<username>` item appears in the Start menu. This setting also removes the Display Logoff item from Start Menu Options. As a result, users can't remove the Log Off `<username>` item from the Start Menu.

- If you disable this setting or don't configure it, users can use the Display Logoff item to add and remove the Log Off item.

This setting affects the Start menu only. It doesn't affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del.

> [!NOTE]
> To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab, and then, in the Start Menu Settings box, click Display Logoff.

Also, see "Remove Logoff" in User Configuration\Administrative Templates\System\Logon/Logoff.
<!-- ForceStartMenuLogOff-Description-End -->

<!-- ForceStartMenuLogOff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForceStartMenuLogOff-Editable-End -->

<!-- ForceStartMenuLogOff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForceStartMenuLogOff-DFProperties-End -->

<!-- ForceStartMenuLogOff-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForceStartMenuLogOff |
| Friendly Name | Add Logoff to the Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ForceStartMenuLogOff |
| ADMX File Name | StartMenu.admx |
<!-- ForceStartMenuLogOff-AdmxBacked-End -->

<!-- ForceStartMenuLogOff-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForceStartMenuLogOff-Examples-End -->

<!-- ForceStartMenuLogOff-End -->

<!-- GoToDesktopOnSignIn-Begin -->
## GoToDesktopOnSignIn

<!-- GoToDesktopOnSignIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GoToDesktopOnSignIn-Applicability-End -->

<!-- GoToDesktopOnSignIn-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/GoToDesktopOnSignIn
```
<!-- GoToDesktopOnSignIn-OmaUri-End -->

<!-- GoToDesktopOnSignIn-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to go to the desktop instead of the Start screen when they sign in.

- If you enable this policy setting, users will always go to the desktop when they sign in.

- If you disable this policy setting, users will always go to the Start screen when they sign in.

- If you don't configure this policy setting, the default setting for the user's device will be used, and the user can choose to change it.
<!-- GoToDesktopOnSignIn-Description-End -->

<!-- GoToDesktopOnSignIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GoToDesktopOnSignIn-Editable-End -->

<!-- GoToDesktopOnSignIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GoToDesktopOnSignIn-DFProperties-End -->

<!-- GoToDesktopOnSignIn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GoToDesktopOnSignIn |
| Friendly Name | Go to the desktop instead of Start when signing in |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | GoToDesktopOnSignIn |
| ADMX File Name | StartMenu.admx |
<!-- GoToDesktopOnSignIn-AdmxBacked-End -->

<!-- GoToDesktopOnSignIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GoToDesktopOnSignIn-Examples-End -->

<!-- GoToDesktopOnSignIn-End -->

<!-- GreyMSIAds-Begin -->
## GreyMSIAds

<!-- GreyMSIAds-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- GreyMSIAds-Applicability-End -->

<!-- GreyMSIAds-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/GreyMSIAds
```
<!-- GreyMSIAds-OmaUri-End -->

<!-- GreyMSIAds-Description-Begin -->
<!-- Description-Source-ADMX -->
Displays Start menu shortcuts to partially installed programs in gray text.

This setting makes it easier for users to distinguish between programs that are fully installed and those that are only partially installed.

Partially installed programs include those that a system administrator assigns using Windows Installer and those that users have configured for full installation upon first use.

If you disable this setting or don't configure it, all Start menu shortcuts appear as black text.

> [!NOTE]
> Enabling this setting can make the Start menu slow to open.
<!-- GreyMSIAds-Description-End -->

<!-- GreyMSIAds-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GreyMSIAds-Editable-End -->

<!-- GreyMSIAds-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- GreyMSIAds-DFProperties-End -->

<!-- GreyMSIAds-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | GreyMSIAds |
| Friendly Name | Gray unavailable Windows Installer programs Start Menu shortcuts |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | GreyMSIAds |
| ADMX File Name | StartMenu.admx |
<!-- GreyMSIAds-AdmxBacked-End -->

<!-- GreyMSIAds-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GreyMSIAds-Examples-End -->

<!-- GreyMSIAds-End -->

<!-- HidePowerOptions-Begin -->
## HidePowerOptions

<!-- HidePowerOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HidePowerOptions-Applicability-End -->

<!-- HidePowerOptions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/HidePowerOptions
```
<!-- HidePowerOptions-OmaUri-End -->

<!-- HidePowerOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from performing the following commands from the Windows security screen, the logon screen, and the Start menu: Shut Down, Restart, Sleep, and Hibernate. This policy setting doesn't prevent users from running Windows-based programs that perform these functions.

- If you enable this policy setting, the shutdown, restart, sleep, and hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE, and from the logon screen.

- If you disable or don't configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security and logon screens is also available.
<!-- HidePowerOptions-Description-End -->

<!-- HidePowerOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HidePowerOptions-Editable-End -->

<!-- HidePowerOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HidePowerOptions-DFProperties-End -->

<!-- HidePowerOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HidePowerOptions |
| Friendly Name | Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands |
| Location | Computer Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | HidePowerOptions |
| ADMX File Name | StartMenu.admx |
<!-- HidePowerOptions-AdmxBacked-End -->

<!-- HidePowerOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HidePowerOptions-Examples-End -->

<!-- HidePowerOptions-End -->

<!-- Intellimenus-Begin -->
## Intellimenus

<!-- Intellimenus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Intellimenus-Applicability-End -->

<!-- Intellimenus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/Intellimenus
```
<!-- Intellimenus-OmaUri-End -->

<!-- Intellimenus-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables personalized menus.

Windows personalizes long menus by moving recently used items to the top of the menu and hiding items that haven't been used recently. Users can display the hidden items by clicking an arrow to extend the menu.

If you enable this setting, the system doesn't personalize menus. All menu items appear and remain in standard order. Also, this setting removes the "Use Personalized Menus" option so users don't try to change the setting while a setting is in effect.

> [!NOTE]
> Personalized menus require user tracking. If you enable the "Turn off user tracking" setting, the system disables user tracking and personalized menus and ignores this setting.

> [!TIP]
> To Turn off personalized menus without specifying a setting, click Start, click Settings, click Taskbar and Start Menu, and then, on the General tab, clear the "Use Personalized Menus" option.
<!-- Intellimenus-Description-End -->

<!-- Intellimenus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Intellimenus-Editable-End -->

<!-- Intellimenus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Intellimenus-DFProperties-End -->

<!-- Intellimenus-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Intellimenus |
| Friendly Name | Turn off personalized menus |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | Intellimenus |
| ADMX File Name | StartMenu.admx |
<!-- Intellimenus-AdmxBacked-End -->

<!-- Intellimenus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Intellimenus-Examples-End -->

<!-- Intellimenus-End -->

<!-- LockTaskbar-Begin -->
## LockTaskbar

<!-- LockTaskbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LockTaskbar-Applicability-End -->

<!-- LockTaskbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/LockTaskbar
```
<!-- LockTaskbar-OmaUri-End -->

<!-- LockTaskbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects the taskbar, which is used to switch between running applications.

The taskbar includes the Start button, list of currently running tasks, and the notification area. By default, the taskbar is located at the bottom of the screen, but it can be dragged to any side of the screen. When it's locked, it can't be moved or resized.

- If you enable this setting, it prevents the user from moving or resizing the taskbar. While the taskbar is locked, auto-hide and other taskbar options are still available in Taskbar properties.

- If you disable this setting or don't configure it, the user can configure the taskbar position.

> [!NOTE]
> Enabling this setting also locks the QuickLaunch bar and any other toolbars that the user has on their taskbar. The toolbar's position is locked, and the user can't show and hide various toolbars using the taskbar context menu.
<!-- LockTaskbar-Description-End -->

<!-- LockTaskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockTaskbar-Editable-End -->

<!-- LockTaskbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LockTaskbar-DFProperties-End -->

<!-- LockTaskbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LockTaskbar |
| Friendly Name | Lock the Taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | LockTaskbar |
| ADMX File Name | StartMenu.admx |
<!-- LockTaskbar-AdmxBacked-End -->

<!-- LockTaskbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockTaskbar-Examples-End -->

<!-- LockTaskbar-End -->

<!-- MemCheckBoxInRunDlg-Begin -->
## MemCheckBoxInRunDlg

<!-- MemCheckBoxInRunDlg-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MemCheckBoxInRunDlg-Applicability-End -->

<!-- MemCheckBoxInRunDlg-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/MemCheckBoxInRunDlg
```
<!-- MemCheckBoxInRunDlg-OmaUri-End -->

<!-- MemCheckBoxInRunDlg-Description-Begin -->
<!-- Description-Source-ADMX -->
Lets users run a 16-bit program in a dedicated (not shared) Virtual DOS Machine (VDM) process.

All DOS and 16-bit programs run on Windows 2000 Professional and Windows XP Professional in the Windows Virtual DOS Machine program. VDM simulates a 16-bit environment, complete with the DLLs required by 16-bit programs. By default, all 16-bit programs run as threads in a single, shared VDM process. As such, they share the memory space allocated to the VDM process and can't run simultaneously.

Enabling this setting adds a check box to the Run dialog box, giving users the option of running a 16-bit program in its own dedicated NTVDM process. The additional check box is enabled only when a user enters a 16-bit program in the Run dialog box.
<!-- MemCheckBoxInRunDlg-Description-End -->

<!-- MemCheckBoxInRunDlg-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MemCheckBoxInRunDlg-Editable-End -->

<!-- MemCheckBoxInRunDlg-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MemCheckBoxInRunDlg-DFProperties-End -->

<!-- MemCheckBoxInRunDlg-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MemCheckBoxInRunDlg |
| Friendly Name | Add "Run in Separate Memory Space" check box to Run dialog box |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | MemCheckBoxInRunDlg |
| ADMX File Name | StartMenu.admx |
<!-- MemCheckBoxInRunDlg-AdmxBacked-End -->

<!-- MemCheckBoxInRunDlg-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MemCheckBoxInRunDlg-Examples-End -->

<!-- MemCheckBoxInRunDlg-End -->

<!-- NoAutoTrayNotify-Begin -->
## NoAutoTrayNotify

<!-- NoAutoTrayNotify-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoAutoTrayNotify-Applicability-End -->

<!-- NoAutoTrayNotify-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoAutoTrayNotify
```
<!-- NoAutoTrayNotify-OmaUri-End -->

<!-- NoAutoTrayNotify-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects the notification area, also called the "system tray".

The notification area is located in the task bar, generally at the bottom of the screen, and it includes the clock and current notifications. This setting determines whether the items are always expanded or always collapsed. By default, notifications are collapsed. The notification cleanup << icon can be referred to as the "notification chevron".

- If you enable this setting, the system notification area expands to show all of the notifications that use this area.

- If you disable this setting, the system notification area will always collapse notifications.

- If you don't configure it, the user can choose if they want notifications collapsed.
<!-- NoAutoTrayNotify-Description-End -->

<!-- NoAutoTrayNotify-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoAutoTrayNotify-Editable-End -->

<!-- NoAutoTrayNotify-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoAutoTrayNotify-DFProperties-End -->

<!-- NoAutoTrayNotify-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAutoTrayNotify |
| Friendly Name | Turn off notification area cleanup |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoAutoTrayNotify |
| ADMX File Name | StartMenu.admx |
<!-- NoAutoTrayNotify-AdmxBacked-End -->

<!-- NoAutoTrayNotify-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoAutoTrayNotify-Examples-End -->

<!-- NoAutoTrayNotify-End -->

<!-- NoBalloonTip-Begin -->
## NoBalloonTip

<!-- NoBalloonTip-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoBalloonTip-Applicability-End -->

<!-- NoBalloonTip-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoBalloonTip
```
<!-- NoBalloonTip-OmaUri-End -->

<!-- NoBalloonTip-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides pop-up text on the Start menu and in the notification area.

When you hold the cursor over an item on the Start menu or in the notification area, the system displays pop-up text providing additional information about the object.

- If you enable this setting, some of this pop-up text isn't displayed. The pop-up text affected by this setting includes "Click here to begin" on the Start button, "Where have all my programs gone" on the Start menu, and "Where have my icons gone" in the notification area.

- If you disable this setting or don't configure it, all pop-up text is displayed on the Start menu and in the notification area.
<!-- NoBalloonTip-Description-End -->

<!-- NoBalloonTip-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoBalloonTip-Editable-End -->

<!-- NoBalloonTip-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoBalloonTip-DFProperties-End -->

<!-- NoBalloonTip-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoBalloonTip |
| Friendly Name | Remove Balloon Tips on Start Menu items |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSMBalloonTip |
| ADMX File Name | StartMenu.admx |
<!-- NoBalloonTip-AdmxBacked-End -->

<!-- NoBalloonTip-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoBalloonTip-Examples-End -->

<!-- NoBalloonTip-End -->

<!-- NoChangeStartMenu-Begin -->
## NoChangeStartMenu

<!-- NoChangeStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoChangeStartMenu-Applicability-End -->

<!-- NoChangeStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoChangeStartMenu
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoChangeStartMenu
```
<!-- NoChangeStartMenu-OmaUri-End -->

<!-- NoChangeStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from changing their Start screen layout.

- If you enable this setting, you'll prevent a user from selecting an app, resizing a tile, pinning/unpinning a tile or a secondary tile, entering the customize mode and rearranging tiles within Start and Apps.

- If you disable or don't configure this setting, you'll allow a user to select an app, resize a tile, pin/unpin a tile or a secondary tile, enter the customize mode and rearrange tiles within Start and Apps.
<!-- NoChangeStartMenu-Description-End -->

<!-- NoChangeStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoChangeStartMenu-Editable-End -->

<!-- NoChangeStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoChangeStartMenu-DFProperties-End -->

<!-- NoChangeStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoChangeStartMenu |
| Friendly Name | Prevent users from customizing their Start Screen |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoChangeStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoChangeStartMenu-AdmxBacked-End -->

<!-- NoChangeStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoChangeStartMenu-Examples-End -->

<!-- NoChangeStartMenu-End -->

<!-- NoClose-Begin -->
## NoClose

<!-- NoClose-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoClose-Applicability-End -->

<!-- NoClose-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoClose
```
<!-- NoClose-OmaUri-End -->

<!-- NoClose-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from performing the following commands from the Start menu or Windows Security screen: Shut Down, Restart, Sleep, and Hibernate. This policy setting doesn't prevent users from running Windows-based programs that perform these functions.

- If you enable this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE.

- If you disable or don't configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security screen is also available.

> [!NOTE]
> Third-party programs certified as compatible with Microsoft Windows Vista, Windows XP SP2, Windows XP SP1, Windows XP, or Windows 2000 Professional are required to support this policy setting.
<!-- NoClose-Description-End -->

<!-- NoClose-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoClose-Editable-End -->

<!-- NoClose-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoClose-DFProperties-End -->

<!-- NoClose-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoClose |
| Friendly Name | Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoClose |
| ADMX File Name | StartMenu.admx |
<!-- NoClose-AdmxBacked-End -->

<!-- NoClose-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoClose-Examples-End -->

<!-- NoClose-End -->

<!-- NoCommonGroups-Begin -->
## NoCommonGroups

<!-- NoCommonGroups-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoCommonGroups-Applicability-End -->

<!-- NoCommonGroups-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoCommonGroups
```
<!-- NoCommonGroups-OmaUri-End -->

<!-- NoCommonGroups-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes items in the All Users profile from the Programs menu on the Start menu.

By default, the Programs menu contains items from the All Users profile and items from the user's profile. If you enable this setting, only items in the user's profile appear in the Programs menu.

> [!TIP]
> To see the Program menu items in the All Users profile, on the system drive, go to ProgramData\Microsoft\Windows\Start Menu\Programs.
<!-- NoCommonGroups-Description-End -->

<!-- NoCommonGroups-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoCommonGroups-Editable-End -->

<!-- NoCommonGroups-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoCommonGroups-DFProperties-End -->

<!-- NoCommonGroups-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoCommonGroups |
| Friendly Name | Remove common program groups from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoCommonGroups |
| ADMX File Name | StartMenu.admx |
<!-- NoCommonGroups-AdmxBacked-End -->

<!-- NoCommonGroups-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoCommonGroups-Examples-End -->

<!-- NoCommonGroups-End -->

<!-- NoFavoritesMenu-Begin -->
## NoFavoritesMenu

<!-- NoFavoritesMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoFavoritesMenu-Applicability-End -->

<!-- NoFavoritesMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoFavoritesMenu
```
<!-- NoFavoritesMenu-OmaUri-End -->

<!-- NoFavoritesMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from adding the Favorites menu to the Start menu or classic Start menu.

- If you enable this setting, the Display Favorites item doesn't appear in the Advanced Start menu options box.

- If you disable or don't configure this setting, the Display Favorite item is available.

> [!NOTE]
> The Favorites menu doesn't appear on the Start menu by default. To display the Favorites menu, right-click Start, click Properties, and then click Customize. If you are using Start menu, click the Advanced tab, and then, under Start menu items, click the Favorites menu. If you are using the classic Start menu, click Display Favorites under Advanced Start menu options.

> [!NOTE]
> The items that appear in the Favorites menu when you install Windows are pre-configured by the system to appeal to most users. However, users can add and remove items from this menu, and system administrators can create a customized Favorites menu for a user group.

> [!NOTE]
> This setting only affects the Start menu. The Favorites item still appears in File Explorer and in Internet Explorer.
<!-- NoFavoritesMenu-Description-End -->

<!-- NoFavoritesMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoFavoritesMenu-Editable-End -->

<!-- NoFavoritesMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoFavoritesMenu-DFProperties-End -->

<!-- NoFavoritesMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoFavoritesMenu |
| Friendly Name | Remove Favorites menu from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoFavoritesMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoFavoritesMenu-AdmxBacked-End -->

<!-- NoFavoritesMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoFavoritesMenu-Examples-End -->

<!-- NoFavoritesMenu-End -->

<!-- NoFind-Begin -->
## NoFind

<!-- NoFind-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoFind-Applicability-End -->

<!-- NoFind-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoFind
```
<!-- NoFind-OmaUri-End -->

<!-- NoFind-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Search link from the Start menu, and disables some File Explorer search elements. Note that this doesn't remove the search box from the new style Start menu.

- If you enable this policy setting, the Search item is removed from the Start menu and from the context menu that appears when you right-click the Start menu. Also, the system doesn't respond when users press the Application key (the key with the Windows logo)+ F.

> [!NOTE]
> Enabling this policy setting also prevents the user from using the F3 key.

In File Explorer, the Search item still appears on the Standard buttons toolbar, but the system doesn't respond when the user presses Ctrl+F. Also, Search doesn't appear in the context menu when you right-click an icon representing a drive or a folder.

This policy setting affects the specified user interface elements only. It doesn't affect Internet Explorer and doesn't prevent the user from using other methods to search.

- If you disable or don't configure this policy setting, the Search link is available from the Start menu.
<!-- NoFind-Description-End -->

<!-- NoFind-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoFind-Editable-End -->

<!-- NoFind-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoFind-DFProperties-End -->

<!-- NoFind-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoFind |
| Friendly Name | Remove Search link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoFind |
| ADMX File Name | StartMenu.admx |
<!-- NoFind-AdmxBacked-End -->

<!-- NoFind-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoFind-Examples-End -->

<!-- NoFind-End -->

<!-- NoGamesFolderOnStartMenu-Begin -->
## NoGamesFolderOnStartMenu

<!-- NoGamesFolderOnStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoGamesFolderOnStartMenu-Applicability-End -->

<!-- NoGamesFolderOnStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoGamesFolderOnStartMenu
```
<!-- NoGamesFolderOnStartMenu-OmaUri-End -->

<!-- NoGamesFolderOnStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy the start menu won't show a link to the Games folder.

- If you disable or don't configure this policy, the start menu will show a link to the Games folder, unless the user chooses to remove it in the start menu control panel.
<!-- NoGamesFolderOnStartMenu-Description-End -->

<!-- NoGamesFolderOnStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoGamesFolderOnStartMenu-Editable-End -->

<!-- NoGamesFolderOnStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoGamesFolderOnStartMenu-DFProperties-End -->

<!-- NoGamesFolderOnStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoGamesFolderOnStartMenu |
| Friendly Name | Remove Games link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStartMenuMyGames |
| ADMX File Name | StartMenu.admx |
<!-- NoGamesFolderOnStartMenu-AdmxBacked-End -->

<!-- NoGamesFolderOnStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoGamesFolderOnStartMenu-Examples-End -->

<!-- NoGamesFolderOnStartMenu-End -->

<!-- NoHelp-Begin -->
## NoHelp

<!-- NoHelp-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoHelp-Applicability-End -->

<!-- NoHelp-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoHelp
```
<!-- NoHelp-OmaUri-End -->

<!-- NoHelp-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Help command from the Start menu.

- If you enable this policy setting, the Help command is removed from the Start menu.

- If you disable or don't configure this policy setting, the Help command is available from the Start menu.

This policy setting only affects the Start menu. It doesn't remove the Help menu from File Explorer and doesn't prevent users from running Help.
<!-- NoHelp-Description-End -->

<!-- NoHelp-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoHelp-Editable-End -->

<!-- NoHelp-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoHelp-DFProperties-End -->

<!-- NoHelp-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoHelp |
| Friendly Name | Remove Help menu from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSMHelp |
| ADMX File Name | StartMenu.admx |
<!-- NoHelp-AdmxBacked-End -->

<!-- NoHelp-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoHelp-Examples-End -->

<!-- NoHelp-End -->

<!-- NoInstrumentation-Begin -->
## NoInstrumentation

<!-- NoInstrumentation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoInstrumentation-Applicability-End -->

<!-- NoInstrumentation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoInstrumentation
```
<!-- NoInstrumentation-OmaUri-End -->

<!-- NoInstrumentation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off user tracking.

- If you enable this policy setting, the system doesn't track the programs that the user runs, and doesn't display frequently used programs in the Start Menu.

- If you disable or don't configure this policy setting, the system tracks the programs that the user runs. The system uses this information to customize Windows features, such as showing frequently used programs in the Start Menu.

Also, see these related policy settings: "Remove frequent programs liist from the Start Menu" and "Turn off personalized menus".

This policy setting doesn't prevent users from pinning programs to the Start Menu or Taskbar. See the "Remove pinned programs list from the Start Menu" and "Do not allow pinning programs to the Taskbar" policy settings.
<!-- NoInstrumentation-Description-End -->

<!-- NoInstrumentation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoInstrumentation-Editable-End -->

<!-- NoInstrumentation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoInstrumentation-DFProperties-End -->

<!-- NoInstrumentation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoInstrumentation |
| Friendly Name | Turn off user tracking |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoInstrumentation |
| ADMX File Name | StartMenu.admx |
<!-- NoInstrumentation-AdmxBacked-End -->

<!-- NoInstrumentation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoInstrumentation-Examples-End -->

<!-- NoInstrumentation-End -->

<!-- NoMoreProgramsList-Begin -->
## NoMoreProgramsList

<!-- NoMoreProgramsList-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoMoreProgramsList-Applicability-End -->

<!-- NoMoreProgramsList-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoMoreProgramsList
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoMoreProgramsList
```
<!-- NoMoreProgramsList-OmaUri-End -->

<!-- NoMoreProgramsList-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this setting, the Start Menu will either collapse or remove the all apps list from the Start menu.

Selecting "Collapse" won't display the app list next to the pinned tiles in Start. An "All apps" button will be displayed on Start to open the all apps list. This is equivalent to setting the "Show app list in Start" in Settings to Off.

Selecting "Collapse and disable setting" will do the same as the collapse option and disable the "Show app list in Start menu" in Settings, so users can't turn it to On.

Selecting "Remove and disable setting" will remove the all apps list from Start and disable the "Show app list in Start menu" in Settings, so users can't turn it to On. Select this option for compatibility with earlier versions of Windows.

- If you disable or don't configure this setting, the all apps list will be visible by default, and the user can change "Show app list in Start" in Settings.
<!-- NoMoreProgramsList-Description-End -->

<!-- NoMoreProgramsList-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoMoreProgramsList-Editable-End -->

<!-- NoMoreProgramsList-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoMoreProgramsList-DFProperties-End -->

<!-- NoMoreProgramsList-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoMoreProgramsList |
| Friendly Name | Remove All Programs list from the Start menu |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | StartMenu.admx |
<!-- NoMoreProgramsList-AdmxBacked-End -->

<!-- NoMoreProgramsList-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoMoreProgramsList-Examples-End -->

<!-- NoMoreProgramsList-End -->

<!-- NoNetAndDialupConnect-Begin -->
## NoNetAndDialupConnect

<!-- NoNetAndDialupConnect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoNetAndDialupConnect-Applicability-End -->

<!-- NoNetAndDialupConnect-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoNetAndDialupConnect
```
<!-- NoNetAndDialupConnect-OmaUri-End -->

<!-- NoNetAndDialupConnect-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove Network Connections from the Start Menu.

- If you enable this policy setting, users are prevented from running Network Connections.

Enabling this policy setting prevents the Network Connections folder from opening. This policy setting also removes Network Connections from Settings on the Start menu.

Network Connections still appears in Control Panel and in File Explorer, but if users try to start it, a message appears explaining that a setting prevents the action.

- If you disable or don't configure this policy setting, Network Connections is available from the Start Menu.

Also, see the "Disable programs on Settings menu" and "Disable Control Panel" policy settings and the policy settings in the Network Connections folder (Computer Configuration and User Configuration\Administrative Templates\Network\Network Connections).
<!-- NoNetAndDialupConnect-Description-End -->

<!-- NoNetAndDialupConnect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoNetAndDialupConnect-Editable-End -->

<!-- NoNetAndDialupConnect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoNetAndDialupConnect-DFProperties-End -->

<!-- NoNetAndDialupConnect-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoNetAndDialupConnect |
| Friendly Name | Remove Network Connections from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoNetworkConnections |
| ADMX File Name | StartMenu.admx |
<!-- NoNetAndDialupConnect-AdmxBacked-End -->

<!-- NoNetAndDialupConnect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoNetAndDialupConnect-Examples-End -->

<!-- NoNetAndDialupConnect-End -->

<!-- NoPinnedPrograms-Begin -->
## NoPinnedPrograms

<!-- NoPinnedPrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPinnedPrograms-Applicability-End -->

<!-- NoPinnedPrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoPinnedPrograms
```
<!-- NoPinnedPrograms-OmaUri-End -->

<!-- NoPinnedPrograms-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this setting, the "Pinned Programs" list is removed from the Start menu. Users can't pin programs to the Start menu.

In Windows XP and Windows Vista, the Internet and email checkboxes are removed from the 'Customize Start Menu' dialog.

- If you disable this setting or don't configure it, the "Pinned Programs" list remains on the Start menu. Users can pin and unpin programs in the Start Menu.
<!-- NoPinnedPrograms-Description-End -->

<!-- NoPinnedPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPinnedPrograms-Editable-End -->

<!-- NoPinnedPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPinnedPrograms-DFProperties-End -->

<!-- NoPinnedPrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPinnedPrograms |
| Friendly Name | Remove pinned programs list from the Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStartMenuPinnedList |
| ADMX File Name | StartMenu.admx |
<!-- NoPinnedPrograms-AdmxBacked-End -->

<!-- NoPinnedPrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPinnedPrograms-Examples-End -->

<!-- NoPinnedPrograms-End -->

<!-- NoRecentDocsMenu-Begin -->
## NoRecentDocsMenu

<!-- NoRecentDocsMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRecentDocsMenu-Applicability-End -->

<!-- NoRecentDocsMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoRecentDocsMenu
```
<!-- NoRecentDocsMenu-OmaUri-End -->

<!-- NoRecentDocsMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Recent Items menu from the Start menu. Removes the Documents menu from the classic Start menu.

The Recent Items menu contains links to the non-program files that users have most recently opened. It appears so that users can easily reopen their documents.

If you enable this setting, the system saves document shortcuts but doesn't display the Recent Items menu in the Start Menu, and users can't turn the menu on.

If you later disable the setting, so that the Recent Items menu appears in the Start Menu, the document shortcuts saved before the setting was enabled and while it was in effect appear in the Recent Items menu.

When the setting is disabled, the Recent Items menu appears in the Start Menu, and users can't remove it.

If the setting isn't configured, users can turn the Recent Items menu on and off.

> [!NOTE]
> This setting doesn't prevent Windows programs from displaying shortcuts to recently opened documents. See the "Do not keep history of recently opened documents" setting.

This setting also doesn't hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.
<!-- NoRecentDocsMenu-Description-End -->

<!-- NoRecentDocsMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRecentDocsMenu-Editable-End -->

<!-- NoRecentDocsMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRecentDocsMenu-DFProperties-End -->

<!-- NoRecentDocsMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRecentDocsMenu |
| Friendly Name | Remove Recent Items menu from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoRecentDocsMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoRecentDocsMenu-AdmxBacked-End -->

<!-- NoRecentDocsMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRecentDocsMenu-Examples-End -->

<!-- NoRecentDocsMenu-End -->

<!-- NoResolveSearch-Begin -->
## NoResolveSearch

<!-- NoResolveSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoResolveSearch-Applicability-End -->

<!-- NoResolveSearch-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoResolveSearch
```
<!-- NoResolveSearch-OmaUri-End -->

<!-- NoResolveSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the system from conducting a comprehensive search of the target drive to resolve a shortcut.

- If you enable this policy setting, the system doesn't conduct the final drive search. It just displays a message explaining that the file isn't found.

- If you disable or don't configure this policy setting, by default, when the system can't find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path isn't correct, it conducts a comprehensive search of the target drive in an attempt to find the file.

> [!NOTE]
> This policy setting only applies to target files on NTFS partitions. FAT partitions don't have this ID tracking and search capability.

Also, see the "Do not track Shell shortcuts during roaming" and the "Do not use the tracking-based method when resolving shell shortcuts" policy settings.
<!-- NoResolveSearch-Description-End -->

<!-- NoResolveSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoResolveSearch-Editable-End -->

<!-- NoResolveSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoResolveSearch-DFProperties-End -->

<!-- NoResolveSearch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoResolveSearch |
| Friendly Name | Do not use the search-based method when resolving shell shortcuts |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoResolveSearch |
| ADMX File Name | StartMenu.admx |
<!-- NoResolveSearch-AdmxBacked-End -->

<!-- NoResolveSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoResolveSearch-Examples-End -->

<!-- NoResolveSearch-End -->

<!-- NoResolveTrack-Begin -->
## NoResolveTrack

<!-- NoResolveTrack-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoResolveTrack-Applicability-End -->

<!-- NoResolveTrack-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoResolveTrack
```
<!-- NoResolveTrack-OmaUri-End -->

<!-- NoResolveTrack-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents the system from using NTFS tracking features to resolve a shortcut.

- If you enable this policy setting, the system doesn't try to locate the file by using its file ID. It skips this step and begins a comprehensive search of the drive specified in the target path.

- If you disable or don't configure this policy setting, by default, when the system can't find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path isn't correct, it conducts a comprehensive search of the target drive in an attempt to find the file.

> [!NOTE]
> This policy setting only applies to target files on NTFS partitions. FAT partitions don't have this ID tracking and search capability.

Also, see the "Do not track Shell shortcuts during roaming" and the "Do not use the search-based method when resolving shell shortcuts" policy settings.
<!-- NoResolveTrack-Description-End -->

<!-- NoResolveTrack-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoResolveTrack-Editable-End -->

<!-- NoResolveTrack-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoResolveTrack-DFProperties-End -->

<!-- NoResolveTrack-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoResolveTrack |
| Friendly Name | Do not use the tracking-based method when resolving shell shortcuts |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoResolveTrack |
| ADMX File Name | StartMenu.admx |
<!-- NoResolveTrack-AdmxBacked-End -->

<!-- NoResolveTrack-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoResolveTrack-Examples-End -->

<!-- NoResolveTrack-End -->

<!-- NoRun-Begin -->
## NoRun

<!-- NoRun-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRun-Applicability-End -->

<!-- NoRun-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoRun
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoRun
```
<!-- NoRun-OmaUri-End -->

<!-- NoRun-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to remove the Run command from the Start menu, Internet Explorer, and Task Manager.

- If you enable this setting, the following changes occur:

(1) The Run command is removed from the Start menu.

(2) The New Task (Run) command is removed from Task Manager.

(3) The user will be blocked from entering the following into the Internet Explorer Address Bar:

--- A UNC path: \\`<server>`\\`<share>`

---Accessing local drives: e.g., C:

--- Accessing local folders: e.g., \temp>

Also, users with extended keyboards will no longer be able to display the Run dialog box by pressing the Application key (the key with the Windows logo) + R.

- If you disable or don't configure this setting, users will be able to access the Run command in the Start menu and in Task Manager and use the Internet Explorer Address Bar.

> [!NOTE]
> This setting affects the specified interface only. It doesn't prevent users from using other methods to run programs.

> [!NOTE]
> It's a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
<!-- NoRun-Description-End -->

<!-- NoRun-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRun-Editable-End -->

<!-- NoRun-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRun-DFProperties-End -->

<!-- NoRun-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRun |
| Friendly Name | Remove Run menu from Start Menu |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoRun |
| ADMX File Name | StartMenu.admx |
<!-- NoRun-AdmxBacked-End -->

<!-- NoRun-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRun-Examples-End -->

<!-- NoRun-End -->

<!-- NoSearchCommInStartMenu-Begin -->
## NoSearchCommInStartMenu

<!-- NoSearchCommInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchCommInStartMenu-Applicability-End -->

<!-- NoSearchCommInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSearchCommInStartMenu
```
<!-- NoSearchCommInStartMenu-OmaUri-End -->

<!-- NoSearchCommInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy the start menu search box won't search for communications.

- If you disable or don't configure this policy, the start menu will search for communications, unless the user chooses not to in the start menu control panel.
<!-- NoSearchCommInStartMenu-Description-End -->

<!-- NoSearchCommInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchCommInStartMenu-Editable-End -->

<!-- NoSearchCommInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchCommInStartMenu-DFProperties-End -->

<!-- NoSearchCommInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchCommInStartMenu |
| Friendly Name | Do not search communications |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSearchCommInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoSearchCommInStartMenu-AdmxBacked-End -->

<!-- NoSearchCommInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchCommInStartMenu-Examples-End -->

<!-- NoSearchCommInStartMenu-End -->

<!-- NoSearchComputerLinkInStartMenu-Begin -->
## NoSearchComputerLinkInStartMenu

<!-- NoSearchComputerLinkInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchComputerLinkInStartMenu-Applicability-End -->

<!-- NoSearchComputerLinkInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSearchComputerLinkInStartMenu
```
<!-- NoSearchComputerLinkInStartMenu-OmaUri-End -->

<!-- NoSearchComputerLinkInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, the "See all results" link won't be shown when the user performs a search in the start menu search box.

- If you disable or don't configure this policy, the "See all results" link will be shown when the user performs a search in the start menu search box.
<!-- NoSearchComputerLinkInStartMenu-Description-End -->

<!-- NoSearchComputerLinkInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchComputerLinkInStartMenu-Editable-End -->

<!-- NoSearchComputerLinkInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchComputerLinkInStartMenu-DFProperties-End -->

<!-- NoSearchComputerLinkInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchComputerLinkInStartMenu |
| Friendly Name | Remove Search Computer link |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSearchComputerLinkInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoSearchComputerLinkInStartMenu-AdmxBacked-End -->

<!-- NoSearchComputerLinkInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchComputerLinkInStartMenu-Examples-End -->

<!-- NoSearchComputerLinkInStartMenu-End -->

<!-- NoSearchEverywhereLinkInStartMenu-Begin -->
## NoSearchEverywhereLinkInStartMenu

<!-- NoSearchEverywhereLinkInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchEverywhereLinkInStartMenu-Applicability-End -->

<!-- NoSearchEverywhereLinkInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSearchEverywhereLinkInStartMenu
```
<!-- NoSearchEverywhereLinkInStartMenu-OmaUri-End -->

<!-- NoSearchEverywhereLinkInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, a "See more results" / "Search Everywhere" link won't be shown when the user performs a search in the start menu search box.

- If you disable or don't configure this policy, a "See more results" link will be shown when the user performs a search in the start menu search box. If a 3rd party protocol handler is installed, a "Search Everywhere" link will be shown instead of the "See more results" link.
<!-- NoSearchEverywhereLinkInStartMenu-Description-End -->

<!-- NoSearchEverywhereLinkInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchEverywhereLinkInStartMenu-Editable-End -->

<!-- NoSearchEverywhereLinkInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchEverywhereLinkInStartMenu-DFProperties-End -->

<!-- NoSearchEverywhereLinkInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchEverywhereLinkInStartMenu |
| Friendly Name | Remove See More Results / Search Everywhere link |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoSearchEverywhereLinkInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoSearchEverywhereLinkInStartMenu-AdmxBacked-End -->

<!-- NoSearchEverywhereLinkInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchEverywhereLinkInStartMenu-Examples-End -->

<!-- NoSearchEverywhereLinkInStartMenu-End -->

<!-- NoSearchFilesInStartMenu-Begin -->
## NoSearchFilesInStartMenu

<!-- NoSearchFilesInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchFilesInStartMenu-Applicability-End -->

<!-- NoSearchFilesInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSearchFilesInStartMenu
```
<!-- NoSearchFilesInStartMenu-OmaUri-End -->

<!-- NoSearchFilesInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting the Start menu search box won't search for files.

- If you disable or don't configure this policy setting, the Start menu will search for files, unless the user chooses not to do so directly in Control Panel.

- If you enable this policy, a "See more results" / "Search Everywhere" link won't be shown when the user performs a search in the start menu search box.
<!-- NoSearchFilesInStartMenu-Description-End -->

<!-- NoSearchFilesInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchFilesInStartMenu-Editable-End -->

<!-- NoSearchFilesInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchFilesInStartMenu-DFProperties-End -->

<!-- NoSearchFilesInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchFilesInStartMenu |
| Friendly Name | Do not search for files |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSearchFilesInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoSearchFilesInStartMenu-AdmxBacked-End -->

<!-- NoSearchFilesInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchFilesInStartMenu-Examples-End -->

<!-- NoSearchFilesInStartMenu-End -->

<!-- NoSearchInternetInStartMenu-Begin -->
## NoSearchInternetInStartMenu

<!-- NoSearchInternetInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchInternetInStartMenu-Applicability-End -->

<!-- NoSearchInternetInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSearchInternetInStartMenu
```
<!-- NoSearchInternetInStartMenu-OmaUri-End -->

<!-- NoSearchInternetInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy the start menu search box won't search for internet history or favorites.

- If you disable or don't configure this policy, the start menu will search for for internet history or favorites, unless the user chooses not to in the start menu control panel.
<!-- NoSearchInternetInStartMenu-Description-End -->

<!-- NoSearchInternetInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchInternetInStartMenu-Editable-End -->

<!-- NoSearchInternetInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchInternetInStartMenu-DFProperties-End -->

<!-- NoSearchInternetInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchInternetInStartMenu |
| Friendly Name | Do not search Internet |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSearchInternetInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoSearchInternetInStartMenu-AdmxBacked-End -->

<!-- NoSearchInternetInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchInternetInStartMenu-Examples-End -->

<!-- NoSearchInternetInStartMenu-End -->

<!-- NoSearchProgramsInStartMenu-Begin -->
## NoSearchProgramsInStartMenu

<!-- NoSearchProgramsInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchProgramsInStartMenu-Applicability-End -->

<!-- NoSearchProgramsInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSearchProgramsInStartMenu
```
<!-- NoSearchProgramsInStartMenu-OmaUri-End -->

<!-- NoSearchProgramsInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting the Start menu search box won't search for programs or Control Panel items.

- If you disable or don't configure this policy setting, the Start menu search box will search for programs and Control Panel items, unless the user chooses not to do so directly in Control Panel.
<!-- NoSearchProgramsInStartMenu-Description-End -->

<!-- NoSearchProgramsInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchProgramsInStartMenu-Editable-End -->

<!-- NoSearchProgramsInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchProgramsInStartMenu-DFProperties-End -->

<!-- NoSearchProgramsInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchProgramsInStartMenu |
| Friendly Name | Do not search programs and Control Panel items |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSearchProgramsInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoSearchProgramsInStartMenu-AdmxBacked-End -->

<!-- NoSearchProgramsInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchProgramsInStartMenu-Examples-End -->

<!-- NoSearchProgramsInStartMenu-End -->

<!-- NoSetFolders-Begin -->
## NoSetFolders

<!-- NoSetFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSetFolders-Applicability-End -->

<!-- NoSetFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSetFolders
```
<!-- NoSetFolders-OmaUri-End -->

<!-- NoSetFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove programs on Settings menu.

- If you enable this policy setting, the Control Panel, Printers, and Network and Connection folders are removed from Settings on the Start menu, and from Computer and File Explorer. It also prevents the programs represented by these folders (such as Control.exe) from running.

However, users can still start Control Panel items by using other methods, such as right-clicking the desktop to start Display or right-clicking Computer to start System.

- If you disable or don't configure this policy setting, the Control Panel, Printers, and Network and Connection folders from Settings are available on the Start menu, and from Computer and File Explorer.

Also, see the "Disable Control Panel," "Disable Display in Control Panel," and "Remove Network Connections from Start Menu" policy settings.
<!-- NoSetFolders-Description-End -->

<!-- NoSetFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSetFolders-Editable-End -->

<!-- NoSetFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSetFolders-DFProperties-End -->

<!-- NoSetFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSetFolders |
| Friendly Name | Remove programs on Settings menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSetFolders |
| ADMX File Name | StartMenu.admx |
<!-- NoSetFolders-AdmxBacked-End -->

<!-- NoSetFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSetFolders-Examples-End -->

<!-- NoSetFolders-End -->

<!-- NoSetTaskbar-Begin -->
## NoSetTaskbar

<!-- NoSetTaskbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSetTaskbar-Applicability-End -->

<!-- NoSetTaskbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSetTaskbar
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSetTaskbar
```
<!-- NoSetTaskbar-OmaUri-End -->

<!-- NoSetTaskbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent changes to Taskbar and Start Menu Settings.

- If you enable this policy setting, The user will be prevented from opening the Taskbar Properties dialog box.

If the user right-clicks the taskbar and then clicks Properties, a message appears explaining that a setting prevents the action.

- If you disable or don't configure this policy setting, the Taskbar and Start Menu items are available from Settings on the Start menu.
<!-- NoSetTaskbar-Description-End -->

<!-- NoSetTaskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSetTaskbar-Editable-End -->

<!-- NoSetTaskbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSetTaskbar-DFProperties-End -->

<!-- NoSetTaskbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSetTaskbar |
| Friendly Name | Prevent changes to Taskbar and Start Menu Settings |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSetTaskbar |
| ADMX File Name | StartMenu.admx |
<!-- NoSetTaskbar-AdmxBacked-End -->

<!-- NoSetTaskbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSetTaskbar-Examples-End -->

<!-- NoSetTaskbar-End -->

<!-- NoSMConfigurePrograms-Begin -->
## NoSMConfigurePrograms

<!-- NoSMConfigurePrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSMConfigurePrograms-Applicability-End -->

<!-- NoSMConfigurePrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSMConfigurePrograms
```
<!-- NoSMConfigurePrograms-OmaUri-End -->

<!-- NoSMConfigurePrograms-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Default Programs link from the Start menu.

- If you enable this policy setting, the Default Programs link is removed from the Start menu.

Clicking the Default Programs link from the Start menu opens the Default Programs control panel and provides administrators the ability to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.

- If you disable or don't configure this policy setting, the Default Programs link is available from the Start menu.

> [!NOTE]
> This policy setting doesn't prevent the Set Default Programs for This Computer option from appearing in the Default Programs control panel.
<!-- NoSMConfigurePrograms-Description-End -->

<!-- NoSMConfigurePrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSMConfigurePrograms-Editable-End -->

<!-- NoSMConfigurePrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSMConfigurePrograms-DFProperties-End -->

<!-- NoSMConfigurePrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSMConfigurePrograms |
| Friendly Name | Remove Default Programs link from the Start menu. |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSMConfigurePrograms |
| ADMX File Name | StartMenu.admx |
<!-- NoSMConfigurePrograms-AdmxBacked-End -->

<!-- NoSMConfigurePrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSMConfigurePrograms-Examples-End -->

<!-- NoSMConfigurePrograms-End -->

<!-- NoSMMyDocuments-Begin -->
## NoSMMyDocuments

<!-- NoSMMyDocuments-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSMMyDocuments-Applicability-End -->

<!-- NoSMMyDocuments-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSMMyDocuments
```
<!-- NoSMMyDocuments-OmaUri-End -->

<!-- NoSMMyDocuments-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Documents icon from the Start menu and its submenus.

- If you enable this policy setting, the Documents icon is removed from the Start menu and its submenus. Enabling this policy setting only removes the icon. It doesn't prevent the user from using other methods to gain access to the contents of the Documents folder.

> [!NOTE]
> To make changes to this policy setting effective, you must log off and then log on.

- If you disable or don't configure this policy setting, he Documents icon is available from the Start menu.

Also, see the "Remove Documents icon on the desktop" policy setting.
<!-- NoSMMyDocuments-Description-End -->

<!-- NoSMMyDocuments-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSMMyDocuments-Editable-End -->

<!-- NoSMMyDocuments-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSMMyDocuments-DFProperties-End -->

<!-- NoSMMyDocuments-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSMMyDocuments |
| Friendly Name | Remove Documents icon from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSMMyDocs |
| ADMX File Name | StartMenu.admx |
<!-- NoSMMyDocuments-AdmxBacked-End -->

<!-- NoSMMyDocuments-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSMMyDocuments-Examples-End -->

<!-- NoSMMyDocuments-End -->

<!-- NoSMMyMusic-Begin -->
## NoSMMyMusic

<!-- NoSMMyMusic-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSMMyMusic-Applicability-End -->

<!-- NoSMMyMusic-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSMMyMusic
```
<!-- NoSMMyMusic-OmaUri-End -->

<!-- NoSMMyMusic-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Music icon from Start Menu.

- If you enable this policy setting, the Music icon is no longer available from Start Menu.

- If you disable or don't configure this policy setting, the Music icon is available from Start Menu.
<!-- NoSMMyMusic-Description-End -->

<!-- NoSMMyMusic-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSMMyMusic-Editable-End -->

<!-- NoSMMyMusic-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSMMyMusic-DFProperties-End -->

<!-- NoSMMyMusic-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSMMyMusic |
| Friendly Name | Remove Music icon from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStartMenuMyMusic |
| ADMX File Name | StartMenu.admx |
<!-- NoSMMyMusic-AdmxBacked-End -->

<!-- NoSMMyMusic-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSMMyMusic-Examples-End -->

<!-- NoSMMyMusic-End -->

<!-- NoSMMyNetworkPlaces-Begin -->
## NoSMMyNetworkPlaces

<!-- NoSMMyNetworkPlaces-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSMMyNetworkPlaces-Applicability-End -->

<!-- NoSMMyNetworkPlaces-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSMMyNetworkPlaces
```
<!-- NoSMMyNetworkPlaces-OmaUri-End -->

<!-- NoSMMyNetworkPlaces-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Network icon from Start Menu.

- If you enable this policy setting, the Network icon is no longer available from Start Menu.

- If you disable or don't configure this policy setting, the Network icon is available from Start Menu.
<!-- NoSMMyNetworkPlaces-Description-End -->

<!-- NoSMMyNetworkPlaces-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSMMyNetworkPlaces-Editable-End -->

<!-- NoSMMyNetworkPlaces-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSMMyNetworkPlaces-DFProperties-End -->

<!-- NoSMMyNetworkPlaces-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSMMyNetworkPlaces |
| Friendly Name | Remove Network icon from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStartMenuNetworkPlaces |
| ADMX File Name | StartMenu.admx |
<!-- NoSMMyNetworkPlaces-AdmxBacked-End -->

<!-- NoSMMyNetworkPlaces-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSMMyNetworkPlaces-Examples-End -->

<!-- NoSMMyNetworkPlaces-End -->

<!-- NoSMMyPictures-Begin -->
## NoSMMyPictures

<!-- NoSMMyPictures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSMMyPictures-Applicability-End -->

<!-- NoSMMyPictures-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoSMMyPictures
```
<!-- NoSMMyPictures-OmaUri-End -->

<!-- NoSMMyPictures-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Pictures icon from Start Menu.

- If you enable this policy setting, the Pictures icon is no longer available from Start Menu.

- If you disable or don't configure this policy setting, the Pictures icon is available from Start Menu.
<!-- NoSMMyPictures-Description-End -->

<!-- NoSMMyPictures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSMMyPictures-Editable-End -->

<!-- NoSMMyPictures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSMMyPictures-DFProperties-End -->

<!-- NoSMMyPictures-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSMMyPictures |
| Friendly Name | Remove Pictures icon from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSMMyPictures |
| ADMX File Name | StartMenu.admx |
<!-- NoSMMyPictures-AdmxBacked-End -->

<!-- NoSMMyPictures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSMMyPictures-Examples-End -->

<!-- NoSMMyPictures-End -->

<!-- NoStartMenuDownload-Begin -->
## NoStartMenuDownload

<!-- NoStartMenuDownload-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStartMenuDownload-Applicability-End -->

<!-- NoStartMenuDownload-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoStartMenuDownload
```
<!-- NoStartMenuDownload-OmaUri-End -->

<!-- NoStartMenuDownload-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Downloads link from the Start Menu.

- If you enable this policy setting, the Start Menu doesn't show a link to the Downloads folder.

- If you disable or don't configure this policy setting, the Downloads link is available from the Start Menu.
<!-- NoStartMenuDownload-Description-End -->

<!-- NoStartMenuDownload-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStartMenuDownload-Editable-End -->

<!-- NoStartMenuDownload-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStartMenuDownload-DFProperties-End -->

<!-- NoStartMenuDownload-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStartMenuDownload |
| Friendly Name | Remove Downloads link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoStartMenuDownloads |
| ADMX File Name | StartMenu.admx |
<!-- NoStartMenuDownload-AdmxBacked-End -->

<!-- NoStartMenuDownload-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStartMenuDownload-Examples-End -->

<!-- NoStartMenuDownload-End -->

<!-- NoStartMenuHomegroup-Begin -->
## NoStartMenuHomegroup

<!-- NoStartMenuHomegroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStartMenuHomegroup-Applicability-End -->

<!-- NoStartMenuHomegroup-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoStartMenuHomegroup
```
<!-- NoStartMenuHomegroup-OmaUri-End -->

<!-- NoStartMenuHomegroup-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy the Start menu won't show a link to Homegroup. It also removes the homegroup item from the Start Menu options. As a result, users can't add the homegroup link to the Start Menu.

- If you disable or don't configure this policy, users can use the Start Menu options to add or remove the homegroup link from the Start Menu.
<!-- NoStartMenuHomegroup-Description-End -->

<!-- NoStartMenuHomegroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStartMenuHomegroup-Editable-End -->

<!-- NoStartMenuHomegroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStartMenuHomegroup-DFProperties-End -->

<!-- NoStartMenuHomegroup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStartMenuHomegroup |
| Friendly Name | Remove Homegroup link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoStartMenuHomegroup |
| ADMX File Name | StartMenu.admx |
<!-- NoStartMenuHomegroup-AdmxBacked-End -->

<!-- NoStartMenuHomegroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStartMenuHomegroup-Examples-End -->

<!-- NoStartMenuHomegroup-End -->

<!-- NoStartMenuRecordedTV-Begin -->
## NoStartMenuRecordedTV

<!-- NoStartMenuRecordedTV-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStartMenuRecordedTV-Applicability-End -->

<!-- NoStartMenuRecordedTV-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoStartMenuRecordedTV
```
<!-- NoStartMenuRecordedTV-OmaUri-End -->

<!-- NoStartMenuRecordedTV-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Recorded TV link from the Start Menu.

- If you enable this policy setting, the Start Menu doesn't show a link to the Recorded TV library.

- If you disable or don't configure this policy setting, the Recorded TV link is available from the Start Menu.
<!-- NoStartMenuRecordedTV-Description-End -->

<!-- NoStartMenuRecordedTV-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStartMenuRecordedTV-Editable-End -->

<!-- NoStartMenuRecordedTV-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStartMenuRecordedTV-DFProperties-End -->

<!-- NoStartMenuRecordedTV-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStartMenuRecordedTV |
| Friendly Name | Remove Recorded TV link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoStartMenuRecordedTV |
| ADMX File Name | StartMenu.admx |
<!-- NoStartMenuRecordedTV-AdmxBacked-End -->

<!-- NoStartMenuRecordedTV-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStartMenuRecordedTV-Examples-End -->

<!-- NoStartMenuRecordedTV-End -->

<!-- NoStartMenuSubFolders-Begin -->
## NoStartMenuSubFolders

<!-- NoStartMenuSubFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStartMenuSubFolders-Applicability-End -->

<!-- NoStartMenuSubFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoStartMenuSubFolders
```
<!-- NoStartMenuSubFolders-OmaUri-End -->

<!-- NoStartMenuSubFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides all folders on the user-specific (top) section of the Start menu. Other items appear, but folders are hidden.

This setting is designed for use with redirected folders. Redirected folders appear on the main (bottom) section of the Start menu. However, the original, user-specific version of the folder still appears on the top section of the Start menu. Because the appearance of two folders with the same name might confuse users, you can use this setting to hide user-specific folders.

Note that this setting hides all user-specific folders, not just those associated with redirected folders.

- If you enable this setting, no folders appear on the top section of the Start menu. If users add folders to the Start Menu directory in their user profiles, the folders appear in the directory but not on the Start menu.

- If you disable this setting or don't configured it, Windows 2000 Professional and Windows XP Professional display folders on both sections of the Start menu.
<!-- NoStartMenuSubFolders-Description-End -->

<!-- NoStartMenuSubFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStartMenuSubFolders-Editable-End -->

<!-- NoStartMenuSubFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStartMenuSubFolders-DFProperties-End -->

<!-- NoStartMenuSubFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStartMenuSubFolders |
| Friendly Name | Remove user's folders from the Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStartMenuSubFolders |
| ADMX File Name | StartMenu.admx |
<!-- NoStartMenuSubFolders-AdmxBacked-End -->

<!-- NoStartMenuSubFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStartMenuSubFolders-Examples-End -->

<!-- NoStartMenuSubFolders-End -->

<!-- NoStartMenuVideos-Begin -->
## NoStartMenuVideos

<!-- NoStartMenuVideos-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStartMenuVideos-Applicability-End -->

<!-- NoStartMenuVideos-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoStartMenuVideos
```
<!-- NoStartMenuVideos-OmaUri-End -->

<!-- NoStartMenuVideos-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Videos link from the Start Menu.

- If you enable this policy setting, the Start Menu doesn't show a link to the Videos library.

- If you disable or don't configure this policy setting, the Videos link is available from the Start Menu.
<!-- NoStartMenuVideos-Description-End -->

<!-- NoStartMenuVideos-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStartMenuVideos-Editable-End -->

<!-- NoStartMenuVideos-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStartMenuVideos-DFProperties-End -->

<!-- NoStartMenuVideos-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStartMenuVideos |
| Friendly Name | Remove Videos link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoStartMenuVideos |
| ADMX File Name | StartMenu.admx |
<!-- NoStartMenuVideos-AdmxBacked-End -->

<!-- NoStartMenuVideos-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStartMenuVideos-Examples-End -->

<!-- NoStartMenuVideos-End -->

<!-- NoStartPage-Begin -->
## NoStartPage

<!-- NoStartPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStartPage-Applicability-End -->

<!-- NoStartPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoStartPage
```
<!-- NoStartPage-OmaUri-End -->

<!-- NoStartPage-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects the presentation of the Start menu.

The classic Start menu in Windows 2000 Professional allows users to begin common tasks, while the new Start menu consolidates common items onto one menu. When the classic Start menu is used, the following icons are placed on the desktop: Documents, Pictures, Music, Computer, and Network. The new Start menu starts them directly.

- If you enable this setting, the Start menu displays the classic Start menu in the Windows 2000 style and displays the standard desktop icons.

- If you disable this setting, the Start menu only displays in the new style, meaning the desktop icons are now on the Start page.

- If you don't configure this setting, the default is the new style, and the user can change the view.
<!-- NoStartPage-Description-End -->

<!-- NoStartPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStartPage-Editable-End -->

<!-- NoStartPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStartPage-DFProperties-End -->

<!-- NoStartPage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStartPage |
| Friendly Name | Force classic Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSimpleStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoStartPage-AdmxBacked-End -->

<!-- NoStartPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStartPage-Examples-End -->

<!-- NoStartPage-End -->

<!-- NoTaskBarClock-Begin -->
## NoTaskBarClock

<!-- NoTaskBarClock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoTaskBarClock-Applicability-End -->

<!-- NoTaskBarClock-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoTaskBarClock
```
<!-- NoTaskBarClock-OmaUri-End -->

<!-- NoTaskBarClock-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the clock in the system notification area from being displayed.

- If you enable this setting, the clock won't be displayed in the system notification area.

- If you disable or don't configure this setting, the default behavior of the clock appearing in the notification area will occur.
<!-- NoTaskBarClock-Description-End -->

<!-- NoTaskBarClock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoTaskBarClock-Editable-End -->

<!-- NoTaskBarClock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoTaskBarClock-DFProperties-End -->

<!-- NoTaskBarClock-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoTaskBarClock |
| Friendly Name | Remove Clock from the system notification area |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | HideClock |
| ADMX File Name | StartMenu.admx |
<!-- NoTaskBarClock-AdmxBacked-End -->

<!-- NoTaskBarClock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoTaskBarClock-Examples-End -->

<!-- NoTaskBarClock-End -->

<!-- NoTaskGrouping-Begin -->
## NoTaskGrouping

<!-- NoTaskGrouping-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoTaskGrouping-Applicability-End -->

<!-- NoTaskGrouping-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoTaskGrouping
```
<!-- NoTaskGrouping-OmaUri-End -->

<!-- NoTaskGrouping-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects the taskbar buttons used to switch between running programs.

Taskbar grouping consolidates similar applications when there is no room on the taskbar. It kicks in when the user's taskbar is full.

- If you enable this setting, it prevents the taskbar from grouping items that share the same program name. By default, this setting is always enabled.

- If you disable or don't configure it, items on the taskbar that share the same program are grouped together. The users have the option to disable grouping if they choose.
<!-- NoTaskGrouping-Description-End -->

<!-- NoTaskGrouping-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoTaskGrouping-Editable-End -->

<!-- NoTaskGrouping-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoTaskGrouping-DFProperties-End -->

<!-- NoTaskGrouping-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoTaskGrouping |
| Friendly Name | Prevent grouping of taskbar items |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoTaskGrouping |
| ADMX File Name | StartMenu.admx |
<!-- NoTaskGrouping-AdmxBacked-End -->

<!-- NoTaskGrouping-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoTaskGrouping-Examples-End -->

<!-- NoTaskGrouping-End -->

<!-- NoToolbarsOnTaskbar-Begin -->
## NoToolbarsOnTaskbar

<!-- NoToolbarsOnTaskbar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoToolbarsOnTaskbar-Applicability-End -->

<!-- NoToolbarsOnTaskbar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoToolbarsOnTaskbar
```
<!-- NoToolbarsOnTaskbar-OmaUri-End -->

<!-- NoToolbarsOnTaskbar-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects the taskbar.

The taskbar includes the Start button, buttons for currently running tasks, custom toolbars, the notification area, and the system clock. Toolbars include Quick Launch, Address, Links, Desktop, and other custom toolbars created by the user or by an application.

- If this setting is enabled, the taskbar doesn't display any custom toolbars, and the user can't add any custom toolbars to the taskbar. Moreover, the "Toolbars" menu command and submenu are removed from the context menu. The taskbar displays only the Start button, taskbar buttons, the notification area, and the system clock.

- If this setting is disabled or isn't configured, the taskbar displays all toolbars. Users can add or remove custom toolbars, and the "Toolbars" command appears in the context menu.
<!-- NoToolbarsOnTaskbar-Description-End -->

<!-- NoToolbarsOnTaskbar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoToolbarsOnTaskbar-Editable-End -->

<!-- NoToolbarsOnTaskbar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoToolbarsOnTaskbar-DFProperties-End -->

<!-- NoToolbarsOnTaskbar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoToolbarsOnTaskbar |
| Friendly Name | Do not display any custom toolbars in the taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoToolbarsOnTaskbar |
| ADMX File Name | StartMenu.admx |
<!-- NoToolbarsOnTaskbar-AdmxBacked-End -->

<!-- NoToolbarsOnTaskbar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoToolbarsOnTaskbar-Examples-End -->

<!-- NoToolbarsOnTaskbar-End -->

<!-- NoTrayContextMenu-Begin -->
## NoTrayContextMenu

<!-- NoTrayContextMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoTrayContextMenu-Applicability-End -->

<!-- NoTrayContextMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoTrayContextMenu
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoTrayContextMenu
```
<!-- NoTrayContextMenu-OmaUri-End -->

<!-- NoTrayContextMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove access to the context menus for the taskbar.

- If you enable this policy setting, the menus that appear when you right-click the taskbar and items on the taskbar are hidden, such as the Start button, the clock, and the taskbar buttons.

- If you disable or don't configure this policy setting, the context menus for the taskbar are available.

This policy setting doesn't prevent users from using other methods to issue the commands that appear on these menus.
<!-- NoTrayContextMenu-Description-End -->

<!-- NoTrayContextMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoTrayContextMenu-Editable-End -->

<!-- NoTrayContextMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoTrayContextMenu-DFProperties-End -->

<!-- NoTrayContextMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoTrayContextMenu |
| Friendly Name | Remove access to the context menus for the taskbar |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoTrayContextMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoTrayContextMenu-AdmxBacked-End -->

<!-- NoTrayContextMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoTrayContextMenu-Examples-End -->

<!-- NoTrayContextMenu-End -->

<!-- NoTrayItemsDisplay-Begin -->
## NoTrayItemsDisplay

<!-- NoTrayItemsDisplay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoTrayItemsDisplay-Applicability-End -->

<!-- NoTrayItemsDisplay-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoTrayItemsDisplay
```
<!-- NoTrayItemsDisplay-OmaUri-End -->

<!-- NoTrayItemsDisplay-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting affects the notification area (previously called the "system tray") on the taskbar.

Description: The notification area is located at the far right end of the task bar and includes the icons for current notifications and the system clock.

- If this setting is enabled, the user's entire notification area, including the notification icons, is hidden. The taskbar displays only the Start button, taskbar buttons, custom toolbars (if any), and the system clock.

- If this setting is disabled or isn't configured, the notification area is shown in the user's taskbar.

> [!NOTE]
> Enabling this setting overrides the "Turn off notification area cleanup" setting, because if the notification area is hidden, there is no need to clean up the icons.
<!-- NoTrayItemsDisplay-Description-End -->

<!-- NoTrayItemsDisplay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoTrayItemsDisplay-Editable-End -->

<!-- NoTrayItemsDisplay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoTrayItemsDisplay-DFProperties-End -->

<!-- NoTrayItemsDisplay-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoTrayItemsDisplay |
| Friendly Name | Hide the notification area |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoTrayItemsDisplay |
| ADMX File Name | StartMenu.admx |
<!-- NoTrayItemsDisplay-AdmxBacked-End -->

<!-- NoTrayItemsDisplay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoTrayItemsDisplay-Examples-End -->

<!-- NoTrayItemsDisplay-End -->

<!-- NoUninstallFromStart-Begin -->
## NoUninstallFromStart

<!-- NoUninstallFromStart-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoUninstallFromStart-Applicability-End -->

<!-- NoUninstallFromStart-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoUninstallFromStart
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoUninstallFromStart
```
<!-- NoUninstallFromStart-OmaUri-End -->

<!-- NoUninstallFromStart-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this setting, users can't uninstall apps from Start.

- If you disable this setting or don't configure it, users can access the uninstall command from Start.
<!-- NoUninstallFromStart-Description-End -->

<!-- NoUninstallFromStart-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoUninstallFromStart-Editable-End -->

<!-- NoUninstallFromStart-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoUninstallFromStart-DFProperties-End -->

<!-- NoUninstallFromStart-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoUninstallFromStart |
| Friendly Name | Prevent users from uninstalling applications from Start |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoUninstallFromStart |
| ADMX File Name | StartMenu.admx |
<!-- NoUninstallFromStart-AdmxBacked-End -->

<!-- NoUninstallFromStart-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoUninstallFromStart-Examples-End -->

<!-- NoUninstallFromStart-End -->

<!-- NoUserFolderOnStartMenu-Begin -->
## NoUserFolderOnStartMenu

<!-- NoUserFolderOnStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoUserFolderOnStartMenu-Applicability-End -->

<!-- NoUserFolderOnStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoUserFolderOnStartMenu
```
<!-- NoUserFolderOnStartMenu-OmaUri-End -->

<!-- NoUserFolderOnStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy the start menu won't show a link to the user's storage folder.

- If you disable or don't configure this policy, the start menu will display a link, unless the user chooses to remove it in the start menu control panel.
<!-- NoUserFolderOnStartMenu-Description-End -->

<!-- NoUserFolderOnStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoUserFolderOnStartMenu-Editable-End -->

<!-- NoUserFolderOnStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoUserFolderOnStartMenu-DFProperties-End -->

<!-- NoUserFolderOnStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoUserFolderOnStartMenu |
| Friendly Name | Remove user folder link from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoUserFolderInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoUserFolderOnStartMenu-AdmxBacked-End -->

<!-- NoUserFolderOnStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoUserFolderOnStartMenu-Examples-End -->

<!-- NoUserFolderOnStartMenu-End -->

<!-- NoUserNameOnStartMenu-Begin -->
## NoUserNameOnStartMenu

<!-- NoUserNameOnStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoUserNameOnStartMenu-Applicability-End -->

<!-- NoUserNameOnStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoUserNameOnStartMenu
```
<!-- NoUserNameOnStartMenu-OmaUri-End -->

<!-- NoUserNameOnStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the user name label from the Start Menu in Windows XP and Windows Server 2003.

- If you enable this policy setting, the user name label is removed from the Start Menu in Windows XP and Windows Server 2003.

To remove the user name folder on Windows Vista, set the "Remove user folder link from Start Menu" policy setting.

- If you disable or don't configure this policy setting, the user name label appears on the Start Menu in Windows XP and Windows Server 2003.
<!-- NoUserNameOnStartMenu-Description-End -->

<!-- NoUserNameOnStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoUserNameOnStartMenu-Editable-End -->

<!-- NoUserNameOnStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoUserNameOnStartMenu-DFProperties-End -->

<!-- NoUserNameOnStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoUserNameOnStartMenu |
| Friendly Name | Remove user name from Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoUserNameInStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- NoUserNameOnStartMenu-AdmxBacked-End -->

<!-- NoUserNameOnStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoUserNameOnStartMenu-Examples-End -->

<!-- NoUserNameOnStartMenu-End -->

<!-- NoWindowsUpdate-Begin -->
## NoWindowsUpdate

<!-- NoWindowsUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWindowsUpdate-Applicability-End -->

<!-- NoWindowsUpdate-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/NoWindowsUpdate
```
<!-- NoWindowsUpdate-OmaUri-End -->

<!-- NoWindowsUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove links and access to Windows Update.

- If you enable this policy setting, users are prevented from connecting to the Windows Update Web site.

Enabling this policy setting blocks user access to the Windows Update Web site at `https://windowsupdate.microsoft.com`. Also, the policy setting removes the Windows Update hyperlink from the Start menu and from the Tools menu in Internet Explorer.

Windows Update, the online extension of Windows, offers software updates to keep a user's system up-to-date. The Windows Update Product Catalog determines any system files, security fixes, and Microsoft updates that users need and shows the newest versions available for download.

- If you disable or don't configure this policy setting, the Windows Update hyperlink is available from the Start menu and from the Tools menu in Internet Explorer.

Also, see the "Hide the "Add programs from Microsoft" option" policy setting.
<!-- NoWindowsUpdate-Description-End -->

<!-- NoWindowsUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWindowsUpdate-Editable-End -->

<!-- NoWindowsUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWindowsUpdate-DFProperties-End -->

<!-- NoWindowsUpdate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWindowsUpdate |
| Friendly Name | Remove links and access to Windows Update |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoWindowsUpdate |
| ADMX File Name | StartMenu.admx |
<!-- NoWindowsUpdate-AdmxBacked-End -->

<!-- NoWindowsUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWindowsUpdate-Examples-End -->

<!-- NoWindowsUpdate-End -->

<!-- PowerButtonAction-Begin -->
## PowerButtonAction

<!-- PowerButtonAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PowerButtonAction-Applicability-End -->

<!-- PowerButtonAction-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/PowerButtonAction
```
<!-- PowerButtonAction-OmaUri-End -->

<!-- PowerButtonAction-Description-Begin -->
<!-- Description-Source-ADMX -->
Set the default action of the power button on the Start menu.

- If you enable this setting, the Start Menu will set the power button to the chosen action, and not let the user change this action.

If you set the button to either Sleep or Hibernate, and that state isn't supported on a computer, then the button will fall back to Shut Down.

- If you disable or don't configure this setting, the Start Menu power button will be set to Shut Down by default, and the user can change this setting to another action.
<!-- PowerButtonAction-Description-End -->

<!-- PowerButtonAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PowerButtonAction-Editable-End -->

<!-- PowerButtonAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PowerButtonAction-DFProperties-End -->

<!-- PowerButtonAction-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PowerButtonAction |
| Friendly Name | Change Start Menu power button |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| ADMX File Name | StartMenu.admx |
<!-- PowerButtonAction-AdmxBacked-End -->

<!-- PowerButtonAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PowerButtonAction-Examples-End -->

<!-- PowerButtonAction-End -->

<!-- QuickLaunchEnabled-Begin -->
## QuickLaunchEnabled

<!-- QuickLaunchEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- QuickLaunchEnabled-Applicability-End -->

<!-- QuickLaunchEnabled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/QuickLaunchEnabled
```
<!-- QuickLaunchEnabled-OmaUri-End -->

<!-- QuickLaunchEnabled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the QuickLaunch bar is displayed in the Taskbar.

- If you enable this policy setting, the QuickLaunch bar will be visible and can't be turned off.

- If you disable this policy setting, the QuickLaunch bar will be hidden and can't be turned on.

- If you don't configure this policy setting, then users will be able to turn the QuickLaunch bar on and off.
<!-- QuickLaunchEnabled-Description-End -->

<!-- QuickLaunchEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- QuickLaunchEnabled-Editable-End -->

<!-- QuickLaunchEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- QuickLaunchEnabled-DFProperties-End -->

<!-- QuickLaunchEnabled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | QuickLaunchEnabled |
| Friendly Name | Show QuickLaunch on Taskbar |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | QuickLaunchEnabled |
| ADMX File Name | StartMenu.admx |
<!-- QuickLaunchEnabled-AdmxBacked-End -->

<!-- QuickLaunchEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- QuickLaunchEnabled-Examples-End -->

<!-- QuickLaunchEnabled-End -->

<!-- RemoveUnDockPCButton-Begin -->
## RemoveUnDockPCButton

<!-- RemoveUnDockPCButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemoveUnDockPCButton-Applicability-End -->

<!-- RemoveUnDockPCButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/RemoveUnDockPCButton
```
<!-- RemoveUnDockPCButton-OmaUri-End -->

<!-- RemoveUnDockPCButton-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this setting, the "Undock PC" button is removed from the simple Start Menu, and your PC can't be undocked.

- If you disable this setting or don't configure it, the "Undock PC" button remains on the simple Start menu, and your PC can be undocked.
<!-- RemoveUnDockPCButton-Description-End -->

<!-- RemoveUnDockPCButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoveUnDockPCButton-Editable-End -->

<!-- RemoveUnDockPCButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoveUnDockPCButton-DFProperties-End -->

<!-- RemoveUnDockPCButton-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemoveUnDockPCButton |
| Friendly Name | Remove the "Undock PC" button from the Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStartMenuEjectPC |
| ADMX File Name | StartMenu.admx |
<!-- RemoveUnDockPCButton-AdmxBacked-End -->

<!-- RemoveUnDockPCButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoveUnDockPCButton-Examples-End -->

<!-- RemoveUnDockPCButton-End -->

<!-- ShowAppsViewOnStart-Begin -->
## ShowAppsViewOnStart

<!-- ShowAppsViewOnStart-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowAppsViewOnStart-Applicability-End -->

<!-- ShowAppsViewOnStart-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ShowAppsViewOnStart
```
<!-- ShowAppsViewOnStart-OmaUri-End -->

<!-- ShowAppsViewOnStart-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the Apps view to be opened by default when the user goes to Start.

- If you enable this policy setting, the Apps view will appear whenever the user goes to Start. Users will still be able to switch between the Apps view and the Start screen.

- If you disable or don't configure this policy setting, the Start screen will appear by default whenever the user goes to Start, and the user will be able to switch between the Apps view and the Start screen. Also, the user will be able to configure this setting.
<!-- ShowAppsViewOnStart-Description-End -->

<!-- ShowAppsViewOnStart-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowAppsViewOnStart-Editable-End -->

<!-- ShowAppsViewOnStart-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowAppsViewOnStart-DFProperties-End -->

<!-- ShowAppsViewOnStart-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowAppsViewOnStart |
| Friendly Name | Show the Apps view automatically when the user goes to Start |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowAppsViewOnStart |
| ADMX File Name | StartMenu.admx |
<!-- ShowAppsViewOnStart-AdmxBacked-End -->

<!-- ShowAppsViewOnStart-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowAppsViewOnStart-Examples-End -->

<!-- ShowAppsViewOnStart-End -->

<!-- ShowRunAsDifferentUserInStart-Begin -->
## ShowRunAsDifferentUserInStart

<!-- ShowRunAsDifferentUserInStart-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowRunAsDifferentUserInStart-Applicability-End -->

<!-- ShowRunAsDifferentUserInStart-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ShowRunAsDifferentUserInStart
```
<!-- ShowRunAsDifferentUserInStart-OmaUri-End -->

<!-- ShowRunAsDifferentUserInStart-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting shows or hides the "Run as different user" command on the Start application bar.

- If you enable this setting, users can access the "Run as different user" command from Start for applications which support this functionality.

- If you disable this setting or don't configure it, users can't access the "Run as different user" command from Start for any applications.

> [!NOTE]
> This setting doesn't prevent users from using other methods, such as the shift right-click menu on application's jumplists in the taskbar to issue the "Run as different user" command.
<!-- ShowRunAsDifferentUserInStart-Description-End -->

<!-- ShowRunAsDifferentUserInStart-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowRunAsDifferentUserInStart-Editable-End -->

<!-- ShowRunAsDifferentUserInStart-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowRunAsDifferentUserInStart-DFProperties-End -->

<!-- ShowRunAsDifferentUserInStart-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowRunAsDifferentUserInStart |
| Friendly Name | Show "Run as different user" command on Start |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowRunAsDifferentUserInStart |
| ADMX File Name | StartMenu.admx |
<!-- ShowRunAsDifferentUserInStart-AdmxBacked-End -->

<!-- ShowRunAsDifferentUserInStart-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowRunAsDifferentUserInStart-Examples-End -->

<!-- ShowRunAsDifferentUserInStart-End -->

<!-- ShowRunInStartMenu-Begin -->
## ShowRunInStartMenu

<!-- ShowRunInStartMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowRunInStartMenu-Applicability-End -->

<!-- ShowRunInStartMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ShowRunInStartMenu
```
<!-- ShowRunInStartMenu-OmaUri-End -->

<!-- ShowRunInStartMenu-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this setting, the Run command is added to the Start menu.

- If you disable or don't configure this setting, the Run command isn't visible on the Start menu by default, but it can be added from the Taskbar and Start menu properties. If the Remove Run link from Start Menu policy is set, the Add the Run command to the Start menu policy has no effect.
<!-- ShowRunInStartMenu-Description-End -->

<!-- ShowRunInStartMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowRunInStartMenu-Editable-End -->

<!-- ShowRunInStartMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowRunInStartMenu-DFProperties-End -->

<!-- ShowRunInStartMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowRunInStartMenu |
| Friendly Name | Add the Run command to the Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ForceRunOnStartMenu |
| ADMX File Name | StartMenu.admx |
<!-- ShowRunInStartMenu-AdmxBacked-End -->

<!-- ShowRunInStartMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowRunInStartMenu-Examples-End -->

<!-- ShowRunInStartMenu-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-Begin -->
## ShowStartOnDisplayWithForegroundOnWinKey

<!-- ShowStartOnDisplayWithForegroundOnWinKey-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowStartOnDisplayWithForegroundOnWinKey-Applicability-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/ShowStartOnDisplayWithForegroundOnWinKey
```
<!-- ShowStartOnDisplayWithForegroundOnWinKey-OmaUri-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the Start screen to appear on the display the user is using when they press the Windows logo key. This setting only applies to users who are using multiple displays.

- If you enable this policy setting, the Start screen will appear on the display the user is using when they press the Windows logo key.

- If you disable or don't configure this policy setting, the Start screen will always appear on the main display when the user presses the Windows logo key. Users will still be able to open Start on other displays by pressing the Start button on that display. Also, the user will be able to configure this setting.
<!-- ShowStartOnDisplayWithForegroundOnWinKey-Description-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowStartOnDisplayWithForegroundOnWinKey-Editable-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowStartOnDisplayWithForegroundOnWinKey-DFProperties-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowStartOnDisplayWithForegroundOnWinKey |
| Friendly Name | Show Start on the display the user is using when they press the Windows logo key |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowStartOnDisplayWithForegroundOnWinKey |
| ADMX File Name | StartMenu.admx |
<!-- ShowStartOnDisplayWithForegroundOnWinKey-AdmxBacked-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowStartOnDisplayWithForegroundOnWinKey-Examples-End -->

<!-- ShowStartOnDisplayWithForegroundOnWinKey-End -->

<!-- StartMenuLogOff-Begin -->
## StartMenuLogOff

<!-- StartMenuLogOff-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- StartMenuLogOff-Applicability-End -->

<!-- StartMenuLogOff-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/StartMenuLogOff
```
<!-- StartMenuLogOff-OmaUri-End -->

<!-- StartMenuLogOff-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to removes the "Log Off `<username>`" item from the Start menu and prevents users from restoring it.

- If you enable this policy setting, the Log Off `<username>` item doesn't appear in the Start menu. This policy setting also removes the Display Logoff item from Start Menu Options. As a result, users can't restore the Log Off `<username>` item to the Start Menu.

- If you disable or don't configure this policy setting, users can use the Display Logoff item to add and remove the Log Off item.

This policy setting affects the Start menu only. It doesn't affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del, and it doesn't prevent users from using other methods to log off.

> [!TIP]
> To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab and, in the Start Menu Settings box, click Display Logoff.

See also: "Remove Logoff" policy setting in User Configuration\Administrative Templates\System\Logon/Logoff.
<!-- StartMenuLogOff-Description-End -->

<!-- StartMenuLogOff-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StartMenuLogOff-Editable-End -->

<!-- StartMenuLogOff-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StartMenuLogOff-DFProperties-End -->

<!-- StartMenuLogOff-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | StartMenuLogOff |
| Friendly Name | Remove Logoff on the Start Menu |
| Location | User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | StartMenuLogOff |
| ADMX File Name | StartMenu.admx |
<!-- StartMenuLogOff-AdmxBacked-End -->

<!-- StartMenuLogOff-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StartMenuLogOff-Examples-End -->

<!-- StartMenuLogOff-End -->

<!-- StartPinAppsWhenInstalled-Begin -->
## StartPinAppsWhenInstalled

<!-- StartPinAppsWhenInstalled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- StartPinAppsWhenInstalled-Applicability-End -->

<!-- StartPinAppsWhenInstalled-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_StartMenu/StartPinAppsWhenInstalled
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_StartMenu/StartPinAppsWhenInstalled
```
<!-- StartPinAppsWhenInstalled-OmaUri-End -->

<!-- StartPinAppsWhenInstalled-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows pinning apps to Start by default, when they're included by AppID on the list.
<!-- StartPinAppsWhenInstalled-Description-End -->

<!-- StartPinAppsWhenInstalled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- StartPinAppsWhenInstalled-Editable-End -->

<!-- StartPinAppsWhenInstalled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- StartPinAppsWhenInstalled-DFProperties-End -->

<!-- StartPinAppsWhenInstalled-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | StartPinAppsWhenInstalled |
| Friendly Name | Pin Apps to Start when installed |
| Location | Computer and User Configuration |
| Path | Start Menu and Taskbar |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | StartPinAppsWhenInstalled |
| ADMX File Name | StartMenu.admx |
<!-- StartPinAppsWhenInstalled-AdmxBacked-End -->

<!-- StartPinAppsWhenInstalled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- StartPinAppsWhenInstalled-Examples-End -->

<!-- StartPinAppsWhenInstalled-End -->

<!-- ADMX_StartMenu-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_StartMenu-CspMoreInfo-End -->

<!-- ADMX_StartMenu-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
