---
title: ADMX_Desktop Policy CSP
description: Learn more about the ADMX_Desktop Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Desktop-Begin -->
# Policy CSP - ADMX_Desktop

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Desktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Desktop-Editable-End -->

<!-- AD_EnableFilter-Begin -->
## AD_EnableFilter

<!-- AD_EnableFilter-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AD_EnableFilter-Applicability-End -->

<!-- AD_EnableFilter-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/AD_EnableFilter
```
<!-- AD_EnableFilter-OmaUri-End -->

<!-- AD_EnableFilter-Description-Begin -->
<!-- Description-Source-ADMX -->
Displays the filter bar above the results of an Active Directory search. The filter bar consists of buttons for applying additional filters to search results.

- If you enable this setting, the filter bar appears when the Active Directory Find dialog box opens, but users can hide it.

- If you disable this setting or don't configure it, the filter bar doesn't appear, but users can display it by selecting "Filter" on the "View" menu.

To see the filter bar, open Network Locations, click Entire Network, and then click Directory. Right-click the name of a Windows domain, and click Find. Type the name of an object in the directory, such as "Administrator". If the filter bar doesn't appear above the resulting display, on the View menu, click Filter.
<!-- AD_EnableFilter-Description-End -->

<!-- AD_EnableFilter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AD_EnableFilter-Editable-End -->

<!-- AD_EnableFilter-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AD_EnableFilter-DFProperties-End -->

<!-- AD_EnableFilter-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AD_EnableFilter |
| Friendly Name | Enable filter in Find dialog box |
| Location | User Configuration |
| Path | Desktop > Active Directory |
| Registry Key Name | Software\Policies\Microsoft\Windows\Directory UI |
| Registry Value Name | EnableFilter |
| ADMX File Name | Desktop.admx |
<!-- AD_EnableFilter-AdmxBacked-End -->

<!-- AD_EnableFilter-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AD_EnableFilter-Examples-End -->

<!-- AD_EnableFilter-End -->

<!-- AD_HideDirectoryFolder-Begin -->
## AD_HideDirectoryFolder

<!-- AD_HideDirectoryFolder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AD_HideDirectoryFolder-Applicability-End -->

<!-- AD_HideDirectoryFolder-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/AD_HideDirectoryFolder
```
<!-- AD_HideDirectoryFolder-OmaUri-End -->

<!-- AD_HideDirectoryFolder-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides the Active Directory folder in Network Locations.

The Active Directory folder displays Active Directory objects in a browse window.

- If you enable this setting, the Active Directory folder doesn't appear in the Network Locations folder.

- If you disable this setting or don't configure it, the Active Directory folder appears in the Network Locations folder.

This setting is designed to let users search Active Directory but not tempt them to casually browse Active Directory.
<!-- AD_HideDirectoryFolder-Description-End -->

<!-- AD_HideDirectoryFolder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AD_HideDirectoryFolder-Editable-End -->

<!-- AD_HideDirectoryFolder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AD_HideDirectoryFolder-DFProperties-End -->

<!-- AD_HideDirectoryFolder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AD_HideDirectoryFolder |
| Friendly Name | Hide Active Directory folder |
| Location | User Configuration |
| Path | Desktop > Active Directory |
| Registry Key Name | Software\Policies\Microsoft\Windows\Directory UI |
| Registry Value Name | HideDirectoryFolder |
| ADMX File Name | Desktop.admx |
<!-- AD_HideDirectoryFolder-AdmxBacked-End -->

<!-- AD_HideDirectoryFolder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AD_HideDirectoryFolder-Examples-End -->

<!-- AD_HideDirectoryFolder-End -->

<!-- AD_QueryLimit-Begin -->
## AD_QueryLimit

<!-- AD_QueryLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AD_QueryLimit-Applicability-End -->

<!-- AD_QueryLimit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/AD_QueryLimit
```
<!-- AD_QueryLimit-OmaUri-End -->

<!-- AD_QueryLimit-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the maximum number of objects the system displays in response to a command to browse or search Active Directory. This setting affects all browse displays associated with Active Directory, such as those in Local Users and Groups, Active Directory Users and Computers, and dialog boxes used to set permissions for user or group objects in Active Directory.

- If you enable this setting, you can use the "Number of objects returned" box to limit returns from an Active Directory search.

- If you disable this setting or don't configure it, the system displays up to 10,000 objects. This consumes approximately 2 MB of memory or disk space.

This setting is designed to protect the network and the domain controller from the effect of expansive searches.
<!-- AD_QueryLimit-Description-End -->

<!-- AD_QueryLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AD_QueryLimit-Editable-End -->

<!-- AD_QueryLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AD_QueryLimit-DFProperties-End -->

<!-- AD_QueryLimit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AD_QueryLimit |
| Friendly Name | Maximum size of Active Directory searches |
| Location | User Configuration |
| Path | Desktop > Active Directory |
| Registry Key Name | Software\Policies\Microsoft\Windows\Directory UI |
| ADMX File Name | Desktop.admx |
<!-- AD_QueryLimit-AdmxBacked-End -->

<!-- AD_QueryLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AD_QueryLimit-Examples-End -->

<!-- AD_QueryLimit-End -->

<!-- ForceActiveDesktopOn-Begin -->
## ForceActiveDesktopOn

<!-- ForceActiveDesktopOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ForceActiveDesktopOn-Applicability-End -->

<!-- ForceActiveDesktopOn-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/ForceActiveDesktopOn
```
<!-- ForceActiveDesktopOn-OmaUri-End -->

