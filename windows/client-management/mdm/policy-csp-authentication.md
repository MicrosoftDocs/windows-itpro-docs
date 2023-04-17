---
title: Authentication Policy CSP
description: Learn more about the Authentication Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 03/23/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Authentication-Begin -->
# Policy CSP - Authentication

> [!IMPORTANT]
> This CSP contains preview policies that are under development and only applicable for [Windows Insider Preview builds](/windows-insider/). These policies are subject to change and may have dependencies on other features or services in preview.

<!-- Authentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Authentication-Editable-End -->

<!-- AllowAadPasswordReset-Begin -->
## AllowAadPasswordReset

<!-- AllowAadPasswordReset-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowAadPasswordReset-Applicability-End -->

<!-- AllowAadPasswordReset-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/AllowAadPasswordReset
```
<!-- AllowAadPasswordReset-OmaUri-End -->

<!-- AllowAadPasswordReset-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether password reset is enabled for AAD accounts.
<!-- AllowAadPasswordReset-Description-End -->

<!-- AllowAadPasswordReset-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy allows the Azure Active Directory (Azure AD) tenant administrator to enable the self-service password reset feature on the Windows sign-in screen.
<!-- AllowAadPasswordReset-Editable-End -->

<!-- AllowAadPasswordReset-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowAadPasswordReset-DFProperties-End -->

<!-- AllowAadPasswordReset-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowAadPasswordReset-AllowedValues-End -->

<!-- AllowAadPasswordReset-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAadPasswordReset-Examples-End -->

<!-- AllowAadPasswordReset-End -->

<!-- AllowEAPCertSSO-Begin -->
## AllowEAPCertSSO

<!-- AllowEAPCertSSO-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowEAPCertSSO-Applicability-End -->

<!-- AllowEAPCertSSO-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Authentication/AllowEAPCertSSO
```
<!-- AllowEAPCertSSO-OmaUri-End -->

<!-- AllowEAPCertSSO-Description-Begin -->
<!-- Description-Source-DDF -->
Allows an EAP cert-based authentication for a single sign on (SSO) to access internal resources.
<!-- AllowEAPCertSSO-Description-End -->

<!-- AllowEAPCertSSO-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEAPCertSSO-Editable-End -->

<!-- AllowEAPCertSSO-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowEAPCertSSO-DFProperties-End -->

<!-- AllowEAPCertSSO-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowEAPCertSSO-AllowedValues-End -->

<!-- AllowEAPCertSSO-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEAPCertSSO-Examples-End -->

<!-- AllowEAPCertSSO-End -->

<!-- AllowFastReconnect-Begin -->
## AllowFastReconnect

<!-- AllowFastReconnect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowFastReconnect-Applicability-End -->

<!-- AllowFastReconnect-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/AllowFastReconnect
```
<!-- AllowFastReconnect-OmaUri-End -->

<!-- AllowFastReconnect-Description-Begin -->
<!-- Description-Source-DDF -->
Allows EAP Fast Reconnect from being attempted for EAP Method TLS. Most restricted value is 0.
<!-- AllowFastReconnect-Description-End -->

<!-- AllowFastReconnect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFastReconnect-Editable-End -->

<!-- AllowFastReconnect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowFastReconnect-DFProperties-End -->

<!-- AllowFastReconnect-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowFastReconnect-AllowedValues-End -->

<!-- AllowFastReconnect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFastReconnect-Examples-End -->

<!-- AllowFastReconnect-End -->

<!-- AllowSecondaryAuthenticationDevice-Begin -->
## AllowSecondaryAuthenticationDevice

<!-- AllowSecondaryAuthenticationDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowSecondaryAuthenticationDevice-Applicability-End -->

<!-- AllowSecondaryAuthenticationDevice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/AllowSecondaryAuthenticationDevice
```
<!-- AllowSecondaryAuthenticationDevice-OmaUri-End -->

<!-- AllowSecondaryAuthenticationDevice-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows users to use a companion device, such as a phone, fitness band, or IoT device, to sign on to a desktop computer running Windows 10. The companion device provides a second factor of authentication with Windows Hello.

- If you enable or do not configure this policy setting, users can authenticate to Windows Hello using a companion device.

- If you disable this policy, users cannot use a companion device to authenticate with Windows Hello.
<!-- AllowSecondaryAuthenticationDevice-Description-End -->

<!-- AllowSecondaryAuthenticationDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSecondaryAuthenticationDevice-Editable-End -->

<!-- AllowSecondaryAuthenticationDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowSecondaryAuthenticationDevice-DFProperties-End -->

<!-- AllowSecondaryAuthenticationDevice-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not allowed. |
| 1 | Allowed. |
<!-- AllowSecondaryAuthenticationDevice-AllowedValues-End -->

