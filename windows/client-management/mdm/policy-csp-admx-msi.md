---
title: ADMX_MSI Policy CSP
description: Learn more about the ADMX_MSI Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_MSI-Begin -->
# Policy CSP - ADMX_MSI

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_MSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSI-Editable-End -->

<!-- AllowLockdownBrowse-Begin -->
## AllowLockdownBrowse

<!-- AllowLockdownBrowse-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowLockdownBrowse-Applicability-End -->

<!-- AllowLockdownBrowse-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/AllowLockdownBrowse
```
<!-- AllowLockdownBrowse-OmaUri-End -->

<!-- AllowLockdownBrowse-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to search for installation files during privileged installations.

- If you enable this policy setting, the Browse button in the "Use feature from" dialog box is enabled. As a result, users can search for installation files even when the installation program is running with elevated system privileges.

Because the installation is running with elevated system privileges, users can browse through directories that their own permissions wouldn't allow.

This policy setting doesn't affect installations that run in the user's security context. Also, see the "Remove browse dialog box for new source" policy setting.

- If you disable or don't configure this policy setting, by default, only system administrators can browse during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.
<!-- AllowLockdownBrowse-Description-End -->

<!-- AllowLockdownBrowse-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockdownBrowse-Editable-End -->

<!-- AllowLockdownBrowse-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockdownBrowse-DFProperties-End -->

<!-- AllowLockdownBrowse-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowLockdownBrowse |
| Friendly Name | Allow users to browse for source while elevated |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | AllowLockdownBrowse |
| ADMX File Name | MSI.admx |
<!-- AllowLockdownBrowse-AdmxBacked-End -->

<!-- AllowLockdownBrowse-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockdownBrowse-Examples-End -->

<!-- AllowLockdownBrowse-End -->

<!-- AllowLockdownMedia-Begin -->
## AllowLockdownMedia

<!-- AllowLockdownMedia-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowLockdownMedia-Applicability-End -->

<!-- AllowLockdownMedia-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/AllowLockdownMedia
```
<!-- AllowLockdownMedia-OmaUri-End -->

<!-- AllowLockdownMedia-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to install programs from removable media during privileged installations.

- If you enable this policy setting, all users are permitted to install programs from removable media, such as floppy disks and CD-ROMs, even when the installation program is running with elevated system privileges.

This policy setting doesn't affect installations that run in the user's security context. By default, users can install from removable media when the installation runs in their own security context.

- If you disable or don't configure this policy setting, by default, users can install programs from removable media only when the installation runs in the user's security context. During privileged installations, such as those offered on the desktop or displayed in Add or Remove Programs, only system administrators can install from removable media.

Also, see the "Prevent removable media source for any install" policy setting.
<!-- AllowLockdownMedia-Description-End -->

<!-- AllowLockdownMedia-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockdownMedia-Editable-End -->

<!-- AllowLockdownMedia-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockdownMedia-DFProperties-End -->

<!-- AllowLockdownMedia-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowLockdownMedia |
| Friendly Name | Allow users to use media source while elevated |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | AllowLockdownMedia |
| ADMX File Name | MSI.admx |
<!-- AllowLockdownMedia-AdmxBacked-End -->

<!-- AllowLockdownMedia-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockdownMedia-Examples-End -->

<!-- AllowLockdownMedia-End -->

<!-- AllowLockdownPatch-Begin -->
## AllowLockdownPatch

<!-- AllowLockdownPatch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowLockdownPatch-Applicability-End -->

<!-- AllowLockdownPatch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/AllowLockdownPatch
```
<!-- AllowLockdownPatch-OmaUri-End -->

<!-- AllowLockdownPatch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to patch elevated products.

- If you enable this policy setting, all users are permitted to install patches, even when the installation program is running with elevated system privileges. Patches are updates or upgrades that replace only those program files that have changed. Because patches can easily be vehicles for malicious programs, some installations prohibit their use.

- If you disable or don't configure this policy setting, by default, only system administrators can apply patches during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.

This policy setting doesn't affect installations that run in the user's security context. By default, users can install patches to programs that run in their own security context. Also, see the "Prohibit patching" policy setting.
<!-- AllowLockdownPatch-Description-End -->

<!-- AllowLockdownPatch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLockdownPatch-Editable-End -->

<!-- AllowLockdownPatch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowLockdownPatch-DFProperties-End -->

<!-- AllowLockdownPatch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowLockdownPatch |
| Friendly Name | Allow users to patch elevated products |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | AllowLockdownPatch |
| ADMX File Name | MSI.admx |
<!-- AllowLockdownPatch-AdmxBacked-End -->

<!-- AllowLockdownPatch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLockdownPatch-Examples-End -->

<!-- AllowLockdownPatch-End -->

<!-- DisableAutomaticApplicationShutdown-Begin -->
## DisableAutomaticApplicationShutdown

<!-- DisableAutomaticApplicationShutdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAutomaticApplicationShutdown-Applicability-End -->

<!-- DisableAutomaticApplicationShutdown-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableAutomaticApplicationShutdown
```
<!-- DisableAutomaticApplicationShutdown-OmaUri-End -->

<!-- DisableAutomaticApplicationShutdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Windows Installer's interaction with the Restart Manager. The Restart Manager API can eliminate or reduce the number of system restarts that are required to complete an installation or update.

- If you enable this policy setting, you can use the options in the Prohibit Use of Restart Manager box to control file in use detection behavior.

- The "Restart Manager On" option instructs Windows Installer to use Restart Manager to detect files in use and mitigate a system restart, when possible.

- The "Restart Manager Off" option turns off Restart Manager for file in use detection and the legacy file in use behavior is used.

- The "Restart Manager Off for Legacy App Setup" option applies to packages that were created for Windows Installer versions lesser than 4.0. This option lets those packages display the legacy files in use UI while still using Restart Manager for detection.

- If you disable or don't configure this policy setting, Windows Installer will use Restart Manager to detect files in use and mitigate a system restart, when possible.
<!-- DisableAutomaticApplicationShutdown-Description-End -->

<!-- DisableAutomaticApplicationShutdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAutomaticApplicationShutdown-Editable-End -->

<!-- DisableAutomaticApplicationShutdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAutomaticApplicationShutdown-DFProperties-End -->

<!-- DisableAutomaticApplicationShutdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAutomaticApplicationShutdown |
| Friendly Name | Prohibit use of Restart Manager |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- DisableAutomaticApplicationShutdown-AdmxBacked-End -->

<!-- DisableAutomaticApplicationShutdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAutomaticApplicationShutdown-Examples-End -->

<!-- DisableAutomaticApplicationShutdown-End -->

<!-- DisableBrowse-Begin -->
## DisableBrowse

<!-- DisableBrowse-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableBrowse-Applicability-End -->

<!-- DisableBrowse-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableBrowse
```
<!-- DisableBrowse-OmaUri-End -->

<!-- DisableBrowse-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from searching for installation files when they add features or components to an installed program.

- If you enable this policy setting, the Browse button beside the "Use feature from" list in the Windows Installer dialog box is disabled. As a result, users must select an installation file source from the "Use features from" list that the system administrator configures.

This policy setting applies even when the installation is running in the user's security context.

- If you disable or don't configure this policy setting, the Browse button is enabled when an installation is running in the user's security context. But only system administrators can browse when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.

This policy setting affects Windows Installer only. It doesn't prevent users from selecting other browsers, such as File Explorer or Network Locations, to search for installation files.

Also, see the "Enable user to browse for source while elevated" policy setting.
<!-- DisableBrowse-Description-End -->

<!-- DisableBrowse-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBrowse-Editable-End -->

<!-- DisableBrowse-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBrowse-DFProperties-End -->

<!-- DisableBrowse-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBrowse |
| Friendly Name | Remove browse dialog box for new source |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisableBrowse |
| ADMX File Name | MSI.admx |
<!-- DisableBrowse-AdmxBacked-End -->

<!-- DisableBrowse-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBrowse-Examples-End -->

<!-- DisableBrowse-End -->

<!-- DisableFlyweightPatching-Begin -->
## DisableFlyweightPatching

<!-- DisableFlyweightPatching-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableFlyweightPatching-Applicability-End -->

<!-- DisableFlyweightPatching-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableFlyweightPatching
```
<!-- DisableFlyweightPatching-OmaUri-End -->

<!-- DisableFlyweightPatching-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability to turn off all patch optimizations.

- If you enable this policy setting, all Patch Optimization options are turned off during the installation.

- If you disable or don't configure this policy setting, it enables faster application of patches by removing execution of unnecessary actions. The flyweight patching mode is primarily designed for patches that just update a few files or registry values. The Installer will analyze the patch for specific changes to determine if optimization is possible. If so, the patch will be applied using a minimal set of processing.
<!-- DisableFlyweightPatching-Description-End -->

<!-- DisableFlyweightPatching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFlyweightPatching-Editable-End -->

<!-- DisableFlyweightPatching-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableFlyweightPatching-DFProperties-End -->

