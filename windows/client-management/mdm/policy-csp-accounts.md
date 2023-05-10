---
title: Accounts Policy CSP
description: Learn more about the Accounts Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Accounts-Begin -->
# Policy CSP - Accounts

<!-- Accounts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts-Editable-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-Begin -->
## AllowAddingNonMicrosoftAccountsManually

<!-- AllowAddingNonMicrosoftAccountsManually-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowAddingNonMicrosoftAccountsManually-Applicability-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Accounts/AllowAddingNonMicrosoftAccountsManually
```
<!-- AllowAddingNonMicrosoftAccountsManually-OmaUri-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether user is allowed to add non-MSA email accounts. Most restricted value is 0.

> [!NOTE]
> This policy will only block UI/UX-based methods for adding non-Microsoft accounts. Even if this policy is enforced, you can still provision non-MSA accounts using the EMAIL2 CSP.
<!-- AllowAddingNonMicrosoftAccountsManually-Description-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAddingNonMicrosoftAccountsManually-Editable-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowAddingNonMicrosoftAccountsManually-DFProperties-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowAddingNonMicrosoftAccountsManually-AllowedValues-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAddingNonMicrosoftAccountsManually-Examples-End -->

<!-- AllowAddingNonMicrosoftAccountsManually-End -->

<!-- AllowMicrosoftAccountConnection-Begin -->
## AllowMicrosoftAccountConnection

<!-- AllowMicrosoftAccountConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowMicrosoftAccountConnection-Applicability-End -->

<!-- AllowMicrosoftAccountConnection-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Accounts/AllowMicrosoftAccountConnection
```
<!-- AllowMicrosoftAccountConnection-OmaUri-End -->

<!-- AllowMicrosoftAccountConnection-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the user is allowed to use an MSA account for non-email related connection authentication and services. Most restricted value is 0.
<!-- AllowMicrosoftAccountConnection-Description-End -->

<!-- AllowMicrosoftAccountConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountConnection-Editable-End -->

<!-- AllowMicrosoftAccountConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMicrosoftAccountConnection-DFProperties-End -->

<!-- AllowMicrosoftAccountConnection-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowMicrosoftAccountConnection-AllowedValues-End -->

<!-- AllowMicrosoftAccountConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountConnection-Examples-End -->

<!-- AllowMicrosoftAccountConnection-End -->

<!-- AllowMicrosoftAccountSignInAssistant-Begin -->
## AllowMicrosoftAccountSignInAssistant

<!-- AllowMicrosoftAccountSignInAssistant-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowMicrosoftAccountSignInAssistant-Applicability-End -->

<!-- AllowMicrosoftAccountSignInAssistant-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Accounts/AllowMicrosoftAccountSignInAssistant
```
<!-- AllowMicrosoftAccountSignInAssistant-OmaUri-End -->

<!-- AllowMicrosoftAccountSignInAssistant-Description-Begin -->
<!-- Description-Source-DDF -->
Allows IT Admins the ability to disable the Microsoft Account Sign-In Assistant (wlidsvc) NT service.

> [!NOTE]
> If the MSA service is disabled, Windows Update will no longer offer feature updates to devices running Windows 10 1709 or higher. See Feature updates aren't being offered while other updates are.

> [!NOTE]
> If the MSA service is disabled, the Subscription Activation feature won't work properly and your users won't be able to "step-up" from Windows 10 Pro to Windows 10 Enterprise, because the MSA ticket for license authentication can't be generated. The machine will remain on Windows 10 Pro and no error will be displayed in the Activation Settings app.
<!-- AllowMicrosoftAccountSignInAssistant-Description-End -->

<!-- AllowMicrosoftAccountSignInAssistant-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountSignInAssistant-Editable-End -->

<!-- AllowMicrosoftAccountSignInAssistant-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMicrosoftAccountSignInAssistant-DFProperties-End -->

<!-- AllowMicrosoftAccountSignInAssistant-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Manual start. |
<!-- AllowMicrosoftAccountSignInAssistant-AllowedValues-End -->

<!-- AllowMicrosoftAccountSignInAssistant-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMicrosoftAccountSignInAssistant-Examples-End -->

<!-- AllowMicrosoftAccountSignInAssistant-End -->

<!-- DomainNamesForEmailSync-Begin -->
## DomainNamesForEmailSync

<!-- DomainNamesForEmailSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DomainNamesForEmailSync-Applicability-End -->

<!-- DomainNamesForEmailSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Accounts/DomainNamesForEmailSync
```
<!-- DomainNamesForEmailSync-OmaUri-End -->

<!-- DomainNamesForEmailSync-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- DomainNamesForEmailSync-Description-End -->

<!-- DomainNamesForEmailSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DomainNamesForEmailSync-Editable-End -->

<!-- DomainNamesForEmailSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DomainNamesForEmailSync-DFProperties-End -->

<!-- DomainNamesForEmailSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DomainNamesForEmailSync-Examples-End -->

<!-- DomainNamesForEmailSync-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Begin -->
## RestrictToEnterpriseDeviceAuthenticationOnly

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Applicability-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Accounts/RestrictToEnterpriseDeviceAuthenticationOnly
```
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-OmaUri-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether to only allow enterprise device authentication for the Microsoft Account Sign-in Assistant service (wlidsvc). By default, this setting is disabled and allows both user and device authentication. When the value is set to 1, only allow device authentication, and block user authentication.
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Description-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Most restricted value is 1.
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Editable-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-DFProperties-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow both device and user authentication. Don't block user authentication. |
| 1 | Only allow device authentication. Block user authentication. |
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-AllowedValues-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | MicrosoftAccount_RestrictToDeviceAuthenticationOnly |
| Path | MSAPolicy > AT > WindowsComponents > MicrosoftAccountCategory |
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-GpMapping-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestrictToEnterpriseDeviceAuthenticationOnly-Examples-End -->

<!-- RestrictToEnterpriseDeviceAuthenticationOnly-End -->

<!-- Accounts-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Accounts-CspMoreInfo-End -->

<!-- Accounts-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
