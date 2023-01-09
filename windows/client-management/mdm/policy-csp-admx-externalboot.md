---
title: ADMX_ExternalBoot Policy CSP
description: Learn more about the ADMX_ExternalBoot Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ExternalBoot-Begin -->
# Policy CSP - ADMX_ExternalBoot

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_ExternalBoot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ExternalBoot-Editable-End -->

<!-- PortableOperatingSystem_Hibernate-Begin -->
## PortableOperatingSystem_Hibernate

<!-- PortableOperatingSystem_Hibernate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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
<!-- PortableOperatingSystem_Hibernate-Editable-End -->

<!-- PortableOperatingSystem_Hibernate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PortableOperatingSystem_Hibernate-DFProperties-End -->

<!-- PortableOperatingSystem_Hibernate-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PortableOperatingSystem_Launcher-Applicability-End -->

<!-- PortableOperatingSystem_Launcher-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ExternalBoot/PortableOperatingSystem_Launcher
```
<!-- PortableOperatingSystem_Launcher-OmaUri-End -->

<!-- PortableOperatingSystem_Launcher-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the PC will boot to Windows To Go if a USB device containing a Windows To Go workspace is connected, and controls whether users can make changes using the Windows To Go Startup Options Control Panel item.

- If you enable this setting, booting to Windows To Go when a USB device is connected will be enabled, and users will not be able to make changes using the Windows To Go Startup Options Control Panel item.

- If you disable this setting, booting to Windows To Go when a USB device is connected will not be enabled unless a user configures the option manually in the BIOS or other boot order configuration.

- If you do not configure this setting, users who are members of the Administrators group can make changes using the Windows To Go Startup Options Control Panel item.
<!-- PortableOperatingSystem_Launcher-Description-End -->

<!-- PortableOperatingSystem_Launcher-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PortableOperatingSystem_Launcher-Editable-End -->

<!-- PortableOperatingSystem_Launcher-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PortableOperatingSystem_Launcher-DFProperties-End -->

<!-- PortableOperatingSystem_Launcher-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
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
<!-- PortableOperatingSystem_Sleep-Editable-End -->

<!-- PortableOperatingSystem_Sleep-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PortableOperatingSystem_Sleep-DFProperties-End -->

<!-- PortableOperatingSystem_Sleep-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

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