<!-- AllowSecondaryAuthenticationDevice-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MSSecondaryAuthFactor_AllowSecondaryAuthenticationDevice |
| Friendly Name | Allow companion device for secondary authentication |
| Location | Computer Configuration |
| Path | Windows Components > Microsoft Secondary Authentication Factor |
| Registry Key Name | SOFTWARE\Policies\Microsoft\SecondaryAuthenticationFactor |
| Registry Value Name | AllowSecondaryAuthenticationDevice |
| ADMX File Name | DeviceCredential.admx |
<!-- AllowSecondaryAuthenticationDevice-GpMapping-End -->

<!-- AllowSecondaryAuthenticationDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSecondaryAuthenticationDevice-Examples-End -->

<!-- AllowSecondaryAuthenticationDevice-End -->

<!-- ConfigureWebcamAccessDomainNames-Begin -->
## ConfigureWebcamAccessDomainNames

<!-- ConfigureWebcamAccessDomainNames-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigureWebcamAccessDomainNames-Applicability-End -->

<!-- ConfigureWebcamAccessDomainNames-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/ConfigureWebcamAccessDomainNames
```
<!-- ConfigureWebcamAccessDomainNames-OmaUri-End -->

<!-- ConfigureWebcamAccessDomainNames-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a list of domains that are allowed to access the webcam in Web Sign-in based authentication scenarios.
<!-- ConfigureWebcamAccessDomainNames-Description-End -->

<!-- ConfigureWebcamAccessDomainNames-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!NOTE]
> Web sign-in is only supported on Azure AD joined PCs.
<!-- ConfigureWebcamAccessDomainNames-Editable-End -->

<!-- ConfigureWebcamAccessDomainNames-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- ConfigureWebcamAccessDomainNames-DFProperties-End -->

<!-- ConfigureWebcamAccessDomainNames-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example**:

Your organization federates to "Contoso IDP" and your web sign-in portal at `signinportal.contoso.com` requires webcam access. Then the value for this policy should be:

`contoso.com`
<!-- ConfigureWebcamAccessDomainNames-Examples-End -->

<!-- ConfigureWebcamAccessDomainNames-End -->

<!-- ConfigureWebSignInAllowedUrls-Begin -->
## ConfigureWebSignInAllowedUrls

<!-- ConfigureWebSignInAllowedUrls-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134.2145] and later |
<!-- ConfigureWebSignInAllowedUrls-Applicability-End -->

<!-- ConfigureWebSignInAllowedUrls-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/ConfigureWebSignInAllowedUrls
```
<!-- ConfigureWebSignInAllowedUrls-OmaUri-End -->

<!-- ConfigureWebSignInAllowedUrls-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies a list of URLs that are navigable in Web Sign-in based authentication scenarios.
<!-- ConfigureWebSignInAllowedUrls-Description-End -->

<!-- ConfigureWebSignInAllowedUrls-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy specifies the list of domains that users can access in certain authentication scenarios. For example:

- Azure Active Directory (Azure AD) PIN reset
- Web sign-in Windows device scenarios where authentication is handled by Active Directory Federation Services (AD FS) or a third-party federated identity provider