<!-- ForceActiveDesktopOn-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables Active Desktop and prevents users from disabling it.

This setting prevents users from trying to enable or disable Active Desktop while a policy controls it.

If you disable this setting or don't configure it, Active Desktop is disabled by default, but users can enable it.

> [!NOTE]
> If both the "Enable Active Desktop" setting and the "Disable Active Desktop" setting are enabled, the "Disable Active Desktop" setting is ignored. If the "Turn on Classic Shell" setting ( in User Configuration\Administrative Templates\Windows Components\Windows Explorer) is enabled, Active Desktop is disabled, and both of these policies are ignored.
<!-- ForceActiveDesktopOn-Description-End -->

<!-- ForceActiveDesktopOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ForceActiveDesktopOn-Editable-End -->

<!-- ForceActiveDesktopOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ForceActiveDesktopOn-DFProperties-End -->

<!-- ForceActiveDesktopOn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ForceActiveDesktopOn |
| Friendly Name | Enable Active Desktop |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ForceActiveDesktopOn |
| ADMX File Name | Desktop.admx |
<!-- ForceActiveDesktopOn-AdmxBacked-End -->

<!-- ForceActiveDesktopOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ForceActiveDesktopOn-Examples-End -->

<!-- ForceActiveDesktopOn-End -->

<!-- NoActiveDesktop-Begin -->
## NoActiveDesktop

<!-- NoActiveDesktop-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoActiveDesktop-Applicability-End -->

<!-- NoActiveDesktop-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoActiveDesktop
```
<!-- NoActiveDesktop-OmaUri-End -->

<!-- NoActiveDesktop-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables Active Desktop and prevents users from enabling it.

This setting prevents users from trying to enable or disable Active Desktop while a policy controls it.

If you disable this setting or don't configure it, Active Desktop is disabled by default, but users can enable it.

> [!NOTE]
> If both the "Enable Active Desktop" setting and the "Disable Active Desktop" setting are enabled, the "Disable Active Desktop" setting is ignored. If the "Turn on Classic Shell" setting (in User Configuration\Administrative Templates\Windows Components\Windows Explorer) is enabled, Active Desktop is disabled, and both these policies are ignored.
<!-- NoActiveDesktop-Description-End -->

<!-- NoActiveDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoActiveDesktop-Editable-End -->

<!-- NoActiveDesktop-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoActiveDesktop-DFProperties-End -->

<!-- NoActiveDesktop-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoActiveDesktop |
| Friendly Name | Disable Active Desktop |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoActiveDesktop |
| ADMX File Name | Desktop.admx |
<!-- NoActiveDesktop-AdmxBacked-End -->

<!-- NoActiveDesktop-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoActiveDesktop-Examples-End -->

<!-- NoActiveDesktop-End -->

<!-- NoActiveDesktopChanges-Begin -->
## NoActiveDesktopChanges

<!-- NoActiveDesktopChanges-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoActiveDesktopChanges-Applicability-End -->

<!-- NoActiveDesktopChanges-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoActiveDesktopChanges
```
<!-- NoActiveDesktopChanges-OmaUri-End -->

<!-- NoActiveDesktopChanges-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents the user from enabling or disabling Active Desktop or changing the Active Desktop configuration.

This is a comprehensive setting that locks down the configuration you establish by using other policies in this folder. This setting removes the Web tab from Display in Control Panel. As a result, users can't enable or disable Active Desktop. If Active Desktop is already enabled, users can't add, remove, or edit Web content or disable, lock, or synchronize Active Desktop components.
<!-- NoActiveDesktopChanges-Description-End -->

<!-- NoActiveDesktopChanges-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoActiveDesktopChanges-Editable-End -->

<!-- NoActiveDesktopChanges-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoActiveDesktopChanges-DFProperties-End -->

<!-- NoActiveDesktopChanges-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoActiveDesktopChanges |
| Friendly Name | Prohibit changes |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoActiveDesktopChanges |
| ADMX File Name | Desktop.admx |
<!-- NoActiveDesktopChanges-AdmxBacked-End -->

<!-- NoActiveDesktopChanges-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoActiveDesktopChanges-Examples-End -->

<!-- NoActiveDesktopChanges-End -->

<!-- NoDesktop-Begin -->
## NoDesktop

<!-- NoDesktop-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoDesktop-Applicability-End -->

<!-- NoDesktop-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoDesktop
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoDesktop
```
<!-- NoDesktop-OmaUri-End -->

<!-- NoDesktop-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes icons, shortcuts, and other default and user-defined items from the desktop, including Briefcase, Recycle Bin, Computer, and Network Locations.

Removing icons and shortcuts doesn't prevent the user from using another method to start the programs or opening the items they represent.

Also, see "Items displayed in Places Bar" in User Configuration\Administrative Templates\Windows Components\Common Open File Dialog to remove the Desktop icon from the Places Bar. This will help prevent users from saving data to the Desktop.
<!-- NoDesktop-Description-End -->

<!-- NoDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoDesktop-Editable-End -->

<!-- NoDesktop-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoDesktop-DFProperties-End -->

<!-- NoDesktop-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDesktop |
| Friendly Name | Hide and disable all items on the desktop |
| Location | Computer and User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoDesktop |
| ADMX File Name | Desktop.admx |
<!-- NoDesktop-AdmxBacked-End -->

<!-- NoDesktop-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoDesktop-Examples-End -->

<!-- NoDesktop-End -->

<!-- NoDesktopCleanupWizard-Begin -->
## NoDesktopCleanupWizard

<!-- NoDesktopCleanupWizard-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoDesktopCleanupWizard-Applicability-End -->

<!-- NoDesktopCleanupWizard-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoDesktopCleanupWizard
```
<!-- NoDesktopCleanupWizard-OmaUri-End -->

