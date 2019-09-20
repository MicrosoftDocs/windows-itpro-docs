---
title: BitLocker DDF file
description: BitLocker DDF file
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/29/2018
ms.reviewer: 
manager: dansimp
---

# BitLocker DDF file

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic shows the OMA DM device description framework (DDF) for the **BitLocker** configuration service provider. 

Looking for the DDF XML files? See [CSP DDF files download](configuration-service-provider-reference.md#csp-ddf-files-download).

The XML below is the current version Windows 10, version 1809. 

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
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
            <MIME>com.microsoft/3.0/MDM/BitLocker</MIME>
            <DDFName></DDFName>
          </DFType>
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
            <Description>Allows the Admin to require storage card encryption on the device.
                         The format is integer.
                         This policy is only valid for mobile SKU.
                         Sample value for this node to enable this policy:
                         1

                         Disabling the policy will not turn off the encryption on the storage card. But will stop prompting the user to turn it on.
                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>100</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/RequireStorageCardEncryption</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">int</Format>
                             </Meta>
                             <Data>0</Data>
                           </Item>
                         </Replace>
            </Description>
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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:SupportedValues low="0" high="1">
              <MSFT:SupportedValue value="0" description="Default when policy is not set."/>
              <MSFT:SupportedValue value="1" description="Allows the admin to require storage card encryption."/>
            </MSFT:SupportedValues>
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
            <Description>Allows the Admin to require encryption to be turned on using BitLocker\Device Encryption.
                         The format is integer.
                         Sample value for this node to enable this policy:
                         1

                         Disabling the policy will not turn off the encryption on the system drive. But will stop prompting the user to turn it on.
                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>101</CmdID>
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
            </Description>
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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:SupportedValues low="0" high="1">
              <MSFT:SupportedValue value="0" description="Default when policy is not set."/>
              <MSFT:SupportedValue value="1" description="Allows the admin to require encryption."/>
            </MSFT:SupportedValues>
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
                         &lt;enabled/&gt;&lt;data id=&quot;EncryptionMethodWithXtsOsDropDown_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;EncryptionMethodWithXtsFdvDropDown_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;EncryptionMethodWithXtsRdvDropDown_Name&quot; value=&quot;xx&quot;/&gt;

                         EncryptionMethodWithXtsOsDropDown_Name = Select the encryption method for operating system drives.
                         EncryptionMethodWithXtsFdvDropDown_Name = Select the encryption method for fixed data drives.
                         EncryptionMethodWithXtsRdvDropDown_Name = Select the encryption method for removable data drives.

                         The possible values for 'xx' are:
                         3 = AES-CBC 128
                         4 = AES-CBC 256
                         6 = XTS-AES 128
                         7 = XTS-AES 256

                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>102</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/EncryptionMethodByDriveType</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>EncryptionMethodWithXts_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;&lt;data id=&quot;ConfigureNonTPMStartupKeyUsage_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;ConfigureTPMStartupKeyUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;ConfigurePINUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;ConfigureTPMPINKeyUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;ConfigureTPMUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;

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
                         <Replace>
                         <CmdID>103</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRequireStartupAuthentication</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>ConfigureAdvancedStartup_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;&lt;data id=&quot;MinPINLength&quot; value=&quot;xx&quot;/&gt;

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>104</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesMinimumPINLength</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>MinimumPINLength_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;&lt;data id=&quot;PrebootRecoveryInfoDropDown_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;RecoveryMessage_Input&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;RecoveryUrl_Input&quot; value=&quot;zz&quot;/&gt;

                         The possible values for 'xx' are:
                         0 = Empty
                         1 = Use default recovery message and URL.
                         2 = Custom recovery message is set.
                         3 = Custom recovery URL is set.
                         'yy' = string of max length 900.
                         'zz' = string of max length 500.

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>105</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryMessage</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>PrebootRecoveryInfo_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;&lt;data id=&quot;OSAllowDRA_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;OSRecoveryPasswordUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;OSRecoveryKeyUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;OSHideRecoveryPage_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;OSActiveDirectoryBackup_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;OSActiveDirectoryBackupDropDown_Name&quot; value=&quot;zz&quot;/&gt;&lt;data id=&quot;OSRequireActiveDirectoryBackup_Name&quot; value=&quot;xx&quot;/&gt;

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
                         <Replace>
                         <CmdID>106</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/SystemDrivesRecoveryOptions</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVEOSCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>OSRecoveryUsage_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;&lt;data id=&quot;FDVAllowDRA_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;FDVRecoveryPasswordUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;FDVRecoveryKeyUsageDropDown_Name&quot; value=&quot;yy&quot;/&gt;&lt;data id=&quot;FDVHideRecoveryPage_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;FDVActiveDirectoryBackup_Name&quot; value=&quot;xx&quot;/&gt;&lt;data id=&quot;FDVActiveDirectoryBackupDropDown_Name&quot; value=&quot;zz&quot;/&gt;&lt;data id=&quot;FDVRequireActiveDirectoryBackup_Name&quot; value=&quot;xx&quot;/&gt;

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
                         <Replace>
                         <CmdID>107</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/FixedDrivesRecoveryOptions</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVEFDVCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>FDVRecoveryUsage_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>108</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/FixedDrivesRequireEncryption</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVEFDVCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>FDVDenyWriteAccess_Name</MSFT:ADMXPolicyName>
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
                         &lt;enabled/&gt;&lt;data id=&quot;RDVCrossOrg&quot; value=&quot;xx&quot;/&gt;

                         The possible values for 'xx' are:
                         true = Explicitly allow
                         false = Policy not set

                         Disabling the policy will let the system choose the default behaviors.
                         If you want to disable this policy use the following SyncML:
                         <Replace>
                         <CmdID>109</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/RemovableDrivesRequireEncryption</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">chr</Format>
                             </Meta>
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>

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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:ADMXBacked>VolumeEncryption.admx</MSFT:ADMXBacked>
            <MSFT:ADMXCategory>VolumeEncryption~AT~WindowsComponents~FVECategory~FVERDVCategory</MSFT:ADMXCategory>
            <MSFT:ADMXPolicyName>RDVDenyWriteAccess_Name</MSFT:ADMXPolicyName>
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
                         <Replace>
                         <CmdID>110</CmdID>
                           <Item>
                             <Target>
                                 <LocURI>./Device/Vendor/MSFT/BitLocker/AllowWarningForOtherDiskEncryption</LocURI>
                             </Target>
                             <Meta>
                                 <Format xmlns="syncml:metinf">int</Format>
                             </Meta>
                             <Data>0</Data>
                           </Item>
                         </Replace>
            </Description>
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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:SupportedValues AllowedValues="0,1">
              <MSFT:SupportedValue value="0" description="Disables the warning prompt. Starting in Windows 10, next major update, the value 0 only takes affect on Azure Active Directory joined devices. Windows will attempt to silently enable BitLocker for value 0."/>
              <MSFT:SupportedValue value="1" description="Default when policy is not set."/>
            </MSFT:SupportedValues>
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
            <Description>Allows Admin to enforce "RequireDeviceEncryption" policy for scenarios where policy is pushed while current logged on user is non-admin/standard user.
                         "AllowStandardUserEncryption" policy is tied to "AllowWarningForOtherDiskEncryption" policy  being set to "0", i.e, Silent encryption is enforced.
                         If "AllowWarningForOtherDiskEncryption" is not set, or is set to "1", "RequireDeviceEncryption" policy will not try to encrypt drive(s) if a standard user
                         is the current logged on user in the system.

                         The expected values for this policy are: 

                         1 = "RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user.
                         0 = This is the default, when the policy is not set. If current logged on user is a standard user, "RequireDeviceEncryption" policy
                             will not try to enable encryption on any drive.

                         If you want to disable this policy use the following SyncML:
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
            </Description>
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
              <MIME>text/plain</MIME>
            </DFType>
            <MSFT:SupportedValues AllowedValues="0,1">
              <MSFT:SupportedValue value="0" description="This is the default when the policy is not set. If current logged on user is a standard user, RequireDeviceEncryption policy
                             will not try to enable encryption on any drive."/>
              <MSFT:SupportedValue value="1" description="RequireDeviceEncryption policy will try to enable encryption on all fixed drives even if a current logged in user is standard user."/>
            </MSFT:SupportedValues>
          </DFProperties>
        </Node>
      </Node>
</MgmtTree>
```