> [!NOTE]
> This policy is required in federated environments as a mitigation to the vulnerability described in [CVE-2021-27092](https://msrc.microsoft.com/update-guide/vulnerability/CVE-2021-27092).
<!-- ConfigureWebSignInAllowedUrls-Editable-End -->

<!-- ConfigureWebSignInAllowedUrls-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- ConfigureWebSignInAllowedUrls-DFProperties-End -->

<!-- ConfigureWebSignInAllowedUrls-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example**:

Your organization's PIN reset or web sign-in authentication flow is expected to navigate to the following two domains: `accounts.contoso.com` and `signin.contoso.com`. Then the value for this policy should be:

`accounts.contoso.com;signin.contoso.com`
<!-- ConfigureWebSignInAllowedUrls-Examples-End -->

<!-- ConfigureWebSignInAllowedUrls-End -->

<!-- EnableFastFirstSignIn-Begin -->
## EnableFastFirstSignIn

<!-- EnableFastFirstSignIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- EnableFastFirstSignIn-Applicability-End -->

<!-- EnableFastFirstSignIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/EnableFastFirstSignIn
```
<!-- EnableFastFirstSignIn-OmaUri-End -->

<!-- EnableFastFirstSignIn-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether new non-admin AAD accounts should auto-connect to pre-created candidate local accounts.
<!-- EnableFastFirstSignIn-Description-End -->

<!-- EnableFastFirstSignIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy is intended for use on Shared PCs to enable a quick first sign-in experience for a user. It works by automatically connecting new non-admin Azure Active Directory (Azure AD) accounts to the pre-configured candidate local accounts.

> [!IMPORTANT]
> Pre-configured candidate local accounts are any local accounts that are pre-configured or added on the device.
<!-- EnableFastFirstSignIn-Editable-End -->

<!-- EnableFastFirstSignIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableFastFirstSignIn-DFProperties-End -->

<!-- EnableFastFirstSignIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The feature defaults to the existing SKU and device capabilities. |
| 1 | Enabled. Auto-connect new non-admin Azure AD accounts to pre-configured candidate local accounts. |
| 2 | Disabled. Do not auto-connect new non-admin Azure AD accounts to pre-configured local accounts. |
<!-- EnableFastFirstSignIn-AllowedValues-End -->

<!-- EnableFastFirstSignIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableFastFirstSignIn-Examples-End -->

<!-- EnableFastFirstSignIn-End -->

<!-- EnablePasswordlessExperience-Begin -->
## EnablePasswordlessExperience

<!-- EnablePasswordlessExperience-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows Insider Preview |
<!-- EnablePasswordlessExperience-Applicability-End -->

<!-- EnablePasswordlessExperience-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/EnablePasswordlessExperience
```
<!-- EnablePasswordlessExperience-OmaUri-End -->

<!-- EnablePasswordlessExperience-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether connected users on AADJ devices receive a Passwordless experience on Windows.
<!-- EnablePasswordlessExperience-Description-End -->

<!-- EnablePasswordlessExperience-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnablePasswordlessExperience-Editable-End -->

<!-- EnablePasswordlessExperience-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnablePasswordlessExperience-DFProperties-End -->

<!-- EnablePasswordlessExperience-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The feature defaults to the existing edition and device capabilities. |
| 1 | Enabled. The Passwordless experience will be enabled on Windows. |
| 2 | Disabled. The Passwordless experience will not be enabled on Windows. |
<!-- EnablePasswordlessExperience-AllowedValues-End -->

<!-- EnablePasswordlessExperience-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnablePasswordlessExperience-Examples-End -->

<!-- EnablePasswordlessExperience-End -->

<!-- EnableWebSignIn-Begin -->
## EnableWebSignIn

<!-- EnableWebSignIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- EnableWebSignIn-Applicability-End -->

<!-- EnableWebSignIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn
```
<!-- EnableWebSignIn-OmaUri-End -->

<!-- EnableWebSignIn-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether web-based sign-in is allowed for signing in to Windows.
<!-- EnableWebSignIn-Description-End -->

<!-- EnableWebSignIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!WARNING]
> The Web sign-in feature is intended for recovery purposes in the event a password isn't available as an authentication method. Web sign-in only supports *temporary access pass* as an authentication method for Azure Active Directory (Azure AD), unless it's used in a limited federated scope.

**Web sign-in** is a modern way of signing into a Windows PC. It enables Windows sign-in support for new Azure AD credentials, like temporary access pass.

> [!NOTE]
> Web sign-in is only supported on Azure AD joined PCs.
<!-- EnableWebSignIn-Editable-End -->

<!-- EnableWebSignIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableWebSignIn-DFProperties-End -->

<!-- EnableWebSignIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | The feature defaults to the existing SKU and device capabilities. |
| 1 | Enabled. Web Sign-in will be enabled for signing in to Windows. |
| 2 | Disabled. Web Sign-in will not be enabled for signing in to Windows. |
<!-- EnableWebSignIn-AllowedValues-End -->

<!-- EnableWebSignIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableWebSignIn-Examples-End -->

<!-- EnableWebSignIn-End -->

<!-- PreferredAadTenantDomainName-Begin -->
## PreferredAadTenantDomainName

<!-- PreferredAadTenantDomainName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1809 [10.0.17763] and later |
<!-- PreferredAadTenantDomainName-Applicability-End -->

<!-- PreferredAadTenantDomainName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Authentication/PreferredAadTenantDomainName
```
<!-- PreferredAadTenantDomainName-OmaUri-End -->

<!-- PreferredAadTenantDomainName-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the preferred domain among available domains in the AAD tenant.
<!-- PreferredAadTenantDomainName-Description-End -->

<!-- PreferredAadTenantDomainName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreferredAadTenantDomainName-Editable-End -->

<!-- PreferredAadTenantDomainName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreferredAadTenantDomainName-DFProperties-End -->

<!-- PreferredAadTenantDomainName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->

**Example**:

Your organization uses the `@contoso.com` tenant domain name. Then the value for this policy should be:

`contoso.com`

For the user `abby@constoso.com`, a sign-in is done using `abby` in the username field instead of `abby@contoso.com`.
<!-- PreferredAadTenantDomainName-Examples-End -->

<!-- PreferredAadTenantDomainName-End -->

<!-- Authentication-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Authentication-CspMoreInfo-End -->

<!-- Authentication-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
