---
title: DeviceLock Policy CSP
description: Learn more about the DeviceLock Area in Policy CSP.
ms.date: 08/05/2024
---

<!-- Auto-Generated CSP Document -->

<!-- DeviceLock-Begin -->
# Policy CSP - DeviceLock

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- DeviceLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!IMPORTANT]
> The DeviceLock CSP utilizes the [Exchange ActiveSync Policy Engine](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)). When password length and complexity rules are applied, all the local user and administrator accounts are marked to change their password at the next sign in to ensure complexity requirements are met. For more information, see [Password length and complexity supported by account types](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)#password-length-and-complexity-supported-by-account-types).
<!-- DeviceLock-Editable-End -->

<!-- AccountLockoutPolicy-Begin -->
## AccountLockoutPolicy

<!-- AccountLockoutPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- AccountLockoutPolicy-Applicability-End -->

<!-- AccountLockoutPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/AccountLockoutPolicy
```
<!-- AccountLockoutPolicy-OmaUri-End -->

<!-- AccountLockoutPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Account lockout threshold - This security setting determines the number of failed logon attempts that causes a user account to be locked out. A locked-out account can't be used until it's reset by an administrator or until the lockout duration for the account has expired. You can set a value between 0 and 999 failed logon attempts. If you set the value to 0, the account will never be locked out. Failed password attempts against workstations or member servers that have been locked using either CTRL+ALT+DELETE or password-protected screen savers count as failed logon attempts. Default: 0 Account lockout duration - This security setting determines the number of minutes a locked-out account remains locked out before automatically becoming unlocked. The available range is from 0 minutes through 99,999 minutes. If you set the account lockout duration to 0, the account will be locked out until an administrator explicitly unlocks it. If an account lockout threshold is defined, the account lockout duration must be greater than or equal to the reset time. Default: None, because this policy setting only has meaning when an Account lockout threshold is specified. Reset account lockout counter after - This security setting determines the number of minutes that must elapse after a failed logon attempt before the failed logon attempt counter is reset to 0 bad logon attempts. The available range is 1 minute to 99,999 minutes. If an account lockout threshold is defined, this reset time must be less than or equal to the Account lockout duration. Default: None, because this policy setting only has meaning when an Account lockout threshold is specified.
<!-- AccountLockoutPolicy-Description-End -->

<!-- AccountLockoutPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AccountLockoutPolicy-Editable-End -->

<!-- AccountLockoutPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AccountLockoutPolicy-DFProperties-End -->

<!-- AccountLockoutPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AccountLockoutPolicy-Examples-End -->

<!-- AccountLockoutPolicy-End -->

<!-- AllowAdministratorLockout-Begin -->
## AllowAdministratorLockout

<!-- AllowAdministratorLockout-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- AllowAdministratorLockout-Applicability-End -->

<!-- AllowAdministratorLockout-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/AllowAdministratorLockout
```
<!-- AllowAdministratorLockout-OmaUri-End -->

<!-- AllowAdministratorLockout-Description-Begin -->
<!-- Description-Source-DDF -->
Allow Administrator account lockout This security setting determines whether the builtin Administrator account is subject to account lockout policy.
<!-- AllowAdministratorLockout-Description-End -->

<!-- AllowAdministratorLockout-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowAdministratorLockout-Editable-End -->

<!-- AllowAdministratorLockout-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- AllowAdministratorLockout-DFProperties-End -->

<!-- AllowAdministratorLockout-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Allow Administrator account lockout |
| Path | Windows Settings > Security Settings > Account Policies > Account Lockout Policy |
<!-- AllowAdministratorLockout-GpMapping-End -->

<!-- AllowAdministratorLockout-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowAdministratorLockout-Examples-End -->

<!-- AllowAdministratorLockout-End -->

<!-- AllowIdleReturnWithoutPassword-Begin -->
## AllowIdleReturnWithoutPassword

<!-- AllowIdleReturnWithoutPassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowIdleReturnWithoutPassword-Applicability-End -->

<!-- AllowIdleReturnWithoutPassword-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/AllowIdleReturnWithoutPassword
```
<!-- AllowIdleReturnWithoutPassword-OmaUri-End -->

<!-- AllowIdleReturnWithoutPassword-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether the user must input a PIN or password when the device resumes from an idle state.
<!-- AllowIdleReturnWithoutPassword-Description-End -->

<!-- AllowIdleReturnWithoutPassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Currently, this policy is supported only in HoloLens 2, HoloLens (1st gen) Commercial Suite, and HoloLens (1st gen) Development Edition.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
<!-- AllowIdleReturnWithoutPassword-Editable-End -->

<!-- AllowIdleReturnWithoutPassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [DeviceLock_AllowIdleReturnWithoutPassword_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowIdleReturnWithoutPassword-DFProperties-End -->

<!-- AllowIdleReturnWithoutPassword-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowIdleReturnWithoutPassword-AllowedValues-End -->

<!-- AllowIdleReturnWithoutPassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowIdleReturnWithoutPassword-Examples-End -->

<!-- AllowIdleReturnWithoutPassword-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-Begin -->
## AllowScreenTimeoutWhileLockedUserConfig

<!-- AllowScreenTimeoutWhileLockedUserConfig-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowScreenTimeoutWhileLockedUserConfig-Applicability-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/AllowScreenTimeoutWhileLockedUserConfig
```
<!-- AllowScreenTimeoutWhileLockedUserConfig-OmaUri-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices.
<!-- AllowScreenTimeoutWhileLockedUserConfig-Description-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowScreenTimeoutWhileLockedUserConfig-Editable-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowScreenTimeoutWhileLockedUserConfig-DFProperties-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allow. |
| 0 (Default) | Block. |
<!-- AllowScreenTimeoutWhileLockedUserConfig-AllowedValues-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowScreenTimeoutWhileLockedUserConfig-Examples-End -->