<!-- NoDesktopCleanupWizard-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from using the Desktop Cleanup Wizard.

- If you enable this setting, the Desktop Cleanup wizard doesn't automatically run on a users workstation every 60 days. The user will also not be able to access the Desktop Cleanup Wizard.

- If you disable this setting or don't configure it, the default behavior of the Desktop Clean Wizard running every 60 days occurs.

> [!NOTE]
> When this setting isn't enabled, users can run the Desktop Cleanup Wizard, or have it run automatically every 60 days from Display, by clicking the Desktop tab and then clicking the Customize Desktop button.
<!-- NoDesktopCleanupWizard-Description-End -->

<!-- NoDesktopCleanupWizard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoDesktopCleanupWizard-Editable-End -->

<!-- NoDesktopCleanupWizard-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoDesktopCleanupWizard-DFProperties-End -->

<!-- NoDesktopCleanupWizard-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDesktopCleanupWizard |
| Friendly Name | Remove the Desktop Cleanup Wizard |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoDesktopCleanupWizard |
| ADMX File Name | Desktop.admx |
<!-- NoDesktopCleanupWizard-AdmxBacked-End -->

<!-- NoDesktopCleanupWizard-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoDesktopCleanupWizard-Examples-End -->

<!-- NoDesktopCleanupWizard-End -->

<!-- NoInternetIcon-Begin -->
## NoInternetIcon

<!-- NoInternetIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoInternetIcon-Applicability-End -->

<!-- NoInternetIcon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoInternetIcon
```
<!-- NoInternetIcon-OmaUri-End -->

<!-- NoInternetIcon-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Internet Explorer icon from the desktop and from the Quick Launch bar on the taskbar.

This setting doesn't prevent the user from starting Internet Explorer by using other methods.
<!-- NoInternetIcon-Description-End -->

<!-- NoInternetIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoInternetIcon-Editable-End -->

<!-- NoInternetIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoInternetIcon-DFProperties-End -->

<!-- NoInternetIcon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoInternetIcon |
| Friendly Name | Hide Internet Explorer icon on desktop |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoInternetIcon |
| ADMX File Name | Desktop.admx |
<!-- NoInternetIcon-AdmxBacked-End -->

<!-- NoInternetIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoInternetIcon-Examples-End -->

<!-- NoInternetIcon-End -->

<!-- NoMyComputerIcon-Begin -->
## NoMyComputerIcon

<!-- NoMyComputerIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoMyComputerIcon-Applicability-End -->

<!-- NoMyComputerIcon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoMyComputerIcon
```
<!-- NoMyComputerIcon-OmaUri-End -->

<!-- NoMyComputerIcon-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting hides Computer from the desktop and from the new Start menu. It also hides links to Computer in the Web view of all Explorer windows, and it hides Computer in the Explorer folder tree pane. If the user navigates into Computer via the "Up" button while this setting is enabled, they view an empty Computer folder. This setting allows administrators to restrict their users from seeing Computer in the shell namespace, allowing them to present their users with a simpler desktop environment.

- If you enable this setting, Computer is hidden on the desktop, the new Start menu, the Explorer folder tree pane, and the Explorer Web views. If the user manages to navigate to Computer, the folder will be empty.

- If you disable this setting, Computer is displayed as usual, appearing as normal on the desktop, Start menu, folder tree pane, and Web views, unless restricted by another setting.

- If you don't configure this setting, the default is to display Computer as usual.

> [!NOTE]
> In operating systems earlier than Microsoft Windows Vista, this policy applies to the My Computer icon. Hiding Computer and its contents doesn't hide the contents of the child folders of Computer. For example, if the users navigate into one of their hard drives, they see all of their folders and files there, even if this setting is enabled.
<!-- NoMyComputerIcon-Description-End -->

<!-- NoMyComputerIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoMyComputerIcon-Editable-End -->

<!-- NoMyComputerIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoMyComputerIcon-DFProperties-End -->

<!-- NoMyComputerIcon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoMyComputerIcon |
| Friendly Name | Remove Computer icon on the desktop |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum |
| Registry Value Name | {20D04FE0-3AEA-1069-A2D8-08002B30309D} |
| ADMX File Name | Desktop.admx |
<!-- NoMyComputerIcon-AdmxBacked-End -->

<!-- NoMyComputerIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoMyComputerIcon-Examples-End -->

<!-- NoMyComputerIcon-End -->

<!-- NoMyDocumentsIcon-Begin -->
## NoMyDocumentsIcon

<!-- NoMyDocumentsIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoMyDocumentsIcon-Applicability-End -->