<!-- DisableFlyweightPatching-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableFlyweightPatching |
| Friendly Name | Prohibit flyweight patching |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- DisableFlyweightPatching-AdmxBacked-End -->

<!-- DisableFlyweightPatching-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFlyweightPatching-Examples-End -->

<!-- DisableFlyweightPatching-End -->

<!-- DisableLoggingFromPackage-Begin -->
## DisableLoggingFromPackage

<!-- DisableLoggingFromPackage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLoggingFromPackage-Applicability-End -->

<!-- DisableLoggingFromPackage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableLoggingFromPackage
```
<!-- DisableLoggingFromPackage-OmaUri-End -->

<!-- DisableLoggingFromPackage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Windows Installer's processing of the MsiLogging property. The MsiLogging property in an installation package can be used to enable automatic logging of all install operations for the package.

- If you enable this policy setting, you can use the options in the Disable logging via package settings box to control automatic logging via package settings behavior.

- The "Logging via package settings on" option instructs Windows Installer to automatically generate log files for packages that include the MsiLogging property.

- The "Logging via package settings off" option turns off the automatic logging behavior when specified via the MsiLogging policy. Log files can still be generated using the logging command line switch or the Logging policy.

- If you disable or don't configure this policy setting, Windows Installer will automatically generate log files for those packages that include the MsiLogging property.
<!-- DisableLoggingFromPackage-Description-End -->

<!-- DisableLoggingFromPackage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLoggingFromPackage-Editable-End -->

<!-- DisableLoggingFromPackage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLoggingFromPackage-DFProperties-End -->

<!-- DisableLoggingFromPackage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLoggingFromPackage |
| Friendly Name | Turn off logging via package settings |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- DisableLoggingFromPackage-AdmxBacked-End -->

<!-- DisableLoggingFromPackage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLoggingFromPackage-Examples-End -->

<!-- DisableLoggingFromPackage-End -->

<!-- DisableMedia-Begin -->
## DisableMedia

<!-- DisableMedia-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableMedia-Applicability-End -->

<!-- DisableMedia-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableMedia
```
<!-- DisableMedia-OmaUri-End -->

<!-- DisableMedia-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from installing any programs from removable media.

- If you enable this policy setting, if a user tries to install a program from removable media, such as CD-ROMs, floppy disks, and DVDs, a message appears stating that the feature can't be found.

This policy setting applies even when the installation is running in the user's security context.

- If you disable or don't configure this policy setting, users can install from removable media when the installation is running in their own security context, but only system administrators can use removable media when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.

Also, see the "Enable user to use media source while elevated" and "Hide the 'Add a program from CD-ROM or floppy disk' option" policy settings.
<!-- DisableMedia-Description-End -->

<!-- DisableMedia-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableMedia-Editable-End -->

<!-- DisableMedia-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableMedia-DFProperties-End -->

<!-- DisableMedia-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableMedia |
| Friendly Name | Prevent removable media source for any installation |
| Location | User Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisableMedia |
| ADMX File Name | MSI.admx |
<!-- DisableMedia-AdmxBacked-End -->

<!-- DisableMedia-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableMedia-Examples-End -->

<!-- DisableMedia-End -->

<!-- DisableMSI-Begin -->
## DisableMSI

<!-- DisableMSI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableMSI-Applicability-End -->

<!-- DisableMSI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableMSI
```
<!-- DisableMSI-OmaUri-End -->

<!-- DisableMSI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting restricts the use of Windows Installer.

If you enable this policy setting, you can prevent users from installing software on their systems or permit users to install only those programs offered by a system administrator. You can use the options in the Disable Windows Installer box to establish an installation setting.

- The "Never" option indicates Windows Installer is fully enabled. Users can install and upgrade software. This is the default behavior for Windows Installer on Windows 2000 Professional, Windows XP Professional and Windows Vista when the policy isn't configured.

- The "For non-managed applications only" option permits users to install only those programs that a system administrator assigns (offers on the desktop) or publishes (adds them to Add or Remove Programs). This is the default behavior of Windows Installer on Windows Server 2003 family when the policy isn't configured.

- The "Always" option indicates that Windows Installer is disabled.

This policy setting affects Windows Installer only. It doesn't prevent users from using other methods to install and upgrade programs.
<!-- DisableMSI-Description-End -->

<!-- DisableMSI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableMSI-Editable-End -->

<!-- DisableMSI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableMSI-DFProperties-End -->

<!-- DisableMSI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableMSI |
| Friendly Name | Turn off Windows Installer |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- DisableMSI-AdmxBacked-End -->

<!-- DisableMSI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableMSI-Examples-End -->

<!-- DisableMSI-End -->

<!-- DisablePatch-Begin -->
## DisablePatch

<!-- DisablePatch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisablePatch-Applicability-End -->

<!-- DisablePatch-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisablePatch
```
<!-- DisablePatch-OmaUri-End -->

