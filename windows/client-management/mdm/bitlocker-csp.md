---
title: BitLocker CSP
description: Learn more about the BitLocker CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- BitLocker-Begin -->
# BitLocker CSP

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- BitLocker-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The BitLocker configuration service provider (CSP) is used by the enterprise to manage encryption of PCs and devices. This CSP was added in Windows 10, version 1703. Starting in Windows 10, version 1809, it's also supported in Windows 10 Pro.

> [!NOTE]
> To manage BitLocker through CSP except to enable and disable it using the `RequireDeviceEncryption` policy, one of the following licenses must be assigned to your users regardless of your management platform:
>
> - Windows 10/11 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, and E5).
> - Windows 10/11 Enterprise A3 or A5 (included in Microsoft 365 A3 and A5).

A `Get` operation on any of the settings, except for `RequireDeviceEncryption` and `RequireStorageCardEncryption`, returns the setting configured by the admin.

For RequireDeviceEncryption and RequireStorageCardEncryption, the Get operation returns the actual status of enforcement to the admin, such as if Trusted Platform Module (TPM) protection is required and if encryption is required. And if the device has BitLocker enabled but with password protector, the status reported is 0. A Get operation on RequireDeviceEncryption doesn't verify that a minimum PIN length is enforced (SystemDrivesMinimumPINLength).

> [!NOTE]
>
> - Settings are enforced only at the time encryption is started. Encryption isn't restarted with settings changes.
> - You must send all the settings together in a single SyncML to be effective.
<!-- BitLocker-Editable-End -->

<!-- BitLocker-Tree-Begin -->
The following list shows the BitLocker configuration service provider nodes:

