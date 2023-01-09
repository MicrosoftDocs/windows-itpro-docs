---
title: ADMX_AppxPackageManager Policy CSP
description: Learn more about the ADMX_AppxPackageManager Area in Policy CSP.
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

<!-- ADMX_AppxPackageManager-Begin -->
# Policy CSP - ADMX_AppxPackageManager

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_AppxPackageManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppxPackageManager-Editable-End -->

<!-- AllowDeploymentInSpecialProfiles-Begin -->
## AllowDeploymentInSpecialProfiles

<!-- AllowDeploymentInSpecialProfiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowDeploymentInSpecialProfiles-Applicability-End -->

<!-- AllowDeploymentInSpecialProfiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AppxPackageManager/AllowDeploymentInSpecialProfiles
```
<!-- AllowDeploymentInSpecialProfiles-OmaUri-End -->

<!-- AllowDeploymentInSpecialProfiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the deployment of Windows Store apps when the user is signed in using a special profile. Special profiles are the following user profiles, where changes are discarded after the user signs off:

Roaming user profiles to which the "Delete cached copies of roaming profiles" Group Policy setting applies

Mandatory user profiles and super-mandatory profiles, which are created by an administrator

Temporary user profiles, which are created when an error prevents the correct profile from loading

User profiles for the Guest account and members of the Guests group

- If you enable this policy setting, Group Policy allows deployment operations (adding, registering, staging, updating, or removing an app package) of Windows Store apps when using a special profile.

- If you disable or do not configure this policy setting, Group Policy blocks deployment operations of Windows Store apps when using a special profile.
<!-- AllowDeploymentInSpecialProfiles-Description-End -->

<!-- AllowDeploymentInSpecialProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDeploymentInSpecialProfiles-Editable-End -->

<!-- AllowDeploymentInSpecialProfiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowDeploymentInSpecialProfiles-DFProperties-End -->

<!-- AllowDeploymentInSpecialProfiles-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDeploymentInSpecialProfiles |
| Friendly Name | Allow deployment operations in special profiles |
| Location | Computer Configuration |
| Path | Windows Components > App Package Deployment |
| Registry Key Name | Software\Policies\Microsoft\Windows\Appx |
| Registry Value Name | AllowDeploymentInSpecialProfiles |
| ADMX File Name | AppxPackageManager.admx |
<!-- AllowDeploymentInSpecialProfiles-AdmxBacked-End -->

<!-- AllowDeploymentInSpecialProfiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeploymentInSpecialProfiles-Examples-End -->

<!-- AllowDeploymentInSpecialProfiles-End -->

<!-- ADMX_AppxPackageManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AppxPackageManager-CspMoreInfo-End -->

<!-- ADMX_AppxPackageManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
