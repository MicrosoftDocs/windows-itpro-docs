---
title: LAPS CSP
description: Learn more about the LAPS CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- LAPS-Begin -->
# LAPS CSP

<!-- LAPS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Local Administrator Password Solution (LAPS) configuration service provider (CSP) is used by the enterprise to manage back up of local administrator account passwords. Windows supports a LAPS Group Policy Object that is entirely separate from the LAPS CSP. Many of the various settings are common across both the LAPS GPO and CSP (GPO does not support any of the Action-related settings). As long as at least one LAPS setting is configured via CSP, any GPO-configured settings will be ignored. Also see [Configure policy settings for Windows LAPS](/windows-server/identity/laps/laps-management-policy-settings).

> [!NOTE]
> For more information on specific OS updates required to use the Windows LAPS CSP and associated features, plus the current status of the Microsoft Entra LAPS scenario, see [Windows LAPS availability and Microsoft Entra LAPS public preview status](/windows-server/identity/laps/laps-overview#windows-laps-supported-platforms-and-azure-ad-laps-preview-status).

> [!TIP]
> This article covers the specific technical details of the LAPS CSP.  For more information about the scenarios in which the LAPS CSP would be used, see [Windows Local Administrator Password Solution](/windows-server/identity/laps/laps).
<!-- LAPS-Editable-End -->

<!-- LAPS-Tree-Begin -->
The following list shows the LAPS configuration service provider nodes:

- ./Device/Vendor/MSFT/LAPS
  - [Actions](#actions)
    - [ResetPassword](#actionsresetpassword)
    - [ResetPasswordStatus](#actionsresetpasswordstatus)
  - [Policies](#policies)
    - [ADEncryptedPasswordHistorySize](#policiesadencryptedpasswordhistorysize)
    - [AdministratorAccountName](#policiesadministratoraccountname)
    - [ADPasswordEncryptionEnabled](#policiesadpasswordencryptionenabled)
    - [ADPasswordEncryptionPrincipal](#policiesadpasswordencryptionprincipal)
    - [AutomaticAccountManagementEnableAccount](#policiesautomaticaccountmanagementenableaccount)
    - [AutomaticAccountManagementEnabled](#policiesautomaticaccountmanagementenabled)
    - [AutomaticAccountManagementNameOrPrefix](#policiesautomaticaccountmanagementnameorprefix)
    - [AutomaticAccountManagementRandomizeName](#policiesautomaticaccountmanagementrandomizename)
    - [AutomaticAccountManagementTarget](#policiesautomaticaccountmanagementtarget)
    - [BackupDirectory](#policiesbackupdirectory)
    - [PassphraseLength](#policiespassphraselength)
    - [PasswordAgeDays](#policiespasswordagedays)
    - [PasswordComplexity](#policiespasswordcomplexity)
    - [PasswordExpirationProtectionEnabled](#policiespasswordexpirationprotectionenabled)
    - [PasswordLength](#policiespasswordlength)
    - [PostAuthenticationActions](#policiespostauthenticationactions)
    - [PostAuthenticationResetDelay](#policiespostauthenticationresetdelay)
<!-- LAPS-Tree-End -->

<!-- Device-Actions-Begin -->
## Actions

<!-- Device-Actions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Actions-Applicability-End -->

<!-- Device-Actions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Actions
```
<!-- Device-Actions-OmaUri-End -->

<!-- Device-Actions-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Actions-Description-End -->

<!-- Device-Actions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Defines the parent interior node for all action-related settings in the LAPS CSP.
<!-- Device-Actions-Editable-End -->

<!-- Device-Actions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Actions-DFProperties-End -->

<!-- Device-Actions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Actions-Examples-End -->

<!-- Device-Actions-End -->

<!-- Device-Actions-ResetPassword-Begin -->
### Actions/ResetPassword

<!-- Device-Actions-ResetPassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Actions-ResetPassword-Applicability-End -->

<!-- Device-Actions-ResetPassword-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Actions/ResetPassword
```
<!-- Device-Actions-ResetPassword-OmaUri-End -->

<!-- Device-Actions-ResetPassword-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to tell the CSP to immediately generate and store a new password for the managed local administrator account.
<!-- Device-Actions-ResetPassword-Description-End -->

<!-- Device-Actions-ResetPassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This action invokes an immediate reset of the local administrator account password, ignoring the normal constraints such as PasswordLengthDays, etc.
<!-- Device-Actions-ResetPassword-Editable-End -->

<!-- Device-Actions-ResetPassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `null` |
| Access Type | Exec |
<!-- Device-Actions-ResetPassword-DFProperties-End -->

<!-- Device-Actions-ResetPassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Actions-ResetPassword-Examples-End -->

<!-- Device-Actions-ResetPassword-End -->

<!-- Device-Actions-ResetPasswordStatus-Begin -->
### Actions/ResetPasswordStatus

<!-- Device-Actions-ResetPasswordStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Actions-ResetPasswordStatus-Applicability-End -->

<!-- Device-Actions-ResetPasswordStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Actions/ResetPasswordStatus
```
<!-- Device-Actions-ResetPasswordStatus-OmaUri-End -->

<!-- Device-Actions-ResetPasswordStatus-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to query the status of the last submitted ResetPassword execute action.
<!-- Device-Actions-ResetPasswordStatus-Description-End -->

<!-- Device-Actions-ResetPasswordStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value returned is an HRESULT code:

- S_OK (0x0): The last submitted ResetPassword action succeeded.
- E_PENDING (0x8000000): The last submitted ResetPassword action is still executing.
- Other: The last submitted ResetPassword action encountered the returned error.
<!-- Device-Actions-ResetPasswordStatus-Editable-End -->

<!-- Device-Actions-ResetPasswordStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
| Default Value  | 0 |
<!-- Device-Actions-ResetPasswordStatus-DFProperties-End -->

<!-- Device-Actions-ResetPasswordStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Actions-ResetPasswordStatus-Examples-End -->

<!-- Device-Actions-ResetPasswordStatus-End -->

<!-- Device-Policies-Begin -->
## Policies

<!-- Device-Policies-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-Applicability-End -->

<!-- Device-Policies-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies
```
<!-- Device-Policies-OmaUri-End -->

<!-- Device-Policies-Description-Begin -->
<!-- Description-Source-DDF -->
Root node for LAPS policies.
<!-- Device-Policies-Description-End -->

<!-- Device-Policies-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-Editable-End -->

<!-- Device-Policies-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
| Atomic Required | True |
<!-- Device-Policies-DFProperties-End -->

<!-- Device-Policies-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-Examples-End -->

<!-- Device-Policies-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-Begin -->
### Policies/ADEncryptedPasswordHistorySize

<!-- Device-Policies-ADEncryptedPasswordHistorySize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-ADEncryptedPasswordHistorySize-Applicability-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/ADEncryptedPasswordHistorySize
```
<!-- Device-Policies-ADEncryptedPasswordHistorySize-OmaUri-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure how many previous encrypted passwords will be remembered in Active Directory.

If not specified, this setting will default to 0 passwords (disabled).

This setting has a minimum allowed value of 0 passwords.

This setting has a maximum allowed value of 12 passwords.
<!-- Device-Policies-ADEncryptedPasswordHistorySize-Description-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> This setting is ignored unless ADPasswordEncryptionEnabled is configured to True and all other prerequisites are met.
<!-- Device-Policies-ADEncryptedPasswordHistorySize-Editable-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-12]` |
| Default Value  | 0 |
| Dependency [BackupDirectory] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/BackupDirectory` <br> Dependency Allowed Value: `2` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-ADEncryptedPasswordHistorySize-DFProperties-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-ADEncryptedPasswordHistorySize-Examples-End -->

<!-- Device-Policies-ADEncryptedPasswordHistorySize-End -->

<!-- Device-Policies-AdministratorAccountName-Begin -->
### Policies/AdministratorAccountName

<!-- Device-Policies-AdministratorAccountName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-AdministratorAccountName-Applicability-End -->

<!-- Device-Policies-AdministratorAccountName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/AdministratorAccountName
```
<!-- Device-Policies-AdministratorAccountName-OmaUri-End -->

<!-- Device-Policies-AdministratorAccountName-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure the name of the managed local administrator account.

If not specified, the default built-in local administrator account will be located by well-known SID (even if renamed).

If specified, the specified account's password will be managed.

Note if a custom managed local administrator account name is specified in this setting, that account must be created via other means. Specifying a name in this setting won't cause the account to be created.
<!-- Device-Policies-AdministratorAccountName-Description-End -->

<!-- Device-Policies-AdministratorAccountName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-AdministratorAccountName-Editable-End -->

<!-- Device-Policies-AdministratorAccountName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-Policies-AdministratorAccountName-DFProperties-End -->

<!-- Device-Policies-AdministratorAccountName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-AdministratorAccountName-Examples-End -->

<!-- Device-Policies-AdministratorAccountName-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-Begin -->
### Policies/ADPasswordEncryptionEnabled

<!-- Device-Policies-ADPasswordEncryptionEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-ADPasswordEncryptionEnabled-Applicability-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/ADPasswordEncryptionEnabled
```
<!-- Device-Policies-ADPasswordEncryptionEnabled-OmaUri-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure whether the password is encrypted before being stored in Active Directory.

This setting is ignored if the password is currently being stored in Azure.

This setting is only honored when the Active Directory domain is at Windows Server 2016 Domain Functional Level or higher.

- If this setting is enabled, and the Active Directory domain meets the DFL prerequisite, the password will be encrypted before being stored in Active Directory.

- If this setting is disabled, or the Active Directory domain doesn't meet the DFL prerequisite, the password will be stored as clear-text in Active Directory.

If not specified, this setting defaults to True.
<!-- Device-Policies-ADPasswordEncryptionEnabled-Description-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> This setting is ignored unless BackupDirectory is configured to back up the password to Active Directory, AND the Active Directory domain is at Windows Server 2016 Domain Functional Level or higher.
<!-- Device-Policies-ADPasswordEncryptionEnabled-Editable-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | True |
| Dependency [BackupDirectory] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/BackupDirectory` <br> Dependency Allowed Value: `2` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-ADPasswordEncryptionEnabled-DFProperties-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Store the password in clear-text form in Active Directory. |
| true (Default) | Store the password in encrypted form in Active Directory. |
<!-- Device-Policies-ADPasswordEncryptionEnabled-AllowedValues-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-ADPasswordEncryptionEnabled-Examples-End -->

<!-- Device-Policies-ADPasswordEncryptionEnabled-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-Begin -->
### Policies/ADPasswordEncryptionPrincipal

<!-- Device-Policies-ADPasswordEncryptionPrincipal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-ADPasswordEncryptionPrincipal-Applicability-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/ADPasswordEncryptionPrincipal
```
<!-- Device-Policies-ADPasswordEncryptionPrincipal-OmaUri-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure the name or SID of a user or group that can decrypt the password stored in Active Directory.

This setting is ignored if the password is currently being stored in Azure.

If not specified, the password will be decryptable by the Domain Admins group in the device's domain.

If specified, the specified user or group will be able to decrypt the password stored in Active Directory.

If the specified user or group account is invalid the device will fallback to using the Domain Admins group in the device's domain.
<!-- Device-Policies-ADPasswordEncryptionPrincipal-Description-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> This setting is ignored unless ADPasswordEncryptionEnabled is configured to True and all other prerequisites are met. The string stored in this setting must be either a SID in string form or the fully qualified name of a user or group. Valid examples include:
>
> - `S-1-5-21-2127521184-1604012920-1887927527-35197`
> - `contoso\LAPSAdmins`
> - `lapsadmins@contoso.com`
>
> The principal identified (either by SID or user\group name) must exist and be resolvable by the device.
<!-- Device-Policies-ADPasswordEncryptionPrincipal-Editable-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [BackupDirectory] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/BackupDirectory` <br> Dependency Allowed Value: `2` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-ADPasswordEncryptionPrincipal-DFProperties-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-ADPasswordEncryptionPrincipal-Examples-End -->

<!-- Device-Policies-ADPasswordEncryptionPrincipal-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Begin -->
### Policies/AutomaticAccountManagementEnableAccount

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Applicability-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnableAccount
```
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-OmaUri-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure whether the automatically managed account is enabled or disabled.

- If this setting is enabled, the target account will be enabled.

- If this setting is disabled, the target account will be disabled.

If not specified, this setting defaults to False.
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Description-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Editable-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
| Dependency [AutomaticAccountManagementEnabled] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-DFProperties-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False (Default) | The target account will be disabled. |
| True | The target account will be enabled. |
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-AllowedValues-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementEnableAccount-Examples-End -->

<!-- Device-Policies-AutomaticAccountManagementEnableAccount-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-Begin -->
### Policies/AutomaticAccountManagementEnabled

<!-- Device-Policies-AutomaticAccountManagementEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- Device-Policies-AutomaticAccountManagementEnabled-Applicability-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled
```
<!-- Device-Policies-AutomaticAccountManagementEnabled-OmaUri-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to specify whether automatic account management is enabled.

- If this setting is enabled, the target account will be automatically managed.

- If this setting is disabled, the target account won't be automatically managed.

If not specified, this setting defaults to False.
<!-- Device-Policies-AutomaticAccountManagementEnabled-Description-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementEnabled-Editable-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
<!-- Device-Policies-AutomaticAccountManagementEnabled-DFProperties-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false (Default) | The target account won't be automatically managed. |
| true | The target account will be automatically managed. |
<!-- Device-Policies-AutomaticAccountManagementEnabled-AllowedValues-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementEnabled-Examples-End -->

<!-- Device-Policies-AutomaticAccountManagementEnabled-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Begin -->
### Policies/AutomaticAccountManagementNameOrPrefix

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Applicability-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementNameOrPrefix
```
<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-OmaUri-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure the name or prefix of the managed local administrator account.

If specified, the value will be used as the name or name prefix of the managed account.

If not specified, this setting will default to "WLapsAdmin".
<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Description-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Editable-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [AutomaticAccountManagementEnabled] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-DFProperties-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-Examples-End -->

<!-- Device-Policies-AutomaticAccountManagementNameOrPrefix-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Begin -->
### Policies/AutomaticAccountManagementRandomizeName

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Applicability-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementRandomizeName
```
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-OmaUri-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure whether the name of the automatically managed account uses a random numeric suffix each time the password is rotated.

If this setting is enabled, the name of the target account will use a random numeric suffix.

If this setting is disbled, the name of the target account won't use a random numeric suffix.

If not specified, this setting defaults to False.
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Description-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Editable-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | False |
| Dependency [AutomaticAccountManagementEnabled] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-DFProperties-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| False (Default) | The name of the target account won't use a random numeric suffix. |
| True | The name of the target account will use a random numeric suffix. |
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-AllowedValues-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementRandomizeName-Examples-End -->

<!-- Device-Policies-AutomaticAccountManagementRandomizeName-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-Begin -->
### Policies/AutomaticAccountManagementTarget

<!-- Device-Policies-AutomaticAccountManagementTarget-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- Device-Policies-AutomaticAccountManagementTarget-Applicability-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementTarget
```
<!-- Device-Policies-AutomaticAccountManagementTarget-OmaUri-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure which account is automatically managed.

The allowable settings are:

0=The builtin administrator account will be managed.

1=A new account created by Windows LAPS will be managed.

If not specified, this setting will default to 1.
<!-- Device-Policies-AutomaticAccountManagementTarget-Description-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementTarget-Editable-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [AutomaticAccountManagementEnabled] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/AutomaticAccountManagementEnabled` <br> Dependency Allowed Value: `true` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-AutomaticAccountManagementTarget-DFProperties-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Manage the built-in administrator account. |
| 1 (Default) | Manage a new custom administrator account. |
<!-- Device-Policies-AutomaticAccountManagementTarget-AllowedValues-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-AutomaticAccountManagementTarget-Examples-End -->

<!-- Device-Policies-AutomaticAccountManagementTarget-End -->

<!-- Device-Policies-BackupDirectory-Begin -->
### Policies/BackupDirectory

<!-- Device-Policies-BackupDirectory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-BackupDirectory-Applicability-End -->

<!-- Device-Policies-BackupDirectory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/BackupDirectory
```
<!-- Device-Policies-BackupDirectory-OmaUri-End -->

<!-- Device-Policies-BackupDirectory-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure which directory the local admin account password is backed up to.

The allowable settings are:

0=Disabled (password won't be backed up)
1=Backup the password to Microsoft Entra ID only
2=Backup the password to Active Directory only.

If not specified, this setting will default to 0.
<!-- Device-Policies-BackupDirectory-Description-End -->

<!-- Device-Policies-BackupDirectory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-BackupDirectory-Editable-End -->

<!-- Device-Policies-BackupDirectory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-Policies-BackupDirectory-DFProperties-End -->

<!-- Device-Policies-BackupDirectory-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled (password won't be backed up). |
| 1 | Backup the password to Microsoft Entra ID only. |
| 2 | Backup the password to Active Directory only. |
<!-- Device-Policies-BackupDirectory-AllowedValues-End -->

<!-- Device-Policies-BackupDirectory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-BackupDirectory-Examples-End -->

<!-- Device-Policies-BackupDirectory-End -->

<!-- Device-Policies-PassphraseLength-Begin -->
### Policies/PassphraseLength

<!-- Device-Policies-PassphraseLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- Device-Policies-PassphraseLength-Applicability-End -->

<!-- Device-Policies-PassphraseLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PassphraseLength
```
<!-- Device-Policies-PassphraseLength-OmaUri-End -->

<!-- Device-Policies-PassphraseLength-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure the number of passphrase words.

If not specified, this setting will default to 6 words.

This setting has a minimum allowed value of 3 words.

This setting has a maximum allowed value of 10 words.
<!-- Device-Policies-PassphraseLength-Description-End -->

<!-- Device-Policies-PassphraseLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-PassphraseLength-Editable-End -->

<!-- Device-Policies-PassphraseLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[3-10]` |
| Default Value  | 6 |
| Dependency [PasswordComplexity] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/PasswordComplexity` <br> Dependency Allowed Value: `[6-8]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-Policies-PassphraseLength-DFProperties-End -->

<!-- Device-Policies-PassphraseLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PassphraseLength-Examples-End -->

<!-- Device-Policies-PassphraseLength-End -->

<!-- Device-Policies-PasswordAgeDays-Begin -->
### Policies/PasswordAgeDays

<!-- Device-Policies-PasswordAgeDays-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-PasswordAgeDays-Applicability-End -->

<!-- Device-Policies-PasswordAgeDays-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PasswordAgeDays
```
<!-- Device-Policies-PasswordAgeDays-OmaUri-End -->

<!-- Device-Policies-PasswordAgeDays-Description-Begin -->
<!-- Description-Source-DDF -->
Use this policy to configure the maximum password age of the managed local administrator account.

If not specified, this setting will default to 30 days.

This setting has a minimum allowed value of 1 day when backing the password to on-premises Active Directory, and 7 days when backing the password to Microsoft Entra ID.

This setting has a maximum allowed value of 365 days.
<!-- Device-Policies-PasswordAgeDays-Description-End -->

<!-- Device-Policies-PasswordAgeDays-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-PasswordAgeDays-Editable-End -->

<!-- Device-Policies-PasswordAgeDays-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-365]` |
| Default Value  | 30 |
| Dependency [BackupDirectoryAADMode BackupDirectoryADMode] | Dependency Type: `DependsOn DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/BackupDirectory Vendor/MSFT/LAPS/Policies/BackupDirectory` <br> Dependency Allowed Value: ` ` <br> Dependency Allowed Value Type: `ENUM ENUM` <br>  |
<!-- Device-Policies-PasswordAgeDays-DFProperties-End -->

<!-- Device-Policies-PasswordAgeDays-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PasswordAgeDays-Examples-End -->

<!-- Device-Policies-PasswordAgeDays-End -->

<!-- Device-Policies-PasswordComplexity-Begin -->
### Policies/PasswordComplexity

<!-- Device-Policies-PasswordComplexity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-PasswordComplexity-Applicability-End -->

<!-- Device-Policies-PasswordComplexity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PasswordComplexity
```
<!-- Device-Policies-PasswordComplexity-OmaUri-End -->

<!-- Device-Policies-PasswordComplexity-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure password complexity of the managed local administrator account.

The allowable settings are:

1=Large letters
2=Large letters + small letters
3=Large letters + small letters + numbers
4=Large letters + small letters + numbers + special characters
5=Large letters + small letters + numbers + special characters (improved readability)
6=Passphrase (long words)
7=Passphrase (short words)
8=Passphrase (short words with unique prefixes)

If not specified, this setting will default to 4.

Passphrase list taken from "Deep Dive: EFF's New Wordlists for Random Passphrases" by Electronic Frontier Foundation, and is used under a CC-BY-3.0 Attribution license. See <https://go.microsoft.com/fwlink/?linkid=2255471> for more information.
<!-- Device-Policies-PasswordComplexity-Description-End -->

<!-- Device-Policies-PasswordComplexity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> Windows supports the lower password complexity settings (1, 2, and 3) only for backwards compatibility with older versions of LAPS. Microsoft recommends that this setting always be configured to 4.
<!-- Device-Policies-PasswordComplexity-Editable-End -->

<!-- Device-Policies-PasswordComplexity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 4 |
<!-- Device-Policies-PasswordComplexity-DFProperties-End -->

<!-- Device-Policies-PasswordComplexity-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Large letters. |
| 2 | Large letters + small letters. |
| 3 | Large letters + small letters + numbers. |
| 4 (Default) | Large letters + small letters + numbers + special characters. |
| 5 | Large letters + small letters + numbers + special characters (improved readability). |
| 6 | Passphrase (long words). |
| 7 | Passphrase (short words). |
| 8 | Passphrase (short words with unique prefixes). |
<!-- Device-Policies-PasswordComplexity-AllowedValues-End -->

<!-- Device-Policies-PasswordComplexity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PasswordComplexity-Examples-End -->

<!-- Device-Policies-PasswordComplexity-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-Begin -->
### Policies/PasswordExpirationProtectionEnabled

<!-- Device-Policies-PasswordExpirationProtectionEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-PasswordExpirationProtectionEnabled-Applicability-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PasswordExpirationProtectionEnabled
```
<!-- Device-Policies-PasswordExpirationProtectionEnabled-OmaUri-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure additional enforcement of maximum password age for the managed local administrator account.

When this setting is enabled, planned password expiration that would result in a password age greater than that dictated by "PasswordAgeDays" policy is NOT allowed. When such expiration is detected, the password is changed immediately and the new password expiration date is set according to policy.

If not specified, this setting defaults to True.
<!-- Device-Policies-PasswordExpirationProtectionEnabled-Description-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> This setting is ignored unless BackupDirectory is configured to back up the password to Active Directory.
<!-- Device-Policies-PasswordExpirationProtectionEnabled-Editable-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `bool` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | True |
| Dependency [BackupDirectory] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/BackupDirectory` <br> Dependency Allowed Value: `2` <br> Dependency Allowed Value Type: `ENUM` <br>  |
<!-- Device-Policies-PasswordExpirationProtectionEnabled-DFProperties-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| false | Allow configured password expiration timestamp to exceed maximum password age. |
| true (Default) | Don't allow configured password expiration timestamp to exceed maximum password age. |
<!-- Device-Policies-PasswordExpirationProtectionEnabled-AllowedValues-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PasswordExpirationProtectionEnabled-Examples-End -->

<!-- Device-Policies-PasswordExpirationProtectionEnabled-End -->

<!-- Device-Policies-PasswordLength-Begin -->
### Policies/PasswordLength

<!-- Device-Policies-PasswordLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-PasswordLength-Applicability-End -->

<!-- Device-Policies-PasswordLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PasswordLength
```
<!-- Device-Policies-PasswordLength-OmaUri-End -->

<!-- Device-Policies-PasswordLength-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to configure the length of the password of the managed local administrator account.

If not specified, this setting will default to 14 characters.

This setting has a minimum allowed value of 8 characters.

This setting has a maximum allowed value of 64 characters.
<!-- Device-Policies-PasswordLength-Description-End -->

<!-- Device-Policies-PasswordLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-PasswordLength-Editable-End -->

<!-- Device-Policies-PasswordLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[8-64]` |
| Default Value  | 14 |
| Dependency [PasswordComplexity] | Dependency Type: `DependsOn` <br> Dependency URI: `Vendor/MSFT/LAPS/Policies/PasswordComplexity` <br> Dependency Allowed Value: `[1-5]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-Policies-PasswordLength-DFProperties-End -->

<!-- Device-Policies-PasswordLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PasswordLength-Examples-End -->

<!-- Device-Policies-PasswordLength-End -->

<!-- Device-Policies-PostAuthenticationActions-Begin -->
### Policies/PostAuthenticationActions

<!-- Device-Policies-PostAuthenticationActions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-PostAuthenticationActions-Applicability-End -->

<!-- Device-Policies-PostAuthenticationActions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PostAuthenticationActions
```
<!-- Device-Policies-PostAuthenticationActions-OmaUri-End -->

<!-- Device-Policies-PostAuthenticationActions-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to specify the actions to take upon expiration of the configured grace period.

If not specified, this setting will default to 3 (Reset the password and logoff the managed account).
<!-- Device-Policies-PostAuthenticationActions-Description-End -->

<!-- Device-Policies-PostAuthenticationActions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> The allowed post-authentication actions are intended to help limit the amount of time that a LAPS password may be used before being reset. Logging off the managed account - or rebooting the device - are options to help ensure this. Abrupt termination of logon sessions, or rebooting the device, may result in data loss.

> [!IMPORTANT]
> From a security perspective, a malicious user who acquires administrative privileges on a device using a valid LAPS password does have the ultimate ability to prevent or circumvent these mechanisms.
<!-- Device-Policies-PostAuthenticationActions-Editable-End -->

<!-- Device-Policies-PostAuthenticationActions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- Device-Policies-PostAuthenticationActions-DFProperties-End -->

<!-- Device-Policies-PostAuthenticationActions-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Reset password: upon expiry of the grace period, the managed account password will be reset. |
| 3 (Default) | Reset the password and logoff the managed account: upon expiry of the grace period, the managed account password will be reset and any interactive logon sessions using the managed account will be terminated. |
| 5 | Reset the password and reboot: upon expiry of the grace period, the managed account password will be reset and the managed device will be immediately rebooted. |
| 11 | Reset the password, logoff the managed account, and terminate any remaining processes: upon expiration of the grace period, the managed account password is reset, any interactive logon sessions using the managed account are logged off, and any remaining processes are terminated. |
<!-- Device-Policies-PostAuthenticationActions-AllowedValues-End -->

<!-- Device-Policies-PostAuthenticationActions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PostAuthenticationActions-Examples-End -->

<!-- Device-Policies-PostAuthenticationActions-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-Begin -->
### Policies/PostAuthenticationResetDelay

<!-- Device-Policies-PostAuthenticationResetDelay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ [10.0.20348.1663] and later <br> ✅ [10.0.25145] and later <br> ✅ Windows 10, version 1809 [10.0.17763.4244] and later <br> ✅ Windows 10, version 2004 [10.0.19041.2784] and later <br> ✅ Windows 11, version 21H2 [10.0.22000.1754] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.1480] and later |
<!-- Device-Policies-PostAuthenticationResetDelay-Applicability-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/LAPS/Policies/PostAuthenticationResetDelay
```
<!-- Device-Policies-PostAuthenticationResetDelay-OmaUri-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-Description-Begin -->
<!-- Description-Source-DDF -->
Use this setting to specify the amount of time (in hours) to wait after an authentication before executing the specified post-authentication actions.

If not specified, this setting will default to 24 hours.

This setting has a minimum allowed value of 0 hours (this disables all post-authentication actions).

This setting has a maximum allowed value of 24 hours.
<!-- Device-Policies-PostAuthenticationResetDelay-Description-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Policies-PostAuthenticationResetDelay-Editable-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-24]` |
| Default Value  | 24 |
<!-- Device-Policies-PostAuthenticationResetDelay-DFProperties-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Policies-PostAuthenticationResetDelay-Examples-End -->

<!-- Device-Policies-PostAuthenticationResetDelay-End -->

<!-- LAPS-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Settings Applicability

The LAPS CSP can be used to manage devices that are either joined to Microsoft Entra ID or joined to both Microsoft Entra ID and Active Directory (hybrid-joined). The LAPS CSP manages a mix of Microsoft Entra-only and AD-only settings. The AD-only settings are only applicable for hybrid-joined devices, and then only when BackupDirectory is set to 2.

| Setting name                        | Azure-joined | Hybrid-joined |
|-------------------------------------|--------------|---------------|
| BackupDirectory                     | Yes          | Yes           |
| PasswordAgeDays                     | Yes          | Yes           |
| PasswordLength                      | Yes          | Yes           |
| PasswordComplexity                  | Yes          | Yes           |
| PasswordExpirationProtectionEnabled | No           | Yes           |
| AdministratorAccountName            | Yes          | Yes           |
| ADPasswordEncryptionEnabled         | No           | Yes           |
| ADPasswordEncryptionPrincipal       | No           | Yes           |
| ADEncryptedPasswordHistorySize      | No           | Yes           |
| PostAuthenticationResetDelay        | Yes          | Yes           |
| PostAuthenticationActions           | Yes          | Yes           |
| ResetPassword                       | Yes          | Yes           |
| ResetPasswordStatus                 | Yes          | Yes           |

## SyncML examples

The following examples are provided to show the correct format and shouldn't be considered as a recommendation.

<a name='azure-joined-device-backing-password-up-to-azure-ad'></a>

### Azure-joined device backing password up to Microsoft Entra ID

This example shows how to configure an Azure-joined device to back up its password to Microsoft Entra ID:

```xml
<SyncMl xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Add>
      <CmdId>1</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/BackupDirectory</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>1</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>2</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordAgeDays</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>7</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>3</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordComplexity</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>4</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>4</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordLength</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>32</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>5</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/AdministratorAccountName</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>ContosoLocalLapsAdmin</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>6</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PostAuthenticationResetDelay</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>8</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>7</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PostAuthenticationActions</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>3</Data>
      </Item>
    </Add>&lt;Final/&gt;</SyncBody>
</SyncMl>
```

### Hybrid-joined device backing password up to Active Directory

This example shows how to configure a hybrid device to back up its password to Active Directory with password encryption enabled:

```xml
<SyncMl xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Add>
      <CmdId>1</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/BackupDirectory</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>2</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>2</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordAgeDays</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>20</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>3</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordComplexity</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>3</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>4</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordLength</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>14</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>5</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/AdministratorAccountName</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>ContosoLocalLapsAdmin</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>6</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PasswordExpirationProtectionEnabled</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">bool</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>True</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>7</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/ADPasswordEncryptionEnabled</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">bool</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>True</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>8</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/ADPasswordEncryptionPrincipal</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>LAPSAdmins@contoso.com</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>9</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/ADEncryptedPasswordHistorySize</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>6</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>10</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PostAuthenticationResetDelay</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>4</Data>
      </Item>
    </Add>
    <Add>
      <CmdId>11</CmdId>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/LAPS/Policies/PostAuthenticationActions</LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">int</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>5</Data>
      </Item>
    </Add>&lt;Final/&gt;</SyncBody>
</SyncMl>
```
<!-- LAPS-CspMoreInfo-End -->

<!-- LAPS-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
