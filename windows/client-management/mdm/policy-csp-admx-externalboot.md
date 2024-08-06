---
title: ADMX_ExternalBoot Policy CSP
description: Learn more about the ADMX_ExternalBoot Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ExternalBoot-Begin -->
# Policy CSP - ADMX_ExternalBoot

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_ExternalBoot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ExternalBoot-Editable-End -->

<!-- PortableOperatingSystem_Hibernate-Begin -->
## PortableOperatingSystem_Hibernate

<!-- PortableOperatingSystem_Hibernate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PortableOperatingSystem_Hibernate-Applicability-End -->

<!-- PortableOperatingSystem_Hibernate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ExternalBoot/PortableOperatingSystem_Hibernate
```
<!-- PortableOperatingSystem_Hibernate-OmaUri-End -->

<!-- PortableOperatingSystem_Hibernate-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether the PC can use the hibernation sleep state (S4) when started from a Windows To Go workspace.

- If you enable this setting, Windows, when started from a Windows To Go workspace, can hibernate the PC.

- If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can't hibernate the PC.
<!-- PortableOperatingSystem_Hibernate-Description-End -->

<!-- PortableOperatingSystem_Hibernate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> Windows To Go was announced as deprecated in Windows 10, version 1903, and was removed in version 2004. For more information, see [Features and functionality removed in Windows](/windows/whats-new/removed-features).
<!-- PortableOperatingSystem_Hibernate-Editable-End -->

<!-- PortableOperatingSystem_Hibernate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PortableOperatingSystem_Hibernate-DFProperties-End -->

<!-- PortableOperatingSystem_Hibernate-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PortableOperatingSystem_Hibernate |
| Friendly Name | Allow hibernate (S4) when starting from a Windows To Go workspace |
| Location | Computer Configuration |
| Path | Windows Components > Portable Operating System |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\PortableOperatingSystem |
| Registry Value Name | Hibernate |
| ADMX File Name | ExternalBoot.admx |
<!-- PortableOperatingSystem_Hibernate-AdmxBacked-End -->

<!-- PortableOperatingSystem_Hibernate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PortableOperatingSystem_Hibernate-Examples-End -->

<!-- PortableOperatingSystem_Hibernate-End -->

<!-- PortableOperatingSystem_Launcher-Begin -->
## PortableOperatingSystem_Launcher

<!-- PortableOperatingSystem_Launcher-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PortableOperatingSystem_Launcher-Applicability-End -->

<!-- PortableOperatingSystem_Launcher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ExternalBoot/PortableOperatingSystem_Launcher
```
<!-- PortableOperatingSystem_Launcher-OmaUri-End -->

<!-- PortableOperatingSystem_Launcher-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the PC will boot to Windows To Go if a USB device containing a Windows To Go workspace is connected, and controls whether users can make changes using the Windows To Go Startup Options Control Panel item.

- If you enable this setting, booting to Windows To Go when a USB device is connected will be enabled, and users won't be able to make changes using the Windows To Go Startup Options Control Panel item.

- If you disable this setting, booting to Windows To Go when a USB device is connected won't be enabled unless a user configures the option manually in the BIOS or other boot order configuration.

- If you don't configure this setting, users who are members of the Administrators group can make changes using the Windows To Go Startup Options Control Panel item.
<!-- PortableOperatingSystem_Launcher-Description-End -->

<!-- PortableOperatingSystem_Launcher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> Windows To Go was announced as deprecated in Windows 10, version 1903, and was removed in version 2004. For more information, see [Features and functionality removed in Windows](/windows/whats-new/removed-features).
<!-- PortableOperatingSystem_Launcher-Editable-End -->

<!-- PortableOperatingSystem_Launcher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PortableOperatingSystem_Launcher-DFProperties-End -->

<!-- PortableOperatingSystem_Launcher-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PortableOperatingSystem_Launcher |
| Friendly Name | Windows To Go Default Startup Options |
| Location | Computer Configuration |
| Path | Windows Components > Portable Operating System |
| Registry Key Name | Software\Policies\Microsoft\PortableOperatingSystem |
| Registry Value Name | Launcher |
| ADMX File Name | ExternalBoot.admx |
<!-- PortableOperatingSystem_Launcher-AdmxBacked-End -->

<!-- PortableOperatingSystem_Launcher-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PortableOperatingSystem_Launcher-Examples-End -->

<!-- PortableOperatingSystem_Launcher-End -->

<!-- PortableOperatingSystem_Sleep-Begin -->
## PortableOperatingSystem_Sleep

<!-- PortableOperatingSystem_Sleep-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PortableOperatingSystem_Sleep-Applicability-End -->

<!-- PortableOperatingSystem_Sleep-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ExternalBoot/PortableOperatingSystem_Sleep
```
<!-- PortableOperatingSystem_Sleep-OmaUri-End -->

<!-- PortableOperatingSystem_Sleep-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether the PC can use standby sleep states (S1-S3) when starting from a Windows To Go workspace.

- If you enable this setting, Windows, when started from a Windows To Go workspace, can't use standby states to make the PC sleep.

- If you disable or don't configure this setting, Windows, when started from a Windows To Go workspace, can use standby states to make the PC sleep.
<!-- PortableOperatingSystem_Sleep-Description-End -->

<!-- PortableOperatingSystem_Sleep-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> Windows To Go was announced as deprecated in Windows 10, version 1903, and was removed in version 2004. For more information, see [Features and functionality removed in Windows](/windows/whats-new/removed-features).
<!-- PortableOperatingSystem_Sleep-Editable-End -->

<!-- PortableOperatingSystem_Sleep-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PortableOperatingSystem_Sleep-DFProperties-End -->

<!-- PortableOperatingSystem_Sleep-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PortableOperatingSystem_Sleep |
| Friendly Name | Disallow standby sleep states (S1-S3) when starting from a Windows to Go workspace |
| Location | Computer Configuration |
| Path | Windows Components > Portable Operating System |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\PortableOperatingSystem |
| Registry Value Name | Sleep |
| ADMX File Name | ExternalBoot.admx |
<!-- PortableOperatingSystem_Sleep-AdmxBacked-End -->

<!-- PortableOperatingSystem_Sleep-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PortableOperatingSystem_Sleep-Examples-End -->

<!-- PortableOperatingSystem_Sleep-End -->

<!-- ADMX_ExternalBoot-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ExternalBoot-CspMoreInfo-End -->

<!-- ADMX_ExternalBoot-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
