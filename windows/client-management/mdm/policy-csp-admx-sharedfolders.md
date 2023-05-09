---
title: ADMX_SharedFolders Policy CSP
description: Learn more about the ADMX_SharedFolders Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/01/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_SharedFolders-Begin -->
# Policy CSP - ADMX_SharedFolders

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_SharedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_SharedFolders-Editable-End -->

<!-- PublishDfsRoots-Begin -->
## PublishDfsRoots

<!-- PublishDfsRoots-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PublishDfsRoots-Applicability-End -->

<!-- PublishDfsRoots-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_SharedFolders/PublishDfsRoots
```
<!-- PublishDfsRoots-OmaUri-End -->

<!-- PublishDfsRoots-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the user can publish DFS roots in Active Directory Domain Services (AD DS).

- If you enable or do not configure this policy setting, users can use the "Publish in Active Directory" option to publish DFS roots as shared folders in AD DS .

- If you disable this policy setting, users cannot publish DFS roots in AD DS and the "Publish in Active Directory" option is disabled.

> [!NOTE]
> The default is to allow shared folders to be published when this setting is not configured.
<!-- PublishDfsRoots-Description-End -->

<!-- PublishDfsRoots-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishDfsRoots-Editable-End -->

<!-- PublishDfsRoots-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishDfsRoots-DFProperties-End -->

<!-- PublishDfsRoots-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PublishDfsRoots |
| Friendly Name | Allow DFS roots to be published |
| Location | User Configuration |
| Path | Shared Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SharedFolders |
| Registry Value Name | PublishDfsRoots |
| ADMX File Name | SharedFolders.admx |
<!-- PublishDfsRoots-AdmxBacked-End -->

<!-- PublishDfsRoots-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishDfsRoots-Examples-End -->

<!-- PublishDfsRoots-End -->

<!-- PublishSharedFolders-Begin -->
## PublishSharedFolders

<!-- PublishSharedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PublishSharedFolders-Applicability-End -->

<!-- PublishSharedFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_SharedFolders/PublishSharedFolders
```
<!-- PublishSharedFolders-OmaUri-End -->

<!-- PublishSharedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the user can publish shared folders in Active Directory Domain Services (AD DS).

- If you enable or do not configure this policy setting, users can use the "Publish in Active Directory" option in the Shared Folders snap-in to publish shared folders in AD DS.

- If you disable this policy setting, users cannot publish shared folders in AD DS, and the "Publish in Active Directory" option is disabled.

> [!NOTE]
> The default is to allow shared folders to be published when this setting is not configured.
<!-- PublishSharedFolders-Description-End -->

<!-- PublishSharedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishSharedFolders-Editable-End -->

<!-- PublishSharedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishSharedFolders-DFProperties-End -->

<!-- PublishSharedFolders-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PublishSharedFolders |
| Friendly Name | Allow shared folders to be published |
| Location | User Configuration |
| Path | Shared Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SharedFolders |
| Registry Value Name | PublishSharedFolders |
| ADMX File Name | SharedFolders.admx |
<!-- PublishSharedFolders-AdmxBacked-End -->

<!-- PublishSharedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishSharedFolders-Examples-End -->

<!-- PublishSharedFolders-End -->

<!-- ADMX_SharedFolders-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_SharedFolders-CspMoreInfo-End -->

<!-- ADMX_SharedFolders-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