<!-- NoMyDocumentsIcon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoMyDocumentsIcon
```
<!-- NoMyDocumentsIcon-OmaUri-End -->

<!-- NoMyDocumentsIcon-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes most occurrences of the My Documents icon.

This setting removes the My Documents icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.

This setting doesn't prevent the user from using other methods to gain access to the contents of the My Documents folder.

This setting doesn't remove the My Documents icon from the Start menu. To do so, use the "Remove My Documents icon from Start Menu" setting.

> [!NOTE]
> To make changes to this setting effective, you must log off from and log back on to Windows 2000 Professional.
<!-- NoMyDocumentsIcon-Description-End -->

<!-- NoMyDocumentsIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoMyDocumentsIcon-Editable-End -->

<!-- NoMyDocumentsIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoMyDocumentsIcon-DFProperties-End -->

<!-- NoMyDocumentsIcon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoMyDocumentsIcon |
| Friendly Name | Remove My Documents icon on the desktop |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum |
| Registry Value Name | {450D8FBA-AD25-11D0-98A8-0800361B1103} |
| ADMX File Name | Desktop.admx |
<!-- NoMyDocumentsIcon-AdmxBacked-End -->

<!-- NoMyDocumentsIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoMyDocumentsIcon-Examples-End -->

<!-- NoMyDocumentsIcon-End -->

<!-- NoNetHood-Begin -->
## NoNetHood

<!-- NoNetHood-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoNetHood-Applicability-End -->

<!-- NoNetHood-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoNetHood
```
<!-- NoNetHood-OmaUri-End -->

<!-- NoNetHood-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Network Locations icon from the desktop.

This setting only affects the desktop icon. It doesn't prevent users from connecting to the network or browsing for shared computers on the network.

> [!NOTE]
> In operating systems earlier than Microsoft Windows Vista, this policy applies to the My Network Places icon.
<!-- NoNetHood-Description-End -->

<!-- NoNetHood-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoNetHood-Editable-End -->

<!-- NoNetHood-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoNetHood-DFProperties-End -->

<!-- NoNetHood-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoNetHood |
| Friendly Name | Hide Network Locations icon on desktop |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoNetHood |
| ADMX File Name | Desktop.admx |
<!-- NoNetHood-AdmxBacked-End -->

<!-- NoNetHood-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoNetHood-Examples-End -->

<!-- NoNetHood-End -->

<!-- NoPropertiesMyComputer-Begin -->
## NoPropertiesMyComputer

<!-- NoPropertiesMyComputer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPropertiesMyComputer-Applicability-End -->

<!-- NoPropertiesMyComputer-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoPropertiesMyComputer
```
<!-- NoPropertiesMyComputer-OmaUri-End -->

<!-- NoPropertiesMyComputer-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting hides Properties on the context menu for Computer.

- If you enable this setting, the Properties option won't be present when the user right-clicks My Computer or clicks Computer and then goes to the File menu. Likewise, Alt-Enter does nothing when Computer is selected.

- If you disable or don't configure this setting, the Properties option is displayed as usual.
<!-- NoPropertiesMyComputer-Description-End -->

<!-- NoPropertiesMyComputer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPropertiesMyComputer-Editable-End -->

<!-- NoPropertiesMyComputer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPropertiesMyComputer-DFProperties-End -->

<!-- NoPropertiesMyComputer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPropertiesMyComputer |
| Friendly Name | Remove Properties from the Computer icon context menu |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoPropertiesMyComputer |
| ADMX File Name | Desktop.admx |
<!-- NoPropertiesMyComputer-AdmxBacked-End -->

<!-- NoPropertiesMyComputer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPropertiesMyComputer-Examples-End -->

<!-- NoPropertiesMyComputer-End -->

<!-- NoPropertiesMyDocuments-Begin -->
## NoPropertiesMyDocuments

<!-- NoPropertiesMyDocuments-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPropertiesMyDocuments-Applicability-End -->

<!-- NoPropertiesMyDocuments-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoPropertiesMyDocuments
```
<!-- NoPropertiesMyDocuments-OmaUri-End -->

<!-- NoPropertiesMyDocuments-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting hides the Properties menu command on the shortcut menu for the My Documents icon.

- If you enable this policy setting, the Properties menu command won't be displayed when the user does any of the following:

Right-clicks the My Documents icon.

Clicks the My Documents icon, and then opens the File menu.

Clicks the My Documents icon, and then presses ALT+ENTER.

- If you disable or don't configure this policy setting, the Properties menu command is displayed.
<!-- NoPropertiesMyDocuments-Description-End -->

<!-- NoPropertiesMyDocuments-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPropertiesMyDocuments-Editable-End -->

<!-- NoPropertiesMyDocuments-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPropertiesMyDocuments-DFProperties-End -->

<!-- NoPropertiesMyDocuments-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPropertiesMyDocuments |
| Friendly Name | Remove Properties from the Documents icon context menu |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoPropertiesMyDocuments |
| ADMX File Name | Desktop.admx |
<!-- NoPropertiesMyDocuments-AdmxBacked-End -->

<!-- NoPropertiesMyDocuments-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPropertiesMyDocuments-Examples-End -->

<!-- NoPropertiesMyDocuments-End -->

<!-- NoRecentDocsNetHood-Begin -->
## NoRecentDocsNetHood

<!-- NoRecentDocsNetHood-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRecentDocsNetHood-Applicability-End -->