<!-- DisablePatch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents users from using Windows Installer to install patches.

- If you enable this policy setting, users are prevented from using Windows Installer to install patches. Patches are updates or upgrades that replace only those program files that have changed. Because patches can be easy vehicles for malicious programs, some installations prohibit their use.

> [!NOTE]
> This policy setting applies only to installations that run in the user's security context.

- If you disable or don't configure this policy setting, by default, users who aren't system administrators can't apply patches to installations that run with elevated system privileges, such as those offered on the desktop or in Add or Remove Programs.

Also, see the "Enable user to patch elevated products" policy setting.
<!-- DisablePatch-Description-End -->

<!-- DisablePatch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePatch-Editable-End -->

<!-- DisablePatch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisablePatch-DFProperties-End -->

<!-- DisablePatch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePatch |
| Friendly Name | Prevent users from using Windows Installer to install updates and upgrades |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisablePatch |
| ADMX File Name | MSI.admx |
<!-- DisablePatch-AdmxBacked-End -->

<!-- DisablePatch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePatch-Examples-End -->

<!-- DisablePatch-End -->

<!-- DisableRollback_1-Begin -->
## DisableRollback_1

<!-- DisableRollback_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRollback_1-Applicability-End -->

<!-- DisableRollback_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableRollback_1
```
<!-- DisableRollback_1-OmaUri-End -->

<!-- DisableRollback_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prohibits Windows Installer from generating and saving the files it needs to reverse an interrupted or unsuccessful installation.

- If you enable this policy setting, Windows Installer is prevented from recording the original state of the system and sequence of changes it makes during installation. It also prevents Windows Installer from retaining files it intends to delete later. As a result, Windows Installer can't restore the computer to its original state if the installation doesn't complete.

This policy setting is designed to reduce the amount of temporary disk space required to install programs. Also, it prevents malicious users from interrupting an installation to gather data about the internal state of the computer or to search secure system files. However, because an incomplete installation can render the system or a program inoperable, don't use this policy setting unless it's essential.

This policy setting appears in the Computer Configuration and User Configuration folders.

- If the policy setting is enabled in either folder, it's considered be enabled, even if it's explicitly disabled in the other folder.
<!-- DisableRollback_1-Description-End -->

<!-- DisableRollback_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRollback_1-Editable-End -->

<!-- DisableRollback_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRollback_1-DFProperties-End -->

<!-- DisableRollback_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRollback_1 |
| Friendly Name | Prohibit rollback |
| Location | User Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisableRollback |
| ADMX File Name | MSI.admx |
<!-- DisableRollback_1-AdmxBacked-End -->

<!-- DisableRollback_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRollback_1-Examples-End -->

<!-- DisableRollback_1-End -->

<!-- DisableRollback_2-Begin -->
## DisableRollback_2

<!-- DisableRollback_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRollback_2-Applicability-End -->

<!-- DisableRollback_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableRollback_2
```
<!-- DisableRollback_2-OmaUri-End -->

<!-- DisableRollback_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prohibits Windows Installer from generating and saving the files it needs to reverse an interrupted or unsuccessful installation.

- If you enable this policy setting, Windows Installer is prevented from recording the original state of the system and sequence of changes it makes during installation. It also prevents Windows Installer from retaining files it intends to delete later. As a result, Windows Installer can't restore the computer to its original state if the installation doesn't complete.

This policy setting is designed to reduce the amount of temporary disk space required to install programs. Also, it prevents malicious users from interrupting an installation to gather data about the internal state of the computer or to search secure system files. However, because an incomplete installation can render the system or a program inoperable, don't use this policy setting unless it's essential.

This policy setting appears in the Computer Configuration and User Configuration folders.

- If the policy setting is enabled in either folder, it's considered be enabled, even if it's explicitly disabled in the other folder.
<!-- DisableRollback_2-Description-End -->

<!-- DisableRollback_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRollback_2-Editable-End -->

<!-- DisableRollback_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRollback_2-DFProperties-End -->

<!-- DisableRollback_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRollback_2 |
| Friendly Name | Prohibit rollback |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisableRollback |
| ADMX File Name | MSI.admx |
<!-- DisableRollback_2-AdmxBacked-End -->

<!-- DisableRollback_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRollback_2-Examples-End -->

