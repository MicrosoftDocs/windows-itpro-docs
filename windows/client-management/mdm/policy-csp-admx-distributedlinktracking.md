---
title: ADMX_DistributedLinkTracking Policy CSP
description: Learn more about the ADMX_DistributedLinkTracking Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/21/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DistributedLinkTracking-Begin -->
# Policy CSP - ADMX_DistributedLinkTracking

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_DistributedLinkTracking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DistributedLinkTracking-Editable-End -->

<!-- DLT_AllowDomainMode-Begin -->
## DLT_AllowDomainMode

<!-- DLT_AllowDomainMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DLT_AllowDomainMode-Applicability-End -->

<!-- DLT_AllowDomainMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DistributedLinkTracking/DLT_AllowDomainMode
```
<!-- DLT_AllowDomainMode-OmaUri-End -->

<!-- DLT_AllowDomainMode-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies that Distributed Link Tracking clients in this domain may use the Distributed Link Tracking (DLT) server, which runs on domain controllers. The DLT client enables programs to track linked files that are moved within an NTFS volume, to another NTFS volume on the same computer, or to an NTFS volume on another computer. The DLT client can more reliably track links when allowed to use the DLT server. This policy should not be set unless the DLT server is running on all domain controllers in the domain.
<!-- DLT_AllowDomainMode-Description-End -->

<!-- DLT_AllowDomainMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**Note** This policy setting applies to all sites in Trusted zones.
<!-- DLT_AllowDomainMode-Editable-End -->

<!-- DLT_AllowDomainMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DLT_AllowDomainMode-DFProperties-End -->

<!-- DLT_AllowDomainMode-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DLT_AllowDomainMode |
| Friendly Name | Allow Distributed Link Tracking clients to use domain resources |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DLT_AllowDomainMode |
| ADMX File Name | DistributedLinkTracking.admx |
<!-- DLT_AllowDomainMode-AdmxBacked-End -->

<!-- DLT_AllowDomainMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DLT_AllowDomainMode-Examples-End -->

<!-- DLT_AllowDomainMode-End -->

<!-- ADMX_DistributedLinkTracking-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DistributedLinkTracking-CspMoreInfo-End -->

<!-- ADMX_DistributedLinkTracking-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
