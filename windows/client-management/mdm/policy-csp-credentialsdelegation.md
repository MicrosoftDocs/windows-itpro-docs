---
title: CredentialsDelegation Policy CSP
description: Learn more about the CredentialsDelegation Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/27/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- CredentialsDelegation-Begin -->
# Policy CSP - CredentialsDelegation

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- CredentialsDelegation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CredentialsDelegation-Editable-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Begin -->
## RemoteHostAllowsDelegationOfNonExportableCredentials

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Applicability-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials
```
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-OmaUri-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
Remote host allows delegation of non-exportable credentials

When using credential delegation, devices provide an exportable version of credentials to the remote host. This exposes users to the risk of credential theft from attackers on the remote host.

If you enable this policy setting, the host supports Restricted Admin or Remote Credential Guard mode.

If you disable or do not configure this policy setting, Restricted Administration and Remote Credential Guard mode are not supported. User will always need to pass their credentials to the host.
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Description-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Editable-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-DFProperties-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowProtectedCreds |
| Friendly Name | Remote host allows delegation of non-exportable credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowProtectedCreds |
| ADMX File Name | CredSsp.admx |
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-AdmxBacked-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Examples-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-End -->

<!-- CredentialsDelegation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- CredentialsDelegation-CspMoreInfo-End -->

<!-- CredentialsDelegation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
