---
title: ADMX_Programs Policy CSP
description: Learn more about the ADMX_Programs Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Programs-Begin -->
# Policy CSP - ADMX_Programs

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Programs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Programs-Editable-End -->

<!-- NoDefaultPrograms-Begin -->
## NoDefaultPrograms

<!-- NoDefaultPrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoDefaultPrograms-Applicability-End -->

<!-- NoDefaultPrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoDefaultPrograms
```
<!-- NoDefaultPrograms-OmaUri-End -->

<!-- NoDefaultPrograms-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting removes the Set Program Access and Defaults page from the Programs Control Panel. As a result, users can't view or change the associated page.

The Set Program Access and Computer Defaults page allows administrators to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as specify the programs that are accessible from the Start menu, desktop, and other locations.

If this setting is disabled or not configured, the Set Program Access and Defaults button is available to all users.

This setting doesn't prevent users from using other tools and methods to change program access or defaults.

This setting doesn't prevent the Default Programs icon from appearing on the Start menu.
<!-- NoDefaultPrograms-Description-End -->

<!-- NoDefaultPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoDefaultPrograms-Editable-End -->

<!-- NoDefaultPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoDefaultPrograms-DFProperties-End -->

<!-- NoDefaultPrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDefaultPrograms |
| Friendly Name | Hide "Set Program Access and Computer Defaults" page |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoDefaultPrograms |
| ADMX File Name | Programs.admx |
<!-- NoDefaultPrograms-AdmxBacked-End -->

<!-- NoDefaultPrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoDefaultPrograms-Examples-End -->

<!-- NoDefaultPrograms-End -->

<!-- NoGetPrograms-Begin -->
## NoGetPrograms

<!-- NoGetPrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoGetPrograms-Applicability-End -->

<!-- NoGetPrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoGetPrograms
```
<!-- NoGetPrograms-OmaUri-End -->

<!-- NoGetPrograms-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from viewing or installing published programs from the network.

This setting prevents users from accessing the "Get Programs" page from the Programs Control Panel in Category View, Programs and Features in Classic View and the "Install a program from the netowrk" task. The "Get Programs" page lists published programs and provides an easy way to install them.

Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer. Typically, system administrators publish programs to notify users of their availability, to recommend their use, or to enable users to install them without having to search for installation files.

- If this setting is enabled, users can't view the programs that have been published by the system administrator, and they can't use the "Get Programs" page to install published programs. Enabling this feature doesn't prevent users from installing programs by using other methods. Users will still be able to view and installed assigned (partially installed) programs that are offered on the desktop or on the Start menu.

- If this setting is disabled or isn't configured, the "Install a program from the network" task to the "Get Programs" page will be available to all users.

> [!NOTE]
> If the "Hide Programs Control Panel" setting is enabled, this setting is ignored.
<!-- NoGetPrograms-Description-End -->

<!-- NoGetPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoGetPrograms-Editable-End -->

<!-- NoGetPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoGetPrograms-DFProperties-End -->

<!-- NoGetPrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoGetPrograms |
| Friendly Name | Hide "Get Programs" page |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoGetPrograms |
| ADMX File Name | Programs.admx |
<!-- NoGetPrograms-AdmxBacked-End -->

<!-- NoGetPrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoGetPrograms-Examples-End -->

<!-- NoGetPrograms-End -->

<!-- NoInstalledUpdates-Begin -->
## NoInstalledUpdates

<!-- NoInstalledUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoInstalledUpdates-Applicability-End -->

<!-- NoInstalledUpdates-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoInstalledUpdates
```
<!-- NoInstalledUpdates-OmaUri-End -->

<!-- NoInstalledUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting prevents users from accessing "Installed Updates" page from the "View installed updates" task.

"Installed Updates" allows users to view and uninstall updates currently installed on the computer. The updates are often downloaded directly from Windows Update or from various program publishers.

If this setting is disabled or not configured, the "View installed updates" task and the "Installed Updates" page will be available to all users.

This setting doesn't prevent users from using other tools and methods to install or uninstall programs.
<!-- NoInstalledUpdates-Description-End -->

<!-- NoInstalledUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoInstalledUpdates-Editable-End -->

<!-- NoInstalledUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoInstalledUpdates-DFProperties-End -->

<!-- NoInstalledUpdates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoInstalledUpdates |
| Friendly Name | Hide "Installed Updates" page |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoInstalledUpdates |
| ADMX File Name | Programs.admx |
<!-- NoInstalledUpdates-AdmxBacked-End -->

<!-- NoInstalledUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoInstalledUpdates-Examples-End -->

<!-- NoInstalledUpdates-End -->

<!-- NoProgramsAndFeatures-Begin -->
## NoProgramsAndFeatures

<!-- NoProgramsAndFeatures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoProgramsAndFeatures-Applicability-End -->

<!-- NoProgramsAndFeatures-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoProgramsAndFeatures
```
<!-- NoProgramsAndFeatures-OmaUri-End -->

<!-- NoProgramsAndFeatures-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting prevents users from accessing "Programs and Features" to view, uninstall, change, or repair programs that are currently installed on the computer.

If this setting is disabled or not configured, "Programs and Features" will be available to all users.