<!-- DisableRollback_2-End -->

<!-- DisableSharedComponent-Begin -->
## DisableSharedComponent

<!-- DisableSharedComponent-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSharedComponent-Applicability-End -->

<!-- DisableSharedComponent-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/DisableSharedComponent
```
<!-- DisableSharedComponent-OmaUri-End -->

<!-- DisableSharedComponent-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability to turn off shared components.

- If you enable this policy setting, no packages on the system get the shared component functionality enabled by the msidbComponentAttributesShared attribute in the Component Table.

- If you disable or don't configure this policy setting, by default, the shared component functionality is allowed.
<!-- DisableSharedComponent-Description-End -->

<!-- DisableSharedComponent-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSharedComponent-Editable-End -->

<!-- DisableSharedComponent-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSharedComponent-DFProperties-End -->

<!-- DisableSharedComponent-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSharedComponent |
| Friendly Name | Turn off shared components |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisableSharedComponent |
| ADMX File Name | MSI.admx |
<!-- DisableSharedComponent-AdmxBacked-End -->

<!-- DisableSharedComponent-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSharedComponent-Examples-End -->

<!-- DisableSharedComponent-End -->

<!-- MSI_DisableLUAPatching-Begin -->
## MSI_DisableLUAPatching

<!-- MSI_DisableLUAPatching-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSI_DisableLUAPatching-Applicability-End -->

<!-- MSI_DisableLUAPatching-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSI_DisableLUAPatching
```
<!-- MSI_DisableLUAPatching-OmaUri-End -->

<!-- MSI_DisableLUAPatching-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability of non-administrators to install updates that have been digitally signed by the application vendor.

Non-administrator updates provide a mechanism for the author of an application to create digitally signed updates that can be applied by non-privileged users.

- If you enable this policy setting, only administrators or users with administrative privileges can apply updates to Windows Installer based applications.

- If you disable or don't configure this policy setting, users without administrative privileges can install non-administrator updates.
<!-- MSI_DisableLUAPatching-Description-End -->

<!-- MSI_DisableLUAPatching-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSI_DisableLUAPatching-Editable-End -->

<!-- MSI_DisableLUAPatching-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSI_DisableLUAPatching-DFProperties-End -->

<!-- MSI_DisableLUAPatching-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSI_DisableLUAPatching |
| Friendly Name | Prohibit non-administrators from applying vendor signed updates |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisableLUAPatching |
| ADMX File Name | MSI.admx |
<!-- MSI_DisableLUAPatching-AdmxBacked-End -->

<!-- MSI_DisableLUAPatching-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSI_DisableLUAPatching-Examples-End -->

<!-- MSI_DisableLUAPatching-End -->

<!-- MSI_DisablePatchUninstall-Begin -->
## MSI_DisablePatchUninstall

<!-- MSI_DisablePatchUninstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSI_DisablePatchUninstall-Applicability-End -->

<!-- MSI_DisablePatchUninstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSI_DisablePatchUninstall
```
<!-- MSI_DisablePatchUninstall-OmaUri-End -->

<!-- MSI_DisablePatchUninstall-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability for users or administrators to remove Windows Installer based updates.

This policy setting should be used if you need to maintain a tight control over updates. One example is a lockdown environment where you want to ensure that updates once installed can't be removed by users or administrators.

- If you enable this policy setting, updates can't be removed from the computer by a user or an administrator. The Windows Installer can still remove an update that's no longer applicable to the product.

- If you disable or don't configure this policy setting, a user can remove an update from the computer only if the user has been granted privileges to remove the update. This can depend on whether the user is an administrator, whether "Disable Windows Installer" and "Always install with elevated privileges" policy settings are set, and whether the update was installed in a per-user managed, per-user unmanaged, or per-machine context".
<!-- MSI_DisablePatchUninstall-Description-End -->

<!-- MSI_DisablePatchUninstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSI_DisablePatchUninstall-Editable-End -->

<!-- MSI_DisablePatchUninstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSI_DisablePatchUninstall-DFProperties-End -->

<!-- MSI_DisablePatchUninstall-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSI_DisablePatchUninstall |
| Friendly Name | Prohibit removal of updates |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | DisablePatchUninstall |
| ADMX File Name | MSI.admx |
<!-- MSI_DisablePatchUninstall-AdmxBacked-End -->

<!-- MSI_DisablePatchUninstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSI_DisablePatchUninstall-Examples-End -->

<!-- MSI_DisablePatchUninstall-End -->

<!-- MSI_DisableSRCheckPoints-Begin -->
## MSI_DisableSRCheckPoints

<!-- MSI_DisableSRCheckPoints-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSI_DisableSRCheckPoints-Applicability-End -->

<!-- MSI_DisableSRCheckPoints-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSI_DisableSRCheckPoints
```
<!-- MSI_DisableSRCheckPoints-OmaUri-End -->