- ./Device/Vendor/MSFT/BitLocker
  - [AllowStandardUserEncryption](#allowstandarduserencryption)
  - [AllowWarningForOtherDiskEncryption](#allowwarningforotherdiskencryption)
  - [ConfigureRecoveryPasswordRotation](#configurerecoverypasswordrotation)
  - [EncryptionMethodByDriveType](#encryptionmethodbydrivetype)
  - [FixedDrivesEncryptionType](#fixeddrivesencryptiontype)
  - [FixedDrivesRecoveryOptions](#fixeddrivesrecoveryoptions)
  - [FixedDrivesRequireEncryption](#fixeddrivesrequireencryption)
  - [IdentificationField](#identificationfield)
  - [RemovableDrivesConfigureBDE](#removabledrivesconfigurebde)
  - [RemovableDrivesEncryptionType](#removabledrivesencryptiontype)
  - [RemovableDrivesExcludedFromEncryption](#removabledrivesexcludedfromencryption)
  - [RemovableDrivesRequireEncryption](#removabledrivesrequireencryption)
  - [RequireDeviceEncryption](#requiredeviceencryption)
  - [RequireStorageCardEncryption](#requirestoragecardencryption)
  - [RotateRecoveryPasswords](#rotaterecoverypasswords)
  - [Status](#status)
    - [DeviceEncryptionStatus](#statusdeviceencryptionstatus)
    - [RemovableDrivesEncryptionStatus](#statusremovabledrivesencryptionstatus)
    - [RotateRecoveryPasswordsRequestID](#statusrotaterecoverypasswordsrequestid)
    - [RotateRecoveryPasswordsStatus](#statusrotaterecoverypasswordsstatus)
  - [SystemDrivesDisallowStandardUsersCanChangePIN](#systemdrivesdisallowstandarduserscanchangepin)
  - [SystemDrivesEnablePrebootInputProtectorsOnSlates](#systemdrivesenableprebootinputprotectorsonslates)
  - [SystemDrivesEnablePreBootPinExceptionOnDECapableDevice](#systemdrivesenableprebootpinexceptionondecapabledevice)
  - [SystemDrivesEncryptionType](#systemdrivesencryptiontype)
  - [SystemDrivesEnhancedPIN](#systemdrivesenhancedpin)
  - [SystemDrivesMinimumPINLength](#systemdrivesminimumpinlength)
  - [SystemDrivesRecoveryMessage](#systemdrivesrecoverymessage)
  - [SystemDrivesRecoveryOptions](#systemdrivesrecoveryoptions)
  - [SystemDrivesRequireStartupAuthentication](#systemdrivesrequirestartupauthentication)
<!-- BitLocker-Tree-End -->

<!-- Device-AllowStandardUserEncryption-Begin -->
## AllowStandardUserEncryption

<!-- Device-AllowStandardUserEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- Device-AllowStandardUserEncryption-Applicability-End -->

<!-- Device-AllowStandardUserEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/AllowStandardUserEncryption
```
<!-- Device-AllowStandardUserEncryption-OmaUri-End -->

<!-- Device-AllowStandardUserEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Allows Admin to enforce "RequireDeviceEncryption" policy for scenarios where policy is pushed while current logged-on user is non-admin/standard user.

"AllowStandardUserEncryption" policy is tied to "AllowWarningForOtherDiskEncryption" policy being set to "0", i.e, Silent encryption is enforced.

If "AllowWarningForOtherDiskEncryption" isn't set, or is set to "1", "RequireDeviceEncryption" policy won't try to encrypt drive(s) if a standard user is the current logged-on user in the system.

The expected values for this policy are:

1 = "RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user.

0 = This is the default, when the policy isn't set. If current logged-on user is a standard user, "RequireDeviceEncryption" policy won't try to enable encryption on any drive.
<!-- Device-AllowStandardUserEncryption-Description-End -->

<!-- Device-AllowStandardUserEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-AllowStandardUserEncryption-Editable-End -->

<!-- Device-AllowStandardUserEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
| Dependency [AllowWarningForOtherDiskEncryptionDependency] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Bitlocker/AllowWarningForOtherDiskEncryption` <br> Dependency Allowed Value: `[0]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- Device-AllowStandardUserEncryption-DFProperties-End -->

<!-- Device-AllowStandardUserEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | This is the default, when the policy isn't set. If current logged-on user is a standard user, "RequireDeviceEncryption" policy won't try to enable encryption on any drive. |
| 1 | "RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user. |
<!-- Device-AllowStandardUserEncryption-AllowedValues-End -->

<!-- Device-AllowStandardUserEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
<Replace>
 <CmdID>111</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/AllowStandardUserEncryption</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">int</Format>
     </Meta>
     <Data>0</Data>
   </Item>
 </Replace>
```
<!-- Device-AllowStandardUserEncryption-Examples-End -->

<!-- Device-AllowStandardUserEncryption-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-Begin -->
## AllowWarningForOtherDiskEncryption

<!-- Device-AllowWarningForOtherDiskEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-AllowWarningForOtherDiskEncryption-Applicability-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/AllowWarningForOtherDiskEncryption
```
<!-- Device-AllowWarningForOtherDiskEncryption-OmaUri-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Allows Admin to disable all UI (notification for encryption and warning prompt for other disk encryption)
and turn on encryption on the user machines silently.

> [!WARNING]
> When you enable BitLocker on a device with third party encryption, it may render the device unusable and will require reinstallation of Windows.

> [!NOTE]
> This policy takes effect only if "RequireDeviceEncryption" policy is set to 1.

The expected values for this policy are:

1 = This is the default, when the policy isn't set. Warning prompt and encryption notification is allowed.

0 = Disables the warning prompt and encryption notification. Starting in Windows 10, next major update, the value 0 only takes effect on Microsoft Entra joined devices.

Windows will attempt to silently enable BitLocker for value 0.
<!-- Device-AllowWarningForOtherDiskEncryption-Description-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> When you disable the warning prompt, the OS drive's recovery key will back up to the user's Microsoft Entra account. When you allow the warning prompt, the user who receives the prompt can select where to back up the OS drive's recovery key.
>
> The endpoint for a fixed data drive's backup is chosen in the following order:
>
> 1. The user's Windows Server Active Directory Domain Services account.
> 2. The user's Microsoft Entra account.
> 3. The user's personal OneDrive (MDM/MAM only).
>
> Encryption will wait until one of these three locations backs up successfully.
<!-- Device-AllowWarningForOtherDiskEncryption-Editable-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- Device-AllowWarningForOtherDiskEncryption-DFProperties-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disables the warning prompt. Starting in Windows 10, version 1803, the value 0 can only be set for Microsoft Entra joined devices. Windows will attempt to silently enable BitLocker for value 0. |
| 1 (Default) | Warning prompt allowed. |
<!-- Device-AllowWarningForOtherDiskEncryption-AllowedValues-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

```xml
<Replace>
    <CmdID>110</CmdID>
    <Item>
        <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/AllowWarningForOtherDiskEncryption</LocURI>
        </Target>
        <Meta>
            <Format xmlns="syncml:metinf">int</Format>
        <Data>0</Data>
    </Item>
</Replace>
```
<!-- Device-AllowWarningForOtherDiskEncryption-Examples-End -->

<!-- Device-AllowWarningForOtherDiskEncryption-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-Begin -->
## ConfigureRecoveryPasswordRotation

<!-- Device-ConfigureRecoveryPasswordRotation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-ConfigureRecoveryPasswordRotation-Applicability-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/ConfigureRecoveryPasswordRotation
```
<!-- Device-ConfigureRecoveryPasswordRotation-OmaUri-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-Description-Begin -->
<!-- Description-Source-DDF -->
Allows Admin to configure Numeric Recovery Password Rotation upon use for OS and fixed drives on Microsoft Entra ID and hybrid domain joined devices.

When not configured, Rotation is turned on by default for Microsoft Entra ID only and off on hybrid. The Policy will be effective only when Active Directory back up for recovery password is configured to required.

For OS drive: Turn on "Do not enable BitLocker until recovery information is stored to AD DS for operating system drives".

For Fixed drives: Turn on "Do not enable BitLocker until recovery information is stored to AD DS for fixed data drives".

Supported Values: 0 - Numeric Recovery Passwords rotation OFF.

1 - Numeric Recovery Passwords Rotation upon use ON for Microsoft Entra joined devices. Default value
2 - Numeric Recovery Passwords Rotation upon use ON for both Microsoft Entra ID and hybrid devices.
<!-- Device-ConfigureRecoveryPasswordRotation-Description-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-ConfigureRecoveryPasswordRotation-Editable-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-ConfigureRecoveryPasswordRotation-DFProperties-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Refresh off (default). |
| 1 | Refresh on for Microsoft Entra joined devices. |
| 2 | Refresh on for both Microsoft Entra joined and hybrid-joined devices. |
<!-- Device-ConfigureRecoveryPasswordRotation-AllowedValues-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-ConfigureRecoveryPasswordRotation-Examples-End -->

<!-- Device-ConfigureRecoveryPasswordRotation-End -->

<!-- Device-EncryptionMethodByDriveType-Begin -->
## EncryptionMethodByDriveType

<!-- Device-EncryptionMethodByDriveType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-EncryptionMethodByDriveType-Applicability-End -->

<!-- Device-EncryptionMethodByDriveType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/EncryptionMethodByDriveType
```
<!-- Device-EncryptionMethodByDriveType-OmaUri-End -->

<!-- Device-EncryptionMethodByDriveType-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive.

- If you enable this policy setting, all removable data drives that aren't BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

If the "Deny write access to devices configured in another organization" option is selected, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" policy setting.

- If you disable or don't configure this policy setting, all removable data drives on the computer will be mounted with read and write access.

> [!NOTE]
> This policy setting can be overridden by the policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" policy setting is enabled this policy setting will be ignored.
<!-- Device-EncryptionMethodByDriveType-Description-End -->

<!-- Device-EncryptionMethodByDriveType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> When you enable EncryptionMethodByDriveType, you must specify values for all three drives (operating system, fixed data, and removable data), otherwise it will fail (500 return status). For example, if you only set the encryption method for the OS and removable drives, you will get a 500 return status.

Data ID elements:

- EncryptionMethodWithXtsOsDropDown_Name = Select the encryption method for operating system drives.
- EncryptionMethodWithXtsFdvDropDown_Name = Select the encryption method for fixed data drives.
- EncryptionMethodWithXtsRdvDropDown_Name = Select the encryption method for removable data drives.

Sample value for this node to enable this policy and set the encryption methods is:

```xml
 <enabled/>
<data id="EncryptionMethodWithXtsOsDropDown_Name" value="xx"/>
<data id="EncryptionMethodWithXtsFdvDropDown_Name" value="xx"/>
<data id="EncryptionMethodWithXtsRdvDropDown_Name" value="xx"/>
```

 The possible values for 'xx' are:

- 3 = AES-CBC 128
- 4 = AES-CBC 256
- 6 = XTS-AES 128
- 7 = XTS-AES 256
<!-- Device-EncryptionMethodByDriveType-Editable-End -->

<!-- Device-EncryptionMethodByDriveType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-EncryptionMethodByDriveType-DFProperties-End -->

<!-- Device-EncryptionMethodByDriveType-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RDVDenyWriteAccess_Name |
| Friendly Name | Deny write access to removable drives not protected by BitLocker |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Removable Data Drives |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\FVE |
| Registry Value Name | RDVDenyWriteAccess |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-EncryptionMethodByDriveType-AdmxBacked-End -->

<!-- Device-EncryptionMethodByDriveType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
<Replace>
  <CmdID>$CmdID$</CmdID>
    <Item>
      <Target>
          <LocURI>./Device/Vendor/MSFT/BitLocker/EncryptionMethodByDriveType</LocURI>
      </Target>
      <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
      </Meta>
      <Data><disabled/></Data>
    </Item>
</Replace>
```
<!-- Device-EncryptionMethodByDriveType-Examples-End -->

<!-- Device-EncryptionMethodByDriveType-End -->

<!-- Device-FixedDrivesEncryptionType-Begin -->
## FixedDrivesEncryptionType

<!-- Device-FixedDrivesEncryptionType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-FixedDrivesEncryptionType-Applicability-End -->

<!-- Device-FixedDrivesEncryptionType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/FixedDrivesEncryptionType
```
<!-- Device-FixedDrivesEncryptionType-OmaUri-End -->

<!-- Device-FixedDrivesEncryptionType-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.

- If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option won't be presented in the BitLocker setup wizard.

- If you disable or don't configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.
<!-- Device-FixedDrivesEncryptionType-Description-End -->

<!-- Device-FixedDrivesEncryptionType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is:

```xml
<enabled/><data id="FDVEncryptionTypeDropDown_Name" value="1"/>
```

Possible values:

- 0: Allow user to choose.
- 1: Full encryption.
- 2: Used space only encryption.

> [!NOTE]
> This policy is ignored when you're shrinking or expanding a volume and the BitLocker driver uses the current encryption method. For example, when a drive that's using Used Space Only encryption is expanded, the new free space isn't wiped as it would be for a drive that's using Full encryption. The user could wipe the free space on a Used Space Only drive by using the following command: `manage-bde -w`. If the volume is shrunk, no action is taken for the new free space.
>
> For more information about the tool to manage BitLocker, see [manage-bde](/windows-server/administration/windows-commands/manage-bde).
<!-- Device-FixedDrivesEncryptionType-Editable-End -->

<!-- Device-FixedDrivesEncryptionType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-FixedDrivesEncryptionType-DFProperties-End -->

<!-- Device-FixedDrivesEncryptionType-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FDVEncryptionType_Name |
| Friendly Name | Enforce drive encryption type on fixed data drives |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Fixed Data Drives |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FVE |
| Registry Value Name | FDVEncryptionType |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-FixedDrivesEncryptionType-AdmxBacked-End -->

<!-- Device-FixedDrivesEncryptionType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-FixedDrivesEncryptionType-Examples-End -->

<!-- Device-FixedDrivesEncryptionType-End -->

<!-- Device-FixedDrivesRecoveryOptions-Begin -->
## FixedDrivesRecoveryOptions

<!-- Device-FixedDrivesRecoveryOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-FixedDrivesRecoveryOptions-Applicability-End -->

<!-- Device-FixedDrivesRecoveryOptions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/FixedDrivesRecoveryOptions
```
<!-- Device-FixedDrivesRecoveryOptions-OmaUri-End -->

<!-- Device-FixedDrivesRecoveryOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.

The "Allow data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected fixed data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.

In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you won't be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.

In "Save BitLocker recovery information to Active Directory Domain Services" choose which BitLocker recovery information to store in AD DS for fixed data drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select "Backup recovery password only," only the recovery password is stored in AD DS.

Select the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

> [!NOTE]
> If the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box is selected, a recovery password is automatically generated.

- If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected fixed data drives.

- If this policy setting isn't configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information isn't backed up to AD DS.
<!-- Device-FixedDrivesRecoveryOptions-Description-End -->

<!-- Device-FixedDrivesRecoveryOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Data ID elements:

- FDVAllowDRA_Name: Allow data recovery agent
- FDVRecoveryPasswordUsageDropDown_Name and FDVRecoveryKeyUsageDropDown_Name: Configure user storage of BitLocker recovery information
- FDVHideRecoveryPage_Name: Omit recovery options from the BitLocker setup wizard
- FDVActiveDirectoryBackup_Name: Save BitLocker recovery information to Active Directory Domain Services
- FDVActiveDirectoryBackupDropDown_Name: Configure storage of BitLocker recovery information to AD DS
- FDVRequireActiveDirectoryBackup_Name: Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives

Sample value for this node to enable this policy is:

```xml
<enabled/>
<data id="FDVAllowDRA_Name" value="xx"/>
<data id="FDVRecoveryPasswordUsageDropDown_Name" value="yy"/>
<data id="FDVRecoveryKeyUsageDropDown_Name" value="yy"/>
<data id="FDVHideRecoveryPage_Name" value="xx"/>
<data id="FDVActiveDirectoryBackup_Name" value="xx"/>
<data id="FDVActiveDirectoryBackupDropDown_Name" value="zz"/>
<data id="FDVRequireActiveDirectoryBackup_Name" value="xx"/>
```

The possible values for 'xx' are:

- true = Explicitly allow
- false = Policy not set

The possible values for 'yy' are:

- 0 = Disallowed
- 1 = Required
- 2 = Allowed

The possible values for 'zz' are:

- 1 = Store recovery passwords and key packages
- 2 = Store recovery passwords only
<!-- Device-FixedDrivesRecoveryOptions-Editable-End -->

<!-- Device-FixedDrivesRecoveryOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-FixedDrivesRecoveryOptions-DFProperties-End -->

<!-- Device-FixedDrivesRecoveryOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FDVRecoveryUsage_Name |
| Friendly Name | Choose how BitLocker-protected fixed drives can be recovered |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Fixed Data Drives |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FVE |
| Registry Value Name | FDVRecovery |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-FixedDrivesRecoveryOptions-AdmxBacked-End -->

<!-- Device-FixedDrivesRecoveryOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
 <Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/FixedDrivesRecoveryOptions</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-FixedDrivesRecoveryOptions-Examples-End -->

<!-- Device-FixedDrivesRecoveryOptions-End -->

<!-- Device-FixedDrivesRequireEncryption-Begin -->
## FixedDrivesRequireEncryption

<!-- Device-FixedDrivesRequireEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-FixedDrivesRequireEncryption-Applicability-End -->

<!-- Device-FixedDrivesRequireEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/FixedDrivesRequireEncryption
```
<!-- Device-FixedDrivesRequireEncryption-OmaUri-End -->

<!-- Device-FixedDrivesRequireEncryption-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.

- If you enable this policy setting, all fixed data drives that aren't BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

- If you disable or don't configure this policy setting, all fixed data drives on the computer will be mounted with read and write access.
<!-- Device-FixedDrivesRequireEncryption-Description-End -->

<!-- Device-FixedDrivesRequireEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is: `<enabled/>`
<!-- Device-FixedDrivesRequireEncryption-Editable-End -->

<!-- Device-FixedDrivesRequireEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-FixedDrivesRequireEncryption-DFProperties-End -->

<!-- Device-FixedDrivesRequireEncryption-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FDVDenyWriteAccess_Name |
| Friendly Name | Deny write access to fixed drives not protected by BitLocker |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Fixed Data Drives |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\FVE |
| Registry Value Name | FDVDenyWriteAccess |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-FixedDrivesRequireEncryption-AdmxBacked-End -->

<!-- Device-FixedDrivesRequireEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
<Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/FixedDrivesRequireEncryption</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-FixedDrivesRequireEncryption-Examples-End -->

<!-- Device-FixedDrivesRequireEncryption-End -->

<!-- Device-IdentificationField-Begin -->
## IdentificationField

<!-- Device-IdentificationField-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-IdentificationField-Applicability-End -->

<!-- Device-IdentificationField-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/IdentificationField
```
<!-- Device-IdentificationField-OmaUri-End -->

<!-- Device-IdentificationField-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to associate unique organizational identifiers to a new drive that's enabled with BitLocker. These identifiers are stored as the identification field and allowed identification field. The identification field allows you to associate a unique organizational identifier to BitLocker-protected drives. This identifier is automatically added to new BitLocker-protected drives and can be updated on existing BitLocker-protected drives using the [manage-bde](/windows-server/administration/windows-commands/manage-bde) command-line tool. An identification field is required for management of certificate-based data recovery agents on BitLocker-protected drives and for potential updates to the BitLocker To Go Reader. BitLocker will only manage and update data recovery agents when the identification field on the drive matches the value configured in the identification field. In a similar manner, BitLocker will only update the BitLocker To Go Reader when the identification field on the drive matches the value configured for the identification field.

The allowed identification field is used in combination with the "Deny write access to removable drives not protected by BitLocker" policy setting to help control the use of removable drives in your organization. It's a comma separated list of identification fields from your organization or other external organizations.

You can configure the identification fields on existing drives by using [manage-bde](/windows-server/administration/windows-commands/manage-bde).exe.

- If you enable this policy setting, you can configure the identification field on the BitLocker-protected drive and any allowed identification field used by your organization.

When a BitLocker-protected drive is mounted on another BitLocker-enabled computer the identification field and allowed identification field will be used to determine whether the drive is from an outside organization.

- If you disable or don't configure this policy setting, the identification field isn't required.

> [!NOTE]
> Identification fields are required for management of certificate-based data recovery agents on BitLocker-protected drives. BitLocker will only manage and update certificate-based data recovery agents when the identification field is present on a drive and is identical to the value configured on the computer. The identification field can be any value of 260 characters or fewer.
<!-- Device-IdentificationField-Description-End -->

<!-- Device-IdentificationField-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Data ID elements:

- IdentificationField: This is a BitLocker identification field.
- SecIdentificationField: This is an allowed BitLocker identification field.

Sample value for this node to enable this policy is:

```xml
<enabled/>
<data id="IdentificationField" value="BitLocker-ID1"/>
<data id="SecIdentificationField" value="Allowed-BitLocker-ID2"/>
```
<!-- Device-IdentificationField-Editable-End -->

<!-- Device-IdentificationField-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-IdentificationField-DFProperties-End -->

<!-- Device-IdentificationField-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IdentificationField_Name |
| Friendly Name | Provide the unique identifiers for your organization |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| Registry Value Name | IdentificationField |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-IdentificationField-AdmxBacked-End -->

<!-- Device-IdentificationField-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-IdentificationField-Examples-End -->

<!-- Device-IdentificationField-End -->

<!-- Device-RemovableDrivesConfigureBDE-Begin -->
## RemovableDrivesConfigureBDE

<!-- Device-RemovableDrivesConfigureBDE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-RemovableDrivesConfigureBDE-Applicability-End -->

<!-- Device-RemovableDrivesConfigureBDE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RemovableDrivesConfigureBDE
```
<!-- Device-RemovableDrivesConfigureBDE-OmaUri-End -->

<!-- Device-RemovableDrivesConfigureBDE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls the use of BitLocker on removable data drives. This policy setting is applied when you turn on BitLocker.

When this policy setting is enabled you can select property settings that control how users can configure BitLocker. Choose "Allow users to apply BitLocker protection on removable data drives" to permit the user to run the BitLocker setup wizard on a removable data drive. Choose "Allow users to suspend and decrypt BitLocker on removable data drives" to permit the user to remove BitLocker Drive encryption from the drive or suspend the encryption while maintenance is performed. For information about suspending BitLocker protection, see [BitLocker Basic Deployment](/windows/security/information-protection/bitlocker/bitlocker-basic-deployment).

- If you don't configure this policy setting, users can use BitLocker on removable disk drives.

- If you disable this policy setting, users can't use BitLocker on removable disk drives.
<!-- Device-RemovableDrivesConfigureBDE-Description-End -->

<!-- Device-RemovableDrivesConfigureBDE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Data ID elements:

- RDVAllowBDE_Name: Allow users to apply BitLocker protection on removable data drives.
- RDVDisableBDE_Name: Allow users to suspend and decrypt BitLocker on removable data drives.

Sample value for this node to enable this policy is:

```xml
<enabled/>
<data id="RDVAllowBDE_Name" value="true"/>
<data id="RDVDisableBDE_Name" value="true"/>
```
<!-- Device-RemovableDrivesConfigureBDE-Editable-End -->

<!-- Device-RemovableDrivesConfigureBDE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-RemovableDrivesConfigureBDE-DFProperties-End -->

<!-- Device-RemovableDrivesConfigureBDE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RDVConfigureBDE |
| Friendly Name | Control use of BitLocker on removable drives |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Removable Data Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| Registry Value Name | RDVConfigureBDE |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-RemovableDrivesConfigureBDE-AdmxBacked-End -->

<!-- Device-RemovableDrivesConfigureBDE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RemovableDrivesConfigureBDE-Examples-End -->

<!-- Device-RemovableDrivesConfigureBDE-End -->

<!-- Device-RemovableDrivesEncryptionType-Begin -->
## RemovableDrivesEncryptionType

<!-- Device-RemovableDrivesEncryptionType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-RemovableDrivesEncryptionType-Applicability-End -->

<!-- Device-RemovableDrivesEncryptionType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RemovableDrivesEncryptionType
```
<!-- Device-RemovableDrivesEncryptionType-OmaUri-End -->

<!-- Device-RemovableDrivesEncryptionType-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.

- If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option won't be presented in the BitLocker setup wizard.

- If you disable or don't configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.
<!-- Device-RemovableDrivesEncryptionType-Description-End -->

<!-- Device-RemovableDrivesEncryptionType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is:

```xml
<enabled/><data id="RDVEncryptionTypeDropDown_Name" value="2"/>
```

Possible values:

- 0: Allow user to choose.
- 1: Full encryption.
- 2: Used space only encryption.
<!-- Device-RemovableDrivesEncryptionType-Editable-End -->

<!-- Device-RemovableDrivesEncryptionType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [BDEAllowed] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Bitlocker/RemovableDrivesConfigureBDE` <br> Dependency Allowed Value Type: `ADMX` <br>  |
<!-- Device-RemovableDrivesEncryptionType-DFProperties-End -->

<!-- Device-RemovableDrivesEncryptionType-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RDVEncryptionType_Name |
| Friendly Name | Enforce drive encryption type on removable data drives |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Removable Data Drives |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FVE |
| Registry Value Name | RDVEncryptionType |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-RemovableDrivesEncryptionType-AdmxBacked-End -->

<!-- Device-RemovableDrivesEncryptionType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RemovableDrivesEncryptionType-Examples-End -->

<!-- Device-RemovableDrivesEncryptionType-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-Begin -->
## RemovableDrivesExcludedFromEncryption

<!-- Device-RemovableDrivesExcludedFromEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-RemovableDrivesExcludedFromEncryption-Applicability-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RemovableDrivesExcludedFromEncryption
```
<!-- Device-RemovableDrivesExcludedFromEncryption-OmaUri-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
When enabled, allows you to exclude removable drives and devices connected over USB interface from [BitLocker Device Encryption](/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption). Excluded devices can't be encrypted, even manually. Additionally, if "Deny write access to removable drives not protected by BitLocker" is configured, user won't be prompted for encryption and drive will be mounted in read/write mode. Provide a comma separated list of excluded removable drives\devices, using the Hardware ID of the disk device. Example USBSTOR\SEAGATE_ST39102LW_______0004.
<!-- Device-RemovableDrivesExcludedFromEncryption-Description-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-RemovableDrivesExcludedFromEncryption-Editable-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `,`) |
<!-- Device-RemovableDrivesExcludedFromEncryption-DFProperties-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RemovableDrivesExcludedFromEncryption-Examples-End -->

<!-- Device-RemovableDrivesExcludedFromEncryption-End -->

<!-- Device-RemovableDrivesRequireEncryption-Begin -->
## RemovableDrivesRequireEncryption

<!-- Device-RemovableDrivesRequireEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-RemovableDrivesRequireEncryption-Applicability-End -->

<!-- Device-RemovableDrivesRequireEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RemovableDrivesRequireEncryption
```
<!-- Device-RemovableDrivesRequireEncryption-OmaUri-End -->

<!-- Device-RemovableDrivesRequireEncryption-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive.

- If you enable this policy setting, all removable data drives that aren't BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

If the "Deny write access to devices configured in another organization" option is selected, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" policy setting.

- If you disable or don't configure this policy setting, all removable data drives on the computer will be mounted with read and write access.

> [!NOTE]
> This policy setting can be overridden by the policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" policy setting is enabled this policy setting will be ignored.
<!-- Device-RemovableDrivesRequireEncryption-Description-End -->

<!-- Device-RemovableDrivesRequireEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Data ID elements:

- RDVCrossOrg: Deny write access to devices configured in another organization

Sample value for this node to enable this policy is:

```xml
 <enabled/><data id="RDVCrossOrg" value="xx"/>
```

The possible values for 'xx' are:

- true = Explicitly allow
- false = Policy not set
<!-- Device-RemovableDrivesRequireEncryption-Editable-End -->

<!-- Device-RemovableDrivesRequireEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-RemovableDrivesRequireEncryption-DFProperties-End -->

<!-- Device-RemovableDrivesRequireEncryption-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RDVDenyWriteAccess_Name |
| Friendly Name | Deny write access to removable drives not protected by BitLocker |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Removable Data Drives |
| Registry Key Name | System\CurrentControlSet\Policies\Microsoft\FVE |
| Registry Value Name | RDVDenyWriteAccess |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-RemovableDrivesRequireEncryption-AdmxBacked-End -->

<!-- Device-RemovableDrivesRequireEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
 <Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/RemovableDrivesRequireEncryption</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-RemovableDrivesRequireEncryption-Examples-End -->

<!-- Device-RemovableDrivesRequireEncryption-End -->

<!-- Device-RequireDeviceEncryption-Begin -->
## RequireDeviceEncryption

<!-- Device-RequireDeviceEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-RequireDeviceEncryption-Applicability-End -->

<!-- Device-RequireDeviceEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RequireDeviceEncryption
```
<!-- Device-RequireDeviceEncryption-OmaUri-End -->

<!-- Device-RequireDeviceEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to require encryption to be turned on using BitLocker\Device Encryption.

Sample value for this node to enable this policy:

1

Disabling the policy won't turn off the encryption on the system drive. But will stop prompting the user to turn it on.
<!-- Device-RequireDeviceEncryption-Description-End -->

<!-- Device-RequireDeviceEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Currently only full disk encryption is supported when using this CSP for silent encryption. For non-silent encryption, encryption type will depend on `SystemDrivesEncryptionType` and `FixedDrivesEncryptionType` configured on the device.

The status of OS volumes and encryptable fixed data volumes is checked with a Get operation. Typically, BitLocker/Device Encryption will follow whichever value [EncryptionMethodByDriveType](#encryptionmethodbydrivetype) policy is set to. However, this policy setting will be ignored for self-encrypting fixed drives and self-encrypting OS drives.

Encryptable fixed data volumes are treated similarly to OS volumes. However, fixed data volumes must meet other criteria to be considered encryptable:

- It must not be a dynamic volume.
- It must not be a recovery partition.
- It must not be a hidden volume.
- It must not be a system partition.
- It must not be backed by virtual storage.
- It must not have a reference in the BCD store.
<!-- Device-RequireDeviceEncryption-Editable-End -->

<!-- Device-RequireDeviceEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-RequireDeviceEncryption-DFProperties-End -->

<!-- Device-RequireDeviceEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disable. If the policy setting isn't set or is set to 0, the device's enforcement status isn't checked. The policy doesn't enforce encryption and it doesn't decrypt encrypted volumes. |
| 1 | Enable. The device's enforcement status is checked. Setting this policy to 1 triggers encryption of all drives (silently or non-silently based on AllowWarningForOtherDiskEncryption policy). |
<!-- Device-RequireDeviceEncryption-AllowedValues-End -->

<!-- Device-RequireDeviceEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable RequireDeviceEncryption:

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Device/Vendor/MSFT/BitLocker/RequireDeviceEncryption</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>0</Data>
            </Item>
        </Replace>
    </SyncBody>
</SyncML>
```
<!-- Device-RequireDeviceEncryption-Examples-End -->

<!-- Device-RequireDeviceEncryption-End -->

<!-- Device-RequireStorageCardEncryption-Begin -->
## RequireStorageCardEncryption

> [!NOTE]
> This policy is deprecated and may be removed in a future release.

<!-- Device-RequireStorageCardEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-RequireStorageCardEncryption-Applicability-End -->

<!-- Device-RequireStorageCardEncryption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RequireStorageCardEncryption
```
<!-- Device-RequireStorageCardEncryption-OmaUri-End -->

<!-- Device-RequireStorageCardEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to require storage card encryption on the device.

This policy is only valid for mobile SKU.

Sample value for this node to enable this policy:

1

Disabling the policy won't turn off the encryption on the storage card. But will stop prompting the user to turn it on.
<!-- Device-RequireStorageCardEncryption-Description-End -->

<!-- Device-RequireStorageCardEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-RequireStorageCardEncryption-Editable-End -->

<!-- Device-RequireStorageCardEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- Device-RequireStorageCardEncryption-DFProperties-End -->

<!-- Device-RequireStorageCardEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Storage cards don't need to be encrypted. |
| 1 | Require storage cards to be encrypted. |
<!-- Device-RequireStorageCardEncryption-AllowedValues-End -->

<!-- Device-RequireStorageCardEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RequireStorageCardEncryption-Examples-End -->

<!-- Device-RequireStorageCardEncryption-End -->

<!-- Device-RotateRecoveryPasswords-Begin -->
## RotateRecoveryPasswords

<!-- Device-RotateRecoveryPasswords-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-RotateRecoveryPasswords-Applicability-End -->

<!-- Device-RotateRecoveryPasswords-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/RotateRecoveryPasswords
```
<!-- Device-RotateRecoveryPasswords-OmaUri-End -->

<!-- Device-RotateRecoveryPasswords-Description-Begin -->
<!-- Description-Source-DDF -->
Allows admin to push one-time rotation of all numeric recovery passwords for OS and Fixed Data drives on a Microsoft Entra ID or hybrid-joined device.

This policy is Execute type and rotates all numeric passwords when issued from MDM tools.

The policy only comes into effect when Active Directory backup for a recovery password is configured to "required".

- For OS drives, enable "Do not enable BitLocker until recovery information is stored to Active Directory Domain Services for operating system drives".

- For fixed drives, enable "Do not enable BitLocker until recovery information is stored to Active Directory Domain Services for fixed data drives".

Client returns status DM_S_ACCEPTED_FOR_PROCESSING to indicate the rotation has started. Server can query status with the following status nodes:

- status\RotateRecoveryPasswordsStatus
- status\RotateRecoveryPasswordsRequestID.

Supported Values: String form of request ID. Example format of request ID is GUID. Server can choose the format as needed according to the management tools.
<!-- Device-RotateRecoveryPasswords-Description-End -->

<!-- Device-RotateRecoveryPasswords-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> Key rotation is supported only on these enrollment types. For more information, see [deviceEnrollmentType enum](/graph/api/resources/intune-devices-deviceenrollmenttype).
>
> - windowsAzureADJoin.
> - windowsBulkAzureDomainJoin.
> - windowsAzureADJoinUsingDeviceAuth.
> - windowsCoManagement.

> [!TIP]
> Key rotation feature will only work when:
>
> - For Operating system drives:
>   - OSRequireActiveDirectoryBackup_Name is set to 1 ("Required").
>   - OSActiveDirectoryBackup_Name is set to true.
>
> - For Fixed data drives:
>   - FDVRequireActiveDirectoryBackup_Name is set to 1 = ("Required").
>   - FDVActiveDirectoryBackup_Name is set to true.
<!-- Device-RotateRecoveryPasswords-Editable-End -->

<!-- Device-RotateRecoveryPasswords-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Exec |
<!-- Device-RotateRecoveryPasswords-DFProperties-End -->

<!-- Device-RotateRecoveryPasswords-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-RotateRecoveryPasswords-Examples-End -->

<!-- Device-RotateRecoveryPasswords-End -->

<!-- Device-Status-Begin -->
## Status

<!-- Device-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Status-Applicability-End -->

<!-- Device-Status-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/Status
```
<!-- Device-Status-OmaUri-End -->

<!-- Device-Status-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- Device-Status-Description-End -->

<!-- Device-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Status-Editable-End -->

<!-- Device-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- Device-Status-DFProperties-End -->

<!-- Device-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Status-Examples-End -->

<!-- Device-Status-End -->

<!-- Device-Status-DeviceEncryptionStatus-Begin -->
### Status/DeviceEncryptionStatus

<!-- Device-Status-DeviceEncryptionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- Device-Status-DeviceEncryptionStatus-Applicability-End -->

<!-- Device-Status-DeviceEncryptionStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/Status/DeviceEncryptionStatus
```
<!-- Device-Status-DeviceEncryptionStatus-OmaUri-End -->

<!-- Device-Status-DeviceEncryptionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node reports compliance state of device encryption on the system.

Value '0' means the device is compliant. Any other value represents a non-compliant device.
<!-- Device-Status-DeviceEncryptionStatus-Description-End -->

<!-- Device-Status-DeviceEncryptionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This value represents a bitmask with each bit and the corresponding error code described in the following table:

| Bit | Error Code |
|-----|------------|
| 0 |The BitLocker policy requires user consent to launch the BitLocker Drive Encryption Wizard to start encryption of the OS volume, but the user didn't consent.|
| 1 |The encryption method of the OS volume doesn't match the BitLocker policy.|
| 2 |The OS volume is unprotected.|
| 3 |The BitLocker policy requires a TPM-only protector for the OS volume, but TPM protection is not used.|
| 4 |The BitLocker policy requires TPM+PIN protection for the OS volume, but a TPM+PIN protector is not used.|
| 5 |The BitLocker policy requires TPM+startup key protection for the OS volume, but a TPM+startup key protector is not used.|
| 6 |The BitLocker policy requires TPM+PIN+startup key protection for the OS volume, but a TPM+PIN+startup key protector is not used.|
| 7 |The BitLocker policy requires a TPM protector to protect the OS volume, but a TPM is not used.|
| 8 |Recovery key backup failed.|
| 9 |A fixed drive is unprotected.|
| 10 |The encryption method of the fixed drive doesn't match the BitLocker policy.|
| 11 |To encrypt drives, the BitLocker policy requires either the user to sign in as an Administrator or if the device is joined to Microsoft Entra ID, the AllowStandardUserEncryption policy must be set to 1.|
| 12 |Windows Recovery Environment (WinRE) isn't configured.|
| 13 |A TPM isn't available for BitLocker, either because it isn't present, it has been made unavailable in the Registry, or the OS is on a removable drive. |
| 14 |The TPM isn't ready for BitLocker.|
| 15 |The network isn't available, which is required for recovery key backup. |
| 16 |The encryption type of the OS volume for full disk versus used space only encryption doesn't match the BitLocker policy.|
| 17 |The encryption type of the fixed drive for full disk versus used space only encryption doesn't match the BitLocker policy.|
| 18-31 |For future use.|
<!-- Device-Status-DeviceEncryptionStatus-Editable-End -->

<!-- Device-Status-DeviceEncryptionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Status-DeviceEncryptionStatus-DFProperties-End -->

<!-- Device-Status-DeviceEncryptionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Status-DeviceEncryptionStatus-Examples-End -->

<!-- Device-Status-DeviceEncryptionStatus-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-Begin -->
### Status/RemovableDrivesEncryptionStatus

<!-- Device-Status-RemovableDrivesEncryptionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-Status-RemovableDrivesEncryptionStatus-Applicability-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/Status/RemovableDrivesEncryptionStatus
```
<!-- Device-Status-RemovableDrivesEncryptionStatus-OmaUri-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node reports compliance state of removal drive encryption. "0" Value means the removal drive is encrypted following all set removal drive settings.
<!-- Device-Status-RemovableDrivesEncryptionStatus-Description-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Status-RemovableDrivesEncryptionStatus-Editable-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Status-RemovableDrivesEncryptionStatus-DFProperties-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Status-RemovableDrivesEncryptionStatus-Examples-End -->

<!-- Device-Status-RemovableDrivesEncryptionStatus-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-Begin -->
### Status/RotateRecoveryPasswordsRequestID

<!-- Device-Status-RotateRecoveryPasswordsRequestID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-Status-RotateRecoveryPasswordsRequestID-Applicability-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/Status/RotateRecoveryPasswordsRequestID
```
<!-- Device-Status-RotateRecoveryPasswordsRequestID-OmaUri-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-Description-Begin -->
<!-- Description-Source-DDF -->
This Node reports the RequestID corresponding to RotateRecoveryPasswordsStatus.

This node needs to be queried in synchronization with RotateRecoveryPasswordsStatus to ensure the status is correctly matched to the request ID.
<!-- Device-Status-RotateRecoveryPasswordsRequestID-Description-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Status-RotateRecoveryPasswordsRequestID-Editable-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Get |
<!-- Device-Status-RotateRecoveryPasswordsRequestID-DFProperties-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Status-RotateRecoveryPasswordsRequestID-Examples-End -->

<!-- Device-Status-RotateRecoveryPasswordsRequestID-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-Begin -->
### Status/RotateRecoveryPasswordsStatus

<!-- Device-Status-RotateRecoveryPasswordsStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1909 [10.0.18363] and later |
<!-- Device-Status-RotateRecoveryPasswordsStatus-Applicability-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/Status/RotateRecoveryPasswordsStatus
```
<!-- Device-Status-RotateRecoveryPasswordsStatus-OmaUri-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This Node reports the status of RotateRecoveryPasswords request.

Status code can be one of the following:

NotStarted(2), Pending (1), Pass (0), Other error codes in case of failure.
<!-- Device-Status-RotateRecoveryPasswordsStatus-Description-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-Status-RotateRecoveryPasswordsStatus-Editable-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-Status-RotateRecoveryPasswordsStatus-DFProperties-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-Status-RotateRecoveryPasswordsStatus-Examples-End -->

<!-- Device-Status-RotateRecoveryPasswordsStatus-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Begin -->
## SystemDrivesDisallowStandardUsersCanChangePIN

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Applicability-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesDisallowStandardUsersCanChangePIN
```
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-OmaUri-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not standard users are allowed to change BitLocker volume PINs, provided they're able to provide the existing PIN first.

This policy setting is applied when you turn on BitLocker.

- If you enable this policy setting, standard users won't be allowed to change BitLocker PINs or passwords.

- If you disable or don't configure this policy setting, standard users will be permitted to change BitLocker PINs and passwords.
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Description-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To change the PIN or password, the user must be able to provide the current PIN or password.

Sample value for this node to disable this policy is: `<disabled/>`
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Editable-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-DFProperties-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowStandardUsersCanChangePIN_Name |
| Friendly Name | Disallow standard users from changing the PIN or password |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| Registry Value Name | DisallowStandardUserPINReset |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-AdmxBacked-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-Examples-End -->

<!-- Device-SystemDrivesDisallowStandardUsersCanChangePIN-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Begin -->
## SystemDrivesEnablePrebootInputProtectorsOnSlates

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Applicability-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesEnablePrebootInputProtectorsOnSlates
```
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-OmaUri-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users to turn on authentication options that require user input from the pre-boot environment, even if the platform lacks pre-boot input capability.

The Windows touch keyboard (such as that used by tablets) isn't available in the pre-boot environment where BitLocker requires additional information such as a PIN or Password.

- If you enable this policy setting, devices must have an alternative means of pre-boot input (such as an attached USB keyboard).

- If this policy isn't enabled, the Windows Recovery Environment must be enabled on tablets to support the entry of the BitLocker recovery password. When the Windows Recovery Environment isn't enabled and this policy isn't enabled, you can't turn on BitLocker on a device that uses the Windows touch keyboard.

Note that if you don't enable this policy setting, options in the "Require additional authentication at startup" policy might not be available on such devices. These options include:

- Configure TPM startup PIN: Required/Allowed
- Configure TPM startup key and PIN: Required/Allowed
- Configure use of passwords for operating system drives.
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Description-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is: `<enabled/>`
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Editable-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-DFProperties-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnablePrebootInputProtectorsOnSlates_Name |
| Friendly Name | Enable use of BitLocker authentication requiring preboot keyboard input on slates |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| Registry Value Name | OSEnablePrebootInputProtectorsOnSlates |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-AdmxBacked-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-Examples-End -->

<!-- Device-SystemDrivesEnablePrebootInputProtectorsOnSlates-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Begin -->
## SystemDrivesEnablePreBootPinExceptionOnDECapableDevice

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Applicability-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesEnablePreBootPinExceptionOnDECapableDevice
```
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-OmaUri-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows users on devices that are compliant with InstantGo or Microsoft Hardware Security Test Interface (HSTI) to not have a PIN for pre-boot authentication. This overrides the "Require startup PIN with TPM" and "Require startup key and PIN with TPM" options of the "Require additional authentication at startup" policy on compliant hardware.

- If you enable this policy setting, users on InstantGo and HSTI compliant devices will have the choice to turn on BitLocker without pre-boot authentication.

- If this policy isn't enabled, the options of "Require additional authentication at startup" policy apply.
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Description-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is: `<enabled/>`
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Editable-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-DFProperties-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnablePreBootPinExceptionOnDECapableDevice_Name |
| Friendly Name | Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN. |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| Registry Value Name | OSEnablePreBootPinExceptionOnDECapableDevice |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-AdmxBacked-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-Examples-End -->

<!-- Device-SystemDrivesEnablePreBootPinExceptionOnDECapableDevice-End -->

<!-- Device-SystemDrivesEncryptionType-Begin -->
## SystemDrivesEncryptionType

<!-- Device-SystemDrivesEncryptionType-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-SystemDrivesEncryptionType-Applicability-End -->

<!-- Device-SystemDrivesEncryptionType-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesEncryptionType
```
<!-- Device-SystemDrivesEncryptionType-OmaUri-End -->

<!-- Device-SystemDrivesEncryptionType-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.

- If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option won't be presented in the BitLocker setup wizard.

- If you disable or don't configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.
<!-- Device-SystemDrivesEncryptionType-Description-End -->

<!-- Device-SystemDrivesEncryptionType-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is:

```xml
<enabled/><data id="OSEncryptionTypeDropDown_Name" value="1"/>
```

Possible values:

- 0: Allow user to choose.
- 1: Full encryption.
- 2: Used space only encryption.

>[!NOTE]
> This policy is ignored when shrinking or expanding a volume, and the BitLocker driver uses the current encryption method.
> For example, when a drive that's using Used Space Only encryption is expanded, the new free space isn't wiped as it would be for a drive that uses Full encryption. The user could wipe the free space on a Used Space Only drive by using the following command: `manage-bde -w`. If the volume is shrunk, no action is taken for the new free space.
>
> For more information about the tool to manage BitLocker, see [manage-bde](/windows-server/administration/windows-commands/manage-bde).
<!-- Device-SystemDrivesEncryptionType-Editable-End -->

<!-- Device-SystemDrivesEncryptionType-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesEncryptionType-DFProperties-End -->

<!-- Device-SystemDrivesEncryptionType-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | OSEncryptionType_Name |
| Friendly Name | Enforce drive encryption type on operating system drives |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FVE |
| Registry Value Name | OSEncryptionType |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesEncryptionType-AdmxBacked-End -->

<!-- Device-SystemDrivesEncryptionType-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SystemDrivesEncryptionType-Examples-End -->

<!-- Device-SystemDrivesEncryptionType-End -->

<!-- Device-SystemDrivesEnhancedPIN-Begin -->
## SystemDrivesEnhancedPIN

<!-- Device-SystemDrivesEnhancedPIN-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Device-SystemDrivesEnhancedPIN-Applicability-End -->

<!-- Device-SystemDrivesEnhancedPIN-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesEnhancedPIN
```
<!-- Device-SystemDrivesEnhancedPIN-OmaUri-End -->

<!-- Device-SystemDrivesEnhancedPIN-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether or not enhanced startup PINs are used with BitLocker.

Enhanced startup PINs permit the use of characters including uppercase and lowercase letters, symbols, numbers, and spaces. This policy setting is applied when you turn on BitLocker.

- If you enable this policy setting, all new BitLocker startup PINs set will be enhanced PINs.

> [!NOTE]
> Not all computers may support enhanced PINs in the pre-boot environment. It's strongly recommended that users perform a system check during BitLocker setup.

- If you disable or don't configure this policy setting, enhanced PINs won't be used.
<!-- Device-SystemDrivesEnhancedPIN-Description-End -->

<!-- Device-SystemDrivesEnhancedPIN-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Sample value for this node to enable this policy is: `<enabled/>`
<!-- Device-SystemDrivesEnhancedPIN-Editable-End -->

<!-- Device-SystemDrivesEnhancedPIN-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesEnhancedPIN-DFProperties-End -->

<!-- Device-SystemDrivesEnhancedPIN-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnhancedPIN_Name |
| Friendly Name | Allow enhanced PINs for startup |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| Registry Value Name | UseEnhancedPin |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesEnhancedPIN-AdmxBacked-End -->

<!-- Device-SystemDrivesEnhancedPIN-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-SystemDrivesEnhancedPIN-Examples-End -->

<!-- Device-SystemDrivesEnhancedPIN-End -->

<!-- Device-SystemDrivesMinimumPINLength-Begin -->
## SystemDrivesMinimumPINLength

<!-- Device-SystemDrivesMinimumPINLength-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-SystemDrivesMinimumPINLength-Applicability-End -->

<!-- Device-SystemDrivesMinimumPINLength-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesMinimumPINLength
```
<!-- Device-SystemDrivesMinimumPINLength-OmaUri-End -->

<!-- Device-SystemDrivesMinimumPINLength-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. This policy setting is applied when you turn on BitLocker. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits.

- If you enable this policy setting, you can require a minimum number of digits to be used when setting the startup PIN.

- If you disable or don't configure this policy setting, users can configure a startup PIN of any length between 6 and 20 digits.

> [!NOTE]
> If minimum PIN length is set below 6 digits, Windows will attempt to update the TPM 2.0 lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset.
<!-- Device-SystemDrivesMinimumPINLength-Description-End -->

<!-- Device-SystemDrivesMinimumPINLength-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> In Windows 10, version 1703 release B, you can use a minimum PIN length of 4 digits.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="MinPINLength" value="xx"/>
```
<!-- Device-SystemDrivesMinimumPINLength-Editable-End -->

<!-- Device-SystemDrivesMinimumPINLength-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesMinimumPINLength-DFProperties-End -->

<!-- Device-SystemDrivesMinimumPINLength-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MinimumPINLength_Name |
| Friendly Name | Configure minimum PIN length for startup |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesMinimumPINLength-AdmxBacked-End -->

<!-- Device-SystemDrivesMinimumPINLength-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
 <Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesMinimumPINLength</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-SystemDrivesMinimumPINLength-Examples-End -->

<!-- Device-SystemDrivesMinimumPINLength-End -->

<!-- Device-SystemDrivesRecoveryMessage-Begin -->
## SystemDrivesRecoveryMessage

<!-- Device-SystemDrivesRecoveryMessage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-SystemDrivesRecoveryMessage-Applicability-End -->

<!-- Device-SystemDrivesRecoveryMessage-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryMessage
```
<!-- Device-SystemDrivesRecoveryMessage-OmaUri-End -->

<!-- Device-SystemDrivesRecoveryMessage-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked.

If you select the "Use default recovery message and URL" option, the default BitLocker recovery message and URL will be displayed in the pre-boot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and select the "Use default recovery message and URL" option.

If you select the "Use custom recovery message" option, the message you type in the "Custom recovery message option" text box will be displayed in the pre-boot key recovery screen. If a recovery URL is available, include it in the message.

If you select the "Use custom recovery URL" option, the URL you type in the "Custom recovery URL option" text box will replace the default URL in the default recovery message, which will be displayed in the pre-boot key recovery screen.

> [!NOTE]
> Not all characters and languages are supported in pre-boot. It's strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.
<!-- Device-SystemDrivesRecoveryMessage-Description-End -->

<!-- Device-SystemDrivesRecoveryMessage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Data ID elements:

- PrebootRecoveryInfoDropDown_Name: Select an option for the pre-boot recovery message.
- RecoveryMessage_Input: Custom recovery message
- RecoveryUrl_Input: Custom recovery URL

Sample value for this node to enable this policy is:

```xml
<enabled/>
<data id="PrebootRecoveryInfoDropDown_Name" value="xx"/>
<data id="RecoveryMessage_Input" value="yy"/>
<data id="RecoveryUrl_Input" value="zz"/>
```

The possible values for 'xx' are:

- 0 = Empty
- 1 = Use default recovery message and URL (in this case you don't need to specify a value for "RecoveryMessage_Input" or "RecoveryUrl_Input").
- 2 = Custom recovery message is set.
- 3 = Custom recovery URL is set.

The possible value for 'yy' and 'zz' is a string of max length 900 and 500 respectively.

> [!NOTE]
>
> - When you enable SystemDrivesRecoveryMessage, you must specify values for all three settings (pre-boot recovery screen, recovery message, and recovery URL), otherwise it will fail (500 return status). For example, if you only specify values for message and URL, you will get a 500 return status.
> - Not all characters and languages are supported in pre-boot. It's strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.
<!-- Device-SystemDrivesRecoveryMessage-Editable-End -->

<!-- Device-SystemDrivesRecoveryMessage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesRecoveryMessage-DFProperties-End -->

<!-- Device-SystemDrivesRecoveryMessage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrebootRecoveryInfo_Name |
| Friendly Name | Configure pre-boot recovery message and URL |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | Software\Policies\Microsoft\FVE |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesRecoveryMessage-AdmxBacked-End -->

<!-- Device-SystemDrivesRecoveryMessage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
<Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryMessage</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-SystemDrivesRecoveryMessage-Examples-End -->

<!-- Device-SystemDrivesRecoveryMessage-End -->

<!-- Device-SystemDrivesRecoveryOptions-Begin -->
## SystemDrivesRecoveryOptions

<!-- Device-SystemDrivesRecoveryOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-SystemDrivesRecoveryOptions-Applicability-End -->

<!-- Device-SystemDrivesRecoveryOptions-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryOptions
```
<!-- Device-SystemDrivesRecoveryOptions-OmaUri-End -->

<!-- Device-SystemDrivesRecoveryOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.

The "Allow certificate-based data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected operating system drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.

In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you won't be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.

In "Save BitLocker recovery information to Active Directory Domain Services", choose which BitLocker recovery information to store in AD DS for operating system drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select "Backup recovery password only," only the recovery password is stored in AD DS.

Select the "Do not enable BitLocker until recovery information is stored in AD DS for operating system drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

> [!NOTE]
> If the "Do not enable BitLocker until recovery information is stored in AD DS for operating system drives" check box is selected, a recovery password is automatically generated.

- If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives.

- If this policy setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information isn't backed up to AD DS.
<!-- Device-SystemDrivesRecoveryOptions-Description-End -->

<!-- Device-SystemDrivesRecoveryOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Data ID elements:

- OSAllowDRA_Name: Allow certificate-based data recovery agent
- OSRecoveryPasswordUsageDropDown_Name and OSRecoveryKeyUsageDropDown_Name: Configure user storage of BitLocker recovery information
- OSHideRecoveryPage_Name: Omit recovery options from the BitLocker setup wizard
- OSActiveDirectoryBackup_Name and OSActiveDirectoryBackupDropDown_Name: Save BitLocker recovery information to Active Directory Domain Services
- OSRequireActiveDirectoryBackup_Name: Do not enable BitLocker until recovery information is stored in AD DS for operating system drives

Sample value for this node to enable this policy is:

```xml
<enabled/>
<data id="OSAllowDRA_Name" value="xx"/>
<data id="OSRecoveryPasswordUsageDropDown_Name" value="yy"/>
<data id="OSRecoveryKeyUsageDropDown_Name" value="yy"/>
<data id="OSHideRecoveryPage_Name" value="xx"/>
<data id="OSActiveDirectoryBackup_Name" value="xx"/>
<data id="OSActiveDirectoryBackupDropDown_Name" value="zz"/>
<data id="OSRequireActiveDirectoryBackup_Name" value="xx"/>
```

The possible values for 'xx' are:

- true = Explicitly allow
- false = Policy not set

The possible values for 'yy' are:

- 0 = Disallowed
- 1 = Required
- 2 = Allowed

The possible values for 'zz' are:

- 1 = Store recovery passwords and key packages.
- 2 = Store recovery passwords only.
<!-- Device-SystemDrivesRecoveryOptions-Editable-End -->

<!-- Device-SystemDrivesRecoveryOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesRecoveryOptions-DFProperties-End -->

<!-- Device-SystemDrivesRecoveryOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | OSRecoveryUsage_Name |
| Friendly Name | Choose how BitLocker-protected operating system drives can be recovered |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FVE |
| Registry Value Name | OSRecovery |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesRecoveryOptions-AdmxBacked-End -->

<!-- Device-SystemDrivesRecoveryOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
 <Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryOptions</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-SystemDrivesRecoveryOptions-Examples-End -->

<!-- Device-SystemDrivesRecoveryOptions-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-Begin -->
## SystemDrivesRequireStartupAuthentication

<!-- Device-SystemDrivesRequireStartupAuthentication-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- Device-SystemDrivesRequireStartupAuthentication-Applicability-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/BitLocker/SystemDrivesRequireStartupAuthentication
```
<!-- Device-SystemDrivesRequireStartupAuthentication-OmaUri-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a Trusted Platform Module (TPM). This policy setting is applied when you turn on BitLocker.

> [!NOTE]
> Only one of the additional authentication options can be required at startup, otherwise a policy error occurs.

If you want to use BitLocker on a computer without a TPM, select the "Allow BitLocker without a compatible TPM" check box. In this mode either a password or a USB drive is required for start-up. When using a startup key, the key information used to encrypt the drive is stored on the USB drive, creating a USB key. When the USB key is inserted the access to the drive is authenticated and the drive is accessible. If the USB key is lost or unavailable or if you have forgotten the password then you'll need to use one of the BitLocker recovery options to access the drive.

On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require insertion of a USB flash drive containing a startup key, the entry of a 6-digit to 20-digit personal identification number (PIN), or both.

- If you enable this policy setting, users can configure advanced startup options in the BitLocker setup wizard.

- If you disable or don't configure this policy setting, users can configure only basic options on computers with a TPM.

> [!NOTE]
> If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool [manage-bde](/windows-server/administration/windows-commands/manage-bde) instead of the BitLocker Drive Encryption setup wizard.
<!-- Device-SystemDrivesRequireStartupAuthentication-Description-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
>
> - In Windows 10, version 1703 release B, you can use a minimum PIN of 4 digits. SystemDrivesMinimumPINLength policy must be set to allow PINs shorter than 6 digits.
> - Devices that pass Hardware Security Testability Specification (HSTI) validation or Modern Standby devices won't be able to configure a Startup PIN using this CSP. Users are required to manually configure the PIN.
Data ID elements:

- ConfigureNonTPMStartupKeyUsage_Name = Allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).
- ConfigureTPMStartupKeyUsageDropDown_Name = (for computer with TPM) Configure TPM startup key.
- ConfigurePINUsageDropDown_Name = (for computer with TPM) Configure TPM startup PIN.
- ConfigureTPMPINKeyUsageDropDown_Name = (for computer with TPM) Configure TPM startup key and PIN.
- ConfigureTPMUsageDropDown_Name = (for computer with TPM) Configure TPM startup.

Sample value for this node to enable this policy is:

```xml
<enabled/>
<data id="ConfigureNonTPMStartupKeyUsage_Name" value="xx"/>
<data id="ConfigureTPMStartupKeyUsageDropDown_Name" value="yy"/>
<data id="ConfigurePINUsageDropDown_Name" value="yy"/>
<data id="ConfigureTPMPINKeyUsageDropDown_Name" value="yy"/>
<data id="ConfigureTPMUsageDropDown_Name" value="yy"/>
```

The possible values for 'xx' are:

- true = Explicitly allow
- false = Policy not set

The possible values for 'yy' are:

- 2 = Optional
- 1 = Required
- 0 = Disallowed
<!-- Device-SystemDrivesRequireStartupAuthentication-Editable-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-SystemDrivesRequireStartupAuthentication-DFProperties-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureAdvancedStartup_Name |
| Friendly Name | Require additional authentication at startup |
| Location | Computer Configuration |
| Path | Windows Components > BitLocker Drive Encryption > Operating System Drives |
| Registry Key Name | SOFTWARE\Policies\Microsoft\FVE |
| Registry Value Name | UseAdvancedStartup |
| ADMX File Name | VolumeEncryption.admx |
<!-- Device-SystemDrivesRequireStartupAuthentication-AdmxBacked-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To disable this policy, use the following SyncML:

```xml
 <Replace>
 <CmdID>$CmdID$</CmdID>
   <Item>
     <Target>
         <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRequireStartupAuthentication</LocURI>
     </Target>
     <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
     </Meta>
     <Data><disabled/></Data>
   </Item>
 </Replace>
```
<!-- Device-SystemDrivesRequireStartupAuthentication-Examples-End -->

<!-- Device-SystemDrivesRequireStartupAuthentication-End -->

<!-- BitLocker-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## SyncML example

The following example is provided to show proper format and shouldn't be taken as a recommendation.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>

      <!-- Phone only policy -->
      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/RequireStorageCardEncryption</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">int</Format>
          </Meta>
          <Data>1</Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/RequireDeviceEncryption</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">int</Format>
          </Meta>
          <Data>1</Data>
        </Item>
      </Replace>

      <!-- All of the following policies are only supported on desktop SKU -->
      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/EncryptionMethodByDriveType</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="EncryptionMethodWithXtsOsDropDown_Name" value="4"/>
            <data id="EncryptionMethodWithXtsFdvDropDown_Name" value="7"/>
            <data id="EncryptionMethodWithXtsRdvDropDown_Name" value="4"/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRequireStartupAuthentication</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="ConfigureNonTPMStartupKeyUsage_Name" value="true"/>
            <data id="ConfigureTPMStartupKeyUsageDropDown_Name" value="2"/>
            <data id="ConfigurePINUsageDropDown_Name" value="2"/>
            <data id="ConfigureTPMPINKeyUsageDropDown_Name" value="2"/>
            <data id="ConfigureTPMUsageDropDown_Name" value="2"/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesMinimumPINLength</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="MinPINLength" value="6"/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryMessage</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="RecoveryMessage_Input" value="blablablabla"/>
            <data id="PrebootRecoveryInfoDropDown_Name" value="2"/>
            <data id="RecoveryUrl_Input" value="blablabla"/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryOptions</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="OSAllowDRA_Name" value="true"/>
            <data id="OSRecoveryPasswordUsageDropDown_Name" value="2"/>
            <data id="OSRecoveryKeyUsageDropDown_Name" value="2"/>
            <data id="OSHideRecoveryPage_Name" value="true"/>
            <data id="OSActiveDirectoryBackup_Name" value="true"/>
            <data id="OSActiveDirectoryBackupDropDown_Name" value="2"/>
            <data id="OSRequireActiveDirectoryBackup_Name" value="true"/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/FixedDrivesRecoveryOptions</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="FDVAllowDRA_Name" value="true"/>
            <data id="FDVRecoveryPasswordUsageDropDown_Name" value="2"/>
            <data id="FDVRecoveryKeyUsageDropDown_Name" value="2"/>
            <data id="FDVHideRecoveryPage_Name" value="true"/>
            <data id="FDVActiveDirectoryBackup_Name" value="true"/>
            <data id="FDVActiveDirectoryBackupDropDown_Name" value="2"/>
            <data id="FDVRequireActiveDirectoryBackup_Name" value="true"/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/FixedDrivesRequireEncryption</LocURI>
          </Target>
          <Data>
            <enabled/>
          </Data>
        </Item>
      </Replace>

      <Replace>
        <CmdID>$CmdID$</CmdID>
        <Item>
          <Target>
            <LocURI>./Device/Vendor/MSFT/BitLocker/RemovableDrivesRequireEncryption</LocURI>
          </Target>
          <Data>
            <enabled/>
            <data id="RDVCrossOrg" value="true"/>
          </Data>
        </Item>
      </Replace>

      <Final/>
    </SyncBody>
</SyncML>
```
<!-- BitLocker-CspMoreInfo-End -->

<!-- BitLocker-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
