---
title: ADMX_Sharing Policy CSP
description: Learn more about the ADMX_Sharing Area in Policy CSP.
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

<!-- ADMX_Sharing-Begin -->
# Policy CSP - ADMX_Sharing

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Sharing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Sharing-Editable-End -->

<!-- DisableHomeGroup-Begin -->
## DisableHomeGroup

<!-- DisableHomeGroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableHomeGroup-Applicability-End -->

<!-- DisableHomeGroup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Sharing/DisableHomeGroup
```
<!-- DisableHomeGroup-OmaUri-End -->

<!-- DisableHomeGroup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can add computers to a homegroup. By default, users can add their computer to a homegroup on a private network.

- If you enable this policy setting, users cannot add computers to a homegroup. This policy setting does not affect other network sharing features.

- If you disable or do not configure this policy setting, users can add computers to a homegroup. However, data on a domain-joined computer is not shared with the homegroup.

This policy setting is not configured by default.

You must restart the computer for this policy setting to take effect.
<!-- DisableHomeGroup-Description-End -->

<!-- DisableHomeGroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHomeGroup-Editable-End -->

<!-- DisableHomeGroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableHomeGroup-DFProperties-End -->

<!-- DisableHomeGroup-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableHomeGroup |
| Friendly Name | Prevent the computer from joining a homegroup |
| Location | Computer Configuration |
| Path | Windows Components > HomeGroup |
| Registry Key Name | Software\Policies\Microsoft\Windows\HomeGroup |
| Registry Value Name | DisableHomeGroup |
| ADMX File Name | Sharing.admx |
<!-- DisableHomeGroup-AdmxBacked-End -->

<!-- DisableHomeGroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHomeGroup-Examples-End -->

<!-- DisableHomeGroup-End -->

<!-- NoInplaceSharing-Begin -->
## NoInplaceSharing

<!-- NoInplaceSharing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoInplaceSharing-Applicability-End -->

<!-- NoInplaceSharing-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Sharing/NoInplaceSharing
```
<!-- NoInplaceSharing-OmaUri-End -->

<!-- NoInplaceSharing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can share files within their profile. By default users are allowed to share files within their profile to other users on their network after an administrator opts in the computer. An administrator can opt in the computer by using the sharing wizard to share a file within their profile.

- If you enable this policy setting, users cannot share files within their profile using the sharing wizard. Also, the sharing wizard cannot create a share at %root%\users and can only be used to create SMB shares on folders.

- If you disable or don't configure this policy setting, users can share files out of their user profile after an administrator has opted in the computer.
<!-- NoInplaceSharing-Description-End -->

<!-- NoInplaceSharing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoInplaceSharing-Editable-End -->

<!-- NoInplaceSharing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoInplaceSharing-DFProperties-End -->

<!-- NoInplaceSharing-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoInplaceSharing |
| Friendly Name | Prevent users from sharing files within their profile. |
| Location | User Configuration |
| Path | Windows Components > Network Sharing |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoInplaceSharing |
| ADMX File Name | Sharing.admx |
<!-- NoInplaceSharing-AdmxBacked-End -->

<!-- NoInplaceSharing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoInplaceSharing-Examples-End -->

<!-- NoInplaceSharing-End -->

<!-- ADMX_Sharing-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Sharing-CspMoreInfo-End -->

<!-- ADMX_Sharing-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
