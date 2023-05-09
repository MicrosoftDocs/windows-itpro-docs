---
title: CredentialsUI Policy CSP
description: Learn more about the CredentialsUI Area in Policy CSP.
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

<!-- CredentialsUI-Begin -->
# Policy CSP - CredentialsUI

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- CredentialsUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CredentialsUI-Editable-End -->

<!-- DisablePasswordReveal-Begin -->
## DisablePasswordReveal

<!-- DisablePasswordReveal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- DisablePasswordReveal-Applicability-End -->

<!-- DisablePasswordReveal-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/CredentialsUI/DisablePasswordReveal
```

```Device
./Device/Vendor/MSFT/Policy/Config/CredentialsUI/DisablePasswordReveal
```
<!-- DisablePasswordReveal-OmaUri-End -->

<!-- DisablePasswordReveal-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the display of the password reveal button in password entry user experiences.

- If you enable this policy setting, the password reveal button will not be displayed after a user types a password in the password entry text box.

- If you disable or do not configure this policy setting, the password reveal button will be displayed after a user types a password in the password entry text box.

By default, the password reveal button is displayed after a user types a password in the password entry text box. To display the password, click the password reveal button.

The policy applies to all Windows components and applications that use the Windows system controls, including Internet Explorer.
<!-- DisablePasswordReveal-Description-End -->

<!-- DisablePasswordReveal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisablePasswordReveal-Editable-End -->

<!-- DisablePasswordReveal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisablePasswordReveal-DFProperties-End -->

<!-- DisablePasswordReveal-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisablePasswordReveal |
| Friendly Name | Do not display the password reveal button |
| Location | Computer and User Configuration |
| Path | Windows Components > Credential User Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredUI |
| Registry Value Name | DisablePasswordReveal |
| ADMX File Name | CredUI.admx |
<!-- DisablePasswordReveal-AdmxBacked-End -->

<!-- DisablePasswordReveal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisablePasswordReveal-Examples-End -->

<!-- DisablePasswordReveal-End -->

<!-- EnumerateAdministrators-Begin -->
## EnumerateAdministrators

<!-- EnumerateAdministrators-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- EnumerateAdministrators-Applicability-End -->

<!-- EnumerateAdministrators-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CredentialsUI/EnumerateAdministrators
```
<!-- EnumerateAdministrators-OmaUri-End -->

<!-- EnumerateAdministrators-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.

- If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.

- If you disable this policy setting, users will always be required to type a user name and password to elevate.
<!-- EnumerateAdministrators-Description-End -->

<!-- EnumerateAdministrators-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnumerateAdministrators-Editable-End -->

<!-- EnumerateAdministrators-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnumerateAdministrators-DFProperties-End -->

<!-- EnumerateAdministrators-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnumerateAdministrators |
| Friendly Name | Enumerate administrator accounts on elevation |
| Location | Computer Configuration |
| Path | Windows Components > Credential User Interface |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\CredUI |
| Registry Value Name | EnumerateAdministrators |
| ADMX File Name | CredUI.admx |
<!-- EnumerateAdministrators-AdmxBacked-End -->

<!-- EnumerateAdministrators-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnumerateAdministrators-Examples-End -->

<!-- EnumerateAdministrators-End -->

<!-- CredentialsUI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- CredentialsUI-CspMoreInfo-End -->

<!-- CredentialsUI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
