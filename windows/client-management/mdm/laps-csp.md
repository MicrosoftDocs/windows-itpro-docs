---
title: Local Administrator Password Solution CSP
description: Learn how the Local Administrator Password Solution configuration service provider (CSP) is used by the enterprise to manage backup of local administrator account passwords.
ms.author: jsimmons
author: jay98014
ms.reviewer: vinpa
manager: aaroncz
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
ms.localizationpriority: medium
ms.date: 09/20/2022
---

# Local Administrator Password Solution CSP

The Local Administrator Password Solution (LAPS) configuration service provider (CSP) is used by the enterprise to manage back up of local administrator account passwords. This CSP was added in Windows 11 as of version 25145.

> [!IMPORTANT]
> Windows LAPS currently is available only in [Windows 11 Insider Preview Build 25145 and later](/windows-insider/flight-hub/#active-development-builds-of-windows-11). Support for the Windows LAPS Azure Active Directory scenario is currently in private preview, and limited to a small number of customers who have a direct engagement with engineering. Once public preview is declared in 2023, all customers will be able to evaluate this AAD scenario.

> [!TIP]
> This article covers the specific technical details of the LAPS CSP.  For more information about the scenarios in which the LAPS CSP would be used, see [Windows Local Administrator Password Solution](/windows-server/identity/laps/laps).

The following example shows the LAPS CSP in tree format.

```xml
./Device/Vendor/MSFT
LAPS
----Policies
--------BackupDirectory
--------PasswordAgeDays
--------PasswordLength
--------PasswordComplexity
--------PasswordExpirationProtectionEnabled
--------AdministratorAccountName
--------ADPasswordEncryptionEnabled
--------ADPasswordEncryptionPrincipal
--------ADEncryptedPasswordHistorySize
--------PostAuthenticationResetDelay
--------PostAuthenticationActions
----Actions
--------ResetPassword
--------ResetPasswordStatus
```

The LAPS CSP can be used to manage devices that are either joined to Azure AD or joined to both Azure AD and Active Directory (hybrid-joined). The LAPS CSP manages a mix of AAD-only and AD-only settings. The AD-only settings are only applicable for hybrid-joined devices, and then only when BackupDirectory is set to 2.

|Setting name|Azure-joined|Hybrid-joined|
|---|---|---|
|BackupDirectory|Yes|Yes
|PasswordAgeDays|Yes|Yes
|PasswordLength|Yes|Yes|
|PasswordComplexity|Yes|Yes|
|PasswordExpirationProtectionEnabled|No|Yes|
|AdministratorAccountName|Yes|Yes|
|ADPasswordEncryptionEnabled|No|Yes|
|ADPasswordEncryptionPrincipal|No|Yes|
|ADEncryptedPasswordHistorySize|No|Yes|
|PostAuthenticationResetDelay|Yes|Yes|
|PostAuthenticationActions|Yes|Yes|
|ResetPassword|Yes|Yes|
|ResetPasswordStatus|Yes|Yes|

> [!IMPORTANT]
> Windows supports a LAPS Group Policy Object that is entirely separate from the LAPS CSP. Many of the various settings are common across both the LAPS GPO and CSP (GPO does not support any of the Action-related settings). As long as at least one LAPS setting is configured via CSP, any GPO-configured settings will be ignored. Also see [Configure policy settings for Windows LAPS](/windows-server/identity/laps/laps-management-policy-settings).

## ./Device/Vendor/MSFT/LAPS

Defines the root node for the LAPS CSP.

<!--Policy-->
### Policies

Defines the interior parent node for all configuration-related settings in the LAPS CSP.
<!--/Policy-->

<!--Policy-->
### BackupDirectory
<!--Description-->
Allows the administrator to configure which directory the local administrator account password is backed up to.
<!--/Description-->
<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

Data type is integer. Supported operations are Add, Get, Replace, and Delete.

<!--SupportedValues-->
The allowable settings are:

|Value|Description of setting|
|--- |--- |
|0|Disabled (password won't be backed up)|
|1|Back up the password to Azure AD only|
|2|Back up the password to Active Directory only|

If not specified, this setting will default to 0 (disabled).
<!--/SupportedValues-->
<!--/Policy-->

<!--Policy-->
### PasswordAgeDays
<!--Description-->
Use this policy to configure the maximum password age of the managed local administrator account.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
If not specified, this setting will default to 30 days

This setting has a minimum allowed value of 1 day when backing the password to on-premises Active Directory, and 7 days when backing the password Azure AD.

This setting has a maximum allowed value of 365 days.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### PasswordComplexity
<!--Description-->
Use this setting to configure password complexity of the managed local administrator account.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
The allowable settings are:

|Value|Description of setting|
|--- |--- |
|1|Large letters|
|2|Large letters + small letters|
|3|Large letters + small letters + numbers|
|4|Large letters + small letters + numbers + special characters|


If not specified, this setting will default to 4.

> [!IMPORTANT]
> Windows supports the lower password complexity settings (1, 2, and 3) only for backwards compatibility with older versions of LAPS. Microsoft recommends that this setting always be configured to 4.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### PasswordLength
<!--Description-->
Use this setting to configure the length of the password of the managed local administrator account.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
If not specified, this setting will default to 14 characters.

This setting has a minimum allowed value of 8 characters.

This setting has a maximum allowed value of 64 characters.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### AdministratorAccountName
<!--Description-->
Use this setting to configure the name of the managed local administrator account.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
If not specified, the default built-in local administrator account will be located by well-known SID (even if renamed).

If specified, the specified account's password will be managed.

> [!IMPORTANT]
> If a custom account name is specified in this setting, the specified account must be created via other means. Specifying a name in this setting will not cause the account to be created.
<!--/SupportedValues-->

Data type is string.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### PasswordExpirationProtectionEnabled
<!--Description-->
Use this setting to configure enforcement of maximum password age for the managed local administrator account.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
When this setting is set to True, planned password expiration that would result in a password age greater than what is specified by the "PasswordAgeDays" policy is NOT allowed. When such expiration is detected, the password is changed immediately, and the new password expiration date is set according to policy.

If not specified, this setting defaults to True.

> [!IMPORTANT]
> This setting is ignored unless BackupDirectory is configured to back up the password to Active Directory.
<!--/SupportedValues-->

Data type is boolean.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### ADPasswordEncryptionEnabled
<!--Description-->
Use this setting to configure whether the password is encrypted before being stored in Active Directory.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
This setting is ignored if the password is currently being stored in Azure.

If this setting is set to True, and the Active Directory domain meets the 2016 DFL prerequisite, the password is encrypted before being stored in Active Directory.

If this setting is missing or set to False, or the Active Directory domain doesn't meet the DFL prerequisite, the password is stored as clear-text in Active Directory.

If not specified, this setting defaults to False.
> [!IMPORTANT]
> This setting is ignored unless BackupDirectory is configured to back up the password to Active Directory, AND the the Active Directory domain is at Windows Server 2016 Domain Functional Level or higher.
<!--/SupportedValues-->

Data type is boolean.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### ADPasswordEncryptionPrincipal
<!--Description-->
Use this setting to configure the name or SID of a user or group that can decrypt the password stored in Active Directory.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
This setting is ignored if the password is currently being stored in Azure.

If not specified, the password can only be decrypted by the Domain Admins group in the device's domain.

If specified, the specified user or group will be able to decrypt the password stored in Active Directory.

If the specified user or group account is invalid the device will fall back to using the Domain Admins group in the device's domain.
> [!IMPORTANT]
> The string stored in this setting must be either a SID in string form or the fully qualified name of a user or group. Valid examples include:
>
> "S-1-5-21-2127521184-1604012920-1887927527-35197"
>
> "contoso\LAPSAdmins"
>
> "lapsadmins@contoso.com"
>
> The principal identified (either by SID or user\group name) must exist and be resolvable by the device.

> [!IMPORTANT]
> This setting is ignored unless ADPasswordEncryptionEnabled is configured to True and all other prerequisites are met.
<!--/SupportedValues-->

Data type is string.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### ADEncryptedPasswordHistorySize
<!--Description-->
Use this setting to configure how many previous encrypted passwords will be remembered in Active Directory.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
If not specified, this setting will default to 0 passwords (disabled).

This setting has a minimum allowed value of 0 passwords.

This setting has a maximum allowed value of 12 passwords.

> [!IMPORTANT]
> This setting is ignored unless ADPasswordEncryptionEnabled is configured to True and all other prerequisites are met.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### PostAuthenticationResetDelay
<!--Description-->
Use this setting to specify the amount of time (in hours) to wait after an authentication before executing the specified post-authentication actions (see the PostAuthenticationActions setting below).
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
If not specified, this setting will default to 24 hours.

This setting has a minimum allowed value of 0 hours (this disables all post-authentication actions).

This setting has a maximum allowed value of 24 hours.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
### PostAuthenticationActions
<!--Description-->
Use this setting to specify the actions to take upon expiration of the configured grace period (see the PostAuthenticationResetDelay setting above).
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
This setting can have ONE of the following values:

|Value|Name|Action(s) taken upon expiry of the grace period|
|--- |--- |--- |
|1|Reset password|The managed account password will be reset|
|3|Reset password and log off|The managed account password will be reset and any interactive logon sessions using the managed account will be terminated|
|5|Reset password and reboot|The managed account password will be reset and the managed device will be immediately rebooted.|

If not specified, this setting will default to 3.

> [!IMPORTANT]
> The allowed post-authentication actions are intended to help limit the amount of time that a LAPS password may be used before being reset. Logging off the managed account - or rebooting the device - are options to help ensure this. Abrupt termination of logon sessions, or rebooting the device, may result in data loss.

> [!IMPORTANT]
> From a security perspective, a malicious user who acquires administrative privileges on a device using a valid LAPS password does have the ultimate ability to prevent or circumvent these mechanisms.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->

<!--Policy-->
## Actions

Defines the parent interior node for all action-related settings in the LAPS CSP.
<!--/Policy-->

<!--Policy-->
### ResetPassword
<!--Description-->
Use this Execute action to request an immediate reset of the local administrator account password, ignoring the normal constraints such as PasswordLengthDays, etc.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->

<!--/SupportedValues-->

Data type is integer.

Supported operations are Execute.
<!--/Policy-->

<!--Policy-->
### ResetPasswordStatus
<!--Description-->
Use this setting to query the status of the last submitted ResetPassword action.
<!--/Description-->

<!--SupportedSKUs-->
|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|Yes|
|Pro|No|Yes|
|Business|No|Yes|
|Enterprise|No|Yes|
|Education|No|Yes|
<!--/SupportedSKUs-->

<!--SupportedValues-->
The value returned is an HRESULT code.

S_OK (0x0) - the last submitted ResetPassword action succeeded.

E_PENDING (0x8000000) - the last submitted ResetPassword action is still executing.

other - the last submitted ResetPassword action encountered the returned error.
<!--/SupportedValues-->

Data type is integer.

Supported operations are Get.
<!--/Policy-->

### SyncML examples

The following examples are provided to show proper format and shouldn't be taken as a recommendation.

#### Azure-joined device backing password up to Azure AD

This example is configuring an Azure-joined device to back up its password to Azure Active Directory:

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

#### Hybrid-joined device backing password up to Active Directory

This example is configuring a hybrid device to back up its password to Active Directory with password encryption enabled:

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

## Related articles

[Configuration service provider reference](index.yml)

[Windows LAPS](/windows-server/identity/laps/laps)