<!-- MSI_DisableSRCheckPoints-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prevents Windows Installer from creating a System Restore checkpoint each time an application is installed. System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files.

- If you enable this policy setting, the Windows Installer doesn't generate System Restore checkpoints when installing applications.

- If you disable or don't configure this policy setting, by default, the Windows Installer automatically creates a System Restore checkpoint each time an application is installed, so that users can restore their computer to the state it was in before installing the application.
<!-- MSI_DisableSRCheckPoints-Description-End -->

<!-- MSI_DisableSRCheckPoints-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSI_DisableSRCheckPoints-Editable-End -->

<!-- MSI_DisableSRCheckPoints-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSI_DisableSRCheckPoints-DFProperties-End -->

<!-- MSI_DisableSRCheckPoints-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSI_DisableSRCheckPoints |
| Friendly Name | Turn off creation of System Restore checkpoints |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | LimitSystemRestoreCheckpointing |
| ADMX File Name | MSI.admx |
<!-- MSI_DisableSRCheckPoints-AdmxBacked-End -->

<!-- MSI_DisableSRCheckPoints-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSI_DisableSRCheckPoints-Examples-End -->

<!-- MSI_DisableSRCheckPoints-End -->

<!-- MSI_DisableUserInstalls-Begin -->
## MSI_DisableUserInstalls

<!-- MSI_DisableUserInstalls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSI_DisableUserInstalls-Applicability-End -->

<!-- MSI_DisableUserInstalls-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSI_DisableUserInstalls
```
<!-- MSI_DisableUserInstalls-OmaUri-End -->

<!-- MSI_DisableUserInstalls-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure user installs. To configure this policy setting, set it to enabled and use the drop-down list to select the behavior you want.

- If you don't configure this policy setting, or if the policy setting is enabled and "Allow User Installs" is selected, the installer allows and makes use of products that are installed per user, and products that are installed per computer. If the installer finds a per-user install of an application, this hides a per-computer installation of that same product.

- If you enable this policy setting and "Hide User Installs" is selected, the installer ignores per-user applications. This causes a per-computer installed application to be visible to users, even if those users have a per-user install of the product registered in their user profile.
<!-- MSI_DisableUserInstalls-Description-End -->

<!-- MSI_DisableUserInstalls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSI_DisableUserInstalls-Editable-End -->

<!-- MSI_DisableUserInstalls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSI_DisableUserInstalls-DFProperties-End -->

<!-- MSI_DisableUserInstalls-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSI_DisableUserInstalls |
| Friendly Name | Prohibit User Installs |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- MSI_DisableUserInstalls-AdmxBacked-End -->

<!-- MSI_DisableUserInstalls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSI_DisableUserInstalls-Examples-End -->

<!-- MSI_DisableUserInstalls-End -->

<!-- MSI_EnforceUpgradeComponentRules-Begin -->
## MSI_EnforceUpgradeComponentRules

<!-- MSI_EnforceUpgradeComponentRules-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSI_EnforceUpgradeComponentRules-Applicability-End -->

<!-- MSI_EnforceUpgradeComponentRules-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSI_EnforceUpgradeComponentRules
```
<!-- MSI_EnforceUpgradeComponentRules-OmaUri-End -->

<!-- MSI_EnforceUpgradeComponentRules-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting causes the Windows Installer to enforce strict rules for component upgrades.

- If you enable this policy setting, strict upgrade rules will be enforced by the Windows Installer which may cause some upgrades to fail. Upgrades can fail if they attempt to do one of the following:

(1) Remove a component from a feature.

This can also occur if you change the GUID of a component. The component identified by the original GUID appears to be removed and the component as identified by the new GUID appears as a new component.

(2) Add a new feature to the top or middle of an existing feature tree.

The new feature must be added as a new leaf feature to an existing feature tree.

- If you disable or don't configure this policy setting, the Windows Installer will use less restrictive rules for component upgrades.
<!-- MSI_EnforceUpgradeComponentRules-Description-End -->

<!-- MSI_EnforceUpgradeComponentRules-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSI_EnforceUpgradeComponentRules-Editable-End -->

<!-- MSI_EnforceUpgradeComponentRules-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSI_EnforceUpgradeComponentRules-DFProperties-End -->

