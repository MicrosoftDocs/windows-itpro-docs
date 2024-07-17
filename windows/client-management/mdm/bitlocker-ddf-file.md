---
title: BitLocker DDF file
description: View the XML file containing the device description framework (DDF) for the BitLocker configuration service provider.
ms.date: 06/28/2024
---

<!-- Auto-Generated CSP Document -->

# BitLocker DDF file

The following XML file contains the device description framework (DDF) for the BitLocker configuration service provider.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"[<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
  <MSFT:Diagnostics>
  </MSFT:Diagnostics>
  <Node>
    <NodeName>BitLocker</NodeName>
    <Path>./Device/Vendor/MSFT</Path>
    <DFProperties>
      <AccessType>
        <Get />
      </AccessType>
      <DFFormat>
        <node />
      </DFFormat>
      <Occurrence>
        <One />
      </Occurrence>
      <Scope>
        <Permanent />
      </Scope>
      <DFType>
        <MIME />
      </DFType>
      <MSFT:Applicability>
        <MSFT:OsBuildVersion>10.0.15063</MSFT:OsBuildVersion>
        <MSFT:CspVersion>1.0</MSFT:CspVersion>
        <MSFT:EditionAllowList>0x4;0x1B;0x30;0x31;0x48;0x54;0x79;0x7A;0x7D;0x7E;0x81;0x82;0x8A;0x8B;0xA1;0xA2;0xA4;0xA5;0xAB;0xAC;0xAF;0xBC;0xBF;0xCA;0xCB;0xCD;0xCF;0xD2;</MSFT:EditionAllowList>
      </MSFT:Applicability>
    </DFProperties>
    <Node>
      <NodeName>RequireStorageCardEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Allows the Admin to require storage card encryption on the device.
                         The format is integer.
                         This policy is only valid for mobile SKU.
                         Sample value for this node to enable this policy:
                         1

                         Disabling the policy will not turn off the encryption on the storage card. But will stop prompting the user to turn it on.
                         If you want to disable this policy use the following SyncML:
                         100./Device/Vendor/MSFT/BitLocker/RequireStorageCardEncryptionint0</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Storage cards do not need to be encrypted.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Require storage cards to be encrypted.</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
        <MSFT:Deprecated />
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RequireDeviceEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Allows the Admin to require encryption to be turned on using BitLocker\Device Encryption.
                         The format is integer.
                         Sample value for this node to enable this policy:
                         1

                         Disabling the policy will not turn off the encryption on the system drive. But will stop prompting the user to turn it on.
                         If you want to disable this policy use the following SyncML:
                         101./Device/Vendor/MSFT/BitLocker/RequireDeviceEncryptionint0</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Disable. If the policy setting is not set or is set to 0, the device's enforcement status is not checked. The policy does not enforce encryption and it does not decrypt encrypted volumes.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Enable. The device's enforcement status is checked. Setting this policy to 1 triggers encryption of all drives (silently or non-silently based on AllowWarningForOtherDiskEncryption policy).</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>EncryptionMethodByDriveType</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.
                         If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).
                         If you disable or do not configure this policy setting, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by any setup script.”
                         The format is string.
                         Sample value for this node to enable this policy and set the encryption methods is:
                         

                         EncryptionMethodWithXtsOsDropDown_Name = Select the encryption method for operating system drives.
                         EncryptionMethodWithXtsFdvDropDown_Name = Select the encryption method for fixed data drives.
                         EncryptionMethodWithXtsRdvDropDown_Name = Select the encryption method for removable data drives.

                         The possible values for 'xx' are:
                         3 = AES-CBC 128
                         4 = AES-CBC 256
                         6 = XTS-AES 128
                         7 = XTS-AES 256

                         If you want to disable this policy use the following SyncML:
                         102./Device/Vendor/MSFT/BitLocker/EncryptionMethodByDriveTypechr

                         Note: Maps to GP EncryptionMethodWithXts_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" Name="RDVDenyWriteAccess_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesRequireStartupAuthentication</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a Trusted Platform Module (TPM). This policy setting is applied when you turn on BitLocker.
                         Note: Only one of the additional authentication options can be required at startup, otherwise a policy error occurs.
                         If you want to use BitLocker on a computer without a TPM, set the "ConfigureNonTPMStartupKeyUsage_Name" data. In this mode either a password or a USB drive is required for start-up. When using a startup key, the key information used to encrypt the drive is stored on the USB drive, creating a USB key. When the USB key is inserted the access to the drive is authenticated and the drive is accessible. If the USB key is lost or unavailable or if you have forgotten the password then you will need to use one of the BitLocker recovery options to access the drive.
                         On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require insertion of a USB flash drive containing a startup key, the entry of a 4-digit to 20-digit personal identification number (PIN), or both.
                         If you enable this policy setting, users can configure advanced startup options in the BitLocker setup wizard.
                         If you disable or do not configure this policy setting, users can configure only basic options on computers with a TPM.
                         Note: If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool manage-bde instead of the BitLocker Drive Encryption setup wizard.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         ConfigureNonTPMStartupKeyUsage_Name = Allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive)
                         All of the below settings are for computers with a TPM.
                         ConfigureTPMStartupKeyUsageDropDown_Name = Configure TPM startup key.
                         ConfigurePINUsageDropDown_Name = Configure TPM startup PIN.
                         ConfigureTPMPINKeyUsageDropDown_Name = Configure TPM startup key and PIN.
                         ConfigureTPMUsageDropDown_Name = Configure TPM startup.

                         The possible values for 'xx' are:
                         true = Explicitly allow
                         false = Policy not set

                         The possible values for 'yy' are:
                         2 = Optional
                         1 = Required
                         0 = Disallowed

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         103./Device/Vendor/MSFT/BitLocker/SystemDrivesRequireStartupAuthenticationchr

                         Note: Maps to GP ConfigureAdvancedStartup_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="ConfigureAdvancedStartup_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesMinimumPINLength</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. This policy setting is applied when you turn on BitLocker. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits.
                         If you enable this policy setting, you can require a minimum number of digits to be used when setting the startup PIN.
                         If you disable or do not configure this policy setting, users can configure a startup PIN of any length between 6 and 20 digits.
                         NOTE: If minimum PIN length is set below 6 digits, Windows will attempt to update the TPM 2.0 lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         104./Device/Vendor/MSFT/BitLocker/SystemDrivesMinimumPINLengthchr

                         Note: Maps to GP MinimumPINLength_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="MinimumPINLength_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesRecoveryMessage</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked.
                         If you set the "1" (Use default recovery message and URL), the default BitLocker recovery message and URL will be displayed in the pre-boot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and set the value "1" (Use default recovery message and URL).
                         If you set the "2" (Use custom recovery message), the message you set in the "RecoveryMessage_Input" data field will be displayed in the pre-boot key recovery screen. If a recovery URL is available, include it in the message.
                         If you set the "3" (Use custom recovery URL), the URL you type in the "RecoveryUrl_Input" data field will replace the default URL in the default recovery message, which will be displayed in the pre-boot key recovery screen.
                         Note: Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         The possible values for 'xx' are:
                         0 = Empty
                         1 = Use default recovery message and URL.
                         2 = Custom recovery message is set.
                         3 = Custom recovery URL is set.
                         'yy' = string of max length 900.
                         'zz' = string of max length 500.

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         105./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryMessagechr

                         Note: Maps to GP PrebootRecoveryInfo_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="PrebootRecoveryInfo_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesRecoveryOptions</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.
                         The "OSAllowDRA_Name" (Allow certificate-based data recovery agent) data field is used to specify whether a data recovery agent can be used with BitLocker-protected operating system drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.
                         In "OSRecoveryPasswordUsageDropDown_Name" and "OSRecoveryKeyUsageDropDown_Name" (Configure user storage of BitLocker recovery information) set whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.
                         Set "OSHideRecoveryPage_Name" (Omit recovery options from the BitLocker setup wizard) to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.
                         Set "OSActiveDirectoryBackup_Name" (Save BitLocker recovery information to Active Directory Domain Services), to choose which BitLocker recovery information to store in AD DS for operating system drives (OSActiveDirectoryBackupDropDown_Name). If you set "1" (Backup recovery password and key package), both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you set "2" (Backup recovery password only), only the recovery password is stored in AD DS.
                         Set the "OSRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for operating system drives) data field if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.
                         Note: If the "OSRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for operating system drives) data field is set, a recovery password is automatically generated.
                         If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives.
                         If this policy setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         The possible values for 'xx' are:
                         true = Explicitly allow
                         false = Policy not set

                         The possible values for 'yy' are:
                         2 = Allowed
                         1 = Required
                         0 = Disallowed

                         The possible values for 'zz' are:
                         2 = Store recovery passwords only
                         1 = Store recovery passwords and key packages

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         106./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryOptionschr

                         Note: Maps to GP OSRecoveryUsage_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="OSRecoveryUsage_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>FixedDrivesRecoveryOptions</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.
                         The "FDVAllowDRA_Name" (Allow data recovery agent) data field is used to specify whether a data recovery agent can be used with BitLocker-protected fixed data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.
                         In "FDVRecoveryPasswordUsageDropDown_Name" (Configure user storage of BitLocker recovery information) set whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.
                         Set "FDVHideRecoveryPage_Name" (Omit recovery options from the BitLocker setup wizard) to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.
                         Set "FDVActiveDirectoryBackup_Name" (Save BitLocker recovery information to Active Directory Domain Services) to enable saving the recovery key to AD.
                         Set the "FDVRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives) data field if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.
                         Set the "FDVActiveDirectoryBackupDropDown_Name" (Configure storage of BitLocker recovery information to AD DS) to choose which BitLocker recovery information to store in AD DS for fixed data drives. If you select "1" (Backup recovery password and key package), both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select "2" (Backup recovery password only) only the recovery password is stored in AD DS.
                         Note: If the "FDVRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" data field is set, a recovery password is automatically generated.
                         If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected fixed data drives.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         The possible values for 'xx' are:
                         true = Explicitly allow
                         false = Policy not set

                         The possible values for 'yy' are:
                         2 = Allowed
                         1 = Required
                         0 = Disallowed

                         The possible values for 'zz' are:
                         2 = Store recovery passwords only
                         1 = Store recovery passwords and key packages

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         107./Device/Vendor/MSFT/BitLocker/FixedDrivesRecoveryOptionschr

                         Note: Maps to GP FDVRecoveryUsage_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEFDVCategory" Name="FDVRecoveryUsage_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>FixedDrivesRequireEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.
                         If you enable this policy setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.
                         If you disable or do not configure this policy setting, all fixed data drives on the computer will be mounted with read and write access.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         108./Device/Vendor/MSFT/BitLocker/FixedDrivesRequireEncryptionchr

                         Note: Maps to GP FDVDenyWriteAccess_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEFDVCategory" Name="FDVDenyWriteAccess_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RemovableDrivesRequireEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive.
                         If you enable this policy setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.
                         If the "RDVCrossOrg" (Deny write access to devices configured in another organization) option is set, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" group policy setting.
                         If you disable or do not configure this policy setting, all removable data drives on the computer will be mounted with read and write access.
                         Note: This policy setting can be overridden by the group policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" group policy setting is enabled this policy setting will be ignored.
                         The format is string.
                         Sample value for this node to enable this policy is:
                         

                         The possible values for 'xx' are:
                         true = Explicitly allow
                         false = Policy not set

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         109./Device/Vendor/MSFT/BitLocker/RemovableDrivesRequireEncryptionchr

                         Note: Maps to GP RDVDenyWriteAccess_Name policy.
            </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" Name="RDVDenyWriteAccess_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RemovableDrivesExcludedFromEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>When enabled, allows you to exclude removable drives and devices connected over USB interface from BitLocker Device Encryption. Excluded devices cannot be encrypted, even manually. Additionally, if "Deny write access to removable drives not protected by BitLocker" is configured, user will not be prompted for encryption and drive will be mounted in read/write mode. Provide a comma separated list of excluded removable drives\devices, using the Hardware ID of the disk device. Example USBSTOR\SEAGATE_ST39102LW_______0004.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <CaseSense>
          <CIS />
        </CaseSense>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="None">
          <MSFT:List Delimiter="," />
        </MSFT:AllowedValues>
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>AllowWarningForOtherDiskEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>1</DefaultValue>
        <Description>Allows Admin to disable all UI (notification for encryption and warning prompt for other disk encryption)
                         and turn on encryption on the user machines silently.
                         Warning: When you enable BitLocker on a device with third party encryption, it may render the device unusable and will
                         require reinstallation of Windows.
                         Note: This policy takes effect only if "RequireDeviceEncryption" policy is set to 1.
                         The format is integer.
                         The expected values for this policy are: 

                         1 = This is the default, when the policy is not set. Warning prompt and encryption notification is allowed.
                         0 = Disables the warning prompt and encryption notification. Starting in Windows 10, next major update, 
                             the value 0 only takes affect on Azure Active Directory joined devices. 
                             Windows will attempt to silently enable BitLocker for value 0.

                         If you want to disable this policy use the following SyncML:
                         110./Device/Vendor/MSFT/BitLocker/AllowWarningForOtherDiskEncryptionint0</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Disables the warning prompt. Starting in Windows 10, version 1803, the value 0 can only be set for Azure Active Directory joined devices. Windows will attempt to silently enable BitLocker for value 0.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Warning prompt allowed.</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>AllowStandardUserEncryption</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description>Allows Admin to enforce "RequireDeviceEncryption" policy for scenarios where policy is pushed while current logged on user is non-admin/standard user.
                         "AllowStandardUserEncryption" policy is tied to "AllowWarningForOtherDiskEncryption" policy  being set to "0", i.e, Silent encryption is enforced.
                         If "AllowWarningForOtherDiskEncryption" is not set, or is set to "1", "RequireDeviceEncryption" policy will not try to encrypt drive(s) if a standard user
                         is the current logged on user in the system.

                         The expected values for this policy are: 

                         1 = "RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user.
                         0 = This is the default, when the policy is not set. If current logged on user is a standard user, "RequireDeviceEncryption" policy
                             will not try to enable encryption on any drive.

                         If you want to disable this policy use the following SyncML:
                         111./Device/Vendor/MSFT/BitLocker/AllowStandardUserEncryptionint0</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.17763</MSFT:OsBuildVersion>
          <MSFT:CspVersion>3.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>This is the default, when the policy is not set. If current logged on user is a standard user, "RequireDeviceEncryption" policy will not try to enable encryption on any drive.</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>"RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user.</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
        <MSFT:DependencyBehavior>
          <MSFT:DependencyGroup FriendlyId="AllowWarningForOtherDiskEncryptionDependency">
            <MSFT:Dependency Type="DependsOn">
              <MSFT:DependencyUri>Device/Vendor/MSFT/Bitlocker/AllowWarningForOtherDiskEncryption</MSFT:DependencyUri>
              <MSFT:DependencyAllowedValue ValueType="Range">
                <MSFT:Value>[0]</MSFT:Value>
              </MSFT:DependencyAllowedValue>
            </MSFT:Dependency>
          </MSFT:DependencyGroup>
        </MSFT:DependencyBehavior>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>ConfigureRecoveryPasswordRotation</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <DefaultValue>0</DefaultValue>
        <Description> Allows Admin to configure Numeric Recovery Password Rotation upon use for OS and fixed drives on AAD and Hybrid domain joined devices.
                          When not configured, Rotation is turned on by default for AAD only and off on Hybrid. The Policy will be effective only when 
                          Active Directory back up for recovery password is configured to required.
                          For OS drive: Turn on "Do not enable Bitlocker until recovery information is stored to AD DS for operating system drives"
                          For Fixed drives: Turn on "Do not enable Bitlocker until recovery information is stored to AD DS for fixed data drives"
                       
                          Supported Values: 0 - Numeric Recovery Passwords rotation OFF.
                                            1 - Numeric Recovery Passwords Rotation upon use ON for AAD joined devices. Default value
                                            2 - Numeric Recovery Passwords Rotation upon use ON for both AAD and Hybrid devices
                         
                         If you want to disable this policy use the following SyncML:
 
                         112./Device/Vendor/MSFT/BitLocker/ConfigureRecoveryPasswordRotationint0</Description>
        <DFFormat>
          <int />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.18363</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ENUM">
          <MSFT:Enum>
            <MSFT:Value>0</MSFT:Value>
            <MSFT:ValueDescription>Refresh off (default)</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>1</MSFT:Value>
            <MSFT:ValueDescription>Refresh on for Azure AD-joined devices</MSFT:ValueDescription>
          </MSFT:Enum>
          <MSFT:Enum>
            <MSFT:Value>2</MSFT:Value>
            <MSFT:ValueDescription>Refresh on for both Azure AD-joined and hybrid-joined devices</MSFT:ValueDescription>
          </MSFT:Enum>
        </MSFT:AllowedValues>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RotateRecoveryPasswords</NodeName>
      <DFProperties>
        <AccessType>
          <Exec />
        </AccessType>
        <Description> Allows admin to push one-time rotation of all numeric recovery passwords for OS and Fixed Data drives on an Azure Active Directory or hybrid-joined device.
                          This policy is Execute type and rotates all numeric passwords when issued from MDM tools.
                          