<!-- NoRecentDocsNetHood-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoRecentDocsNetHood
```
<!-- NoRecentDocsNetHood-OmaUri-End -->

<!-- NoRecentDocsNetHood-Description-Begin -->
<!-- Description-Source-ADMX -->
Remote shared folders aren't added to Network Locations whenever you open a document in the shared folder.

- If you disable this setting or don't configure it, when you open a document in a remote shared folder, the system adds a connection to the shared folder to Network Locations.

- If you enable this setting, shared folders aren't added to Network Locations automatically when you open a document in the shared folder.
<!-- NoRecentDocsNetHood-Description-End -->

<!-- NoRecentDocsNetHood-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRecentDocsNetHood-Editable-End -->

<!-- NoRecentDocsNetHood-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRecentDocsNetHood-DFProperties-End -->

<!-- NoRecentDocsNetHood-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRecentDocsNetHood |
| Friendly Name | Do not add shares of recently opened documents to Network Locations |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoRecentDocsNetHood |
| ADMX File Name | Desktop.admx |
<!-- NoRecentDocsNetHood-AdmxBacked-End -->

<!-- NoRecentDocsNetHood-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRecentDocsNetHood-Examples-End -->

<!-- NoRecentDocsNetHood-End -->

<!-- NoRecycleBinIcon-Begin -->
## NoRecycleBinIcon

<!-- NoRecycleBinIcon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRecycleBinIcon-Applicability-End -->

<!-- NoRecycleBinIcon-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoRecycleBinIcon
```
<!-- NoRecycleBinIcon-OmaUri-End -->

<!-- NoRecycleBinIcon-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes most occurrences of the Recycle Bin icon.

This setting removes the Recycle Bin icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.

This setting doesn't prevent the user from using other methods to gain access to the contents of the Recycle Bin folder.

> [!NOTE]
> To make changes to this setting effective, you must log off and then log back on.
<!-- NoRecycleBinIcon-Description-End -->

<!-- NoRecycleBinIcon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRecycleBinIcon-Editable-End -->

<!-- NoRecycleBinIcon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRecycleBinIcon-DFProperties-End -->

<!-- NoRecycleBinIcon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRecycleBinIcon |
| Friendly Name | Remove Recycle Bin icon from desktop |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum |
| Registry Value Name | {645FF040-5081-101B-9F08-00AA002F954E} |
| ADMX File Name | Desktop.admx |
<!-- NoRecycleBinIcon-AdmxBacked-End -->

<!-- NoRecycleBinIcon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRecycleBinIcon-Examples-End -->

<!-- NoRecycleBinIcon-End -->

<!-- NoRecycleBinProperties-Begin -->
## NoRecycleBinProperties

<!-- NoRecycleBinProperties-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRecycleBinProperties-Applicability-End -->

<!-- NoRecycleBinProperties-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoRecycleBinProperties
```
<!-- NoRecycleBinProperties-OmaUri-End -->

<!-- NoRecycleBinProperties-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Properties option from the Recycle Bin context menu.

- If you enable this setting, the Properties option won't be present when the user right-clicks on Recycle Bin or opens Recycle Bin and then clicks File. Likewise, Alt-Enter does nothing when Recycle Bin is selected.

- If you disable or don't configure this setting, the Properties option is displayed as usual.
<!-- NoRecycleBinProperties-Description-End -->

<!-- NoRecycleBinProperties-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRecycleBinProperties-Editable-End -->

<!-- NoRecycleBinProperties-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRecycleBinProperties-DFProperties-End -->

<!-- NoRecycleBinProperties-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRecycleBinProperties |
| Friendly Name | Remove Properties from the Recycle Bin context menu |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoPropertiesRecycleBin |
| ADMX File Name | Desktop.admx |
<!-- NoRecycleBinProperties-AdmxBacked-End -->

<!-- NoRecycleBinProperties-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRecycleBinProperties-Examples-End -->

<!-- NoRecycleBinProperties-End -->

<!-- NoSaveSettings-Begin -->
## NoSaveSettings

<!-- NoSaveSettings-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSaveSettings-Applicability-End -->

<!-- NoSaveSettings-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoSaveSettings
```
<!-- NoSaveSettings-OmaUri-End -->

<!-- NoSaveSettings-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from saving certain changes to the desktop.

If you enable this setting, users can change the desktop, but some changes, such as the position of open windows or the size and position of the taskbar, aren't saved when users log off. However, shortcuts placed on the desktop are always saved.
<!-- NoSaveSettings-Description-End -->

<!-- NoSaveSettings-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSaveSettings-Editable-End -->

<!-- NoSaveSettings-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSaveSettings-DFProperties-End -->

<!-- NoSaveSettings-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSaveSettings |
| Friendly Name | Don't save settings at exit |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSaveSettings |
| ADMX File Name | Desktop.admx |
<!-- NoSaveSettings-AdmxBacked-End -->

<!-- NoSaveSettings-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSaveSettings-Examples-End -->

<!-- NoSaveSettings-End -->

<!-- NoWindowMinimizingShortcuts-Begin -->
## NoWindowMinimizingShortcuts

<!-- NoWindowMinimizingShortcuts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWindowMinimizingShortcuts-Applicability-End -->