<!-- MSI_EnforceUpgradeComponentRules-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSI_EnforceUpgradeComponentRules |
| Friendly Name | Enforce upgrade component rules |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | EnforceUpgradeComponentRules |
| ADMX File Name | MSI.admx |
<!-- MSI_EnforceUpgradeComponentRules-AdmxBacked-End -->

<!-- MSI_EnforceUpgradeComponentRules-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSI_EnforceUpgradeComponentRules-Examples-End -->

<!-- MSI_EnforceUpgradeComponentRules-End -->

<!-- MSI_MaxPatchCacheSize-Begin -->
## MSI_MaxPatchCacheSize

<!-- MSI_MaxPatchCacheSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSI_MaxPatchCacheSize-Applicability-End -->

<!-- MSI_MaxPatchCacheSize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSI_MaxPatchCacheSize
```
<!-- MSI_MaxPatchCacheSize-OmaUri-End -->

<!-- MSI_MaxPatchCacheSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the percentage of disk space available to the Windows Installer baseline file cache.

The Windows Installer uses the baseline file cache to save baseline files modified by binary delta difference updates. The cache is used to retrieve the baseline file for future updates. The cache eliminates user prompts for source media when new updates are applied.

- If you enable this policy setting you can modify the maximum size of the Windows Installer baseline file cache.

If you set the baseline cache size to 0, the Windows Installer will stop populating the baseline cache for new updates. The existing cached files will remain on disk and will be deleted when the product is removed.

If you set the baseline cache to 100, the Windows Installer will use available free space for the baseline file cache.

- If you disable or don't configure this policy setting, the Windows Installer will uses a default value of 10 percent for the baseline file cache maximum size.
<!-- MSI_MaxPatchCacheSize-Description-End -->

<!-- MSI_MaxPatchCacheSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSI_MaxPatchCacheSize-Editable-End -->

<!-- MSI_MaxPatchCacheSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSI_MaxPatchCacheSize-DFProperties-End -->

<!-- MSI_MaxPatchCacheSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSI_MaxPatchCacheSize |
| Friendly Name | Control maximum size of baseline file cache |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- MSI_MaxPatchCacheSize-AdmxBacked-End -->

<!-- MSI_MaxPatchCacheSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSI_MaxPatchCacheSize-Examples-End -->

<!-- MSI_MaxPatchCacheSize-End -->

<!-- MsiDisableEmbeddedUI-Begin -->
## MsiDisableEmbeddedUI

<!-- MsiDisableEmbeddedUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MsiDisableEmbeddedUI-Applicability-End -->

<!-- MsiDisableEmbeddedUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MsiDisableEmbeddedUI
```
<!-- MsiDisableEmbeddedUI-OmaUri-End -->

<!-- MsiDisableEmbeddedUI-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the ability to prevent embedded UI.

- If you enable this policy setting, no packages on the system can run embedded UI.

- If you disable or don't configure this policy setting, embedded UI is allowed to run.
<!-- MsiDisableEmbeddedUI-Description-End -->

<!-- MsiDisableEmbeddedUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MsiDisableEmbeddedUI-Editable-End -->

<!-- MsiDisableEmbeddedUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MsiDisableEmbeddedUI-DFProperties-End -->

<!-- MsiDisableEmbeddedUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MsiDisableEmbeddedUI |
| Friendly Name | Prevent embedded UI |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | MsiDisableEmbeddedUI |
| ADMX File Name | MSI.admx |
<!-- MsiDisableEmbeddedUI-AdmxBacked-End -->

<!-- MsiDisableEmbeddedUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MsiDisableEmbeddedUI-Examples-End -->

<!-- MsiDisableEmbeddedUI-End -->

<!-- MSILogging-Begin -->
## MSILogging

<!-- MSILogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MSILogging-Applicability-End -->

<!-- MSILogging-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/MSILogging
```
<!-- MSILogging-OmaUri-End -->

<!-- MSILogging-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the types of events that Windows Installer records in its transaction log for each installation. The log, Msi.log, appears in the Temp directory of the system volume.

When you enable this policy setting, you can specify the types of events you want Windows Installer to record. To indicate that an event type is recorded, type the letter representing the event type. You can type the letters in any order and list as many or as few event types as you want.

To disable logging, delete all of the letters from the box.

If you disable or don't configure this policy setting, Windows Installer logs the default event types, represented by the letters "iweap".
<!-- MSILogging-Description-End -->

<!-- MSILogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MSILogging-Editable-End -->

<!-- MSILogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MSILogging-DFProperties-End -->

<!-- MSILogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MSILogging |
| Friendly Name | Specify the types of events Windows Installer records in its transaction log |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- MSILogging-AdmxBacked-End -->

<!-- MSILogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MSILogging-Examples-End -->

<!-- MSILogging-End -->

<!-- SafeForScripting-Begin -->
## SafeForScripting

<!-- SafeForScripting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SafeForScripting-Applicability-End -->

<!-- SafeForScripting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/SafeForScripting
```
<!-- SafeForScripting-OmaUri-End -->