<!-- AllowScreenTimeoutWhileLockedUserConfig-End -->

<!-- AllowSimpleDevicePassword-Begin -->
## AllowSimpleDevicePassword

<!-- AllowSimpleDevicePassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowSimpleDevicePassword-Applicability-End -->

<!-- AllowSimpleDevicePassword-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/AllowSimpleDevicePassword
```
<!-- AllowSimpleDevicePassword-OmaUri-End -->

<!-- AllowSimpleDevicePassword-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether PINs or passwords such as 1111 or 1234 are allowed. For the desktop, it also controls the use of picture passwords.
<!-- AllowSimpleDevicePassword-Description-End -->

<!-- AllowSimpleDevicePassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
<!-- AllowSimpleDevicePassword-Editable-End -->

<!-- AllowSimpleDevicePassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [DeviceLock_AllowSimpleDevicePassword_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AllowSimpleDevicePassword-DFProperties-End -->

<!-- AllowSimpleDevicePassword-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSimpleDevicePassword-AllowedValues-End -->

<!-- AllowSimpleDevicePassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSimpleDevicePassword-Examples-End -->

<!-- AllowSimpleDevicePassword-End -->

<!-- AlphanumericDevicePasswordRequired-Begin -->
## AlphanumericDevicePasswordRequired

<!-- AlphanumericDevicePasswordRequired-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AlphanumericDevicePasswordRequired-Applicability-End -->

<!-- AlphanumericDevicePasswordRequired-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/AlphanumericDevicePasswordRequired
```
<!-- AlphanumericDevicePasswordRequired-OmaUri-End -->

<!-- AlphanumericDevicePasswordRequired-Description-Begin -->
<!-- Description-Source-DDF -->
Determines the type of PIN or password required. This policy only applies if the DeviceLock/DevicePasswordEnabled policy is set to 0.
<!-- AlphanumericDevicePasswordRequired-Description-End -->

<!-- AlphanumericDevicePasswordRequired-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> If **AlphanumericDevicePasswordRequired** is set to 1 or 2, then MinDevicePasswordLength = 0 and MinDevicePasswordComplexCharacters = 1.
> If **AlphanumericDevicePasswordRequired** is set to 0, then MinDevicePasswordLength = 4 and MinDevicePasswordComplexCharacters = 2.

> [!NOTE]
> This policy must be wrapped in an Atomic command. Always use the Replace command instead of Add for this policy in Windows for desktop editions (Home, Pro, Enterprise, and Education).
<!-- AlphanumericDevicePasswordRequired-Editable-End -->

