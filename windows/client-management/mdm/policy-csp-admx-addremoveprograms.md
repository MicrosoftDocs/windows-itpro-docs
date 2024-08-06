---
title: ADMX_AddRemovePrograms Policy CSP
description: Learn more about the ADMX_AddRemovePrograms Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_AddRemovePrograms-Begin -->
# Policy CSP - ADMX_AddRemovePrograms

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_AddRemovePrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AddRemovePrograms-Editable-End -->

<!-- DefaultCategory-Begin -->
## DefaultCategory

<!-- DefaultCategory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DefaultCategory-Applicability-End -->

<!-- DefaultCategory-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/DefaultCategory
```
<!-- DefaultCategory-OmaUri-End -->

<!-- DefaultCategory-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the category of programs that appears when users open the "Add New Programs" page.

- If you enable this setting, only the programs in the category you specify are displayed when the "Add New Programs" page opens. Users can use the Category box on the "Add New Programs" page to display programs in other categories.

To use this setting, type the name of a category in the Category box for this setting. You must enter a category that's already defined in Add or Remove Programs. To define a category, use Software Installation.

- If you disable this setting or don't configure it, all programs (Category: All) are displayed when the "Add New Programs" page opens.

You can use this setting to direct users to the programs they're most likely to need.

> [!NOTE]
> This setting is ignored if either the "Remove Add or Remove Programs" setting or the "Hide Add New Programs page" setting is enabled.
<!-- DefaultCategory-Description-End -->

<!-- DefaultCategory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DefaultCategory-Editable-End -->

<!-- DefaultCategory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DefaultCategory-DFProperties-End -->

<!-- DefaultCategory-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DefaultCategory |
| Friendly Name | Specify default category for Add New Programs |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| ADMX File Name | AddRemovePrograms.admx |
<!-- DefaultCategory-AdmxBacked-End -->

<!-- DefaultCategory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DefaultCategory-Examples-End -->

<!-- DefaultCategory-End -->

<!-- NoAddFromCDorFloppy-Begin -->
## NoAddFromCDorFloppy

<!-- NoAddFromCDorFloppy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoAddFromCDorFloppy-Applicability-End -->

<!-- NoAddFromCDorFloppy-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoAddFromCDorFloppy
```
<!-- NoAddFromCDorFloppy-OmaUri-End -->

<!-- NoAddFromCDorFloppy-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the "Add a program from CD-ROM or floppy disk" section from the Add New Programs page. This prevents users from using Add or Remove Programs to install programs from removable media.

If you disable this setting or don't configure it, the "Add a program from CD-ROM or floppy disk" option is available to all users.

This setting doesn't prevent users from using other tools and methods to add or remove program components.

> [!NOTE]
> If the "Hide Add New Programs page" setting is enabled, this setting is ignored. Also, if the "Prevent removable media source for any install" setting (located in User Configuration\Administrative Templates\Windows Components\Windows Installer) is enabled, users can't add programs from removable media, regardless of this setting.
<!-- NoAddFromCDorFloppy-Description-End -->

<!-- NoAddFromCDorFloppy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoAddFromCDorFloppy-Editable-End -->

<!-- NoAddFromCDorFloppy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoAddFromCDorFloppy-DFProperties-End -->

<!-- NoAddFromCDorFloppy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAddFromCDorFloppy |
| Friendly Name | Hide the "Add a program from CD-ROM or floppy disk" option |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoAddFromCDorFloppy |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoAddFromCDorFloppy-AdmxBacked-End -->

<!-- NoAddFromCDorFloppy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoAddFromCDorFloppy-Examples-End -->

<!-- NoAddFromCDorFloppy-End -->

<!-- NoAddFromInternet-Begin -->
## NoAddFromInternet

<!-- NoAddFromInternet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoAddFromInternet-Applicability-End -->

