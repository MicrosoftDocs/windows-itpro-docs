---
title: ActiveXControls Policy CSP
description: Learn more about the ActiveXControls Area in Policy CSP
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

<!-- ActiveXControls-Begin -->
# Policy CSP - ActiveXControls

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ActiveXControls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActiveXControls-Editable-End -->

<!-- ApprovedInstallationSites-Begin -->
## ApprovedInstallationSites

<!-- ApprovedInstallationSites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- ApprovedInstallationSites-Applicability-End -->

<!-- ApprovedInstallationSites-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ActiveXControls/ApprovedInstallationSites
```
<!-- ApprovedInstallationSites-OmaUri-End -->

<!-- ApprovedInstallationSites-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL.

If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL.

If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation.

Note: Wild card characters cannot be used when specifying the host URLs.
<!-- ApprovedInstallationSites-Description-End -->

<!-- ApprovedInstallationSites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApprovedInstallationSites-Editable-End -->

<!-- ApprovedInstallationSites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ApprovedInstallationSites-DFProperties-End -->

<!-- ApprovedInstallationSites-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ApprovedActiveXInstallSites |
| Friendly Name | Approved Installation Sites for ActiveX Controls |
| Location | Computer Configuration |
| Path | Windows Components > ActiveX Installer Service |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\AxInstaller |
| Registry Value Name | ApprovedList |
| ADMX File Name | ActiveXInstallService.admx |
<!-- ApprovedInstallationSites-AdmxBacked-End -->

<!-- ApprovedInstallationSites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ApprovedInstallationSites-Examples-End -->

<!-- ApprovedInstallationSites-End -->

<!-- ActiveXControls-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ActiveXControls-CspMoreInfo-End -->

<!-- ActiveXControls-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
