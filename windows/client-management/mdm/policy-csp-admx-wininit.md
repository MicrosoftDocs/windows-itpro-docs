---
title: ADMX_WinInit Policy CSP
description: Learn more about the ADMX_WinInit Area in Policy CSP.
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

<!-- ADMX_WinInit-Begin -->
# Policy CSP - ADMX_WinInit

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WinInit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinInit-Editable-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Begin -->
## DisableNamedPipeShutdownPolicyDescription

<!-- DisableNamedPipeShutdownPolicyDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableNamedPipeShutdownPolicyDescription-Applicability-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinInit/DisableNamedPipeShutdownPolicyDescription
```
<!-- DisableNamedPipeShutdownPolicyDescription-OmaUri-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the legacy remote shutdown interface (named pipe). The named pipe remote shutdown interface is needed in order to shutdown this system from a remote Windows XP or Windows Server 2003 system.

- If you enable this policy setting, the system does not create the named pipe remote shutdown interface.

- If you disable or do not configure this policy setting, the system creates the named pipe remote shutdown interface.
<!-- DisableNamedPipeShutdownPolicyDescription-Description-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableNamedPipeShutdownPolicyDescription-Editable-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableNamedPipeShutdownPolicyDescription-DFProperties-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableNamedPipeShutdownPolicyDescription |
| Friendly Name | Turn off legacy remote shutdown interface |
| Location | Computer Configuration |
| Path | Windows Components > Shutdown Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | DisableShutdownNamedPipe |
| ADMX File Name | WinInit.admx |
<!-- DisableNamedPipeShutdownPolicyDescription-AdmxBacked-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableNamedPipeShutdownPolicyDescription-Examples-End -->

<!-- DisableNamedPipeShutdownPolicyDescription-End -->

<!-- Hiberboot-Begin -->
## Hiberboot

<!-- Hiberboot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- Hiberboot-Applicability-End -->

<!-- Hiberboot-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinInit/Hiberboot
```
<!-- Hiberboot-OmaUri-End -->

<!-- Hiberboot-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the use of fast startup.

- If you enable this policy setting, the system requires hibernate to be enabled.

- If you disable or do not configure this policy setting, the local setting is used.
<!-- Hiberboot-Description-End -->

<!-- Hiberboot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Hiberboot-Editable-End -->

<!-- Hiberboot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Hiberboot-DFProperties-End -->

<!-- Hiberboot-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Hiberboot |
| Friendly Name | Require use of fast startup |
| Location | Computer Configuration |
| Path | System > Shutdown |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | HiberbootEnabled |
| ADMX File Name | WinInit.admx |
<!-- Hiberboot-AdmxBacked-End -->

<!-- Hiberboot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Hiberboot-Examples-End -->

<!-- Hiberboot-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Begin -->
## ShutdownTimeoutHungSessionsDescription

<!-- ShutdownTimeoutHungSessionsDescription-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShutdownTimeoutHungSessionsDescription-Applicability-End -->

<!-- ShutdownTimeoutHungSessionsDescription-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WinInit/ShutdownTimeoutHungSessionsDescription
```
<!-- ShutdownTimeoutHungSessionsDescription-OmaUri-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the number of minutes the system waits for the hung logon sessions before proceeding with the system shutdown.

- If you enable this policy setting, the system waits for the hung logon sessions for the number of minutes specified.

- If you disable or do not configure this policy setting, the default timeout value is 3 minutes for workstations and 15 minutes for servers.
<!-- ShutdownTimeoutHungSessionsDescription-Description-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShutdownTimeoutHungSessionsDescription-Editable-End -->

<!-- ShutdownTimeoutHungSessionsDescription-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShutdownTimeoutHungSessionsDescription-DFProperties-End -->

<!-- ShutdownTimeoutHungSessionsDescription-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShutdownTimeoutHungSessionsDescription |
| Friendly Name | Timeout for hung logon sessions during shutdown |
| Location | Computer Configuration |
| Path | Windows Components > Shutdown Options |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| ADMX File Name | WinInit.admx |
<!-- ShutdownTimeoutHungSessionsDescription-AdmxBacked-End -->

<!-- ShutdownTimeoutHungSessionsDescription-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShutdownTimeoutHungSessionsDescription-Examples-End -->

<!-- ShutdownTimeoutHungSessionsDescription-End -->

<!-- ADMX_WinInit-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WinInit-CspMoreInfo-End -->

<!-- ADMX_WinInit-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
