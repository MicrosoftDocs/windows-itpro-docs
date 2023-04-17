---
title: LocalSecurityAuthority Policy CSP
description: Learn more about the LocalSecurityAuthority Area in Policy CSP.
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

<!-- LocalSecurityAuthority-Begin -->
# Policy CSP - LocalSecurityAuthority

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- LocalSecurityAuthority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalSecurityAuthority-Editable-End -->

<!-- AllowCustomSSPsAPs-Begin -->
## AllowCustomSSPsAPs

<!-- AllowCustomSSPsAPs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- AllowCustomSSPsAPs-Applicability-End -->

<!-- AllowCustomSSPsAPs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalSecurityAuthority/AllowCustomSSPsAPs
```
<!-- AllowCustomSSPsAPs-OmaUri-End -->

<!-- AllowCustomSSPsAPs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the configuration under which LSASS loads custom SSPs and APs.

- If you enable this setting or do not configure it, LSA allows custom SSPs and APs to be loaded.

- If you disable this setting, LSA does not load custom SSPs and APs.
<!-- AllowCustomSSPsAPs-Description-End -->

<!-- AllowCustomSSPsAPs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCustomSSPsAPs-Editable-End -->

<!-- AllowCustomSSPsAPs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowCustomSSPsAPs-DFProperties-End -->

<!-- AllowCustomSSPsAPs-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCustomSSPsAPs |
| Friendly Name | Allow Custom SSPs and APs to be loaded into LSASS |
| Location | Computer Configuration |
| Path | System > Local Security Authority |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowCustomSSPsAPs |
| ADMX File Name | LocalSecurityAuthority.admx |
<!-- AllowCustomSSPsAPs-AdmxBacked-End -->

<!-- AllowCustomSSPsAPs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCustomSSPsAPs-Examples-End -->

<!-- AllowCustomSSPsAPs-End -->

<!-- ConfigureLsaProtectedProcess-Begin -->
## ConfigureLsaProtectedProcess

<!-- ConfigureLsaProtectedProcess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureLsaProtectedProcess-Applicability-End -->

<!-- ConfigureLsaProtectedProcess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalSecurityAuthority/ConfigureLsaProtectedProcess
```
<!-- ConfigureLsaProtectedProcess-OmaUri-End -->

<!-- ConfigureLsaProtectedProcess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the configuration under which LSASS is run.

- If you do not configure this policy and there is no current setting in the registry, LSA will run as protected process for clean installed, HVCI capable, client SKUs that are domain or cloud domain joined devices. This configuration is not UEFI locked. This can be overridden if the policy is configured.

- If you configure and set this policy setting to "Disabled", LSA will not run as a protected process.

- If you configure and set this policy setting to "EnabledWithUEFILock," LSA will run as a protected process and this configuration is UEFI locked.

- If you configure and set this policy setting to "EnabledWithoutUEFILock", LSA will run as a protected process and this configuration is not UEFI locked.
<!-- ConfigureLsaProtectedProcess-Description-End -->

<!-- ConfigureLsaProtectedProcess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureLsaProtectedProcess-Editable-End -->

<!-- ConfigureLsaProtectedProcess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureLsaProtectedProcess-DFProperties-End -->

<!-- ConfigureLsaProtectedProcess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. Default value. LSA will not run as protected process. |
| 1 | Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked. |
| 2 | Enabled without UEFI lock. LSA will run as protected process and this configuration is not UEFI locked. |
<!-- ConfigureLsaProtectedProcess-AllowedValues-End -->

<!-- ConfigureLsaProtectedProcess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureLsaProtectedProcess |
| Friendly Name | Configures LSASS to run as a protected process |
| Location | Computer Configuration |
| Path | System > Local Security Authority |
| Registry Key Name | System\CurrentControlSet\Control\Lsa |
| ADMX File Name | LocalSecurityAuthority.admx |
<!-- ConfigureLsaProtectedProcess-GpMapping-End -->

<!-- ConfigureLsaProtectedProcess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureLsaProtectedProcess-Examples-End -->

<!-- ConfigureLsaProtectedProcess-End -->

<!-- LocalSecurityAuthority-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- LocalSecurityAuthority-CspMoreInfo-End -->

<!-- LocalSecurityAuthority-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