<!-- NoAddFromInternet-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoAddFromInternet
```
<!-- NoAddFromInternet-OmaUri-End -->

<!-- NoAddFromInternet-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the "Add programs from Microsoft" section from the Add New Programs page. This setting prevents users from using Add or Remove Programs to connect to Windows Update.

If you disable this setting or don't configure it, "Add programs from Microsoft" is available to all users.

This setting doesn't prevent users from using other tools and methods to connect to Windows Update.

> [!NOTE]
> If the "Hide Add New Programs page" setting is enabled, this setting is ignored.
<!-- NoAddFromInternet-Description-End -->

<!-- NoAddFromInternet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoAddFromInternet-Editable-End -->

<!-- NoAddFromInternet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoAddFromInternet-DFProperties-End -->

<!-- NoAddFromInternet-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAddFromInternet |
| Friendly Name | Hide the "Add programs from Microsoft" option |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoAddFromInternet |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoAddFromInternet-AdmxBacked-End -->

<!-- NoAddFromInternet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoAddFromInternet-Examples-End -->

<!-- NoAddFromInternet-End -->

<!-- NoAddFromNetwork-Begin -->
## NoAddFromNetwork

<!-- NoAddFromNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoAddFromNetwork-Applicability-End -->

<!-- NoAddFromNetwork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoAddFromNetwork
```
<!-- NoAddFromNetwork-OmaUri-End -->

<!-- NoAddFromNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from viewing or installing published programs.

This setting removes the "Add programs from your network" section from the Add New Programs page. The "Add programs from your network" section lists published programs and provides an easy way to install them.

Published programs are those programs that the system administrator has explicitly made available to the user with a tool such as Windows Installer. Typically, system administrators publish programs to notify users that the programs are available, to recommend their use, or to enable users to install them without having to search for installation files.

- If you enable this setting, users can't tell which programs have been published by the system administrator, and they can't use Add or Remove Programs to install published programs. However, they can still install programs by using other methods, and they can view and install assigned (partially installed) programs that are offered on the desktop or on the Start menu.

- If you disable this setting or don't configure it, "Add programs from your network" is available to all users.

> [!NOTE]
> If the "Hide Add New Programs page" setting is enabled, this setting is ignored.
<!-- NoAddFromNetwork-Description-End -->

<!-- NoAddFromNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoAddFromNetwork-Editable-End -->

<!-- NoAddFromNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoAddFromNetwork-DFProperties-End -->

<!-- NoAddFromNetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAddFromNetwork |
| Friendly Name | Hide the "Add programs from your network" option |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoAddFromNetwork |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoAddFromNetwork-AdmxBacked-End -->

<!-- NoAddFromNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoAddFromNetwork-Examples-End -->

<!-- NoAddFromNetwork-End -->

<!-- NoAddPage-Begin -->
## NoAddPage

<!-- NoAddPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoAddPage-Applicability-End -->

<!-- NoAddPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoAddPage
```
<!-- NoAddPage-OmaUri-End -->

<!-- NoAddPage-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Add New Programs button from the Add or Remove Programs bar. As a result, users can't view or change the attached page.

The Add New Programs button lets users install programs published or assigned by a system administrator.

If you disable this setting or don't configure it, the Add New Programs button is available to all users.

This setting doesn't prevent users from using other tools and methods to install programs.
<!-- NoAddPage-Description-End -->

<!-- NoAddPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoAddPage-Editable-End -->

<!-- NoAddPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoAddPage-DFProperties-End -->

<!-- NoAddPage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAddPage |
| Friendly Name | Hide Add New Programs page |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoAddPage |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoAddPage-AdmxBacked-End -->

<!-- NoAddPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoAddPage-Examples-End -->

<!-- NoAddPage-End -->

<!-- NoAddRemovePrograms-Begin -->
## NoAddRemovePrograms

<!-- NoAddRemovePrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoAddRemovePrograms-Applicability-End -->

<!-- NoAddRemovePrograms-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoAddRemovePrograms
```
<!-- NoAddRemovePrograms-OmaUri-End -->

<!-- NoAddRemovePrograms-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from using Add or Remove Programs.

This setting removes Add or Remove Programs from Control Panel and removes the Add or Remove Programs item from menus.

