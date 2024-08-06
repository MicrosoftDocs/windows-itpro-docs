---
title: ADMX_DeviceInstallation Policy CSP
description: Learn more about the ADMX_DeviceInstallation Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DeviceInstallation-Begin -->
# Policy CSP - ADMX_DeviceInstallation

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DeviceInstallation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceInstallation-Editable-End -->

<!-- DeviceInstall_AllowAdminInstall-Begin -->
## DeviceInstall_AllowAdminInstall

<!-- DeviceInstall_AllowAdminInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_AllowAdminInstall-Applicability-End -->

<!-- DeviceInstall_AllowAdminInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_AllowAdminInstall
```
<!-- DeviceInstall_AllowAdminInstall-OmaUri-End -->

<!-- DeviceInstall_AllowAdminInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to determine whether members of the Administrators group can install and update the drivers for any device, regardless of other policy settings.

- If you enable this policy setting, members of the Administrators group can use the Add Hardware wizard or the Update Driver wizard to install and update the drivers for any device.

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, members of the Administrators group are subject to all policy settings that restrict device installation.
<!-- DeviceInstall_AllowAdminInstall-Description-End -->

<!-- DeviceInstall_AllowAdminInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_AllowAdminInstall-Editable-End -->

<!-- DeviceInstall_AllowAdminInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_AllowAdminInstall-DFProperties-End -->

<!-- DeviceInstall_AllowAdminInstall-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_AllowAdminInstall |
| Friendly Name | Allow administrators to override Device Installation Restriction policies |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | AllowAdminInstall |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_AllowAdminInstall-AdmxBacked-End -->

<!-- DeviceInstall_AllowAdminInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_AllowAdminInstall-Examples-End -->

<!-- DeviceInstall_AllowAdminInstall-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-Begin -->
## DeviceInstall_DeniedPolicy_DetailText

<!-- DeviceInstall_DeniedPolicy_DetailText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_DeniedPolicy_DetailText-Applicability-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_DetailText
```
<!-- DeviceInstall_DeniedPolicy_DetailText-OmaUri-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to display a custom message to users in a notification when a device installation is attempted and a policy setting prevents the installation.

- If you enable this policy setting, Windows displays the text you type in the Detail Text box when a policy setting prevents device installation.

- If you disable or don't configure this policy setting, Windows displays a default message when a policy setting prevents device installation.
<!-- DeviceInstall_DeniedPolicy_DetailText-Description-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_DeniedPolicy_DetailText-Editable-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_DeniedPolicy_DetailText-DFProperties-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_DeniedPolicy_DetailText |
| Friendly Name | Display a custom message when installation is prevented by a policy setting |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DeniedPolicy |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_DeniedPolicy_DetailText-AdmxBacked-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_DeniedPolicy_DetailText-Examples-End -->

<!-- DeviceInstall_DeniedPolicy_DetailText-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-Begin -->
## DeviceInstall_DeniedPolicy_SimpleText

<!-- DeviceInstall_DeniedPolicy_SimpleText-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_DeniedPolicy_SimpleText-Applicability-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_DeniedPolicy_SimpleText
```
<!-- DeviceInstall_DeniedPolicy_SimpleText-OmaUri-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to display a custom message title in a notification when a device installation is attempted and a policy setting prevents the installation.

- If you enable this policy setting, Windows displays the text you type in the Main Text box as the title text of a notification when a policy setting prevents device installation.

- If you disable or don't configure this policy setting, Windows displays a default title in a notification when a policy setting prevents device installation.
<!-- DeviceInstall_DeniedPolicy_SimpleText-Description-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_DeniedPolicy_SimpleText-Editable-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_DeniedPolicy_SimpleText-DFProperties-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_DeniedPolicy_SimpleText |
| Friendly Name | Display a custom message title when device installation is prevented by a policy setting |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DeniedPolicy |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_DeniedPolicy_SimpleText-AdmxBacked-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_DeniedPolicy_SimpleText-Examples-End -->

<!-- DeviceInstall_DeniedPolicy_SimpleText-End -->

<!-- DeviceInstall_InstallTimeout-Begin -->
## DeviceInstall_InstallTimeout

<!-- DeviceInstall_InstallTimeout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_InstallTimeout-Applicability-End -->

<!-- DeviceInstall_InstallTimeout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_InstallTimeout
```
<!-- DeviceInstall_InstallTimeout-OmaUri-End -->

