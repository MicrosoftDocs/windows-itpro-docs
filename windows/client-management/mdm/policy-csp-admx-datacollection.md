---
title: ADMX_DataCollection Policy CSP
description: Learn more about the ADMX_DataCollection Area in Policy CSP
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

<!-- ADMX_DataCollection-Begin -->
# Policy CSP - ADMX_DataCollection

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_DataCollection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DataCollection-Editable-End -->

<!-- CommercialIdPolicy-Begin -->
## CommercialIdPolicy

<!-- CommercialIdPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- CommercialIdPolicy-Applicability-End -->

<!-- CommercialIdPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DataCollection/CommercialIdPolicy
```
<!-- CommercialIdPolicy-OmaUri-End -->

<!-- CommercialIdPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines the identifier used to uniquely associate this device’s diagnostic data data as belonging to a given organization. If your organization is participating in a program that requires this device to be identified as belonging to your organization then use this setting to provide that identification. The value for this setting will be provided by Microsoft as part of the onboarding process for the program.

If you disable or do not configure this policy setting, then Microsoft will not be able to use this identifier to associate this machine and its diagnostic data data with your organization.
<!-- CommercialIdPolicy-Description-End -->

<!-- CommercialIdPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CommercialIdPolicy-Editable-End -->

<!-- CommercialIdPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CommercialIdPolicy-DFProperties-End -->

<!-- CommercialIdPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CommercialId |
| Friendly Name | Configure the Commercial ID |
| Location | Computer Configuration |
| Path | WindowsComponents > Data Collection and Preview Builds |
| Registry Key Name | Software\Policies\Microsoft\Windows\DataCollection |
| ADMX File Name | DataCollection.admx |
<!-- CommercialIdPolicy-AdmxBacked-End -->

<!-- CommercialIdPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CommercialIdPolicy-Examples-End -->

<!-- CommercialIdPolicy-End -->

<!-- ADMX_DataCollection-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DataCollection-CspMoreInfo-End -->

<!-- ADMX_DataCollection-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