Add or Remove Programs lets users install, uninstall, repair, add, and remove features and components of Windows 2000 Professional and a wide variety of Windows programs. Programs published or assigned to the user appear in Add or Remove Programs.

If you disable this setting or don't configure it, Add or Remove Programs is available to all users.

When enabled, this setting takes precedence over the other settings in this folder.

This setting doesn't prevent users from using other tools and methods to install or uninstall programs.
<!-- NoAddRemovePrograms-Description-End -->

<!-- NoAddRemovePrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoAddRemovePrograms-Editable-End -->

<!-- NoAddRemovePrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoAddRemovePrograms-DFProperties-End -->

<!-- NoAddRemovePrograms-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoAddRemovePrograms |
| Friendly Name | Remove Add or Remove Programs |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoAddRemovePrograms |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoAddRemovePrograms-AdmxBacked-End -->

<!-- NoAddRemovePrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoAddRemovePrograms-Examples-End -->

<!-- NoAddRemovePrograms-End -->

<!-- NoChooseProgramsPage-Begin -->
## NoChooseProgramsPage

<!-- NoChooseProgramsPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoChooseProgramsPage-Applicability-End -->

<!-- NoChooseProgramsPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoChooseProgramsPage
```
<!-- NoChooseProgramsPage-OmaUri-End -->

<!-- NoChooseProgramsPage-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Set Program Access and Defaults button from the Add or Remove Programs bar. As a result, users can't view or change the associated page.

The Set Program Access and Defaults button lets administrators specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.

If you disable this setting or don't configure it, the Set Program Access and Defaults button is available to all users.

This setting doesn't prevent users from using other tools and methods to change program access or defaults.

This setting doesn't prevent the Set Program Access and Defaults icon from appearing on the Start menu. See the "Remove Set Program Access and Defaults from Start menu" setting.
<!-- NoChooseProgramsPage-Description-End -->

<!-- NoChooseProgramsPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoChooseProgramsPage-Editable-End -->

<!-- NoChooseProgramsPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoChooseProgramsPage-DFProperties-End -->

<!-- NoChooseProgramsPage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoChooseProgramsPage |
| Friendly Name | Hide the Set Program Access and Defaults page |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoChooseProgramsPage |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoChooseProgramsPage-AdmxBacked-End -->

<!-- NoChooseProgramsPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoChooseProgramsPage-Examples-End -->

<!-- NoChooseProgramsPage-End -->

<!-- NoRemovePage-Begin -->
## NoRemovePage

<!-- NoRemovePage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRemovePage-Applicability-End -->

<!-- NoRemovePage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoRemovePage
```
<!-- NoRemovePage-OmaUri-End -->

<!-- NoRemovePage-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Change or Remove Programs button from the Add or Remove Programs bar. As a result, users can't view or change the attached page.

The Change or Remove Programs button lets users uninstall, repair, add, or remove features of installed programs.

If you disable this setting or don't configure it, the Change or Remove Programs page is available to all users.

This setting doesn't prevent users from using other tools and methods to delete or uninstall programs.
<!-- NoRemovePage-Description-End -->

<!-- NoRemovePage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRemovePage-Editable-End -->

<!-- NoRemovePage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRemovePage-DFProperties-End -->

<!-- NoRemovePage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRemovePage |
| Friendly Name | Hide Change or Remove Programs page |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoRemovePage |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoRemovePage-AdmxBacked-End -->

<!-- NoRemovePage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRemovePage-Examples-End -->

<!-- NoRemovePage-End -->

<!-- NoServices-Begin -->
## NoServices

<!-- NoServices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoServices-Applicability-End -->

