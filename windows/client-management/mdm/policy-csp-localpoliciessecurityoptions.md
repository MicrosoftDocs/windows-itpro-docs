---
title: LocalPoliciesSecurityOptions Policy CSP
description: Learn more about the LocalPoliciesSecurityOptions Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/11/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- LocalPoliciesSecurityOptions-Begin -->
# Policy CSP - LocalPoliciesSecurityOptions

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- LocalPoliciesSecurityOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To find data formats (and other policy-related details), see [Policy DDF file](./configuration-service-provider-ddf.md).
<!-- LocalPoliciesSecurityOptions-Editable-End -->

<!-- Accounts_BlockMicrosoftAccounts-Begin -->
## Accounts_BlockMicrosoftAccounts

<!-- Accounts_BlockMicrosoftAccounts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Accounts_BlockMicrosoftAccounts-Applicability-End -->

<!-- Accounts_BlockMicrosoftAccounts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Accounts_BlockMicrosoftAccounts
```
<!-- Accounts_BlockMicrosoftAccounts-OmaUri-End -->

<!-- Accounts_BlockMicrosoftAccounts-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting prevents users from adding new Microsoft accounts on this computer. If you select the "Users can't add Microsoft accounts" option, users won't be able to create new Microsoft accounts on this computer, switch a local account to a Microsoft account, or connect a domain account to a Microsoft account. This is the preferred option if you need to limit the use of Microsoft accounts in your enterprise. If you select the "Users can't add or log on with Microsoft accounts" option, existing Microsoft account users won't be able to log on to Windows. Selecting this option might make it impossible for an existing administrator on this computer to log on and manage the system. If you disable or don't configure this policy (recommended), users will be able to use Microsoft accounts with Windows.
<!-- Accounts_BlockMicrosoftAccounts-Description-End -->

<!-- Accounts_BlockMicrosoftAccounts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts_BlockMicrosoftAccounts-Editable-End -->

<!-- Accounts_BlockMicrosoftAccounts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Accounts_BlockMicrosoftAccounts-DFProperties-End -->

<!-- Accounts_BlockMicrosoftAccounts-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled (users will be able to use Microsoft accounts with Windows). |
| 1 | Enabled (users can't add Microsoft accounts). |
| 3 | Users can't add or log on with Microsoft accounts. |
<!-- Accounts_BlockMicrosoftAccounts-AllowedValues-End -->

<!-- Accounts_BlockMicrosoftAccounts-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Accounts: Block Microsoft accounts |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Accounts_BlockMicrosoftAccounts-GpMapping-End -->

<!-- Accounts_BlockMicrosoftAccounts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Accounts_BlockMicrosoftAccounts-Examples-End -->

<!-- Accounts_BlockMicrosoftAccounts-End -->

<!-- Accounts_EnableAdministratorAccountStatus-Begin -->
## Accounts_EnableAdministratorAccountStatus

<!-- Accounts_EnableAdministratorAccountStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Accounts_EnableAdministratorAccountStatus-Applicability-End -->

<!-- Accounts_EnableAdministratorAccountStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Accounts_EnableAdministratorAccountStatus
```
<!-- Accounts_EnableAdministratorAccountStatus-OmaUri-End -->

<!-- Accounts_EnableAdministratorAccountStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines whether the local Administrator account is enabled or disabled.

> [!NOTE]
> If you try to reenable the Administrator account after it has been disabled, and if the current Administrator password doesn't meet the password requirements, you can't reenable the account. In this case, an alternative member of the Administrators group must reset the password on the Administrator account. For information about how to reset a password, see To reset a password. Disabling the Administrator account can become a maintenance issue under certain circumstances. Under Safe Mode boot, the disabled Administrator account will only be enabled if the machine is non-domain joined and there are no other local active administrator accounts. If the computer is domain joined the disabled administrator won't be enabled. Default: Disabled.
<!-- Accounts_EnableAdministratorAccountStatus-Description-End -->

<!-- Accounts_EnableAdministratorAccountStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts_EnableAdministratorAccountStatus-Editable-End -->

<!-- Accounts_EnableAdministratorAccountStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Accounts_EnableAdministratorAccountStatus-DFProperties-End -->

<!-- Accounts_EnableAdministratorAccountStatus-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- Accounts_EnableAdministratorAccountStatus-AllowedValues-End -->

<!-- Accounts_EnableAdministratorAccountStatus-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Accounts: Administrator account status |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Accounts_EnableAdministratorAccountStatus-GpMapping-End -->

<!-- Accounts_EnableAdministratorAccountStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Accounts_EnableAdministratorAccountStatus-Examples-End -->

<!-- Accounts_EnableAdministratorAccountStatus-End -->

<!-- Accounts_EnableGuestAccountStatus-Begin -->
## Accounts_EnableGuestAccountStatus

<!-- Accounts_EnableGuestAccountStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Accounts_EnableGuestAccountStatus-Applicability-End -->

<!-- Accounts_EnableGuestAccountStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Accounts_EnableGuestAccountStatus
```
<!-- Accounts_EnableGuestAccountStatus-OmaUri-End -->

<!-- Accounts_EnableGuestAccountStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines if the Guest account is enabled or disabled. Default: Disabled.

> [!NOTE]
> If the Guest account is disabled and the security option Network Access: Sharing and Security Model for local accounts is set to Guest Only, network logons, such as those performed by the Microsoft Network Server (SMB Service), will fail.
<!-- Accounts_EnableGuestAccountStatus-Description-End -->

<!-- Accounts_EnableGuestAccountStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts_EnableGuestAccountStatus-Editable-End -->

<!-- Accounts_EnableGuestAccountStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Accounts_EnableGuestAccountStatus-DFProperties-End -->

<!-- Accounts_EnableGuestAccountStatus-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- Accounts_EnableGuestAccountStatus-AllowedValues-End -->

<!-- Accounts_EnableGuestAccountStatus-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Accounts: Guest account status |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Accounts_EnableGuestAccountStatus-GpMapping-End -->

<!-- Accounts_EnableGuestAccountStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Accounts_EnableGuestAccountStatus-Examples-End -->

<!-- Accounts_EnableGuestAccountStatus-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Begin -->
## Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Applicability-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly
```
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-OmaUri-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Description-Begin -->
<!-- Description-Source-DDF -->
Accounts: Limit local account use of blank passwords to console logon only This security setting determines whether local accounts that aren't password protected can be used to log on from locations other than the physical computer console. If enabled, local accounts that aren't password protected will only be able to log on at the computer's keyboard. Default: Enabled.

> [!WARNING]
> Computers that aren't in physically secure locations should always enforce strong password policies for all local user accounts. Otherwise, anyone with physical access to the computer can log on by using a user account that doesn't have a password. This is especially important for portable computers. If you apply this security policy to the Everyone group, no one will be able to log on through Remote Desktop Services.

> [!NOTE]
> This setting doesn't affect logons that use domain accounts. It's possible for applications that use remote interactive logons to bypass this setting.
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Description-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Editable-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-DFProperties-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-AllowedValues-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Accounts: Limit local account use of blank passwords to console logon only |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-GpMapping-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-Examples-End -->

<!-- Accounts_LimitLocalAccountUseOfBlankPasswordsToConsoleLogonOnly-End -->

<!-- Accounts_RenameAdministratorAccount-Begin -->
## Accounts_RenameAdministratorAccount

<!-- Accounts_RenameAdministratorAccount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Accounts_RenameAdministratorAccount-Applicability-End -->