This setting doesn't prevent users from using other tools and methods to view or uninstall programs. It also doesn't prevent users from linking to related Programs Control Panel Features including Windows Features, Get Programs, or Windows Marketplace.
<!-- NoProgramsAndFeatures-Description-End -->

<!-- NoProgramsAndFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoProgramsAndFeatures-Editable-End -->

<!-- NoProgramsAndFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoProgramsAndFeatures-DFProperties-End -->

<!-- NoProgramsAndFeatures-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoProgramsAndFeatures |
| Friendly Name | Hide "Programs and Features" page |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoProgramsAndFeatures |
| ADMX File Name | Programs.admx |
<!-- NoProgramsAndFeatures-AdmxBacked-End -->

<!-- NoProgramsAndFeatures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoProgramsAndFeatures-Examples-End -->

<!-- NoProgramsAndFeatures-End -->

<!-- NoProgramsCPL-Begin -->
## NoProgramsCPL

<!-- NoProgramsCPL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoProgramsCPL-Applicability-End -->

<!-- NoProgramsCPL-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoProgramsCPL
```
<!-- NoProgramsCPL-OmaUri-End -->

<!-- NoProgramsCPL-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting prevents users from using the Programs Control Panel in Category View and Programs and Features in Classic View.

The Programs Control Panel allows users to uninstall, change, and repair programs, enable and disable Windows Features, set program defaults, view installed updates, and purchase software from Windows Marketplace. Programs published or assigned to the user by the system administrator also appear in the Programs Control Panel.

If this setting is disabled or not configured, the Programs Control Panel in Category View and Programs and Features in Classic View will be available to all users.

When enabled, this setting takes precedence over the other settings in this folder.

This setting doesn't prevent users from using other tools and methods to install or uninstall programs.
<!-- NoProgramsCPL-Description-End -->

<!-- NoProgramsCPL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoProgramsCPL-Editable-End -->

<!-- NoProgramsCPL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoProgramsCPL-DFProperties-End -->

<!-- NoProgramsCPL-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoProgramsCPL |
| Friendly Name | Hide the Programs Control Panel |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoProgramsCPL |
| ADMX File Name | Programs.admx |
<!-- NoProgramsCPL-AdmxBacked-End -->

<!-- NoProgramsCPL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoProgramsCPL-Examples-End -->

<!-- NoProgramsCPL-End -->

<!-- NoWindowsFeatures-Begin -->
## NoWindowsFeatures

<!-- NoWindowsFeatures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWindowsFeatures-Applicability-End -->

<!-- NoWindowsFeatures-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoWindowsFeatures
```
<!-- NoWindowsFeatures-OmaUri-End -->

<!-- NoWindowsFeatures-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting prevents users from accessing the "Turn Windows features on or off" task from the Programs Control Panel in Category View, Programs and Features in Classic View, and Get Programs. As a result, users can't view, enable, or disable various Windows features and services.

If this setting is disabled or isn't configured, the "Turn Windows features on or off" task will be available to all users.

This setting doesn't prevent users from using other tools and methods to configure services or enable or disable program components.
<!-- NoWindowsFeatures-Description-End -->

<!-- NoWindowsFeatures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWindowsFeatures-Editable-End -->

<!-- NoWindowsFeatures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWindowsFeatures-DFProperties-End -->

<!-- NoWindowsFeatures-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWindowsFeatures |
| Friendly Name | Hide "Windows Features" |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoWindowsFeatures |
| ADMX File Name | Programs.admx |
<!-- NoWindowsFeatures-AdmxBacked-End -->

<!-- NoWindowsFeatures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWindowsFeatures-Examples-End -->

<!-- NoWindowsFeatures-End -->

<!-- NoWindowsMarketplace-Begin -->
## NoWindowsMarketplace

<!-- NoWindowsMarketplace-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWindowsMarketplace-Applicability-End -->

<!-- NoWindowsMarketplace-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Programs/NoWindowsMarketplace
```
<!-- NoWindowsMarketplace-OmaUri-End -->

<!-- NoWindowsMarketplace-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting prevents users from access the "Get new programs from Windows Marketplace" task from the Programs Control Panel in Category View, Programs and Features in Classic View, and Get Programs.

Windows Marketplace allows users to purchase and/or download various programs to their computer for installation.

Enabling this feature doesn't prevent users from navigating to Windows Marketplace using other methods.

If this feature is disabled or isn't configured, the "Get new programs from Windows Marketplace" task link will be available to all users.

> [!NOTE]
> If the "Hide Programs control Panel" setting is enabled, this setting is ignored.
<!-- NoWindowsMarketplace-Description-End -->

<!-- NoWindowsMarketplace-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWindowsMarketplace-Editable-End -->

<!-- NoWindowsMarketplace-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWindowsMarketplace-DFProperties-End -->

<!-- NoWindowsMarketplace-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWindowsMarketplace |
| Friendly Name | Hide "Windows Marketplace" |
| Location | User Configuration |
| Path | Control Panel > Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Programs |
| Registry Value Name | NoWindowsMarketplace |
| ADMX File Name | Programs.admx |
<!-- NoWindowsMarketplace-AdmxBacked-End -->

<!-- NoWindowsMarketplace-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWindowsMarketplace-Examples-End -->

<!-- NoWindowsMarketplace-End -->

<!-- ADMX_Programs-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Programs-CspMoreInfo-End -->

<!-- ADMX_Programs-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
