---
title: Desktop Policy CSP
description: Learn more about the Desktop Area in Policy CSP.
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

<!-- Desktop-Begin -->
# Policy CSP - Desktop

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- Desktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Desktop-Editable-End -->

<!-- PreventUserRedirectionOfProfileFolders-Begin -->
## PreventUserRedirectionOfProfileFolders

<!-- PreventUserRedirectionOfProfileFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventUserRedirectionOfProfileFolders-Applicability-End -->

<!-- PreventUserRedirectionOfProfileFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Desktop/PreventUserRedirectionOfProfileFolders
```
<!-- PreventUserRedirectionOfProfileFolders-OmaUri-End -->

<!-- PreventUserRedirectionOfProfileFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from changing the path to their profile folders.

By default, a user can change the location of their individual profile folders like Documents, Music etc. by typing a new path in the Locations tab of the folder's Properties dialog box.

- If you enable this setting, users are unable to type a new location in the Target box.
<!-- PreventUserRedirectionOfProfileFolders-Description-End -->

<!-- PreventUserRedirectionOfProfileFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventUserRedirectionOfProfileFolders-Editable-End -->

<!-- PreventUserRedirectionOfProfileFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventUserRedirectionOfProfileFolders-DFProperties-End -->

<!-- PreventUserRedirectionOfProfileFolders-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePersonalDirChange |
| Friendly Name | Prohibit User from manually redirecting Profile Folders |
| Location | User Configuration |
| Path | Desktop |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisablePersonalDirChange |
| ADMX File Name | Desktop.admx |
<!-- PreventUserRedirectionOfProfileFolders-AdmxBacked-End -->

<!-- PreventUserRedirectionOfProfileFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventUserRedirectionOfProfileFolders-Examples-End -->

<!-- PreventUserRedirectionOfProfileFolders-End -->

<!-- Desktop-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Desktop-CspMoreInfo-End -->

<!-- Desktop-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