<!-- NoServices-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoServices
```
<!-- NoServices-OmaUri-End -->

<!-- NoServices-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from using Add or Remove Programs to configure installed services.

This setting removes the "Set up services" section of the Add/Remove Windows Components page. The "Set up services" section lists system services that haven't been configured and offers users easy access to the configuration tools.

- If you disable this setting or don't configure it, "Set up services" appears only when there are unconfigured system services.

- If you enable this setting, "Set up services" never appears.

This setting doesn't prevent users from using other methods to configure services.

> [!NOTE]
> When "Set up services" doesn't appear, clicking the Add/Remove Windows Components button starts the Windows Component Wizard immediately. Because the only remaining option on the Add/Remove Windows Components page starts the wizard, that option is selected automatically, and the page is bypassed.

To remove "Set up services" and prevent the Windows Component Wizard from starting, enable the "Hide Add/Remove Windows Components page" setting. If the "Hide Add/Remove Windows Components page" setting is enabled, this setting is ignored.
<!-- NoServices-Description-End -->

<!-- NoServices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoServices-Editable-End -->

<!-- NoServices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoServices-DFProperties-End -->

<!-- NoServices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoServices |
| Friendly Name | Go directly to Components Wizard |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoServices |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoServices-AdmxBacked-End -->

<!-- NoServices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoServices-Examples-End -->

<!-- NoServices-End -->

<!-- NoSupportInfo-Begin -->
## NoSupportInfo

<!-- NoSupportInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSupportInfo-Applicability-End -->

<!-- NoSupportInfo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoSupportInfo
```
<!-- NoSupportInfo-OmaUri-End -->

<!-- NoSupportInfo-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes links to the Support Info dialog box from programs on the Change or Remove Programs page.

Programs listed on the Change or Remove Programs page can include a "Click here for support information" hyperlink. When clicked, the hyperlink opens a dialog box that displays troubleshooting information, including a link to the installation files and data that users need to obtain product support, such as the Product ID and version number of the program. The dialog box also includes a hyperlink to support information on the Internet, such as the Microsoft Product Support Services Web page.

If you disable this setting or don't configure it, the Support Info hyperlink appears.

> [!NOTE]
> Not all programs provide a support information hyperlink.
<!-- NoSupportInfo-Description-End -->

<!-- NoSupportInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSupportInfo-Editable-End -->

<!-- NoSupportInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSupportInfo-DFProperties-End -->

<!-- NoSupportInfo-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSupportInfo |
| Friendly Name | Remove Support Information |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoSupportInfo |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoSupportInfo-AdmxBacked-End -->

<!-- NoSupportInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSupportInfo-Examples-End -->

<!-- NoSupportInfo-End -->

<!-- NoWindowsSetupPage-Begin -->
## NoWindowsSetupPage

<!-- NoWindowsSetupPage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWindowsSetupPage-Applicability-End -->

<!-- NoWindowsSetupPage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AddRemovePrograms/NoWindowsSetupPage
```
<!-- NoWindowsSetupPage-OmaUri-End -->

<!-- NoWindowsSetupPage-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Add/Remove Windows Components button from the Add or Remove Programs bar. As a result, users can't view or change the associated page.

The Add/Remove Windows Components button lets users configure installed services and use the Windows Component Wizard to add, remove, and configure components of Windows from the installation files.

If you disable this setting or don't configure it, the Add/Remove Windows Components button is available to all users.

This setting doesn't prevent users from using other tools and methods to configure services or add or remove program components. However, this setting blocks user access to the Windows Component Wizard.
<!-- NoWindowsSetupPage-Description-End -->

<!-- NoWindowsSetupPage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWindowsSetupPage-Editable-End -->

<!-- NoWindowsSetupPage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWindowsSetupPage-DFProperties-End -->

<!-- NoWindowsSetupPage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWindowsSetupPage |
| Friendly Name | Hide Add/Remove Windows Components page |
| Location | User Configuration |
| Path | Control Panel > Add or Remove Programs |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Uninstall |
| Registry Value Name | NoWindowsSetupPage |
| ADMX File Name | AddRemovePrograms.admx |
<!-- NoWindowsSetupPage-AdmxBacked-End -->

<!-- NoWindowsSetupPage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWindowsSetupPage-Examples-End -->

<!-- NoWindowsSetupPage-End -->

<!-- ADMX_AddRemovePrograms-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AddRemovePrograms-CspMoreInfo-End -->

<!-- ADMX_AddRemovePrograms-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
