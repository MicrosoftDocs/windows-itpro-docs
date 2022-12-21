---
title: ADMX_ActiveXInstallService Policy CSP
description: Learn more about the ADMX_ActiveXInstallService Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/13/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_ActiveXInstallService-Begin -->
# Policy CSP - ADMX_ActiveXInstallService

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_ActiveXInstallService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_ActiveXInstallService-Editable-End -->

<!-- AxISURLZonePolicies-Begin -->
## AxISURLZonePolicies

<!-- AxISURLZonePolicies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AxISURLZonePolicies-Applicability-End -->

<!-- AxISURLZonePolicies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_ActiveXInstallService/AxISURLZonePolicies
```
<!-- AxISURLZonePolicies-OmaUri-End -->

<!-- AxISURLZonePolicies-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the installation of ActiveX controls for sites in Trusted zone.

If you enable this policy setting, ActiveX controls are installed according to the settings defined by this policy setting.

If you disable or do not configure this policy setting, ActiveX controls prompt the user before installation.

If the trusted site uses the HTTPS protocol, this policy setting can also control how ActiveX Installer Service responds to certificate errors. By default all HTTPS connections must supply a server certificate that passes all validation criteria. If you are aware that a trusted site has a certificate error but you want to trust it anyway you can select the certificate errors that you want to ignore.

Note: This policy setting applies to all sites in Trusted zones.
<!-- AxISURLZonePolicies-Description-End -->

<!-- AxISURLZonePolicies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AxISURLZonePolicies-Editable-End -->

<!-- AxISURLZonePolicies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AxISURLZonePolicies-DFProperties-End -->

<!-- AxISURLZonePolicies-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AxISURLZonePolicies |
| Friendly Name | Establish ActiveX installation policy for sites in Trusted zones |
| Location | Computer Configuration |
| Path | Windows Components > ActiveX Installer Service |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\AxInstaller\AxISURLZonePolicies |
| ADMX File Name | ActiveXInstallService.admx |
<!-- AxISURLZonePolicies-AdmxBacked-End -->

<!-- AxISURLZonePolicies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AxISURLZonePolicies-Examples-End -->

<!-- AxISURLZonePolicies-End -->

<!-- ADMX_ActiveXInstallService-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_ActiveXInstallService-CspMoreInfo-End -->

<!-- ADMX_ActiveXInstallService-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