<!-- SafeForScripting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows Web-based programs to install software on the computer without notifying the user.

- If you disable or don't configure this policy setting, by default, when a script hosted by an Internet browser tries to install a program on the system, the system warns users and allows them to select or refuse the installation.

- If you enable this policy setting, the warning is suppressed and allows the installation to proceed.

This policy setting is designed for enterprises that use Web-based tools to distribute programs to their employees. However, because this policy setting can pose a security risk, it should be applied cautiously.
<!-- SafeForScripting-Description-End -->

<!-- SafeForScripting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SafeForScripting-Editable-End -->

<!-- SafeForScripting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SafeForScripting-DFProperties-End -->

<!-- SafeForScripting-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SafeForScripting |
| Friendly Name | Prevent Internet Explorer security prompt for Windows Installer scripts |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | SafeForScripting |
| ADMX File Name | MSI.admx |
<!-- SafeForScripting-AdmxBacked-End -->

<!-- SafeForScripting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SafeForScripting-Examples-End -->

<!-- SafeForScripting-End -->

<!-- SearchOrder-Begin -->
## SearchOrder

<!-- SearchOrder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SearchOrder-Applicability-End -->

<!-- SearchOrder-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MSI/SearchOrder
```
<!-- SearchOrder-OmaUri-End -->

<!-- SearchOrder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the order in which Windows Installer searches for installation files.

- If you disable or don't configure this policy setting, by default, the Windows Installer searches the network first, then removable media (floppy drive, CD-ROM, or DVD), and finally, the Internet (URL).

- If you enable this policy setting, you can change the search order by specifying the letters representing each file source in the order that you want Windows Installer to search:

- "n" represents the network;

- "m" represents media;

- "u" represents URL, or the Internet.

To exclude a file source, omit or delete the letter representing that source type.
<!-- SearchOrder-Description-End -->

<!-- SearchOrder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SearchOrder-Editable-End -->

<!-- SearchOrder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SearchOrder-DFProperties-End -->

<!-- SearchOrder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SearchOrder |
| Friendly Name | Specify the order in which Windows Installer searches for installation files |
| Location | User Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| ADMX File Name | MSI.admx |
<!-- SearchOrder-AdmxBacked-End -->

<!-- SearchOrder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SearchOrder-Examples-End -->

<!-- SearchOrder-End -->

<!-- TransformsSecure-Begin -->
## TransformsSecure

<!-- TransformsSecure-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TransformsSecure-Applicability-End -->

<!-- TransformsSecure-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MSI/TransformsSecure
```
<!-- TransformsSecure-OmaUri-End -->

<!-- TransformsSecure-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting saves copies of transform files in a secure location on the local computer.

Transform files consist of instructions to modify or customize a program during installation.

- If you enable this policy setting, the transform file is saved in a secure location on the user's computer.

- If you don't configure this policy setting on Windows Server 2003, Windows Installer requires the transform file in order to repeat an installation in which the transform file was used, therefore, the user must be using the same computer or be connected to the original or identical media to reinstall, remove, or repair the installation.

This policy setting is designed for enterprises to prevent unauthorized or malicious editing of transform files.

- If you disable this policy setting, Windows Installer stores transform files in the Application Data directory in the user's profile.

- If you don't configure this policy setting on Windows 2000 Professional, Windows XP Professional and Windows Vista, when a user reinstalls, removes, or repairs an installation, the transform file is available, even if the user is on a different computer or isn't connected to the network.
<!-- TransformsSecure-Description-End -->

<!-- TransformsSecure-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TransformsSecure-Editable-End -->

<!-- TransformsSecure-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TransformsSecure-DFProperties-End -->

<!-- TransformsSecure-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TransformsSecure |
| Friendly Name | Save copies of transform files in a secure location on workstation |
| Location | Computer Configuration |
| Path | Windows Components > Windows Installer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Installer |
| Registry Value Name | TransformsSecure |
| ADMX File Name | MSI.admx |
<!-- TransformsSecure-AdmxBacked-End -->

<!-- TransformsSecure-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TransformsSecure-Examples-End -->

<!-- TransformsSecure-End -->

<!-- ADMX_MSI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MSI-CspMoreInfo-End -->

<!-- ADMX_MSI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