<!-- NoWindowMinimizingShortcuts-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/NoWindowMinimizingShortcuts
```
<!-- NoWindowMinimizingShortcuts-OmaUri-End -->

<!-- NoWindowMinimizingShortcuts-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents windows from being minimized or restored when the active window is shaken back and forth with the mouse.

- If you enable this policy, application windows won't be minimized or restored when the active window is shaken back and forth with the mouse.

- If you disable or don't configure this policy, this window minimizing and restoring gesture will apply.
<!-- NoWindowMinimizingShortcuts-Description-End -->

<!-- NoWindowMinimizingShortcuts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWindowMinimizingShortcuts-Editable-End -->

<!-- NoWindowMinimizingShortcuts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWindowMinimizingShortcuts-DFProperties-End -->

<!-- NoWindowMinimizingShortcuts-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWindowMinimizingShortcuts |
| Friendly Name | Turn off Aero Shake window minimizing mouse gesture |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoWindowMinimizingShortcuts |
| ADMX File Name | Desktop.admx |
<!-- NoWindowMinimizingShortcuts-AdmxBacked-End -->

<!-- NoWindowMinimizingShortcuts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWindowMinimizingShortcuts-Examples-End -->

<!-- NoWindowMinimizingShortcuts-End -->

<!-- sz_AdminComponents_Title-Begin -->
## sz_AdminComponents_Title

<!-- sz_AdminComponents_Title-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_AdminComponents_Title-Applicability-End -->

<!-- sz_AdminComponents_Title-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_AdminComponents_Title
```
<!-- sz_AdminComponents_Title-OmaUri-End -->

<!-- sz_AdminComponents_Title-Description-Begin -->
<!-- Description-Source-ADMX -->
Adds and deletes specified Web content items.

You can use the "Add" box in this setting to add particular Web-based items or shortcuts to users' desktops. Users can close or delete the items (if settings allow), but the items are added again each time the setting is refreshed.

You can also use this setting to delete particular Web-based items from users' desktops. Users can add the item again (if settings allow), but the item is deleted each time the setting is refreshed.

> [!NOTE]
> Removing an item from the "Add" list for this setting isn't the same as deleting it. Items that are removed from the "Add" list aren't removed from the desktop. They are simply not added again.

> [!NOTE]
> For this setting to take affect, you must log off and log on to the system.
<!-- sz_AdminComponents_Title-Description-End -->

<!-- sz_AdminComponents_Title-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_AdminComponents_Title-Editable-End -->

<!-- sz_AdminComponents_Title-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_AdminComponents_Title-DFProperties-End -->

<!-- sz_AdminComponents_Title-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_AdminComponents_Title |
| Friendly Name | Add/Delete items |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop\AdminComponent |
| ADMX File Name | Desktop.admx |
<!-- sz_AdminComponents_Title-AdmxBacked-End -->

<!-- sz_AdminComponents_Title-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_AdminComponents_Title-Examples-End -->

<!-- sz_AdminComponents_Title-End -->

<!-- sz_ATC_DisableAdd-Begin -->
## sz_ATC_DisableAdd

<!-- sz_ATC_DisableAdd-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_ATC_DisableAdd-Applicability-End -->

<!-- sz_ATC_DisableAdd-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_ATC_DisableAdd
```
<!-- sz_ATC_DisableAdd-OmaUri-End -->

<!-- sz_ATC_DisableAdd-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from adding Web content to their Active Desktop.

This setting removes the "New" button from Web tab in Display in Control Panel. As a result, users can't add Web pages or pictures from the Internet or an intranet to the desktop. This setting doesn't remove existing Web content from their Active Desktop, or prevent users from removing existing Web content.

Also, see the "Disable all items" setting.
<!-- sz_ATC_DisableAdd-Description-End -->

<!-- sz_ATC_DisableAdd-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_ATC_DisableAdd-Editable-End -->

<!-- sz_ATC_DisableAdd-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_ATC_DisableAdd-DFProperties-End -->

<!-- sz_ATC_DisableAdd-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_ATC_DisableAdd |
| Friendly Name | Prohibit adding items |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoAddingComponents |
| ADMX File Name | Desktop.admx |
<!-- sz_ATC_DisableAdd-AdmxBacked-End -->

<!-- sz_ATC_DisableAdd-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_ATC_DisableAdd-Examples-End -->

<!-- sz_ATC_DisableAdd-End -->

<!-- sz_ATC_DisableClose-Begin -->
## sz_ATC_DisableClose

<!-- sz_ATC_DisableClose-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_ATC_DisableClose-Applicability-End -->

<!-- sz_ATC_DisableClose-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_ATC_DisableClose
```
<!-- sz_ATC_DisableClose-OmaUri-End -->

<!-- sz_ATC_DisableClose-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from removing Web content from their Active Desktop.

In Active Desktop, you can add items to the desktop but close them so they aren't displayed.

If you enable this setting, items added to the desktop can't be closed; they always appear on the desktop. This setting removes the check boxes from items on the Web tab in Display in Control Panel.

> [!NOTE]
> This setting doesn't prevent users from deleting items from their Active Desktop.
<!-- sz_ATC_DisableClose-Description-End -->

<!-- sz_ATC_DisableClose-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_ATC_DisableClose-Editable-End -->

<!-- sz_ATC_DisableClose-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_ATC_DisableClose-DFProperties-End -->

<!-- sz_ATC_DisableClose-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_ATC_DisableClose |
| Friendly Name | Prohibit closing items |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoClosingComponents |
| ADMX File Name | Desktop.admx |
<!-- sz_ATC_DisableClose-AdmxBacked-End -->

<!-- sz_ATC_DisableClose-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_ATC_DisableClose-Examples-End -->

<!-- sz_ATC_DisableClose-End -->

<!-- sz_ATC_DisableDel-Begin -->
## sz_ATC_DisableDel