<!-- DeviceInstall_InstallTimeout-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the number of seconds Windows waits for a device installation task to complete.

- If you enable this policy setting, Windows waits for the number of seconds you specify before terminating the installation.

- If you disable or don't configure this policy setting, Windows waits 240 seconds for a device installation task to complete before terminating the installation.
<!-- DeviceInstall_InstallTimeout-Description-End -->

<!-- DeviceInstall_InstallTimeout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_InstallTimeout-Editable-End -->

<!-- DeviceInstall_InstallTimeout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_InstallTimeout-DFProperties-End -->

<!-- DeviceInstall_InstallTimeout-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_InstallTimeout |
| Friendly Name | Configure device installation time-out |
| Location | Computer Configuration |
| Path | System > Device Installation |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Settings |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_InstallTimeout-AdmxBacked-End -->

<!-- DeviceInstall_InstallTimeout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_InstallTimeout-Examples-End -->

<!-- DeviceInstall_InstallTimeout-End -->

<!-- DeviceInstall_Policy_RebootTime-Begin -->
## DeviceInstall_Policy_RebootTime

<!-- DeviceInstall_Policy_RebootTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_Policy_RebootTime-Applicability-End -->

<!-- DeviceInstall_Policy_RebootTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_Policy_RebootTime
```
<!-- DeviceInstall_Policy_RebootTime-OmaUri-End -->

<!-- DeviceInstall_Policy_RebootTime-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting establishes the amount of time (in seconds) that the system will wait to reboot in order to enforce a change in device installation restriction policies.

- If you enable this policy setting, set the amount of seconds you want the system to wait until a reboot.

- If you disable or don't configure this policy setting, the system doesn't force a reboot.

> [!NOTE]
> If no reboot is forced, the device installation restriction right won't take effect until the system is restarted.
<!-- DeviceInstall_Policy_RebootTime-Description-End -->

<!-- DeviceInstall_Policy_RebootTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_Policy_RebootTime-Editable-End -->

<!-- DeviceInstall_Policy_RebootTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_Policy_RebootTime-DFProperties-End -->

<!-- DeviceInstall_Policy_RebootTime-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Policy_RebootTime |
| Friendly Name | Time (in seconds) to force reboot when required for policy changes to take effect |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | ForceReboot |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_Policy_RebootTime-AdmxBacked-End -->

<!-- DeviceInstall_Policy_RebootTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_Policy_RebootTime-Examples-End -->

<!-- DeviceInstall_Policy_RebootTime-End -->

<!-- DeviceInstall_Removable_Deny-Begin -->
## DeviceInstall_Removable_Deny

<!-- DeviceInstall_Removable_Deny-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_Removable_Deny-Applicability-End -->

<!-- DeviceInstall_Removable_Deny-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_Removable_Deny
```
<!-- DeviceInstall_Removable_Deny-OmaUri-End -->

<!-- DeviceInstall_Removable_Deny-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent Windows from installing removable devices. A device is considered removable when the driver for the device to which it's connected indicates that the device is removable. For example, a Universal Serial Bus (USB) device is reported to be removable by the drivers for the USB hub to which the device is connected. By default, this policy setting takes precedence over any other policy setting that allows Windows to install a device.

> [!NOTE]
> To enable the "Allow installation of devices using drivers that match these device setup classes", "Allow installation of devices that match any of these device IDs", and "Allow installation of devices that match any of these device instance IDs" policy settings to supersede this policy setting for applicable devices, enable the "Apply layered order of evaluation for Allow and Prevent device installation policies across all device match criteria" policy setting.

- If you enable this policy setting, Windows is prevented from installing removable devices and existing removable devices can't have their drivers updated.

- If you enable this policy setting on a remote desktop server, the policy setting affects redirection of removable devices from a remote desktop client to the remote desktop server.

- If you disable or don't configure this policy setting, Windows can install and update driver packages for removable devices as allowed or prevented by other policy settings.
<!-- DeviceInstall_Removable_Deny-Description-End -->

<!-- DeviceInstall_Removable_Deny-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_Removable_Deny-Editable-End -->

<!-- DeviceInstall_Removable_Deny-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_Removable_Deny-DFProperties-End -->