<!-- Accounts_RenameAdministratorAccount-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Accounts_RenameAdministratorAccount
```
<!-- Accounts_RenameAdministratorAccount-OmaUri-End -->

<!-- Accounts_RenameAdministratorAccount-Description-Begin -->
<!-- Description-Source-DDF -->
Accounts: Rename administrator account This security setting determines whether a different account name is associated with the security identifier (SID) for the account Administrator. Renaming the well-known Administrator account makes it slightly more difficult for unauthorized persons to guess this privileged user name and password combination. Default: Administrator.
<!-- Accounts_RenameAdministratorAccount-Description-End -->

<!-- Accounts_RenameAdministratorAccount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts_RenameAdministratorAccount-Editable-End -->

<!-- Accounts_RenameAdministratorAccount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | Administrator |
<!-- Accounts_RenameAdministratorAccount-DFProperties-End -->

<!-- Accounts_RenameAdministratorAccount-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Accounts: Rename administrator account |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Accounts_RenameAdministratorAccount-GpMapping-End -->

<!-- Accounts_RenameAdministratorAccount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Accounts_RenameAdministratorAccount-Examples-End -->

<!-- Accounts_RenameAdministratorAccount-End -->

<!-- Accounts_RenameGuestAccount-Begin -->
## Accounts_RenameGuestAccount

<!-- Accounts_RenameGuestAccount-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Accounts_RenameGuestAccount-Applicability-End -->

<!-- Accounts_RenameGuestAccount-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Accounts_RenameGuestAccount
```
<!-- Accounts_RenameGuestAccount-OmaUri-End -->

<!-- Accounts_RenameGuestAccount-Description-Begin -->
<!-- Description-Source-DDF -->
Accounts: Rename guest account This security setting determines whether a different account name is associated with the security identifier (SID) for the account "Guest". Renaming the well-known Guest account makes it slightly more difficult for unauthorized persons to guess this user name and password combination. Default: Guest.
<!-- Accounts_RenameGuestAccount-Description-End -->

<!-- Accounts_RenameGuestAccount-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Accounts_RenameGuestAccount-Editable-End -->

<!-- Accounts_RenameGuestAccount-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | Guest |
<!-- Accounts_RenameGuestAccount-DFProperties-End -->

<!-- Accounts_RenameGuestAccount-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Accounts: Rename guest account |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Accounts_RenameGuestAccount-GpMapping-End -->

<!-- Accounts_RenameGuestAccount-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Accounts_RenameGuestAccount-Examples-End -->

<!-- Accounts_RenameGuestAccount-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Begin -->
## Devices_AllowedToFormatAndEjectRemovableMedia

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Applicability-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Devices_AllowedToFormatAndEjectRemovableMedia
```
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-OmaUri-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Description-Begin -->
<!-- Description-Source-DDF -->
Devices: Allowed to format and eject removable media This security setting determines who is allowed to format and eject removable NTFS media. This capability can be given to: Administrators Administrators and Interactive Users Default: This policy isn't defined and only Administrators have this ability.
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Description-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Editable-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-DFProperties-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Devices: Allowed to format and eject removable media |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-GpMapping-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Devices_AllowedToFormatAndEjectRemovableMedia-Examples-End -->

<!-- Devices_AllowedToFormatAndEjectRemovableMedia-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-Begin -->
## Devices_AllowUndockWithoutHavingToLogon

<!-- Devices_AllowUndockWithoutHavingToLogon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Devices_AllowUndockWithoutHavingToLogon-Applicability-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Devices_AllowUndockWithoutHavingToLogon
```
<!-- Devices_AllowUndockWithoutHavingToLogon-OmaUri-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-Description-Begin -->
<!-- Description-Source-DDF -->
Devices: Allow undock without having to log on This security setting determines whether a portable computer can be undocked without having to log on. If this policy is enabled, logon isn't required and an external hardware eject button can be used to undock the computer. If disabled, a user must log on and have the Remove computer from docking station privilege to undock the computer. Default: Enabled.

> [!CAUTION]
> Disabling this policy may tempt users to try and physically remove the laptop from its docking station using methods other than the external hardware eject button. Since this may cause damage to the hardware, this setting, in general, should only be disabled on laptop configurations that are physically securable.
<!-- Devices_AllowUndockWithoutHavingToLogon-Description-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Devices_AllowUndockWithoutHavingToLogon-Editable-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Devices_AllowUndockWithoutHavingToLogon-DFProperties-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Allow. |
| 0 | Block. |
<!-- Devices_AllowUndockWithoutHavingToLogon-AllowedValues-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Devices: Allow undock without having to log on |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Devices_AllowUndockWithoutHavingToLogon-GpMapping-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Devices_AllowUndockWithoutHavingToLogon-Examples-End -->

<!-- Devices_AllowUndockWithoutHavingToLogon-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Begin -->
## Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Applicability-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters
```
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-OmaUri-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Description-Begin -->
<!-- Description-Source-DDF -->
Devices: Prevent users from installing printer drivers when connecting to shared printers For a computer to print to a shared printer, the driver for that shared printer must be installed on the local computer. This security setting determines who is allowed to install a printer driver as part of connecting to a shared printer.

- If this setting is enabled, only Administrators can install a printer driver as part of connecting to a shared printer.

- If this setting is disabled, any user can install a printer driver as part of connecting to a shared printer. Default on servers: Enabled. Default on workstations: Disabled Notes This setting doesn't affect the ability to add a local printer. This setting doesn't affect Administrators.
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Description-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Editable-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-DFProperties-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-AllowedValues-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Devices: Prevent users from installing printer drivers |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-GpMapping-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-Examples-End -->

<!-- Devices_PreventUsersFromInstallingPrinterDriversWhenConnectingToSharedPrinters-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Begin -->
## Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Applicability-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly
```
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-OmaUri-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Description-Begin -->
<!-- Description-Source-DDF -->
Devices: Restrict CD-ROM access to locally logged-on user only This security setting determines whether a CD-ROM is accessible to both local and remote users simultaneously. If this policy is enabled, it allows only the interactively logged-on user to access removable CD-ROM media. If this policy is enabled and no one is logged-on interactively, the CD-ROM can be accessed over the network. Default: This policy isn't defined and CD-ROM access isn't restricted to the locally logged-on user.
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Description-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Editable-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-DFProperties-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Devices: Restrict CD-ROM access to locally logged-on user only |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-GpMapping-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-Examples-End -->

