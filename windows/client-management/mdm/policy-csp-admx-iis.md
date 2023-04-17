---
title: ADMX_IIS Policy CSP
description: Learn more about the ADMX_IIS Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_IIS-Begin -->
# Policy CSP - ADMX_IIS

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_IIS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_IIS-Editable-End -->

<!-- PreventIISInstall-Begin -->
## PreventIISInstall

<!-- PreventIISInstall-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventIISInstall-Applicability-End -->

<!-- PreventIISInstall-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_IIS/PreventIISInstall
```
<!-- PreventIISInstall-OmaUri-End -->

<!-- PreventIISInstall-Description-Begin -->
<!-- Description-Source-ADMX -->
"This policy setting prevents installation of Internet Information Services (IIS) on this computer.

- If you enable this policy setting, Internet Information Services (IIS) cannot be installed, and you will not be able to install Windows components or applications that require IIS. Users installing Windows components or applications that require IIS might not receive a warning that IIS cannot be installed because of this Group Policy setting. Enabling this setting will not have any effect on IIS if IIS is already installed on the computer.
- If you disable or do not configure this policy setting, IIS can be installed, as well as all the programs and applications that require IIS to run."
<!-- PreventIISInstall-Description-End -->

<!-- PreventIISInstall-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventIISInstall-Editable-End -->

<!-- PreventIISInstall-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventIISInstall-DFProperties-End -->

<!-- PreventIISInstall-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventIISInstall |
| Friendly Name | Prevent IIS installation |
| Location | Computer Configuration |
| Path | Windows Components > Internet Information Services |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\IIS |
| Registry Value Name | PreventIISInstall |
| ADMX File Name | IIS.admx |
<!-- PreventIISInstall-AdmxBacked-End -->

<!-- PreventIISInstall-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventIISInstall-Examples-End -->

<!-- PreventIISInstall-End -->

<!-- ADMX_IIS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_IIS-CspMoreInfo-End -->

<!-- ADMX_IIS-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