<!-- sz_ATC_DisableDel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_ATC_DisableDel-Applicability-End -->

<!-- sz_ATC_DisableDel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_ATC_DisableDel
```
<!-- sz_ATC_DisableDel-OmaUri-End -->

<!-- sz_ATC_DisableDel-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from deleting Web content from their Active Desktop.

This setting removes the Delete button from the Web tab in Display in Control Panel. As a result, users can temporarily remove, but not delete, Web content from their Active Desktop.

This setting doesn't prevent users from adding Web content to their Active Desktop.

Also, see the "Prohibit closing items" and "Disable all items" settings.
<!-- sz_ATC_DisableDel-Description-End -->

<!-- sz_ATC_DisableDel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_ATC_DisableDel-Editable-End -->

<!-- sz_ATC_DisableDel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_ATC_DisableDel-DFProperties-End -->

<!-- sz_ATC_DisableDel-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_ATC_DisableDel |
| Friendly Name | Prohibit deleting items |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoDeletingComponents |
| ADMX File Name | Desktop.admx |
<!-- sz_ATC_DisableDel-AdmxBacked-End -->

<!-- sz_ATC_DisableDel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_ATC_DisableDel-Examples-End -->

<!-- sz_ATC_DisableDel-End -->

<!-- sz_ATC_DisableEdit-Begin -->
## sz_ATC_DisableEdit

<!-- sz_ATC_DisableEdit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_ATC_DisableEdit-Applicability-End -->

<!-- sz_ATC_DisableEdit-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_ATC_DisableEdit
```
<!-- sz_ATC_DisableEdit-OmaUri-End -->

<!-- sz_ATC_DisableEdit-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the properties of Web content items on their Active Desktop.

This setting disables the Properties button on the Web tab in Display in Control Panel. Also, it removes the Properties item from the menu for each item on the Active Desktop. As a result, users can't change the properties of an item, such as its synchronization schedule, password, or display characteristics.
<!-- sz_ATC_DisableEdit-Description-End -->

<!-- sz_ATC_DisableEdit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_ATC_DisableEdit-Editable-End -->

<!-- sz_ATC_DisableEdit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_ATC_DisableEdit-DFProperties-End -->

<!-- sz_ATC_DisableEdit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_ATC_DisableEdit |
| Friendly Name | Prohibit editing items |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoEditingComponents |
| ADMX File Name | Desktop.admx |
<!-- sz_ATC_DisableEdit-AdmxBacked-End -->

<!-- sz_ATC_DisableEdit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_ATC_DisableEdit-Examples-End -->

<!-- sz_ATC_DisableEdit-End -->

<!-- sz_ATC_NoComponents-Begin -->
## sz_ATC_NoComponents

<!-- sz_ATC_NoComponents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_ATC_NoComponents-Applicability-End -->

<!-- sz_ATC_NoComponents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_ATC_NoComponents
```
<!-- sz_ATC_NoComponents-OmaUri-End -->

<!-- sz_ATC_NoComponents-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes Active Desktop content and prevents users from adding Active Desktop content.

This setting removes all Active Desktop items from the desktop. It also removes the Web tab from Display in Control Panel. As a result, users can't add Web pages or pictures from the Internet or an intranet to the desktop.

> [!NOTE]
> This setting doesn't disable Active Desktop. Users can still use image formats, such as JPEG and GIF, for their desktop wallpaper.
<!-- sz_ATC_NoComponents-Description-End -->

<!-- sz_ATC_NoComponents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_ATC_NoComponents-Editable-End -->

<!-- sz_ATC_NoComponents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_ATC_NoComponents-DFProperties-End -->

<!-- sz_ATC_NoComponents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_ATC_NoComponents |
| Friendly Name | Disable all items |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoComponents |
| ADMX File Name | Desktop.admx |
<!-- sz_ATC_NoComponents-AdmxBacked-End -->

<!-- sz_ATC_NoComponents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_ATC_NoComponents-Examples-End -->

<!-- sz_ATC_NoComponents-End -->

<!-- sz_DB_DragDropClose-Begin -->
## sz_DB_DragDropClose

<!-- sz_DB_DragDropClose-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_DB_DragDropClose-Applicability-End -->

<!-- sz_DB_DragDropClose-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_DB_DragDropClose
```
<!-- sz_DB_DragDropClose-OmaUri-End -->

<!-- sz_DB_DragDropClose-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from manipulating desktop toolbars.

If you enable this setting, users can't add or remove toolbars from the desktop. Also, users can't drag toolbars on to or off of docked toolbars.

> [!NOTE]
> If users have added or removed toolbars, this setting prevents them from restoring the default configuration.

> [!TIP]
> To view the toolbars that can be added to the desktop, right-click a docked toolbar (such as the taskbar beside the Start button), and point to "Toolbars".

Also, see the "Prohibit adjusting desktop toolbars" setting.
<!-- sz_DB_DragDropClose-Description-End -->

<!-- sz_DB_DragDropClose-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_DB_DragDropClose-Editable-End -->

<!-- sz_DB_DragDropClose-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_DB_DragDropClose-DFProperties-End -->

<!-- sz_DB_DragDropClose-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_DB_DragDropClose |
| Friendly Name | Prevent adding, dragging, dropping and closing the Taskbar's toolbars |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoCloseDragDropBands |
| ADMX File Name | Desktop.admx |
<!-- sz_DB_DragDropClose-AdmxBacked-End -->