<!-- DeviceInstall_Removable_Deny-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_Removable_Deny |
| Friendly Name | Prevent installation of removable devices |
| Location | Computer Configuration |
| Path | System > Device Installation > Device Installation Restrictions |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions |
| Registry Value Name | DenyRemovableDevices |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_Removable_Deny-AdmxBacked-End -->

<!-- DeviceInstall_Removable_Deny-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_Removable_Deny-Examples-End -->

<!-- DeviceInstall_Removable_Deny-End -->

<!-- DeviceInstall_SystemRestore-Begin -->
## DeviceInstall_SystemRestore

<!-- DeviceInstall_SystemRestore-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DeviceInstall_SystemRestore-Applicability-End -->

<!-- DeviceInstall_SystemRestore-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DeviceInstall_SystemRestore
```
<!-- DeviceInstall_SystemRestore-OmaUri-End -->

<!-- DeviceInstall_SystemRestore-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent Windows from creating a system restore point during device activity that would normally prompt Windows to create a system restore point. Windows normally creates restore points for certain driver activity, such as the installation of an unsigned driver. A system restore point enables you to more easily restore your system to its state before the activity.

- If you enable this policy setting, Windows doesn't create a system restore point when one would normally be created.

- If you disable or don't configure this policy setting, Windows creates a system restore point as it normally would.
<!-- DeviceInstall_SystemRestore-Description-End -->

<!-- DeviceInstall_SystemRestore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceInstall_SystemRestore-Editable-End -->

<!-- DeviceInstall_SystemRestore-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DeviceInstall_SystemRestore-DFProperties-End -->

<!-- DeviceInstall_SystemRestore-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DeviceInstall_SystemRestore |
| Friendly Name | Prevent creation of a system restore point during device activity that would normally prompt creation of a restore point |
| Location | Computer Configuration |
| Path | System > Device Installation |
| Registry Key Name | Software\Policies\Microsoft\Windows\DeviceInstall\Settings |
| Registry Value Name | DisableSystemRestore |
| ADMX File Name | DeviceInstallation.admx |
<!-- DeviceInstall_SystemRestore-AdmxBacked-End -->

<!-- DeviceInstall_SystemRestore-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceInstall_SystemRestore-Examples-End -->

<!-- DeviceInstall_SystemRestore-End -->

<!-- DriverInstall_Classes_AllowUser-Begin -->
## DriverInstall_Classes_AllowUser

<!-- DriverInstall_Classes_AllowUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DriverInstall_Classes_AllowUser-Applicability-End -->

<!-- DriverInstall_Classes_AllowUser-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DeviceInstallation/DriverInstall_Classes_AllowUser
```
<!-- DriverInstall_Classes_AllowUser-OmaUri-End -->

<!-- DriverInstall_Classes_AllowUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies a list of device setup class GUIDs describing driver packages that non-administrator members of the built-in Users group may install on the system.

- If you enable this policy setting, members of the Users group may install new drivers for the specified device setup classes. The drivers must be signed according to Windows Driver Signing Policy, or be signed by publishers already in the TrustedPublisher store.

- If you disable or don't configure this policy setting, only members of the Administrators group are allowed to install new driver packages on the system.
<!-- DriverInstall_Classes_AllowUser-Description-End -->

<!-- DriverInstall_Classes_AllowUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DriverInstall_Classes_AllowUser-Editable-End -->

<!-- DriverInstall_Classes_AllowUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DriverInstall_Classes_AllowUser-DFProperties-End -->

<!-- DriverInstall_Classes_AllowUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DriverInstall_Classes_AllowUser |
| Friendly Name | Allow non-administrators to install drivers for these device setup classes |
| Location | Computer Configuration |
| Path | System > Driver Installation |
| Registry Key Name | Software\Policies\Microsoft\Windows\DriverInstall\Restrictions |
| Registry Value Name | AllowUserDeviceClasses |
| ADMX File Name | DeviceInstallation.admx |
<!-- DriverInstall_Classes_AllowUser-AdmxBacked-End -->

<!-- DriverInstall_Classes_AllowUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DriverInstall_Classes_AllowUser-Examples-End -->

<!-- DriverInstall_Classes_AllowUser-End -->

<!-- ADMX_DeviceInstallation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DeviceInstallation-CspMoreInfo-End -->

<!-- ADMX_DeviceInstallation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
