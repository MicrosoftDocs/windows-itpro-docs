---
title: ServiceControlManager Policy CSP
description: Learn more about the ServiceControlManager Area in Policy CSP.
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

<!-- ServiceControlManager-Begin -->
# Policy CSP - ServiceControlManager

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ServiceControlManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ServiceControlManager-Editable-End -->

<!-- SvchostProcessMitigation-Begin -->
## SvchostProcessMitigation

<!-- SvchostProcessMitigation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :x: Windows SE | :heavy_check_mark: Windows 10, version 1903 [10.0.18362] and later |
<!-- SvchostProcessMitigation-Applicability-End -->

<!-- SvchostProcessMitigation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ServiceControlManager/SvchostProcessMitigation
```
<!-- SvchostProcessMitigation-OmaUri-End -->

<!-- SvchostProcessMitigation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables process mitigation options on svchost.exe processes.

- If you enable this policy setting, built-in system services hosted in svchost.exe processes will have stricter security policies enabled on them.

This includes a policy requiring all binaries loaded in these processes to be signed by microsoft, as well as a policy disallowing dynamically-generated code.

- If you disable or do not configure this policy setting, these stricter security settings will not be applied.
<!-- SvchostProcessMitigation-Description-End -->

<!-- SvchostProcessMitigation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

If you enable this policy, it adds code integrity guard (CIG) and arbitrary code guard (ACG) enforcement and other process mitigation/code integrity policies to SVCHOST processes.

> [!IMPORTANT]
> Enabling this policy could cause compatibility issues with third-party software that uses svchost.exe processes. For example, third-party antivirus software.
<!-- SvchostProcessMitigation-Editable-End -->

<!-- SvchostProcessMitigation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SvchostProcessMitigation-DFProperties-End -->

<!-- SvchostProcessMitigation-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SvchostProcessMitigationEnable |
| Friendly Name | Enable svchost.exe mitigation options |
| Location | Computer Configuration |
| Path | System > Service Control Manager Settings > Security Settings |
| Registry Key Name | System\CurrentControlSet\Control\SCMConfig |
| Registry Value Name | EnableSvchostMitigationPolicy |
| ADMX File Name | ServiceControlManager.admx |
<!-- SvchostProcessMitigation-AdmxBacked-End -->

<!-- SvchostProcessMitigation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SvchostProcessMitigation-Examples-End -->

<!-- SvchostProcessMitigation-End -->

<!-- ServiceControlManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ServiceControlManager-CspMoreInfo-End -->

<!-- ServiceControlManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
