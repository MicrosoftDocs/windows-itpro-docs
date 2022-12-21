---
title: ADMX_WindowsRemoteManagement Policy CSP
description: Learn more about the ADMX_WindowsRemoteManagement Area in Policy CSP
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

<!-- ADMX_WindowsRemoteManagement-Begin -->
# Policy CSP - ADMX_WindowsRemoteManagement

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_WindowsRemoteManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsRemoteManagement-Editable-End -->

<!-- DisallowKerberos_1-Begin -->
## DisallowKerberos_1

<!-- DisallowKerberos_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowKerberos_1-Applicability-End -->

<!-- DisallowKerberos_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsRemoteManagement/DisallowKerberos_1
```
<!-- DisallowKerberos_1-OmaUri-End -->

<!-- DisallowKerberos_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Kerberos credentials over the network.

If you enable this policy setting, the WinRM service does not accept Kerberos credentials over the network.

If you disable or do not configure this policy setting, the WinRM service accepts Kerberos authentication from a remote client.
<!-- DisallowKerberos_1-Description-End -->

<!-- DisallowKerberos_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowKerberos_1-Editable-End -->

<!-- DisallowKerberos_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowKerberos_1-DFProperties-End -->

<!-- DisallowKerberos_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowKerberos |
| Friendly Name | Disallow Kerberos authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowKerberos |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowKerberos_1-AdmxBacked-End -->

<!-- DisallowKerberos_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowKerberos_1-Examples-End -->

<!-- DisallowKerberos_1-End -->

<!-- DisallowKerberos_2-Begin -->
## DisallowKerberos_2

<!-- DisallowKerberos_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowKerberos_2-Applicability-End -->

<!-- DisallowKerberos_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsRemoteManagement/DisallowKerberos_2
```
<!-- DisallowKerberos_2-OmaUri-End -->

<!-- DisallowKerberos_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Kerberos authentication directly.

If you enable this policy setting, the Windows Remote Management (WinRM) client does not use Kerberos authentication directly. Kerberos can still be used if the WinRM client is using the Negotiate authentication and Kerberos is selected.

If you disable or do not configure this policy setting, the WinRM client uses the Kerberos authentication directly.
<!-- DisallowKerberos_2-Description-End -->

<!-- DisallowKerberos_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowKerberos_2-Editable-End -->

<!-- DisallowKerberos_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowKerberos_2-DFProperties-End -->

<!-- DisallowKerberos_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowKerberos |
| Friendly Name | Disallow Kerberos authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowKerberos |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowKerberos_2-AdmxBacked-End -->

<!-- DisallowKerberos_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowKerberos_2-Examples-End -->

<!-- DisallowKerberos_2-End -->

<!-- ADMX_WindowsRemoteManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsRemoteManagement-CspMoreInfo-End -->

<!-- ADMX_WindowsRemoteManagement-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