<!-- sz_DB_DragDropClose-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_DB_DragDropClose-Examples-End -->

<!-- sz_DB_DragDropClose-End -->

<!-- sz_DB_Moving-Begin -->
## sz_DB_Moving

<!-- sz_DB_Moving-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_DB_Moving-Applicability-End -->

<!-- sz_DB_Moving-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_DB_Moving
```
<!-- sz_DB_Moving-OmaUri-End -->

<!-- sz_DB_Moving-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from adjusting the length of desktop toolbars. Also, users can't reposition items or toolbars on docked toolbars.

This setting doesn't prevent users from adding or removing toolbars on the desktop.

> [!NOTE]
> If users have adjusted their toolbars, this setting prevents them from restoring the default configuration.

Also, see the "Prevent adding, dragging, dropping and closing the Taskbar's toolbars" setting.
<!-- sz_DB_Moving-Description-End -->

<!-- sz_DB_Moving-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_DB_Moving-Editable-End -->

<!-- sz_DB_Moving-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_DB_Moving-DFProperties-End -->

<!-- sz_DB_Moving-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_DB_Moving |
| Friendly Name | Prohibit adjusting desktop toolbars |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoMovingBands |
| ADMX File Name | Desktop.admx |
<!-- sz_DB_Moving-AdmxBacked-End -->

<!-- sz_DB_Moving-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_DB_Moving-Examples-End -->

<!-- sz_DB_Moving-End -->

<!-- sz_DWP_NoHTMLPaper-Begin -->
## sz_DWP_NoHTMLPaper

<!-- sz_DWP_NoHTMLPaper-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- sz_DWP_NoHTMLPaper-Applicability-End -->

<!-- sz_DWP_NoHTMLPaper-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/sz_DWP_NoHTMLPaper
```
<!-- sz_DWP_NoHTMLPaper-OmaUri-End -->

<!-- sz_DWP_NoHTMLPaper-Description-Begin -->
<!-- Description-Source-ADMX -->
Permits only bitmap images for wallpaper. This setting limits the desktop background ("wallpaper") to bitmap (.bmp) files. If users select files with other image formats, such as JPEG, GIF, PNG, or HTML, through the Browse button on the Desktop tab, the wallpaper doesn't load. Files that are autoconverted to a .bmp format, such as JPEG, GIF, and PNG, can be set as Wallpaper by right-clicking the image and selecting "Set as Wallpaper".

Also, see the "Desktop Wallpaper" and the "Prevent changing wallpaper" (in User Configuration\Administrative Templates\Control Panel\Display) settings.
<!-- sz_DWP_NoHTMLPaper-Description-End -->

<!-- sz_DWP_NoHTMLPaper-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- sz_DWP_NoHTMLPaper-Editable-End -->

<!-- sz_DWP_NoHTMLPaper-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- sz_DWP_NoHTMLPaper-DFProperties-End -->

<!-- sz_DWP_NoHTMLPaper-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | sz_DWP_NoHTMLPaper |
| Friendly Name | Allow only bitmapped wallpaper |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop |
| Registry Value Name | NoHTMLWallPaper |
| ADMX File Name | Desktop.admx |
<!-- sz_DWP_NoHTMLPaper-AdmxBacked-End -->

<!-- sz_DWP_NoHTMLPaper-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- sz_DWP_NoHTMLPaper-Examples-End -->

<!-- sz_DWP_NoHTMLPaper-End -->

<!-- Wallpaper-Begin -->
## Wallpaper

<!-- Wallpaper-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Wallpaper-Applicability-End -->

<!-- Wallpaper-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Desktop/Wallpaper
```
<!-- Wallpaper-OmaUri-End -->

<!-- Wallpaper-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the desktop background ("wallpaper") displayed on all users' desktops.

This setting lets you specify the wallpaper on users' desktops and prevents users from changing the image or its presentation. The wallpaper you specify can be stored in a bitmap (*.bmp) or JPEG (*.jpg) file.

To use this setting, type the fully qualified path and name of the file that stores the wallpaper image. You can type a local path, such as C:\Windows\web\wallpaper\home.jpg or a UNC path, such as \\Server\Share\Corp.jpg. If the specified file isn't available when the user logs on, no wallpaper is displayed. Users can't specify alternative wallpaper. You can also use this setting to specify that the wallpaper image be centered, tiled, or stretched. Users can't change this specification.

If you disable this setting or don't configure it, no wallpaper is displayed. However, users can select the wallpaper of their choice.

Also, see the "Allow only bitmapped wallpaper" in the same location, and the "Prevent changing wallpaper" setting in User Configuration\Administrative Templates\Control Panel.

> [!NOTE]
> This setting doesn't apply to remote desktop server sessions.
<!-- Wallpaper-Description-End -->

<!-- Wallpaper-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Wallpaper-Editable-End -->

<!-- Wallpaper-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Wallpaper-DFProperties-End -->

<!-- Wallpaper-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Wallpaper |
| Friendly Name | Desktop Wallpaper |
| Location | User Configuration |
| Path | Desktop > Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | Desktop.admx |
<!-- Wallpaper-AdmxBacked-End -->

<!-- Wallpaper-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Wallpaper-Examples-End -->

<!-- Wallpaper-End -->

<!-- ADMX_Desktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Desktop-CspMoreInfo-End -->

<!-- ADMX_Desktop-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