The policy only comes into effect when Active Directory backup for a recovery password is configured to "required."
                              * For OS drives, enable "Do not enable BitLocker until recovery information is stored to Active Directory Domain Services for operating system drives."
                              *For fixed drives, enable "Do not enable BitLocker until recovery information is stored to Active Directory Domain Services for fixed data drives."
                       
                          Client returns status DM_S_ACCEPTED_FOR_PROCESSING to indicate the rotation has started. Server can query status with the following status nodes: 
                              
* status\RotateRecoveryPasswordsStatus 
                              * status\RotateRecoveryPasswordsRequestID
                          

                          
Supported Values: String form of request ID. Example format of request ID is GUID. Server can choose the format as needed according to the management tools.\
                         
                         113./Device/Vendor/MSFT/BitLocker/RotateRecoveryPasswordschr</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.18363</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>Status</NodeName>
      <DFProperties>
        <AccessType>
          <Get />
        </AccessType>
        <DFFormat>
          <node />
        </DFFormat>
        <Occurrence>
          <One />
        </Occurrence>
        <Scope>
          <Permanent />
        </Scope>
        <DFType>
          <DDFName />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.18362</MSFT:OsBuildVersion>
          <MSFT:CspVersion>4.0</MSFT:CspVersion>
        </MSFT:Applicability>
      </DFProperties>
      <Node>
        <NodeName>DeviceEncryptionStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node reports compliance state of device encryption on the system.
                            Value '0' means the device is compliant. Any other value represents a non-compliant device.
                </Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RotateRecoveryPasswordsStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description> This Node reports the status of RotateRecoveryPasswords request. 
                                Status code can be one of the following:
                                NotStarted(2), Pending (1), Pass (0), Other error codes in case of failure 
  
                  </Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.18363</MSFT:OsBuildVersion>
            <MSFT:CspVersion>5.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RotateRecoveryPasswordsRequestID</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description> This Node reports the RequestID corresponding to RotateRecoveryPasswordsStatus. 
                                This node needs to be queried in synchronization with RotateRecoveryPasswordsStatus
                                To ensure the status is correctly matched to the request ID.                        
                    
                  </Description>
          <DFFormat>
            <chr />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.18363</MSFT:OsBuildVersion>
            <MSFT:CspVersion>5.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
      <Node>
        <NodeName>RemovableDrivesEncryptionStatus</NodeName>
        <DFProperties>
          <AccessType>
            <Get />
          </AccessType>
          <Description>This node reports compliance state of removal drive encryption. "0" Value means the removal drive is encrypted following all set removal drive settings.</Description>
          <DFFormat>
            <int />
          </DFFormat>
          <Occurrence>
            <One />
          </Occurrence>
          <Scope>
            <Permanent />
          </Scope>
          <DFType>
            <MIME />
          </DFType>
          <MSFT:Applicability>
            <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
            <MSFT:CspVersion>5.0</MSFT:CspVersion>
          </MSFT:Applicability>
        </DFProperties>
      </Node>
    </Node>
    <Node>
      <NodeName>IdentificationField</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows you to associate unique organizational identifiers to a new drive that is enabled with BitLocker. These identifiers are stored as the identification field and allowed identification field. The identification field allows you to associate a unique organizational identifier to BitLocker-protected drives. This identifier is automatically added to new BitLocker-protected drives and can be updated on existing BitLocker-protected drives using the manage-bde command-line tool. An identification field is required for management of certificate-based data recovery agents on BitLocker-protected drives and for potential updates to the BitLocker To Go Reader. BitLocker will only manage and update data recovery agents when the identification field on the drive matches the value configured in the identification field. In a similar manner, BitLocker will only update the BitLocker To Go Reader when the identification field on the drive matches the value configured for the identification field.
          The allowed identification field is used in combination with the "Deny write access to removable drives not protected by BitLocker" policy setting to help control the use of removable drives in your organization. It is a comma separated list of identification fields from your organization or other external organizations.
          You can configure the identification fields on existing drives by using manage-bde.exe.
          If you enable this policy setting, you can configure the identification field on the BitLocker-protected drive and any allowed identification field used by your organization.
          When a BitLocker-protected drive is mounted on another BitLocker-enabled computer the identification field and allowed identification field will be used to determine whether the drive is from an outside organization.
          If you disable or do not configure this policy setting, the identification field is not required.

          Note: Identification fields are required for management of certificate-based data recovery agents on BitLocker-protected drives. BitLocker will only manage and update certificate-based data recovery agents when the identification field is present on a drive and is identical to the value configured on the computer. The identification field can be any value of 260 characters or fewer.

        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>IdentificationField</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory" Name="IdentificationField_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Provide the unique identifiers for your organization" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory" GpElement="IdentificationField" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>FixedDrivesEncryptionType</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.
          If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard.
          If you disable or do not configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.
        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>FixedDrivesEncryptionType</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEFDVCategory" Name="FDVEncryptionType_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Enforce drive encryption type on fixed data drives" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEFDVCategory" GpElement="FDVEncryptionType" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesEnhancedPIN</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows you to configure whether or not enhanced startup PINs are used with BitLocker.
          Enhanced startup PINs permit the use of characters including uppercase and lowercase letters, symbols, numbers, and spaces. This policy setting is applied when you turn on BitLocker.
          If you enable this policy setting, all new BitLocker startup PINs set will be enhanced PINs.
          Note:   Not all computers may support enhanced PINs in the pre-boot environment. It is strongly recommended that users perform a system check during BitLocker setup.
          If you disable or do not configure this policy setting, enhanced PINs will not be used.
        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>SystemDrivesEnhancedPIN</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="EnhancedPIN_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Allow enhanced PINs for startup" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" GpElement="UseEnhancedPin" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesDisallowStandardUsersCanChangePIN</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows you to configure whether or not standard users are allowed to change BitLocker volume PINs, provided they are able to provide the existing PIN first.
          This policy setting is applied when you turn on BitLocker.
          If you enable this policy setting, standard users will not be allowed to change BitLocker PINs or passwords.
          If you disable or do not configure this policy setting, standard users will be permitted to change BitLocker PINs and passwords.
        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>SystemDrivesDisallowStandardUsersCanChangePIN</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="DisallowStandardUsersCanChangePIN_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Disallow standard users from changing the PIN or password" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" GpElement="DisallowStandardUserPINReset" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesEnablePrebootInputProtectorsOnSlates</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows users to turn on authentication options that require user input from the pre-boot environment, even if the platform lacks pre-boot input capability.

          The Windows touch keyboard (such as that used by tablets) isn't available in the pre-boot environment where BitLocker requires additional information such as a PIN or Password.
          If you enable this policy setting, devices must have an alternative means of pre-boot input (such as an attached USB keyboard).
          If this policy is not enabled, the Windows Recovery Environment must be enabled on tablets to support the entry of the BitLocker recovery password. When the Windows Recovery Environment is not enabled and this policy is not enabled, you cannot turn on BitLocker on a device that uses the Windows touch keyboard.

          Note that if you do not enable this policy setting, options in the "Require additional authentication at startup" policy might not be available on such devices. These options include:
          - Configure TPM startup PIN: Required/Allowed
          - Configure TPM startup key and PIN: Required/Allowed
          - Configure use of passwords for operating system drives.
        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>SystemDrivesEnablePrebootInputProtectorsOnSlates</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="EnablePrebootInputProtectorsOnSlates_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Enable use of Bitlocker authentication requiring preboot keyboard input on slates" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" GpElement="OSEnablePrebootInputProtectorsOnSlates" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesEncryptionType</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.
          If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard.
          If you disable or do not configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.
        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>SystemDrivesEncryptionType</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="OSEncryptionType_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Enforce drive encryption type on operating system drives" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" GpElement="OSEncryptionType" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>SystemDrivesEnablePreBootPinExceptionOnDECapableDevice</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>
          This policy setting allows users on devices that are compliant with InstantGo or Microsoft Hardware Security Test Interface (HSTI) to not have a PIN for pre-boot authentication. This overrides the "Require startup PIN with TPM" and "Require startup key and PIN with TPM" options of the "Require additional authentication at startup" policy on compliant hardware.
          If you enable this policy setting, users on InstantGo and HSTI compliant devices will have the choice to turn on BitLocker without pre-boot authentication.
          If this policy is not enabled, the options of "Require additional authentication at startup" policy apply.
        </Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>SystemDrivesEnablePreBootPinExceptionOnDECapableDevice</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" Name="EnablePreBootPinExceptionOnDECapableDevice_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory" GpElement="OSEnablePreBootPinExceptionOnDECapableDevice" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RemovableDrivesConfigureBDE</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting controls the use of BitLocker on removable data drives. This policy setting is applied when you turn on BitLocker.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>RemovableDrivesConfigureBDE</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" Name="RDVConfigureBDE" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Control use of BitLocker on removable drives" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" GpElement="RDVConfigureBDE" />
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
    <Node>
      <NodeName>RemovableDrivesEncryptionType</NodeName>
      <DFProperties>
        <AccessType>
          <Add />
          <Delete />
          <Get />
          <Replace />
        </AccessType>
        <Description>This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.</Description>
        <DFFormat>
          <chr />
        </DFFormat>
        <Occurrence>
          <ZeroOrOne />
        </Occurrence>
        <Scope>
          <Dynamic />
        </Scope>
        <DFTitle>RemovableDrivesEncryptionType</DFTitle>
        <DFType>
          <MIME />
        </DFType>
        <MSFT:Applicability>
          <MSFT:OsBuildVersion>10.0.22000, 10.0.19043.1202, 10.0.19042.1202, 10.0.19041.1202</MSFT:OsBuildVersion>
          <MSFT:CspVersion>5.0</MSFT:CspVersion>
        </MSFT:Applicability>
        <MSFT:AllowedValues ValueType="ADMX">
          <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" Name="RDVEncryptionType_Name" File="VolumeEncryption.admx" />
        </MSFT:AllowedValues>
        <MSFT:GpMapping GpEnglishName="Enforce drive encryption type on removal data drives" GpAreaPath="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" GpElement="RDVEncryptionType" />
        <MSFT:DependencyBehavior>
          <MSFT:DependencyGroup FriendlyId="BDEAllowed">
            <MSFT:DependencyChangedAllowedValues ValueType="ADMX">
              <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" Name="RDVConfigureBDE" File="VolumeEncryption.admx" />
            </MSFT:DependencyChangedAllowedValues>
            <MSFT:Dependency Type="DependsOn">
              <MSFT:DependencyUri>Device/Vendor/MSFT/Bitlocker/RemovableDrivesConfigureBDE</MSFT:DependencyUri>
              <MSFT:DependencyAllowedValue ValueType="ADMX">
                <MSFT:AdmxBacked Area="VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory" Name="RDVConfigureBDE" File="VolumeEncryption.admx" />
              </MSFT:DependencyAllowedValue>
            </MSFT:Dependency>
          </MSFT:DependencyGroup>
        </MSFT:DependencyBehavior>
        <MSFT:ConflictResolution>LastWrite</MSFT:ConflictResolution>
      </DFProperties>
    </Node>
  </Node>
</MgmtTree>
```

## Related articles

[BitLocker configuration service provider reference](bitlocker-csp.md)
