---
title: ADMX_CredUI Policy CSP
description: Learn more about the ADMX_CredUI Area in Policy CSP
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

<!-- ADMX_CredUI-Begin -->
# Policy CSP - ADMX_CredUI

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_CredUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredUI-Editable-End -->

<!-- EnableSecureCredentialPrompting-Begin -->
## EnableSecureCredentialPrompting

<!-- EnableSecureCredentialPrompting-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableSecureCredentialPrompting-Applicability-End -->

<!-- EnableSecureCredentialPrompting-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredUI/EnableSecureCredentialPrompting
```
<!-- EnableSecureCredentialPrompting-OmaUri-End -->

<!-- EnableSecureCredentialPrompting-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting requires the user to enter Microsoft Windows credentials using a trusted path, to prevent a Trojan horse or other types of malicious code from stealing the user’s Windows credentials.

Note: This policy affects nonlogon authentication tasks only. As a security best practice, this policy should be enabled.

If you enable this policy setting, users will be required to enter Windows credentials on the Secure Desktop by means of the trusted path mechanism.

If you disable or do not configure this policy setting, users will enter Windows credentials within the user’s desktop session, potentially allowing malicious code access to the user’s Windows credentials.
<!-- EnableSecureCredentialPrompting-Description-End -->

<!-- EnableSecureCredentialPrompting-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableSecureCredentialPrompting-Editable-End -->

<!-- EnableSecureCredentialPrompting-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableSecureCredentialPrompting-DFProperties-End -->

<!-- EnableSecureCredentialPrompting-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSecureCredentialPrompting |
| Friendly Name | Require trusted path for credential entry |
| Location | Computer Configuration |
| Path | Windows Components > Credential User Interface |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\CredUI |
| Registry Value Name | EnableSecureCredentialPrompting |
| ADMX File Name | CredUI.admx |
<!-- EnableSecureCredentialPrompting-AdmxBacked-End -->

<!-- EnableSecureCredentialPrompting-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSecureCredentialPrompting-Examples-End -->

<!-- EnableSecureCredentialPrompting-End -->

<!-- NoLocalPasswordResetQuestions-Begin -->
## NoLocalPasswordResetQuestions

<!-- NoLocalPasswordResetQuestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoLocalPasswordResetQuestions-Applicability-End -->

<!-- NoLocalPasswordResetQuestions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_CredUI/NoLocalPasswordResetQuestions
```
<!-- NoLocalPasswordResetQuestions-OmaUri-End -->

<!-- NoLocalPasswordResetQuestions-Description-Begin -->
<!-- Description-Source-ADMX -->
If you turn this policy setting on, local users won’t be able to set up and use security questions to reset their passwords.
<!-- NoLocalPasswordResetQuestions-Description-End -->

<!-- NoLocalPasswordResetQuestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Available in the latest Windows 10 Insider Preview Build.
<!-- NoLocalPasswordResetQuestions-Editable-End -->

<!-- NoLocalPasswordResetQuestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoLocalPasswordResetQuestions-DFProperties-End -->

<!-- NoLocalPasswordResetQuestions-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoLocalPasswordResetQuestions |
| Friendly Name | Prevent the use of security questions for local accounts |
| Location | Computer Configuration |
| Path | Windows Components > Credential User Interface |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | NoLocalPasswordResetQuestions |
| ADMX File Name | CredUI.admx |
<!-- NoLocalPasswordResetQuestions-AdmxBacked-End -->

<!-- NoLocalPasswordResetQuestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoLocalPasswordResetQuestions-Examples-End -->

<!-- NoLocalPasswordResetQuestions-End -->

<!-- ADMX_CredUI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_CredUI-CspMoreInfo-End -->

<!-- ADMX_CredUI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