<!-- AlphanumericDevicePasswordRequired-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
| Dependency [DeviceLock_AlphanumericDevicePasswordRequired_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- AlphanumericDevicePasswordRequired-DFProperties-End -->

<!-- AlphanumericDevicePasswordRequired-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Password or Alphanumeric PIN required. |
| 1 | Password or Numeric PIN required. |
| 2 (Default) | Password, Numeric PIN, or Alphanumeric PIN required. |
<!-- AlphanumericDevicePasswordRequired-AllowedValues-End -->

<!-- AlphanumericDevicePasswordRequired-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AlphanumericDevicePasswordRequired-Examples-End -->

<!-- AlphanumericDevicePasswordRequired-End -->

<!-- ClearTextPassword-Begin -->
## ClearTextPassword

<!-- ClearTextPassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- ClearTextPassword-Applicability-End -->

<!-- ClearTextPassword-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/ClearTextPassword
```
<!-- ClearTextPassword-OmaUri-End -->

<!-- ClearTextPassword-Description-Begin -->
<!-- Description-Source-DDF -->
Store passwords using reversible encryption
This security setting determines whether the operating system stores passwords using reversible encryption. This policy provides support for applications that use protocols that require knowledge of the user's password for authentication purposes. Storing passwords using reversible encryption is essentially the same as storing plaintext versions of the passwords. For this reason, this policy should never be enabled unless application requirements outweigh the need to protect password information. This policy is required when using Challenge-Handshake Authentication Protocol (CHAP) authentication through remote access or Internet Authentication Services (IAS). It's also required when using Digest Authentication in Internet Information Services (IIS).
<!-- ClearTextPassword-Description-End -->

<!-- ClearTextPassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClearTextPassword-Editable-End -->

<!-- ClearTextPassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 0 |
<!-- ClearTextPassword-DFProperties-End -->

<!-- ClearTextPassword-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Store passwords using reversible encryption |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- ClearTextPassword-GpMapping-End -->

<!-- ClearTextPassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClearTextPassword-Examples-End -->

<!-- ClearTextPassword-End -->

<!-- DevicePasswordEnabled-Begin -->
## DevicePasswordEnabled

<!-- DevicePasswordEnabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- DevicePasswordEnabled-Applicability-End -->

<!-- DevicePasswordEnabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled
```
<!-- DevicePasswordEnabled-OmaUri-End -->

<!-- DevicePasswordEnabled-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether device lock is enabled.
<!-- DevicePasswordEnabled-Description-End -->

<!-- DevicePasswordEnabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy must be wrapped in an Atomic command. Always use the Replace command instead of Add for this policy in Windows for desktop editions.

> [!IMPORTANT]
> The **DevicePasswordEnabled** setting must be set to 0 (device password is enabled) for the following policy settings to take effect:
>
> - AllowSimpleDevicePassword
> - MinDevicePasswordLength
> - AlphanumericDevicePasswordRequired
> - MaxDevicePasswordFailedAttempts
> - MaxInactivityTimeDeviceLock
> - MinDevicePasswordComplexCharacters
>
> If **DevicePasswordEnabled** is set to 0 (device password is enabled), then the following policies are set:
>
> - MinDevicePasswordLength is set to 4
> - MinDevicePasswordComplexCharacters is set to 1
>
> If **DevicePasswordEnabled** is set to 1 (device password is disabled), then the following DeviceLock policies are set to 0:
>
> - MinDevicePasswordLength
> - MinDevicePasswordComplexCharacters
>
> **DevicePasswordEnabled** should not be set to Enabled (0) when WMI is used to set the EAS DeviceLock policies given that it is Enabled by default in Policy CSP for backward compatibility with Windows 8.x. If **DevicePasswordEnabled** is set to Enabled(0) then Policy CSP will return an error stating that **DevicePasswordEnabled** already exists. Windows 8.x did not support DevicePassword policy. When disabling **DevicePasswordEnabled** (1), it should be the only policy set from the DeviceLock group of policies listed below:
>
> - AllowSimpleDevicePassword
> - MinDevicePasswordLength
> - AlphanumericDevicePasswordRequired
> - MinDevicePasswordComplexCharacters
> - DevicePasswordExpiration
> - DevicePasswordHistory
> - MaxDevicePasswordFailedAttempts
> - MaxInactivityTimeDeviceLock

> [!NOTE]
> DevicePasswordExpiration isn't supported through MDMWinsOverGP.
<!-- DevicePasswordEnabled-Editable-End -->

<!-- DevicePasswordEnabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- DevicePasswordEnabled-DFProperties-End -->

<!-- DevicePasswordEnabled-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Enabled. |
| 1 (Default) | Disabled. |
<!-- DevicePasswordEnabled-AllowedValues-End -->

<!-- DevicePasswordEnabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DevicePasswordEnabled-Examples-End -->

<!-- DevicePasswordEnabled-End -->

<!-- DevicePasswordExpiration-Begin -->
## DevicePasswordExpiration

<!-- DevicePasswordExpiration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- DevicePasswordExpiration-Applicability-End -->

<!-- DevicePasswordExpiration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordExpiration
```
<!-- DevicePasswordExpiration-OmaUri-End -->

<!-- DevicePasswordExpiration-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies when the password expires (in days).
<!-- DevicePasswordExpiration-Description-End -->

<!-- DevicePasswordExpiration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
If all policy values = 0, then 0; otherwise, Min policy value is the most secure value.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
<!-- DevicePasswordExpiration-Editable-End -->

<!-- DevicePasswordExpiration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-730]` |
| Default Value  | 0 |
| Dependency [DeviceLock_DevicePasswordExpiration_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- DevicePasswordExpiration-DFProperties-End -->

<!-- DevicePasswordExpiration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DevicePasswordExpiration-Examples-End -->

<!-- DevicePasswordExpiration-End -->

<!-- DevicePasswordHistory-Begin -->
## DevicePasswordHistory

<!-- DevicePasswordHistory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- DevicePasswordHistory-Applicability-End -->

<!-- DevicePasswordHistory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordHistory
```
<!-- DevicePasswordHistory-OmaUri-End -->

<!-- DevicePasswordHistory-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies how many passwords can be stored in the history that can't be used.
<!-- DevicePasswordHistory-Description-End -->

<!-- DevicePasswordHistory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The value includes the user's current password. This value denotes that with a setting of 1, the user can't reuse their current password when choosing a new password, while a setting of 5 means that a user can't set their new password to their current password or any of their previous four passwords.

Max policy value is the most restricted.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
<!-- DevicePasswordHistory-Editable-End -->

<!-- DevicePasswordHistory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-50]` |
| Default Value  | 0 |
| Dependency [DeviceLock_DevicePasswordHistory_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- DevicePasswordHistory-DFProperties-End -->

<!-- DevicePasswordHistory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DevicePasswordHistory-Examples-End -->

<!-- DevicePasswordHistory-End -->

<!-- EnforceLockScreenAndLogonImage-Begin -->
## EnforceLockScreenAndLogonImage

<!-- EnforceLockScreenAndLogonImage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- EnforceLockScreenAndLogonImage-Applicability-End -->

<!-- EnforceLockScreenAndLogonImage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/EnforceLockScreenAndLogonImage
```
<!-- EnforceLockScreenAndLogonImage-OmaUri-End -->

<!-- EnforceLockScreenAndLogonImage-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the default lock screen and logon image shown when no user is signed in. It also sets the specified image for all users, which replaces the default image. The same image is used for both the lock and logon screens. Users won't be able to change this image. Value type is a string, which is the full image filepath and filename.
<!-- EnforceLockScreenAndLogonImage-Description-End -->

<!-- EnforceLockScreenAndLogonImage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnforceLockScreenAndLogonImage-Editable-End -->

<!-- EnforceLockScreenAndLogonImage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnforceLockScreenAndLogonImage-DFProperties-End -->

<!-- EnforceLockScreenAndLogonImage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnforceLockScreenAndLogonImage-Examples-End -->

<!-- EnforceLockScreenAndLogonImage-End -->

<!-- EnforceLockScreenProvider-Begin -->
## EnforceLockScreenProvider

<!-- EnforceLockScreenProvider-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- EnforceLockScreenProvider-Applicability-End -->

<!-- EnforceLockScreenProvider-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/EnforceLockScreenProvider
```
<!-- EnforceLockScreenProvider-OmaUri-End -->

<!-- EnforceLockScreenProvider-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- EnforceLockScreenProvider-Description-End -->

<!-- EnforceLockScreenProvider-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnforceLockScreenProvider-Editable-End -->

<!-- EnforceLockScreenProvider-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnforceLockScreenProvider-DFProperties-End -->

<!-- EnforceLockScreenProvider-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnforceLockScreenProvider-Examples-End -->

<!-- EnforceLockScreenProvider-End -->

<!-- MaxDevicePasswordFailedAttempts-Begin -->
## MaxDevicePasswordFailedAttempts

<!-- MaxDevicePasswordFailedAttempts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- MaxDevicePasswordFailedAttempts-Applicability-End -->

<!-- MaxDevicePasswordFailedAttempts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MaxDevicePasswordFailedAttempts
```
<!-- MaxDevicePasswordFailedAttempts-OmaUri-End -->

<!-- MaxDevicePasswordFailedAttempts-Description-Begin -->
<!-- Description-Source-DDF -->
The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality.

> [!NOTE]
> This policy must be wrapped in an Atomic command. This policy has different behaviors on the mobile device and desktop. On a mobile device, when the user reaches the value set by this policy, then the device is wiped. On a desktop, when the user reaches the value set by this policy, it isn't wiped. Instead, the desktop is put on BitLocker recovery mode, which makes the data inaccessible but recoverable. If BitLocker isn't enabled, then the policy can't be enforced. Prior to reaching the failed attempts limit, the user is sent to the lock screen and warned that more failed attempts will lock their computer. When the user reaches the limit, the device automatically reboots and shows the BitLocker recovery page. This page prompts the user for the BitLocker recovery key. Most secure value is 0 if all policy values = 0; otherwise, Min policy value is the most secure value. For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)).
<!-- MaxDevicePasswordFailedAttempts-Description-End -->

<!-- MaxDevicePasswordFailedAttempts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaxDevicePasswordFailedAttempts-Editable-End -->

<!-- MaxDevicePasswordFailedAttempts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-999]` |
| Default Value  | 0 |
| Dependency [DeviceLock_MaxDevicePasswordFailedAttempts_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- MaxDevicePasswordFailedAttempts-DFProperties-End -->

<!-- MaxDevicePasswordFailedAttempts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxDevicePasswordFailedAttempts-Examples-End -->

<!-- MaxDevicePasswordFailedAttempts-End -->

<!-- MaximumPasswordAge-Begin -->
## MaximumPasswordAge

<!-- MaximumPasswordAge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- MaximumPasswordAge-Applicability-End -->

<!-- MaximumPasswordAge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MaximumPasswordAge
```
<!-- MaximumPasswordAge-OmaUri-End -->

<!-- MaximumPasswordAge-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines the period of time (in days) that a password can be used before the system requires the user to change it. You can set passwords to expire after a number of days between 1 and 999, or you can specify that passwords never expire by setting the number of days to 0. If the maximum password age is between 1 and 999 days, the Minimum password age must be less than the maximum password age. If the maximum password age is set to 0, the minimum password age can be any value between 0 and 998 days.

> [!NOTE]
> It's a security best practice to have passwords expire every 30 to 90 days, depending on your environment. This way, an attacker has a limited amount of time in which to crack a user's password and have access to your network resources. Default: 42.
<!-- MaximumPasswordAge-Description-End -->

<!-- MaximumPasswordAge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaximumPasswordAge-Editable-End -->

<!-- MaximumPasswordAge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-999]` |
| Default Value  | 42 |
<!-- MaximumPasswordAge-DFProperties-End -->

<!-- MaximumPasswordAge-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Maximum password age |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- MaximumPasswordAge-GpMapping-End -->

<!-- MaximumPasswordAge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaximumPasswordAge-Examples-End -->

<!-- MaximumPasswordAge-End -->

<!-- MaxInactivityTimeDeviceLock-Begin -->
## MaxInactivityTimeDeviceLock

<!-- MaxInactivityTimeDeviceLock-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- MaxInactivityTimeDeviceLock-Applicability-End -->

<!-- MaxInactivityTimeDeviceLock-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MaxInactivityTimeDeviceLock
```
<!-- MaxInactivityTimeDeviceLock-OmaUri-End -->

<!-- MaxInactivityTimeDeviceLock-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- MaxInactivityTimeDeviceLock-Description-End -->

<!-- MaxInactivityTimeDeviceLock-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked. Users can select any existing timeout value less than the specified maximum time in the Settings app.

On HoloLens, this timeout is controlled by the device's system sleep timeout, regardless of the value set by this policy.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
<!-- MaxInactivityTimeDeviceLock-Editable-End -->

<!-- MaxInactivityTimeDeviceLock-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-999]` |
| Default Value  | 0 |
| Dependency [DeviceLock_MaxInactivityTimeDeviceLock_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- MaxInactivityTimeDeviceLock-DFProperties-End -->

<!-- MaxInactivityTimeDeviceLock-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxInactivityTimeDeviceLock-Examples-End -->

<!-- MaxInactivityTimeDeviceLock-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Begin -->
## MaxInactivityTimeDeviceLockWithExternalDisplay

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Applicability-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay
```
<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-OmaUri-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Description-Begin -->
<!-- Description-Source-DDF -->
Sets the maximum timeout value for the external display.
<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Description-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Editable-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-999]` |
| Default Value  | 0 |
<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-DFProperties-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-Examples-End -->

<!-- MaxInactivityTimeDeviceLockWithExternalDisplay-End -->

<!-- MinDevicePasswordComplexCharacters-Begin -->
## MinDevicePasswordComplexCharacters

<!-- MinDevicePasswordComplexCharacters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- MinDevicePasswordComplexCharacters-Applicability-End -->

<!-- MinDevicePasswordComplexCharacters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MinDevicePasswordComplexCharacters
```
<!-- MinDevicePasswordComplexCharacters-OmaUri-End -->

<!-- MinDevicePasswordComplexCharacters-Description-Begin -->
<!-- Description-Source-DDF -->
The number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password.
<!-- MinDevicePasswordComplexCharacters-Description-End -->

<!-- MinDevicePasswordComplexCharacters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following list shows the supported values and actual enforced values:

| Account Type       | Supported Values | Actual Enforced Values |
|--------------------|------------------|------------------------|
| Local Accounts     | 1,2,3            | 3                      |
| Microsoft Accounts | 1,2              | &lt;p2                 |
| Domain Accounts    | Not supported    | Not supported          |

Enforced values for Local and Microsoft Accounts:

- Local accounts support values of 1, 2, and 3, however they always enforce a value of 3.
- Passwords for local accounts must meet the following minimum requirements:
  - Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
  - Be at least six characters in length
  - Contain characters from three of the following four categories:
    - English uppercase characters (A through Z)
    - English lowercase characters (a through z)
    - Base 10 digits (0 through 9)
    - Special characters (!, $, \#, %, etc.)

The enforcement of policies for Microsoft accounts happens on the server, and the server requires a password length of 8 and a complexity of 2. A complexity value of 3 or 4 is unsupported and setting this value on the server makes Microsoft accounts non-compliant.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

> [!NOTE]
> This policy must be wrapped in an Atomic command. Always use the Replace command instead of Add for this policy in Windows for desktop editions.
<!-- MinDevicePasswordComplexCharacters-Editable-End -->

<!-- MinDevicePasswordComplexCharacters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
| Dependency [DeviceLock_MinDevicePasswordComplexCharacters_DependencyGroup] | Dependency Type: `DependsOn DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled Device/Vendor/MSFT/Policy/Config/DeviceLock/AlphanumericDevicePasswordRequired` <br> Dependency Allowed Value: `[0] [0]` <br> Dependency Allowed Value Type: `Range Range` <br>  |
<!-- MinDevicePasswordComplexCharacters-DFProperties-End -->

<!-- MinDevicePasswordComplexCharacters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Digits only. |
| 2 | Digits and lowercase letters are required. |
| 3 | Digits lowercase letters and uppercase letters are required. Not supported in desktop Microsoft accounts and domain accounts. |
| 4 | Digits lowercase letters uppercase letters and special characters are required. Not supported in desktop. |
<!-- MinDevicePasswordComplexCharacters-AllowedValues-End -->

<!-- MinDevicePasswordComplexCharacters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MinDevicePasswordComplexCharacters-Examples-End -->

<!-- MinDevicePasswordComplexCharacters-End -->

<!-- MinDevicePasswordLength-Begin -->
## MinDevicePasswordLength

<!-- MinDevicePasswordLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- MinDevicePasswordLength-Applicability-End -->

<!-- MinDevicePasswordLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MinDevicePasswordLength
```
<!-- MinDevicePasswordLength-OmaUri-End -->

<!-- MinDevicePasswordLength-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies the minimum number or characters required in the PIN or password.
<!-- MinDevicePasswordLength-Description-End -->

<!-- MinDevicePasswordLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Max policy value is the most restricted.

For more information about this policy, see [Exchange ActiveSync Policy Engine Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn282287(v=ws.11)) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

> [!NOTE]
> This policy must be wrapped in an Atomic command. Always use the Replace command instead of Add for this policy in Windows for desktop editions.
<!-- MinDevicePasswordLength-Editable-End -->

<!-- MinDevicePasswordLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[4-16]` |
| Default Value  | 4 |
| Dependency [DeviceLock_MinDevicePasswordLength_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceLock/DevicePasswordEnabled` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- MinDevicePasswordLength-DFProperties-End -->

<!-- MinDevicePasswordLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

The following example shows how to set the minimum password length to 4 characters.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/DeviceLock/MinDevicePasswordLength</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>4</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```
<!-- MinDevicePasswordLength-Examples-End -->

<!-- MinDevicePasswordLength-End -->

<!-- MinimumPasswordAge-Begin -->
## MinimumPasswordAge

<!-- MinimumPasswordAge-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- MinimumPasswordAge-Applicability-End -->

<!-- MinimumPasswordAge-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MinimumPasswordAge
```
<!-- MinimumPasswordAge-OmaUri-End -->

<!-- MinimumPasswordAge-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines the period of time (in days) that a password must be used before the user can change it. You can set a value between 1 and 998 days, or you can allow changes immediately by setting the number of days to 0. The minimum password age must be less than the Maximum password age, unless the maximum password age is set to 0, indicating that passwords will never expire. If the maximum password age is set to 0, the minimum password age can be set to any value between 0 and 998. Configure the minimum password age to be more than 0 if you want Enforce password history to be effective. Without a minimum password age, users can cycle through passwords repeatedly until they get to an old favorite. The default setting doesn't follow this recommendation, so that an administrator can specify a password for a user and then require the user to change the administrator-defined password when the user logs on. If the password history is set to 0, the user doesn't have to choose a new password. For this reason, Enforce password history is set to 1 by default.
<!-- MinimumPasswordAge-Description-End -->

<!-- MinimumPasswordAge-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MinimumPasswordAge-Editable-End -->

<!-- MinimumPasswordAge-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-998]` |
| Default Value  | 1 |
<!-- MinimumPasswordAge-DFProperties-End -->

<!-- MinimumPasswordAge-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Minimum password age |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- MinimumPasswordAge-GpMapping-End -->

<!-- MinimumPasswordAge-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MinimumPasswordAge-Examples-End -->

<!-- MinimumPasswordAge-End -->

<!-- MinimumPasswordLength-Begin -->
## MinimumPasswordLength

<!-- MinimumPasswordLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- MinimumPasswordLength-Applicability-End -->

<!-- MinimumPasswordLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MinimumPasswordLength
```
<!-- MinimumPasswordLength-OmaUri-End -->

<!-- MinimumPasswordLength-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines the least number of characters that a password for a user account may contain. The maximum value for this setting depends on the value of the Relax minimum password length limits setting. If the Relax minimum password length limits setting isn't defined, this setting may be configured from 0 to 14. If the Relax minimum password length limits setting is defined and disabled, this setting may be configured from 0 to 14. If the Relax minimum password length limits setting is defined and enabled, this setting may be configured from 0 to 128. Setting the required number of characters to 0 means that no password is required.

> [!NOTE]
> By default, member computers follow the configuration of their domain controllers. Default values: 7 on domain controllers 0 on stand-alone servers Configuring this setting larger than 14 may affect compatibility with clients, services, and applications. We recommend that you only configure this setting larger than 14 after you use the Minimum password length audit setting to test for potential incompatibilities at the new setting.
<!-- MinimumPasswordLength-Description-End -->

<!-- MinimumPasswordLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MinimumPasswordLength-Editable-End -->

<!-- MinimumPasswordLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-128]` |
| Default Value  | 0 |
<!-- MinimumPasswordLength-DFProperties-End -->

<!-- MinimumPasswordLength-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Minimum password length |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- MinimumPasswordLength-GpMapping-End -->

<!-- MinimumPasswordLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MinimumPasswordLength-Examples-End -->

<!-- MinimumPasswordLength-End -->

<!-- MinimumPasswordLengthAudit-Begin -->
## MinimumPasswordLengthAudit

<!-- MinimumPasswordLengthAudit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- MinimumPasswordLengthAudit-Applicability-End -->

<!-- MinimumPasswordLengthAudit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/MinimumPasswordLengthAudit
```
<!-- MinimumPasswordLengthAudit-OmaUri-End -->

<!-- MinimumPasswordLengthAudit-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines the minimum password length for which password length audit warning events are issued. This setting may be configured from 1 to 128. You should only enable and configure this setting when you try to determine the potential effect of increasing the minimum password length setting in your environment. If this setting isn't defined, audit events won't be issued. If this setting is defined and is less than or equal to the minimum password length setting, audit events won't be issued. If this setting is defined and is greater than the minimum password length setting, and the length of a new account password is less than this setting, an audit event will be issued.
<!-- MinimumPasswordLengthAudit-Description-End -->

<!-- MinimumPasswordLengthAudit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MinimumPasswordLengthAudit-Editable-End -->

<!-- MinimumPasswordLengthAudit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[1-128]` |
| Default Value  | 4294967295 |
<!-- MinimumPasswordLengthAudit-DFProperties-End -->

<!-- MinimumPasswordLengthAudit-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Minimum password length audit |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- MinimumPasswordLengthAudit-GpMapping-End -->

<!-- MinimumPasswordLengthAudit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MinimumPasswordLengthAudit-Examples-End -->

<!-- MinimumPasswordLengthAudit-End -->

<!-- PasswordComplexity-Begin -->
## PasswordComplexity

<!-- PasswordComplexity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- PasswordComplexity-Applicability-End -->

<!-- PasswordComplexity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/PasswordComplexity
```
<!-- PasswordComplexity-OmaUri-End -->

<!-- PasswordComplexity-Description-Begin -->
<!-- Description-Source-Manual-Forced -->
<!-- PasswordComplexity-Description-End -->

<!-- PasswordComplexity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Password must meet complexity requirements. This security setting determines whether passwords must meet complexity requirements. If this policy is enabled, passwords must meet the following minimum requirements:

- Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
- Be at least six characters in length
- Contain characters from three of the following four categories:
  - English uppercase characters (A through Z)
  - English lowercase characters (a through z)
  - Base 10 digits (0 through 9)
  - Non-alphabetic characters (for example, !, $, #, %)

Complexity requirements are enforced when passwords are changed or created.
<!-- PasswordComplexity-Editable-End -->

<!-- PasswordComplexity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-1]` |
| Default Value  | 1 |
<!-- PasswordComplexity-DFProperties-End -->

<!-- PasswordComplexity-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Password must meet complexity requirements |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- PasswordComplexity-GpMapping-End -->

<!-- PasswordComplexity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PasswordComplexity-Examples-End -->

<!-- PasswordComplexity-End -->

<!-- PasswordHistorySize-Begin -->
## PasswordHistorySize

<!-- PasswordHistorySize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- PasswordHistorySize-Applicability-End -->

<!-- PasswordHistorySize-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/PasswordHistorySize
```
<!-- PasswordHistorySize-OmaUri-End -->

<!-- PasswordHistorySize-Description-Begin -->
<!-- Description-Source-DDF -->
Enforce password history
This security setting determines the number of unique new passwords that have to be associated with a user account before an old password can be reused. The value must be between 0 and 24 passwords. This policy enables administrators to enhance security by ensuring that old passwords aren't reused continually. Default: 24 on domain controllers. 0 on stand-alone servers.

> [!NOTE]
> By default, member computers follow the configuration of their domain controllers. To maintain the effectiveness of the password history, don't allow passwords to be changed immediately after they were just changed by also enabling the Minimum password age security policy setting. For information about the minimum password age security policy setting, see Minimum password age.
<!-- PasswordHistorySize-Description-End -->

<!-- PasswordHistorySize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PasswordHistorySize-Editable-End -->

<!-- PasswordHistorySize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-24]` |
| Default Value  | 24 |
<!-- PasswordHistorySize-DFProperties-End -->

<!-- PasswordHistorySize-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Enforce password history |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- PasswordHistorySize-GpMapping-End -->

<!-- PasswordHistorySize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PasswordHistorySize-Examples-End -->

<!-- PasswordHistorySize-End -->

<!-- PreventEnablingLockScreenCamera-Begin -->
## PreventEnablingLockScreenCamera

<!-- PreventEnablingLockScreenCamera-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- PreventEnablingLockScreenCamera-Applicability-End -->

<!-- PreventEnablingLockScreenCamera-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/PreventEnablingLockScreenCamera
```
<!-- PreventEnablingLockScreenCamera-OmaUri-End -->

<!-- PreventEnablingLockScreenCamera-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the lock screen camera toggle switch in PC Settings and prevents a camera from being invoked on the lock screen.

By default, users can enable invocation of an available camera on the lock screen.

If you enable this setting, users will no longer be able to enable or disable lock screen camera access in PC Settings, and the camera can't be invoked on the lock screen.
<!-- PreventEnablingLockScreenCamera-Description-End -->

<!-- PreventEnablingLockScreenCamera-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventEnablingLockScreenCamera-Editable-End -->

<!-- PreventEnablingLockScreenCamera-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventEnablingLockScreenCamera-DFProperties-End -->

<!-- PreventEnablingLockScreenCamera-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoLockScreenCamera |
| Friendly Name | Prevent enabling lock screen camera |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoLockScreenCamera |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- PreventEnablingLockScreenCamera-AdmxBacked-End -->

<!-- PreventEnablingLockScreenCamera-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventEnablingLockScreenCamera-Examples-End -->

<!-- PreventEnablingLockScreenCamera-End -->

<!-- PreventLockScreenSlideShow-Begin -->
## PreventLockScreenSlideShow

<!-- PreventLockScreenSlideShow-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- PreventLockScreenSlideShow-Applicability-End -->

<!-- PreventLockScreenSlideShow-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/PreventLockScreenSlideShow
```
<!-- PreventLockScreenSlideShow-OmaUri-End -->

<!-- PreventLockScreenSlideShow-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the lock screen slide show settings in PC Settings and prevents a slide show from playing on the lock screen.

By default, users can enable a slide show that will run after they lock the machine.

If you enable this setting, users will no longer be able to modify slide show settings in PC Settings, and no slide show will ever start.
<!-- PreventLockScreenSlideShow-Description-End -->

<!-- PreventLockScreenSlideShow-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventLockScreenSlideShow-Editable-End -->

<!-- PreventLockScreenSlideShow-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventLockScreenSlideShow-DFProperties-End -->

<!-- PreventLockScreenSlideShow-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CPL_Personalization_NoLockScreenSlideshow |
| Friendly Name | Prevent enabling lock screen slide show |
| Location | Computer Configuration |
| Path | Control Panel > Personalization |
| Registry Key Name | Software\Policies\Microsoft\Windows\Personalization |
| Registry Value Name | NoLockScreenSlideshow |
| ADMX File Name | ControlPanelDisplay.admx |
<!-- PreventLockScreenSlideShow-AdmxBacked-End -->

<!-- PreventLockScreenSlideShow-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventLockScreenSlideShow-Examples-End -->

<!-- PreventLockScreenSlideShow-End -->

<!-- RelaxMinimumPasswordLengthLimits-Begin -->
## RelaxMinimumPasswordLengthLimits

<!-- RelaxMinimumPasswordLengthLimits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- RelaxMinimumPasswordLengthLimits-Applicability-End -->

<!-- RelaxMinimumPasswordLengthLimits-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/RelaxMinimumPasswordLengthLimits
```
<!-- RelaxMinimumPasswordLengthLimits-OmaUri-End -->

<!-- RelaxMinimumPasswordLengthLimits-Description-Begin -->
<!-- Description-Source-DDF -->
This setting controls whether the minimum password length setting can be increased beyond the legacy limit of 14. If this setting isn't defined, minimum password length may be configured to no more than 14. If this setting is defined and disabled, minimum password length may be configured to no more than 14. If this setting is defined and enabled, minimum password length may be configured more than 14.
<!-- RelaxMinimumPasswordLengthLimits-Description-End -->

<!-- RelaxMinimumPasswordLengthLimits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RelaxMinimumPasswordLengthLimits-Editable-End -->

<!-- RelaxMinimumPasswordLengthLimits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RelaxMinimumPasswordLengthLimits-DFProperties-End -->

<!-- RelaxMinimumPasswordLengthLimits-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- RelaxMinimumPasswordLengthLimits-AllowedValues-End -->

<!-- RelaxMinimumPasswordLengthLimits-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Relax minimum password length |
| Path | Windows Settings > Security Settings > Account Policies > Password Policy |
<!-- RelaxMinimumPasswordLengthLimits-GpMapping-End -->

<!-- RelaxMinimumPasswordLengthLimits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RelaxMinimumPasswordLengthLimits-Examples-End -->

<!-- RelaxMinimumPasswordLengthLimits-End -->

<!-- ScreenTimeoutWhileLocked-Begin -->
## ScreenTimeoutWhileLocked

<!-- ScreenTimeoutWhileLocked-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- ScreenTimeoutWhileLocked-Applicability-End -->

<!-- ScreenTimeoutWhileLocked-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceLock/ScreenTimeoutWhileLocked
```
<!-- ScreenTimeoutWhileLocked-OmaUri-End -->

<!-- ScreenTimeoutWhileLocked-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices.
<!-- ScreenTimeoutWhileLocked-Description-End -->

<!-- ScreenTimeoutWhileLocked-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ScreenTimeoutWhileLocked-Editable-End -->

<!-- ScreenTimeoutWhileLocked-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[10-1800]` |
| Default Value  | 10 |
<!-- ScreenTimeoutWhileLocked-DFProperties-End -->

<!-- ScreenTimeoutWhileLocked-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ScreenTimeoutWhileLocked-Examples-End -->

<!-- ScreenTimeoutWhileLocked-End -->

<!-- DeviceLock-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeviceLock-CspMoreInfo-End -->

<!-- DeviceLock-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