<!-- Devices_RestrictCDROMAccessToLocallyLoggedOnUserOnly-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Begin -->
## InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Applicability-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked
```
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-OmaUri-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive Logon:Display user information when the session is locked User display name, domain and user names (1) User display name only (2) Don't display user information (3) Domain and user names only (4)
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Description-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Editable-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-DFProperties-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | User display name, domain and user names. |
| 2 | User display name only. |
| 3 | Don't display user information. |
| 4 | Domain and user names only. |
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-AllowedValues-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Display user information when the session is locked |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-GpMapping-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-Examples-End -->

<!-- InteractiveLogon_DisplayUserInformationWhenTheSessionIsLocked-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Begin -->
## InteractiveLogon_DoNotDisplayLastSignedIn

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Applicability-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayLastSignedIn
```
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-OmaUri-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Don't display last signed-in This security setting determines whether the Windows sign-in screen will show the username of the last person who signed in on this PC. If this policy is enabled, the username won't be shown. If this policy is disabled, the username will be shown. Default: Disabled.
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Description-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Editable-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-DFProperties-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled (username will be shown). |
| 1 | Enabled (username won't be shown). |
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-AllowedValues-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Don't display last signed-in |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-GpMapping-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_DoNotDisplayLastSignedIn-Examples-End -->

<!-- InteractiveLogon_DoNotDisplayLastSignedIn-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Begin -->
## InteractiveLogon_DoNotDisplayUsernameAtSignIn

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Applicability-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotDisplayUsernameAtSignIn
```
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-OmaUri-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Don't display username at sign-in This security setting determines whether the username of the person signing in to this PC appears at Windows sign-in, after credentials are entered, and before the PC desktop is shown. If this policy is enabled, the username won't be shown. If this policy is disabled, the username will be shown. Default: Disabled.
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Description-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Editable-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-DFProperties-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled (username will be shown). |
| 1 (Default) | Enabled (username won't be shown). |
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-AllowedValues-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Don't display username at sign-in |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-GpMapping-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-Examples-End -->

<!-- InteractiveLogon_DoNotDisplayUsernameAtSignIn-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Begin -->
## InteractiveLogon_DoNotRequireCTRLALTDEL

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Applicability-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_DoNotRequireCTRLALTDEL
```
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-OmaUri-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Don't require CTRL+ALT+DEL This security setting determines whether pressing CTRL+ALT+DEL is required before a user can log on. If this policy is enabled on a computer, a user isn't required to press CTRL+ALT+DEL to log on. Not having to press CTRL+ALT+DEL leaves users susceptible to attacks that attempt to intercept the users' passwords. Requiring CTRL+ALT+DEL before users log on ensures that users are communicating by means of a trusted path when entering their passwords. If this policy is disabled, any user is required to press CTRL+ALT+DEL before logging on to Windows. Default on domain-computers: Enabled: At least Windows 8/Disabled: Windows 7 or earlier. Default on stand-alone computers: Enabled.
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Description-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Editable-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-DFProperties-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled (a user isn't required to press CTRL+ALT+DEL to log on). |
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-AllowedValues-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Don't require CTRL+ALT+DEL |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-GpMapping-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-Examples-End -->

<!-- InteractiveLogon_DoNotRequireCTRLALTDEL-End -->

<!-- InteractiveLogon_MachineInactivityLimit-Begin -->
## InteractiveLogon_MachineInactivityLimit

<!-- InteractiveLogon_MachineInactivityLimit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_MachineInactivityLimit-Applicability-End -->

<!-- InteractiveLogon_MachineInactivityLimit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_MachineInactivityLimit
```
<!-- InteractiveLogon_MachineInactivityLimit-OmaUri-End -->

<!-- InteractiveLogon_MachineInactivityLimit-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Machine inactivity limit. Windows notices inactivity of a logon session, and if the amount of inactive time exceeds the inactivity limit, then the screen saver will run, locking the session. Default: not enforced.
<!-- InteractiveLogon_MachineInactivityLimit-Description-End -->

<!-- InteractiveLogon_MachineInactivityLimit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_MachineInactivityLimit-Editable-End -->

<!-- InteractiveLogon_MachineInactivityLimit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-599940]` |
| Default Value  | 0 |
<!-- InteractiveLogon_MachineInactivityLimit-DFProperties-End -->

<!-- InteractiveLogon_MachineInactivityLimit-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Machine inactivity limit |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_MachineInactivityLimit-GpMapping-End -->

<!-- InteractiveLogon_MachineInactivityLimit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Validate**:

Valid values: From 0 to 599940, where the value is the amount of inactivity time (in seconds) after which the session will be locked. If it's set to zero (0), the setting is disabled.
<!-- InteractiveLogon_MachineInactivityLimit-Examples-End -->

<!-- InteractiveLogon_MachineInactivityLimit-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Begin -->
## InteractiveLogon_MessageTextForUsersAttemptingToLogOn

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Applicability-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_MessageTextForUsersAttemptingToLogOn
```
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-OmaUri-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Message text for users attempting to log on This security setting specifies a text message that's displayed to users when they log on. This text is often used for legal reasons, for example, to warn users about the ramifications of misusing company information or to warn them that their actions may be audited. Default: No message.
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Description-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Editable-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-DFProperties-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Message text for users attempting to log on |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-GpMapping-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-Examples-End -->

<!-- InteractiveLogon_MessageTextForUsersAttemptingToLogOn-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Begin -->
## InteractiveLogon_MessageTitleForUsersAttemptingToLogOn

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Applicability-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_MessageTitleForUsersAttemptingToLogOn
```
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-OmaUri-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Message title for users attempting to log on This security setting allows the specification of a title to appear in the title bar of the window that contains the Interactive logon: Message text for users attempting to log on. Default: No message.
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Description-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Editable-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-DFProperties-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Message title for users attempting to log on |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-GpMapping-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-Examples-End -->

<!-- InteractiveLogon_MessageTitleForUsersAttemptingToLogOn-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-Begin -->
## InteractiveLogon_SmartCardRemovalBehavior

<!-- InteractiveLogon_SmartCardRemovalBehavior-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- InteractiveLogon_SmartCardRemovalBehavior-Applicability-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/InteractiveLogon_SmartCardRemovalBehavior
```
<!-- InteractiveLogon_SmartCardRemovalBehavior-OmaUri-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-Description-Begin -->
<!-- Description-Source-DDF -->
Interactive logon: Smart card removal behavior This security setting determines what happens when the smart card for a logged-on user is removed from the smart card reader. The options are: No Action Lock Workstation Force Logoff Disconnect if a Remote Desktop Services session If you click Lock Workstation in the Properties dialog box for this policy, the workstation is locked when the smart card is removed, allowing users to leave the area, take their smart card with them, and still maintain a protected session. If you click Force Logoff in the Properties dialog box for this policy, the user is automatically logged off when the smart card is removed. If you click Disconnect if a Remote Desktop Services session, removal of the smart card disconnects the session without logging the user off. This allows the user to insert the smart card and resume the session later, or at another smart card reader-equipped computer, without having to log on again. If the session is local, this policy functions identically to Lock Workstation.

> [!NOTE]
> Remote Desktop Services was called Terminal Services in previous versions of Windows Server. Default: This policy isn't defined, which means that the system treats it as No action. On Windows Vista and above: For this setting to work, the Smart Card Removal Policy service must be started.
<!-- InteractiveLogon_SmartCardRemovalBehavior-Description-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- InteractiveLogon_SmartCardRemovalBehavior-Editable-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- InteractiveLogon_SmartCardRemovalBehavior-DFProperties-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | No Action. |
| 1 | Lock Workstation. |
| 2 | Force Logoff. |
| 3 | Disconnect if a Remote Desktop Services session. |
<!-- InteractiveLogon_SmartCardRemovalBehavior-AllowedValues-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Interactive logon: Smart card removal behavior |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- InteractiveLogon_SmartCardRemovalBehavior-GpMapping-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- InteractiveLogon_SmartCardRemovalBehavior-Examples-End -->

<!-- InteractiveLogon_SmartCardRemovalBehavior-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Begin -->
## MicrosoftNetworkClient_DigitallySignCommunicationsAlways

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Applicability-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsAlways
```
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-OmaUri-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Description-Begin -->
<!-- Description-Source-DDF -->
Microsoft network client: Digitally sign communications (always) This security setting determines whether packet signing is required by the SMB client component. The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether SMB packet signing must be negotiated before further communication with an SMB server is permitted.

- If this setting is enabled, the Microsoft network client won't communicate with a Microsoft network server unless that server agrees to perform SMB packet signing.

- If this policy is disabled, SMB packet signing is negotiated between the client and server. Default: Disabled.

> [!IMPORTANT]
> For this policy to take effect on computers running Windows 2000, client-side packet signing must also be enabled. To enable client-side SMB packet signing, set Microsoft network client: Digitally sign communications (if server agrees).

> [!NOTE]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. On Windows 2000 and later operating systems, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings: Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing. Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled. Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing. Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled. SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. For more information, reference:< https://go.microsoft.com/fwlink/?LinkID=787136>.
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Description-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Editable-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-DFProperties-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-AllowedValues-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Microsoft network client: Digitally sign communications (always) |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-GpMapping-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-Examples-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsAlways-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Begin -->
## MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Applicability-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees
```
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-OmaUri-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Description-Begin -->
<!-- Description-Source-DDF -->
Microsoft network client: Digitally sign communications (if server agrees) This security setting determines whether the SMB client attempts to negotiate SMB packet signing. The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether the SMB client component attempts to negotiate SMB packet signing when it connects to an SMB server.

- If this setting is enabled, the Microsoft network client will ask the server to perform SMB packet signing upon session setup. If packet signing has been enabled on the server, packet signing will be negotiated.

- If this policy is disabled, the SMB client will never negotiate SMB packet signing. Default: Enabled.

> [!NOTE]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. On Windows 2000 and later, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings: Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing. Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled. Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing. Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled. If both client-side and server-side SMB signing is enabled and the client establishes an SMB 1.0 connection to the server, SMB signing will be attempted. SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. This setting only applies to SMB 1.0 connections. For more information, reference:< https://go.microsoft.com/fwlink/?LinkID=787136>.
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Description-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Editable-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-DFProperties-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Enable. |
| 0 | Disable. |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-AllowedValues-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Microsoft network client: Digitally sign communications (if server agrees) |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-GpMapping-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-Examples-End -->

<!-- MicrosoftNetworkClient_DigitallySignCommunicationsIfServerAgrees-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Begin -->
## MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Applicability-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers
```
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-OmaUri-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Description-Begin -->
<!-- Description-Source-DDF -->
Microsoft network client: Send unencrypted password to connect to third-party SMB servers If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that don't support password encryption during authentication. Sending unencrypted passwords is a security risk. Default: Disabled.
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Description-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Editable-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-DFProperties-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-AllowedValues-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Microsoft network client: Send unencrypted password to third-party SMB servers |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-GpMapping-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-Examples-End -->

<!-- MicrosoftNetworkClient_SendUnencryptedPasswordToThirdPartySMBServers-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Begin -->
## MicrosoftNetworkServer_DigitallySignCommunicationsAlways

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Applicability-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsAlways
```
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-OmaUri-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Description-Begin -->
<!-- Description-Source-DDF -->
Microsoft network server: Digitally sign communications (always) This security setting determines whether packet signing is required by the SMB server component. The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether SMB packet signing must be negotiated before further communication with an SMB client is permitted.

- If this setting is enabled, the Microsoft network server won't communicate with a Microsoft network client unless that client agrees to perform SMB packet signing.

- If this setting is disabled, SMB packet signing is negotiated between the client and server. Default: Disabled for member servers. Enabled for domain controllers.

> [!NOTE]
> All Windows operating systems support both a client-side SMB component and a server-side SMB component. On Windows 2000 and later, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings: Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing. Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled. Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing. Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled. Similarly, if client-side SMB signing is required, that client won't be able to establish a session with servers that don't have packet signing enabled. By default, server-side SMB signing is enabled only on domain controllers. If server-side SMB signing is enabled, SMB packet signing will be negotiated with clients that have client-side SMB signing enabled. SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors.

> [!IMPORTANT]
> For this policy to take effect on computers running Windows 2000, server-side packet signing must also be enabled. To enable server-side SMB packet signing, set the following policy: Microsoft network server: Digitally sign communications (if server agrees) For Windows 2000 servers to negotiate signing with Windows NT 4.0 clients, the following registry value must be set to 1 on the Windows 2000 server: HKLM\System\CurrentControlSet\Services\lanmanserver\parameters\enableW9xsecuritysignature For more information, reference:< https://go.microsoft.com/fwlink/?LinkID=787136>.
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Description-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Editable-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-DFProperties-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-AllowedValues-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Microsoft network server: Digitally sign communications (always) |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-GpMapping-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-Examples-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsAlways-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Begin -->
## MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Applicability-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees
```
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-OmaUri-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Description-Begin -->
<!-- Description-Source-DDF -->
Microsoft network server: Digitally sign communications (if client agrees) This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it. The server message block (SMB) protocol provides the basis for Microsoft file and print sharing and many other networking operations, such as remote Windows administration. To prevent man-in-the-middle attacks that modify SMB packets in transit, the SMB protocol supports the digital signing of SMB packets. This policy setting determines whether the SMB server will negotiate SMB packet signing when an SMB client requests it.

- If this setting is enabled, the Microsoft network server will negotiate SMB packet signing as requested by the client. That is, if packet signing has been enabled on the client, packet signing will be negotiated.

- If this policy is disabled, the SMB client will never negotiate SMB packet signing. Default: Enabled on domain controllers only.

> [!IMPORTANT]
> For Windows 2000 servers to negotiate signing with Windows NT 4.0 clients, the following registry value must be set to 1 on the server running Windows 2000: HKLM\System\CurrentControlSet\Services\lanmanserver\parameters\enableW9xsecuritysignature Notes All Windows operating systems support both a client-side SMB component and a server-side SMB component. For Windows 2000 and above, enabling or requiring packet signing for client and server-side SMB components is controlled by the following four policy settings: Microsoft network client: Digitally sign communications (always) - Controls whether or not the client-side SMB component requires packet signing. Microsoft network client: Digitally sign communications (if server agrees) - Controls whether or not the client-side SMB component has packet signing enabled. Microsoft network server: Digitally sign communications (always) - Controls whether or not the server-side SMB component requires packet signing. Microsoft network server: Digitally sign communications (if client agrees) - Controls whether or not the server-side SMB component has packet signing enabled. If both client-side and server-side SMB signing is enabled and the client establishes an SMB 1.0 connection to the server, SMB signing will be attempted. SMB packet signing can significantly degrade SMB performance, depending on dialect version, OS version, file sizes, processor offloading capabilities, and application IO behaviors. This setting only applies to SMB 1.0 connections. For more information, reference:< https://go.microsoft.com/fwlink/?LinkID=787136>.
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Description-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Editable-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-DFProperties-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-AllowedValues-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Microsoft network server: Digitally sign communications (if client agrees) |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-GpMapping-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-Examples-End -->

<!-- MicrosoftNetworkServer_DigitallySignCommunicationsIfClientAgrees-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Begin -->
## NetworkAccess_AllowAnonymousSIDOrNameTranslation

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Applicability-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkAccess_AllowAnonymousSIDOrNameTranslation
```
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-OmaUri-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Description-Begin -->
<!-- Description-Source-DDF -->
Network access: Allow anonymous SID/name translation This policy setting determines whether an anonymous user can request security identifier (SID) attributes for another user.

- If this policy is enabled, an anonymous user can request the SID attribute for another user. An anonymous user with knowledge of an administrator's SID could contact a computer that has this policy enabled and use the SID to get the administrator's name. This setting affects both the SID-to-name translation as well as the name-to-SID translation.

- If this policy setting is disabled, an anonymous user can't request the SID attribute for another user. Default on workstations and member servers: Disabled. Default on domain controllers running Windows Server 2008 or later: Disabled. Default on domain controllers running Windows Server 2003 R2 or earlier: Enabled.
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Description-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Editable-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-DFProperties-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-AllowedValues-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network access: Allow anonymous SID/name translation |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-GpMapping-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-Examples-End -->

<!-- NetworkAccess_AllowAnonymousSIDOrNameTranslation-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Begin -->
## NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Applicability-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts
```
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-OmaUri-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Description-Begin -->
<!-- Description-Source-DDF -->
Network access: Don't allow anonymous enumeration of SAM accounts This security setting determines what additional permissions will be granted for anonymous connections to the computer. Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This is convenient, for example, when an administrator wants to grant access to users in a trusted domain that doesn't maintain a reciprocal trust. This security option allows additional restrictions to be placed on anonymous connections as follows: Enabled: Don't allow enumeration of SAM accounts. This option replaces Everyone with Authenticated Users in the security permissions for resources. Disabled: No additional restrictions. Rely on default permissions. Default on workstations: Enabled. Default on server:Enabled.

> [!IMPORTANT]
> This policy has no impact on domain controllers.
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Description-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Editable-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-DFProperties-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Enabled. |
| 0 | Disabled. |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-AllowedValues-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network access: Don't allow anonymous enumeration of SAM accounts |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-GpMapping-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-Examples-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSAMAccounts-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Begin -->
## NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Applicability-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares
```
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-OmaUri-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Description-Begin -->
<!-- Description-Source-DDF -->
Network access: Don't allow anonymous enumeration of SAM accounts and shares This security setting determines whether anonymous enumeration of SAM accounts and shares is allowed. Windows allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares. This is convenient, for example, when an administrator wants to grant access to users in a trusted domain that doesn't maintain a reciprocal trust. If you don't want to allow anonymous enumeration of SAM accounts and shares, then enable this policy. Default: Disabled.
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Description-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Editable-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-DFProperties-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enabled. |
| 0 (Default) | Disabled. |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-AllowedValues-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network access: Don't allow anonymous enumeration of SAM accounts and shares |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-GpMapping-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-Examples-End -->

<!-- NetworkAccess_DoNotAllowAnonymousEnumerationOfSamAccountsAndShares-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Begin -->
## NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Applicability-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares
```
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-OmaUri-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Description-Begin -->
<!-- Description-Source-DDF -->
Network access: Restrict anonymous access to Named Pipes and Shares When enabled, this security setting restricts anonymous access to shares and pipes to the settings for: Network access: Named pipes that can be accessed anonymously Network access: Shares that can be accessed anonymously Default: Enabled.
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Description-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Editable-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-DFProperties-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Enable. |
| 0 | Disable. |
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-AllowedValues-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network access: Restrict anonymous access to Named Pipes and Shares |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-GpMapping-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-Examples-End -->

<!-- NetworkAccess_RestrictAnonymousAccessToNamedPipesAndShares-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Begin -->
## NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Applicability-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM
```
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-OmaUri-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Description-Begin -->
<!-- Description-Source-DDF -->
Network access: Restrict clients allowed to make remote calls to SAM This policy setting allows you to restrict remote rpc connections to SAM. If not selected, the default security descriptor will be used. This policy is supported on at least Windows Server 2016.
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Description-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Editable-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-DFProperties-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network access: Restrict clients allowed to make remote calls to SAM |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-GpMapping-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-Examples-End -->

<!-- NetworkAccess_RestrictClientsAllowedToMakeRemoteCallsToSAM-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Begin -->
## NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Applicability-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM
```
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-OmaUri-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Allow Local System to use computer identity for NTLM This policy setting allows Local System services that use Negotiate to use the computer identity when reverting to NTLM authentication.

- If you enable this policy setting, services running as Local System that use Negotiate will use the computer identity. This might cause some authentication requests between Windows operating systems to fail and log an error.

- If you disable this policy setting, services running as Local System that use Negotiate when reverting to NTLM authentication will authenticate anonymously. By default, this policy is enabled on Windows 7 and above. By default, this policy is disabled on Windows Vista. This policy is supported on at least Windows Vista or Windows Server 2008.

> [!NOTE]
> Windows Vista or Windows Server 2008 don't expose this setting in Group Policy.
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Description-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
- When a service connects with the device identity, signing and encryption are supported to provide data protection.
- When a service connects anonymously, a system-generated session key is created, which provides no protection, but it allows applications to sign and encrypt data without errors. Anonymous authentication uses a NULL session, which is a session with a server in which no user authentication is performed; and therefore, anonymous access is allowed.
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Editable-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-DFProperties-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Allow. |
| 0 | Block. |
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-AllowedValues-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Allow Local System to use computer identity for NTLM |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-GpMapping-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-Examples-End -->

<!-- NetworkSecurity_AllowLocalSystemToUseComputerIdentityForNTLM-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Begin -->
## NetworkSecurity_AllowPKU2UAuthenticationRequests

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Applicability-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_AllowPKU2UAuthenticationRequests
```
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-OmaUri-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Allow PKU2U authentication requests to this computer to use online identities. This policy will be turned off by default on domain joined machines. This would prevent online identities from authenticating to the domain joined machine.
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Description-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Editable-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-DFProperties-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Block. |
| 1 (Default) | Allow. |
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-AllowedValues-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Allow PKU2U authentication requests to this computer to use online identities. |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-GpMapping-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-Examples-End -->

<!-- NetworkSecurity_AllowPKU2UAuthenticationRequests-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Begin -->
## NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Applicability-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange
```
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-OmaUri-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Don't store LAN Manager hash value on next password change This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. The LM hash is relatively weak and prone to attack, as compared with the cryptographically stronger Windows NT hash. Since the LM hash is stored on the local computer in the security database the passwords can be compromised if the security database is attacked. Default on Windows Vista and above: Enabled Default on Windows XP: Disabled.

> [!IMPORTANT]
> Windows 2000 Service Pack 2 (SP2) and above offer compatibility with authentication to previous versions of Windows, such as Microsoft Windows NT 4.0. This setting can affect the ability of computers running Windows 2000 Server, Windows 2000 Professional, Windows XP, and the Windows Server 2003 family to communicate with computers running Windows 95 and Windows 98.
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Description-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Editable-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-DFProperties-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Enable. |
| 0 | Disable. |
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-AllowedValues-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Don't store LAN Manager hash value on next password change |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-GpMapping-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-Examples-End -->

<!-- NetworkSecurity_DoNotStoreLANManagerHashValueOnNextPasswordChange-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Begin -->
## NetworkSecurity_ForceLogoffWhenLogonHoursExpire

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows Insider Preview |
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Applicability-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_ForceLogoffWhenLogonHoursExpire
```
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-OmaUri-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Force logoff when logon hours expire This security setting determines whether to disconnect users who are connected to the local computer outside their user account's valid logon hours. This setting affects the Server Message Block (SMB) component. When this policy is enabled, it causes client sessions with the SMB server to be forcibly disconnected when the client's logon hours expire. If this policy is disabled, an established client session is allowed to be maintained after the client's logon hours have expired. Default: Enabled.

> [!NOTE]
> This security setting behaves as an account policy. For domain accounts, there can be only one account policy. The account policy must be defined in the Default Domain Policy, and it's enforced by the domain controllers that make up the domain. A domain controller always pulls the account policy from the Default Domain Policy Group Policy object (GPO), even if there is a different account policy applied to the organizational unit that contains the domain controller. By default, workstations and servers that are joined to a domain (for example, member computers) also receive the same account policy for their local accounts. However, local account policies for member computers can be different from the domain account policy by defining an account policy for the organizational unit that contains the member computers. Kerberos settings aren't applied to member computers.
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Description-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Editable-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-DFProperties-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-AllowedValues-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Force logoff when logon hours expire |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-GpMapping-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-Examples-End -->

<!-- NetworkSecurity_ForceLogoffWhenLogonHoursExpire-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-Begin -->
## NetworkSecurity_LANManagerAuthenticationLevel

<!-- NetworkSecurity_LANManagerAuthenticationLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_LANManagerAuthenticationLevel-Applicability-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_LANManagerAuthenticationLevel
```
<!-- NetworkSecurity_LANManagerAuthenticationLevel-OmaUri-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-Description-Begin -->
<!-- Description-Source-DDF -->
Network security LAN Manager authentication level This security setting determines which challenge/response authentication protocol is used for network logons. This choice affects the level of authentication protocol used by clients, the level of session security negotiated, and the level of authentication accepted by servers as follows: Send LM and NTLM responses: Clients use LM and NTLM authentication and never use NTLMv2 session security; domain controllers accept LM, NTLM, and NTLMv2 authentication. Send LM and NTLM - use NTLMv2 session security if negotiated: Clients use LM and NTLM authentication and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication. Send NTLM response only: Clients use NTLM authentication only and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication. Send NTLMv2 response only: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers accept LM, NTLM, and NTLMv2 authentication. Send NTLMv2 response only\refuse LM: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers refuse LM (accept only NTLM and NTLMv2 authentication). Send NTLMv2 response only\refuse LM and NTLM: Clients use NTLMv2 authentication only and use NTLMv2 session security if the server supports it; domain controllers refuse LM and NTLM (accept only NTLMv2 authentication).

> [!IMPORTANT]
> This setting can affect the ability of computers running Windows 2000 Server, Windows 2000 Professional, Windows XP Professional, and the Windows Server 2003 family to communicate with computers running Windows NT 4.0 and earlier over the network. For example, at the time of this writing, computers running Windows NT 4.0 SP4 and earlier didn't support NTLMv2. Computers running Windows 95 and Windows 98 didn't support NTLM. Default: Windows 2000 and windows XP: send LM and NTLM responses Windows Server 2003: Send NTLM response only Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2: Send NTLMv2 response only.
<!-- NetworkSecurity_LANManagerAuthenticationLevel-Description-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_LANManagerAuthenticationLevel-Editable-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- NetworkSecurity_LANManagerAuthenticationLevel-DFProperties-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Send LM and NTLM responses. |
| 1 | Send LM and NTLM-use NTLMv2 session security if negotiated. |
| 2 | Send LM and NTLM responses only. |
| 3 (Default) | Send LM and NTLMv2 responses only. |
| 4 | Send LM and NTLMv2 responses only. Refuse LM. |
| 5 | Send LM and NTLMv2 responses only. Refuse LM and NTLM. |
<!-- NetworkSecurity_LANManagerAuthenticationLevel-AllowedValues-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: LAN Manager authentication level |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_LANManagerAuthenticationLevel-GpMapping-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_LANManagerAuthenticationLevel-Examples-End -->

<!-- NetworkSecurity_LANManagerAuthenticationLevel-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Begin -->
## NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Applicability-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients
```
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-OmaUri-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Minimum session security for NTLM SSP based (including secure RPC) clients This security setting allows a client to require the negotiation of 128-bit encryption and/or NTLMv2 session security. These values are dependent on the LAN Manager Authentication Level security setting value. The options are: Require NTLMv2 session security: The connection will fail if NTLMv2 protocol isn't negotiated. Require 128-bit encryption: The connection will fail if strong encryption (128-bit) isn't negotiated. Default: Windows XP, Windows Vista, Windows 2000 Server, Windows Server 2003, and Windows Server 2008: No requirements. Windows 7 and Windows Server 2008 R2: Require 128-bit encryption.
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Description-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Editable-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 536870912 |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-DFProperties-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | None. |
| 524288 | Require NTLMv2 session security. |
| 536870912 (Default) | Require 128-bit encryption. |
| 537395200 | Require NTLM and 128-bit encryption. |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-AllowedValues-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Minimum session security for NTLM SSP based (including secure RPC) clients |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-GpMapping-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-Examples-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedClients-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Begin -->
## NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Applicability-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers
```
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-OmaUri-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Minimum session security for NTLM SSP based (including secure RPC) servers This security setting allows a server to require the negotiation of 128-bit encryption and/or NTLMv2 session security. These values are dependent on the LAN Manager Authentication Level security setting value. The options are: Require NTLMv2 session security: The connection will fail if message integrity isn't negotiated. Require 128-bit encryption. The connection will fail if strong encryption (128-bit) isn't negotiated. Default: Windows XP, Windows Vista, Windows 2000 Server, Windows Server 2003, and Windows Server 2008: No requirements. Windows 7 and Windows Server 2008 R2: Require 128-bit encryption.
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Description-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Editable-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 536870912 |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-DFProperties-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | None. |
| 524288 | Require NTLMv2 session security. |
| 536870912 (Default) | Require 128-bit encryption. |
| 537395200 | Require NTLM and 128-bit encryption. |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-AllowedValues-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Minimum session security for NTLM SSP based (including secure RPC) servers |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-GpMapping-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-Examples-End -->

<!-- NetworkSecurity_MinimumSessionSecurityForNTLMSSPBasedServers-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Begin -->
## NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Applicability-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication
```
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-OmaUri-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication This policy setting allows you to create an exception list of remote servers to which clients are allowed to use NTLM authentication if the "Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers" policy setting is configured.

- If you configure this policy setting, you can define a list of remote servers to which clients are allowed to use NTLM authentication.

- If you don't configure this policy setting, no exceptions will be applied. The naming format for servers on this exception list is the fully qualified domain name (FQDN) or NetBIOS server name used by the application, listed one per line. To ensure exceptions the name used by all applications needs to be in the list, and to ensure an exception is accurate, the server name should be listed in both naming formats . A single asterisk (*) can be used anywhere in the string as a wildcard character.
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Description-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Editable-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-DFProperties-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-GpMapping-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-Examples-End -->

<!-- NetworkSecurity_RestrictNTLM_AddRemoteServerExceptionsForNTLMAuthentication-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Begin -->
## NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Applicability-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic
```
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-OmaUri-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Restrict NTLM: Audit Incoming NTLM Traffic This policy setting allows you to audit incoming NTLM traffic. If you select "Disable", or don't configure this policy setting, the server won't log events for incoming NTLM traffic. If you select "Enable auditing for domain accounts", the server will log events for NTLM pass-through authentication requests that would be blocked when the "Network Security: Restrict NTLM: Incoming NTLM traffic" policy setting is set to the "Deny all domain accounts" option. If you select "Enable auditing for all accounts", the server will log events for all NTLM authentication requests that would be blocked when the "Network Security: Restrict NTLM: Incoming NTLM traffic" policy setting is set to the "Deny all accounts" option. This policy is supported on at least Windows 7 or Windows Server 2008 R2.

> [!NOTE]
> Audit events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Description-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Editable-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-DFProperties-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable. |
| 1 | Enable auditing for domain accounts. |
| 2 | Enable auditing for all accounts. |
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-AllowedValues-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Restrict NTLM: Audit Incoming NTLM Traffic |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-GpMapping-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-Examples-End -->

<!-- NetworkSecurity_RestrictNTLM_AuditIncomingNTLMTraffic-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Begin -->
## NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Applicability-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic
```
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-OmaUri-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Restrict NTLM: Incoming NTLM traffic This policy setting allows you to deny or allow incoming NTLM traffic. If you select "Allow all" or don't configure this policy setting, the server will allow all NTLM authentication requests. If you select "Deny all domain accounts," the server will deny NTLM authentication requests for domain logon and display an NTLM blocked error, but allow local account logon. If you select "Deny all accounts," the server will deny NTLM authentication requests from incoming traffic and display an NTLM blocked error. This policy is supported on at least Windows 7 or Windows Server 2008 R2.

> [!NOTE]
> Block events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Description-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Editable-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-DFProperties-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow all. |
| 1 | Deny all domain accounts. |
| 2 | Deny all accounts. |
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-AllowedValues-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Restrict NTLM: Incoming NTLM traffic |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-GpMapping-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-Examples-End -->

<!-- NetworkSecurity_RestrictNTLM_IncomingNTLMTraffic-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Begin -->
## NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Applicability-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers
```
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-OmaUri-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Description-Begin -->
<!-- Description-Source-DDF -->
Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers This policy setting allows you to deny or audit outgoing NTLM traffic from this Windows 7 or this Windows Server 2008 R2 computer to any Windows remote server. If you select "Allow all" or don't configure this policy setting, the client computer can authenticate identities to a remote server by using NTLM authentication. If you select "Audit all," the client computer logs an event for each NTLM authentication request to a remote server. This allows you to identify those servers receiving NTLM authentication requests from the client computer. If you select "Deny all," the client computer can't authenticate identities to a remote server by using NTLM authentication. You can use the "Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication" policy setting to define a list of remote servers to which clients are allowed to use NTLM authentication. This policy is supported on at least Windows 7 or Windows Server 2008 R2.

> [!NOTE]
> Audit and block events are recorded on this computer in the "Operational" Log located under the Applications and Services Log/Microsoft/Windows/NTLM.
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Description-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Editable-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-DFProperties-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Allow all. |
| 1 | Deny all domain accounts. |
| 2 | Deny all accounts. |
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-AllowedValues-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-GpMapping-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-Examples-End -->

<!-- NetworkSecurity_RestrictNTLM_OutgoingNTLMTrafficToRemoteServers-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Begin -->
## Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Applicability-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn
```
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-OmaUri-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
Shutdown: Allow system to be shut down without having to log on This security setting determines whether a computer can be shut down without having to log on to Windows. When this policy is enabled, the Shut Down command is available on the Windows logon screen. When this policy is disabled, the option to shut down the computer doesn't appear on the Windows logon screen. In this case, users must be able to log on to the computer successfully and have the Shut down the system user right before they can perform a system shutdown. Default on workstations: Enabled. Default on servers: Disabled.
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Description-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Editable-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-DFProperties-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled (allow system to be shut down without having to log on). |
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-AllowedValues-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Shutdown: Allow system to be shut down without having to log on |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-GpMapping-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-Examples-End -->

<!-- Shutdown_AllowSystemToBeShutDownWithoutHavingToLogOn-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-Begin -->
## Shutdown_ClearVirtualMemoryPageFile

<!-- Shutdown_ClearVirtualMemoryPageFile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Shutdown_ClearVirtualMemoryPageFile-Applicability-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/Shutdown_ClearVirtualMemoryPageFile
```
<!-- Shutdown_ClearVirtualMemoryPageFile-OmaUri-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-Description-Begin -->
<!-- Description-Source-DDF -->
Shutdown: Clear virtual memory pagefile This security setting determines whether the virtual memory pagefile is cleared when the system is shut down. Virtual memory support uses a system pagefile to swap pages of memory to disk when they aren't used. On a running system, this pagefile is opened exclusively by the operating system, and it's well protected. However, systems that are configured to allow booting to other operating systems might have to make sure that the system pagefile is wiped clean when this system shuts down. This ensures that sensitive information from process memory that might go into the pagefile isn't available to an unauthorized user who manages to directly access the pagefile. When this policy is enabled, it causes the system pagefile to be cleared upon clean shutdown. If you enable this security option, the hibernation file (hiberfil.sys) is also zeroed out when hibernation is disabled. Default: Disabled.
<!-- Shutdown_ClearVirtualMemoryPageFile-Description-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Shutdown_ClearVirtualMemoryPageFile-Editable-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Shutdown_ClearVirtualMemoryPageFile-DFProperties-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- Shutdown_ClearVirtualMemoryPageFile-AllowedValues-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Shutdown: Clear virtual memory pagefile |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- Shutdown_ClearVirtualMemoryPageFile-GpMapping-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Shutdown_ClearVirtualMemoryPageFile-Examples-End -->

<!-- Shutdown_ClearVirtualMemoryPageFile-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Begin -->
## UserAccountControl_AllowUIAccessApplicationsToPromptForElevation

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Applicability-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_AllowUIAccessApplicationsToPromptForElevation
```
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-OmaUri-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop. This policy setting controls whether User Interface Accessibility (UIAccess or UIA) programs can automatically disable the secure desktop for elevation prompts used by a standard user. - Enabled: UIA programs, including Windows Remote Assistance, automatically disable the secure desktop for elevation prompts. If you don't disable the "User Account Control: Switch to the secure desktop when prompting for elevation" policy setting, the prompts appear on the interactive user's desktop instead of the secure desktop. - Disabled: (Default) The secure desktop can be disabled only by the user of the interactive desktop or by disabling the "User Account Control: Switch to the secure desktop when prompting for elevation" policy setting.
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Description-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Editable-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-DFProperties-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled (allow UIAccess applications to prompt for elevation without using the secure desktop). |
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-AllowedValues-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-GpMapping-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-Examples-End -->

<!-- UserAccountControl_AllowUIAccessApplicationsToPromptForElevation-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Begin -->
## UserAccountControl_BehaviorOfTheElevationPromptForAdministrators

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Applicability-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForAdministrators
```
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-OmaUri-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode This policy setting controls the behavior of the elevation prompt for administrators. The options are: - Elevate without prompting: Allows privileged accounts to perform an operation that requires elevation without requiring consent or credentials.

> [!NOTE]
> Use this option only in the most constrained environments. - Prompt for credentials on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a privileged user name and password. If the user enters valid credentials, the operation continues with the user's highest available privilege. - Prompt for consent on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege. - Prompt for credentials: When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege. - Prompt for consent: When an operation requires elevation of privilege, the user is prompted to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege. - Prompt for consent for non-Windows binaries: (Default) When an operation for a non-Microsoft application requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Description-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Editable-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 5 |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-DFProperties-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Elevate without prompting. |
| 1 | Prompt for credentials on the secure desktop. |
| 2 | Prompt for consent on the secure desktop. |
| 3 | Prompt for credentials. |
| 4 | Prompt for consent. |
| 5 (Default) | Prompt for consent for non-Windows binaries. |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-AllowedValues-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-GpMapping-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-Examples-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForAdministrators-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Begin -->
## UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Applicability-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers
```
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-OmaUri-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Behavior of the elevation prompt for standard users This policy setting controls the behavior of the elevation prompt for standard users. The options are: - Prompt for credentials: (Default) When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege. - Automatically deny elevation requests: When an operation requires elevation of privilege, a configurable access denied error message is displayed. An enterprise that's running desktops as standard user may choose this setting to reduce help desk calls. - Prompt for credentials on the secure desktop: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a different user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Description-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Editable-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-DFProperties-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Automatically deny elevation requests. |
| 1 | Prompt for credentials on the secure desktop. |
| 3 (Default) | Prompt for credentials. |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-AllowedValues-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Behavior of the elevation prompt for standard users |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-GpMapping-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-Examples-End -->

<!-- UserAccountControl_BehaviorOfTheElevationPromptForStandardUsers-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Begin -->
## UserAccountControl_DetectApplicationInstallationsAndPromptForElevation

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Applicability-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_DetectApplicationInstallationsAndPromptForElevation
```
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-OmaUri-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Detect application installations and prompt for elevation This policy setting controls the behavior of application installation detection for the computer. The options are: Enabled: (Default) When an application installation package is detected that requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege. Disabled: Application installation packages aren't detected and prompted for elevation. Enterprises that are running standard user desktops and use delegated installation technologies such as Group Policy Software Installation or Systems Management Server (SMS) should disable this policy setting. In this case, installer detection is unnecessary.
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Description-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Editable-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-DFProperties-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Enable. |
| 0 | Disable. |
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-AllowedValues-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Detect application installations and prompt for elevation |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-GpMapping-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-Examples-End -->

<!-- UserAccountControl_DetectApplicationInstallationsAndPromptForElevation-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Begin -->
## UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Applicability-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated
```
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-OmaUri-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Only elevate executable files that are signed and validated This policy setting enforces public key infrastructure (PKI) signature checks for any interactive applications that request elevation of privilege. Enterprise administrators can control which applications are allowed to run by adding certificates to the Trusted Publishers certificate store on local computers. The options are: - Enabled: Enforces the PKI certification path validation for a given executable file before it's permitted to run. - Disabled: (Default) Does not enforce PKI certification path validation before a given executable file is permitted to run.
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Description-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Editable-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-DFProperties-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled: Does not enforce validation. |
| 1 | Enabled: Enforces validation. |
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-AllowedValues-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Only elevate executables that are signed and validated |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-GpMapping-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-Examples-End -->

<!-- UserAccountControl_OnlyElevateExecutableFilesThatAreSignedAndValidated-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Begin -->
## UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Applicability-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations
```
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-OmaUri-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Only elevate UIAccess applications that are installed in secure locations This policy setting controls whether applications that request to run with a User Interface Accessibility (UIAccess) integrity level must reside in a secure location in the file system. Secure locations are limited to the following: - ...\Program Files\, including subfolders - ...\Windows\system32\ - ...\Program Files (x86)\, including subfolders for 64-bit versions of Windows Note: Windows enforces a public key infrastructure (PKI) signature check on any interactive application that requests to run with a UIAccess integrity level regardless of the state of this security setting. The options are: - Enabled: (Default) If an application resides in a secure location in the file system, it runs only with UIAccess integrity. - Disabled: An application runs with UIAccess integrity even if it doesn't reside in a secure location in the file system.
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Description-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Editable-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-DFProperties-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled: Application runs with UIAccess integrity even if it doesn't reside in a secure location. |
| 1 (Default) | Enabled: Application runs with UIAccess integrity only if it resides in secure location. |
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-AllowedValues-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Only elevate UIAccess applications that are installed in secure locations |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-GpMapping-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-Examples-End -->

<!-- UserAccountControl_OnlyElevateUIAccessApplicationsThatAreInstalledInSecureLocations-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Begin -->
## UserAccountControl_RunAllAdministratorsInAdminApprovalMode

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Applicability-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_RunAllAdministratorsInAdminApprovalMode
```
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-OmaUri-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Turn on Admin Approval Mode This policy setting controls the behavior of all User Account Control (UAC) policy settings for the computer. If you change this policy setting, you must restart your computer. The options are: - Enabled: (Default) Admin Approval Mode is enabled. This policy must be enabled and related UAC policy settings must also be set appropriately to allow the built-in Administrator account and all other users who are members of the Administrators group to run in Admin Approval Mode. - Disabled: Admin Approval Mode and all related UAC policy settings are disabled.

> [!NOTE]
> If this policy setting is disabled, the Security Center notifies you that the overall security of the operating system has been reduced.
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Description-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Editable-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-DFProperties-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-AllowedValues-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Run all administrators in Admin Approval Mode |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-GpMapping-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-Examples-End -->

<!-- UserAccountControl_RunAllAdministratorsInAdminApprovalMode-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Begin -->
## UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Applicability-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation
```
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-OmaUri-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Switch to the secure desktop when prompting for elevation This policy setting controls whether the elevation request prompt is displayed on the interactive user's desktop or the secure desktop. The options are: - Enabled: (Default) All elevation requests go to the secure desktop regardless of prompt behavior policy settings for administrators and standard users. - Disabled: All elevation requests go to the interactive user's desktop. Prompt behavior policy settings for administrators and standard users are used.
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Description-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Editable-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-DFProperties-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-AllowedValues-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Switch to the secure desktop when prompting for elevation |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-GpMapping-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-Examples-End -->

<!-- UserAccountControl_SwitchToTheSecureDesktopWhenPromptingForElevation-End -->

<!-- UserAccountControl_UseAdminApprovalMode-Begin -->
## UserAccountControl_UseAdminApprovalMode

<!-- UserAccountControl_UseAdminApprovalMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_UseAdminApprovalMode-Applicability-End -->

<!-- UserAccountControl_UseAdminApprovalMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_UseAdminApprovalMode
```
<!-- UserAccountControl_UseAdminApprovalMode-OmaUri-End -->

<!-- UserAccountControl_UseAdminApprovalMode-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Use Admin Approval Mode for the built-in Administrator account This policy setting controls the behavior of Admin Approval Mode for the built-in Administrator account. The options are: - Enabled: The built-in Administrator account uses Admin Approval Mode. By default, any operation that requires elevation of privilege will prompt the user to approve the operation. - Disabled: (Default) The built-in Administrator account runs all applications with full administrative privilege.
<!-- UserAccountControl_UseAdminApprovalMode-Description-End -->

<!-- UserAccountControl_UseAdminApprovalMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_UseAdminApprovalMode-Editable-End -->

<!-- UserAccountControl_UseAdminApprovalMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- UserAccountControl_UseAdminApprovalMode-DFProperties-End -->

<!-- UserAccountControl_UseAdminApprovalMode-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Enable. |
| 0 (Default) | Disable. |
<!-- UserAccountControl_UseAdminApprovalMode-AllowedValues-End -->

<!-- UserAccountControl_UseAdminApprovalMode-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Admin Approval Mode for the Built-in Administrator account |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_UseAdminApprovalMode-GpMapping-End -->

<!-- UserAccountControl_UseAdminApprovalMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_UseAdminApprovalMode-Examples-End -->

<!-- UserAccountControl_UseAdminApprovalMode-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Begin -->
## UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Applicability-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalPoliciesSecurityOptions/UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations
```
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-OmaUri-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Description-Begin -->
<!-- Description-Source-DDF -->
User Account Control: Virtualize file and registry write failures to per-user locations This policy setting controls whether application write failures are redirected to defined registry and file system locations. This policy setting mitigates applications that run as administrator and write run-time application data to %ProgramFiles%, %Windir%, %Windir%\system32, or HKLM\Software. The options are: - Enabled: (Default) Application write failures are redirected at run time to defined user locations for both the file system and registry. - Disabled: Applications that write data to protected locations fail.
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Description-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Editable-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-DFProperties-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-AllowedValues-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | User Account Control: Virtualize file and registry write failures to per-user locations |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-GpMapping-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-Examples-End -->

<!-- UserAccountControl_VirtualizeFileAndRegistryWriteFailuresToPerUserLocations-End -->

<!-- LocalPoliciesSecurityOptions-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- LocalPoliciesSecurityOptions-CspMoreInfo-End -->

<!-- LocalPoliciesSecurityOptions-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
