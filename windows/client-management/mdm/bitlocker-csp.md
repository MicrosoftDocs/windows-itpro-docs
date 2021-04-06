---
title: BitLocker CSP
description: Learn how the BitLocker configuration service provider (CSP) is used by the enterprise to manage encryption of PCs and devices.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.localizationpriority: medium
ms.date: 04/16/2020
ms.reviewer: 
manager: dansimp
---
# BitLocker CSP

The BitLocker configuration service provider (CSP) is used by the enterprise to manage encryption of PCs and devices. This CSP was added in Windows 10, version 1703. Starting in Windows 10, version 1809, it is also supported in Windows 10 Pro.

> [!NOTE]
> Settings are enforced only at the time encryption is started. Encryption is not restarted with settings changes.
> 
> You must send all the settings together in a single SyncML to be effective.

A Get operation on any of the settings, except for RequireDeviceEncryption and RequireStorageCardEncryption, returns
the setting configured by the admin.

For RequireDeviceEncryption and RequireStorageCardEncryption, the Get operation returns the actual status of enforcement to the admin, such as if Trusted Platform Module (TPM) protection is required and if encryption is required. And if the device has BitLocker enabled but with password protector, the status reported is 0. A Get operation on RequireDeviceEncryption does not verify that the a minimum PIN length is enforced (SystemDrivesMinimumPINLength).

The following shows the BitLocker configuration service provider in tree format.
```
./Device/Vendor/MSFT
BitLocker
----RequireStorageCardEncryption
----RequireDeviceEncryption
----EncryptionMethodByDriveType
----SystemDrivesRequireStartupAuthentication
----SystemDrivesMinimumPINLength
----SystemDrivesRecoveryMessage
----SystemDrivesRecoveryOptions
----FixedDrivesRecoveryOptions
----FixedDrivesRequireEncryption
----RemovableDrivesRequireEncryption
----AllowWarningForOtherDiskEncryption
----AllowStandardUserEncryption
----ConfigureRecoveryPasswordRotation
----RotateRecoveryPasswords
----Status
--------DeviceEncryptionStatus
--------RotateRecoveryPasswordsStatus
--------RotateRecoveryPasswordsRequestID
```
<a href="" id="--device-vendor-msft-bitlocker"></a>**./Device/Vendor/MSFT/BitLocker**  
Defines the root node for the BitLocker configuration service provider.
<!--Policy-->
<a href="" id="requirestoragecardencryption"></a>**RequireStorageCardEncryption**  
<!--Description-->
Allows the administrator to require storage card encryption on the device. This policy is valid only for a mobile SKU.
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->

Data type is integer. Sample value for this node to enable this policy: 1. Disabling this policy will not turn off the encryption on the storage card, but the user will no longer be prompted to turn it on.
<!--SupportedValues-->
- 0 (default) – Storage cards do not need to be encrypted.
- 1 – Require storage cards to be encrypted.  
<!--/SupportedValues-->
Disabling this policy will not turn off the encryption on the system card, but the user will no longer be prompted to turn it on.

If you want to disable this policy use the following SyncML:

```xml
<SyncML>
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
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
    </SyncBody>
</SyncML>
```

Data type is integer. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="requiredeviceencryption"></a>**RequireDeviceEncryption**  
<!--Description-->
Allows the administrator to require encryption to be turned on by using BitLocker\Device Encryption.
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->
Data type is integer. Sample value for this node to enable this policy: 1.
Supported operations are Add, Get, Replace, and Delete.

Status of OS volumes and encryptable fixed data volumes are checked with a Get operation. Typically, BitLocker/Device Encryption will follow whichever value [EncryptionMethodByDriveType](#encryptionmethodbydrivetype) policy is set to. However, this policy setting will be ignored for self-encrypting fixed drives and self-encrypting OS drives.

Encryptable fixed data volumes are treated similarly to OS volumes. However, fixed data volumes must meet additional criteria to be considered encryptable:

- It must not be a dynamic volume.
- It must not be a recovery partition.
- It must not be a hidden volume.
- It must not be a system partition.
- It must not be backed by virtual storage.
- It must not have a reference in the BCD store.
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) — Disable. If the policy setting is not set or is set to 0, the device's enforcement status is not checked. The policy does not enforce encryption and it does not decrypt encrypted volumes.
-   1 – Enable. The device's enforcement status is checked. Setting this policy to 1 triggers encryption of all drives (silently or non-silently based on [AllowWarningForOtherDiskEncryption](#allowwarningforotherdiskencryption) policy).  
<!--/SupportedValues-->
If you want to disable this policy, use the following SyncML:

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
<!--/Policy-->
<!--Policy-->
<a href="" id="encryptionmethodbydrivetype"></a>**EncryptionMethodByDriveType**
<!--Description-->
Allows you to set the default encryption method for each of the different drive types: operating system drives, fixed data drives, and removable data drives. Hidden, system, and recovery partitions are skipped from encryption. This setting is a direct mapping to the Bitlocker Group Policy "Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later)".
<!--/Description-->
<!--SupportedValues-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedValues-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later)</em></li>
<li>GP name: <em>EncryptionMethodWithXts_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.

If you enable this setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10, version 1511.

If you disable or do not configure this policy setting, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by any setup script.

 Sample value for this node to enable this policy and set the encryption methods is:

```xml
 <enabled/><data id="EncryptionMethodWithXtsOsDropDown_Name" value="xx"/><data id="EncryptionMethodWithXtsFdvDropDown_Name" value="xx"/><data id="EncryptionMethodWithXtsRdvDropDown_Name" value="xx"/>
```

EncryptionMethodWithXtsOsDropDown_Name = Select the encryption method for operating system drives
EncryptionMethodWithXtsFdvDropDown_Name = Select the encryption method for fixed data drives.
EncryptionMethodWithXtsRdvDropDown_Name = Select the encryption method for removable data drives.
<!--SupportedValues-->
 The possible values for 'xx' are:

- 3 = AES-CBC 128
- 4 = AES-CBC 256
- 6 = XTS-AES 128
- 7 = XTS-AES 256
<!--/SupportedValues-->
> [!NOTE]
> When you enable EncryptionMethodByDriveType, you must specify values for all three drives (operating system, fixed data, and removable data), otherwise it will fail (500 return status). For example, if you only set the encrytion method for the OS and removable drives, you will get a 500 return status.  

  If you want to disable this policy use the following SyncML: 

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

Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="systemdrivesrequirestartupauthentication"></a>**SystemDrivesRequireStartupAuthentication**  
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Require additional authentication at startup".
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Require additional authentication at startup</em></li>
<li>GP name: <em>ConfigureAdvancedStartup_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a TPM. This setting is applied when you turn on BitLocker.

> [!NOTE]
> Only one of the additional authentication options can be required at startup, otherwise an error occurs.

If you want to use BitLocker on a computer without a TPM, set the "ConfigureNonTPMStartupKeyUsage_Name" data. In this mode either a password or a USB drive is required for start-up. When using a startup key, the key information used to encrypt the drive is stored on the USB drive, creating a USB key. When the USB key is inserted the access to the drive is authenticated and the drive is accessible. If the USB key is lost or unavailable or if you have forgotten the password then you will need to use one of the BitLocker recovery options to access the drive.

On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require insertion of a USB flash drive containing a startup key, the entry of a 6-digit to 20-digit personal identification number (PIN), or both.

> [!NOTE]
> In Windows 10, version 1703 release B, you can use a minimum PIN of 4 digits. SystemDrivesMinimumPINLength policy must be set to allow PINs shorter than 6 digits.

If you enable this policy setting, users can configure advanced startup options in the BitLocker setup wizard.

If you disable or do not configure this setting, users can configure only basic options on computers with a TPM.

> [!NOTE]
> If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool manage-bde instead of the BitLocker Drive Encryption setup wizard.

> [!NOTE] 
> Devices that pass Hardware Security Testability Specification (HSTI) validation or Modern 
> Standby devices will not be able to configure a Startup PIN using this CSP. Users are required to manually configure the PIN.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="ConfigureNonTPMStartupKeyUsage_Name" value="xx"/><data id="ConfigureTPMStartupKeyUsageDropDown_Name" value="yy"/><data id="ConfigurePINUsageDropDown_Name" value="yy"/><data id="ConfigureTPMPINKeyUsageDropDown_Name" value="yy"/><data id="ConfigureTPMUsageDropDown_Name" value="yy"/>
```
Data id:
<ul>
<li>ConfigureNonTPMStartupKeyUsage_Name = Allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).</li>
<li>ConfigureTPMStartupKeyUsageDropDown_Name = (for computer with TPM) Configure TPM startup key.</li>
<li>ConfigurePINUsageDropDown_Name = (for computer with TPM) Configure TPM startup PIN.</li>
<li>ConfigureTPMPINKeyUsageDropDown_Name = (for computer with TPM) Configure TPM startup key and PIN.</li>
<li>ConfigureTPMUsageDropDown_Name = (for computer with TPM) Configure TPM startup.</li>
</ul>
<!--SupportedValues-->
The possible values for 'xx' are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
</ul>

The possible values for 'yy' are:
<ul>
<li>2 = Optional</li>
<li>1 = Required</li>
<li>0 = Disallowed</li>
</ul>
<!--/SupportedValues-->
Disabling the policy will let the system choose the default behaviors. If you want to disable this policy use the following SyncML:

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
Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="systemdrivesminimumpinlength"></a>**SystemDrivesMinimumPINLength**  
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Configure minimum PIN length for startup".
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name:<em>Configure minimum PIN length for startup</em></li>
<li>GP name: <em>MinimumPINLength_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. This setting is applied when you turn on BitLocker. The startup PIN must have a minimum length of 6 digits and can have a maximum length of 20 digits.

> [!NOTE]
> In Windows 10, version 1703 release B, you can use a minimum PIN length of 4 digits. 
>
>In TPM 2.0 if minimum PIN length is set below 6 digits, Windows will attempt to update the TPM lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset. This does not apply to TPM 1.2.

If you enable this setting, you can require a minimum number of digits to be used when setting the startup PIN.

If you disable or do not configure this setting, users can configure a startup PIN of any length between 6 and 20 digits.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="MinPINLength" value="xx"/>
```

Disabling the policy will let the system choose the default behaviors. If you want to disable this policy use the following SyncML:

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

Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="systemdrivesrecoverymessage"></a>**SystemDrivesRecoveryMessage** 
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Configure pre-boot recovery message and URL"
(PrebootRecoveryInfo_Name).
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Configure pre-boot recovery message and URL</em></li>
<li>GP name: <em>PrebootRecoveryInfo_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked.


If you set the value to "1" (Use default recovery message and URL), the default BitLocker recovery message and URL will be displayed in the pre-boot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and set the value "1" (Use default recovery message and URL).</o>

If you set the value to "2" (Use custom recovery message), the message you set in the "RecoveryMessage_Input" data field will be displayed in the pre-boot key recovery screen. If a recovery URL is available, include it in the message.

If you set the value to "3" (Use custom recovery URL), the URL you type in the "RecoveryUrl_Input" data field will replace the default URL in the default recovery message, which will be displayed in the pre-boot key recovery screen.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="PrebootRecoveryInfoDropDown_Name" value="xx"/><data id="RecoveryMessage_Input" value="yy"/><data id="RecoveryUrl_Input" value="zz"/>
```
<!--SupportedValues-->
The possible values for 'xx' are:

-  0 = Empty
-  1 = Use default recovery message and URL (in this case you don't need to specify a value for "RecoveryMessage_Input" or "RecoveryUrl_Input").
-  2 = Custom recovery message is set.
-  3 = Custom recovery URL is set.
-  'yy' = string of max length 900.
-  'zz' = string of max length 500.
<!--/SupportedValues-->
> [!NOTE]
> When you enable SystemDrivesRecoveryMessage, you must specify values for all three settings (pre-boot recovery screen, recovery message, and recovery URL), otherwise it will fail (500 return status). For example, if you only specify values for message and URL, you will get a 500 return status.

Disabling the policy will let the system choose the default behaviors.  If you want to disable this policy use the following SyncML:

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

> [!NOTE]
> Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.

Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="systemdrivesrecoveryoptions"></a>**SystemDrivesRecoveryOptions**  
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Choose how BitLocker-protected operating system drives can be recovered" (OSRecoveryUsage_Name).
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Choose how BitLocker-protected operating system drives can be recovered</em></li>
<li>GP name: <em>OSRecoveryUsage_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. This setting is applied when you turn on BitLocker.

The "OSAllowDRA_Name" (Allow certificate-based data recovery agent) data field is used to specify whether a data recovery agent can be used with BitLocker-protected operating system drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.

In "OSRecoveryPasswordUsageDropDown_Name" and "OSRecoveryKeyUsageDropDown_Name" (Configure user storage of BitLocker recovery information) set whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Set "OSHideRecoveryPage_Name" (Omit recovery options from the BitLocker setup wizard) to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.

Set "OSActiveDirectoryBackup_Name" (Save BitLocker recovery information to Active Directory Domain Services), to choose which BitLocker recovery information to store in AD DS for operating system drives (OSActiveDirectoryBackupDropDown_Name). If you set "1" (Backup recovery password and key package), both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you set "2" (Backup recovery password only), only the recovery password is stored in AD DS.

Set the "OSRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for operating system drives) data field if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

> [!NOTE]
> If the "OSRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for operating system drives) data field is set, a recovery password is automatically generated.

If you enable this setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives.

If this setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="OSAllowDRA_Name" value="xx"/><data id="OSRecoveryPasswordUsageDropDown_Name" value="yy"/><data id="OSRecoveryKeyUsageDropDown_Name" value="yy"/><data id="OSHideRecoveryPage_Name" value="xx"/><data id="OSActiveDirectoryBackup_Name" value="xx"/><data id="OSActiveDirectoryBackupDropDown_Name" value="zz"/><data id="OSRequireActiveDirectoryBackup_Name" value="xx"/>
```
<!--SupportedValues-->
The possible values for 'xx' are:  
- true = Explicitly allow
- false = Policy not set

The possible values for 'yy' are:  
- 2 = Allowed
- 1 = Required
- 0 = Disallowed

The possible values for 'zz' are:  
- 2 = Store recovery passwords only
- 1 = Store recovery passwords and key packages
<!--/SupportedValues-->
Disabling the policy will let the system choose the default behaviors. If you want to disable this policy use the following SyncML:

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

Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="fixeddrivesrecoveryoptions"></a>**FixedDrivesRecoveryOptions**  
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Choose how BitLocker-protected fixed drives can be recovered" ().
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Choose how BitLocker-protected fixed drives can be recovered</em></li>
<li>GP name: <em>FDVRecoveryUsage_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Fixed Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This setting is applied when you turn on BitLocker.

The "FDVAllowDRA_Name" (Allow data recovery agent) data field is used to specify whether a data recovery agent can be used with BitLocker-protected fixed data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.

In "FDVRecoveryPasswordUsageDropDown_Name" (Configure user storage of BitLocker recovery information) set whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Set "FDVHideRecoveryPage_Name" (Omit recovery options from the BitLocker setup wizard) to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.

Set "FDVActiveDirectoryBackup_Name" (Save BitLocker recovery information to Active Directory Domain Services) to enable saving the recovery key to AD.

Set the "FDVRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives) data field if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

Set the "FDVActiveDirectoryBackupDropDown_Name" (Configure storage of BitLocker recovery information to AD DS) to choose which BitLocker recovery information to store in AD DS for fixed data drives. If you select "1" (Backup recovery password and key package), both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select "2" (Backup recovery password only) only the recovery password is stored in AD DS.

> [!NOTE]
> If the "FDVRequireActiveDirectoryBackup_Name" (Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives) data field is set, a recovery password is automatically generated.

If you enable this setting, you can control the methods available to users to recover data from BitLocker-protected fixed data drives.

If this setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="FDVAllowDRA_Name" value="xx"/><data id="FDVRecoveryPasswordUsageDropDown_Name" value="yy"/><data id="FDVRecoveryKeyUsageDropDown_Name" value="yy"/><data id="FDVHideRecoveryPage_Name" value="xx"/><data id="FDVActiveDirectoryBackup_Name" value="xx"/><data id="FDVActiveDirectoryBackupDropDown_Name" value="zz"/><data id="FDVRequireActiveDirectoryBackup_Name" value="xx"/>
```
<!--SupportedValues-->
The possible values for 'xx' are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
</ul>

The possible values for 'yy' are:
<ul>
<li>2 = Allowed</li>
<li>1 = Required</li>
<li>0 = Disallowed</li>

</ul>

The possible values for 'zz' are:
<ul>
<li>2 = Store recovery passwords only</li>
<li>1 = Store recovery passwords and key packages</li>
</ul>
<!--/SupportedValues-->
Disabling the policy will let the system choose the default behaviors. If you want to disable this policy use the following SyncML:

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

Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="fixeddrivesrequireencryption"></a>**FixedDrivesRequireEncryption**  
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Deny write access to fixed drives not protected by BitLocker" (FDVDenyWriteAccess_Name).
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Deny write access to fixed drives not protected by BitLocker</em></li>
<li>GP name: <em>FDVDenyWriteAccess_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Fixed Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.

If you enable this setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

Sample value for this node to enable this policy is:

```xml
<enabled/>
```

If you disable or do not configure this setting, all fixed data drives on the computer will be mounted with read and write access. If you want to disable this policy use the following SyncML:

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

Data type is string. Supported operations are Add, Get, Replace, and Delete.
<!--/Policy-->
<!--Policy-->
<a href="" id="removabledrivesrequireencryption"></a>**RemovableDrivesRequireEncryption**  
<!--Description-->
This setting is a direct mapping to the Bitlocker Group Policy "Deny write access to removable drives not protected by BitLocker" (RDVDenyWriteAccess_Name).
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>
<!--/SupportedSKUs-->
<!--ADMXMapped-->
ADMX Info:
<ul>
<li>GP English name: <em>Deny write access to removable drives not protected by BitLocker</em></li>
<li>GP name: <em>RDVDenyWriteAccess_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Removeable Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>
<!--/ADMXMapped-->

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive.

If you enable this setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

If the "RDVCrossOrg" (Deny write access to devices configured in another organization) option is set, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" group policy setting.

If you disable or do not configure this policy setting, all removable data drives on the computer will be mounted with read and write access.

> [!NOTE]
> This policy setting can be overridden by the group policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" group policy setting is enabled this policy setting will be ignored.

Sample value for this node to enable this policy is:

```xml
 <enabled/><data id="RDVCrossOrg" value="xx"/>
```
<!--SupportedValues-->
The possible values for 'xx' are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
</ul>
<!--/SupportedValues-->
Disabling the policy will let the system choose the default behaviors. If you want to disable this policy use the following SyncML:

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
<!--/Policy-->
<!--Policy-->
<a href="" id="allowwarningforotherdiskencryption"></a>**AllowWarningForOtherDiskEncryption**  
<!--Description-->
Allows the admin to disable the warning prompt for other disk encryption on the user machines that are targeted when the RequireDeviceEncryption policy is also set to 1.
<!--/Description-->
> [!IMPORTANT]
> Starting in Windows 10, version 1803, the value 0 can only be set for Azure Active Directory joined devices. When RequireDeviceEncryption is set to 1 and AllowWarningForOtherDiskEncryption is set to 0, Windows will attempt to silently enable [BitLocker](/windows/device-security/bitlocker/bitlocker-overview).

> [!Warning]
> When you enable BitLocker on a device with third-party encryption, it may render the device unusable and require you to reinstall Windows.
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Disables the warning prompt. Starting in Windows 10, version 1803, the value 0 can only be set for Azure Active Directory joined devices.  Windows will attempt to silently enable BitLocker for value 0.
-   1 (default) – Warning prompt allowed.
<!--/SupportedValues-->
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

> [!NOTE]
>When you disable the warning prompt, the OS drive's recovery key will back up to the user's Azure Active Directory account. When you allow the warning prompt, the user who receives the prompt can select where to back up the OS drive's recovery key.
>
>The endpoint for a fixed data drive's backup is chosen in the following order:
  >1. The user's Windows Server Active Directory Domain Services account.
  >2. The user's Azure Active Directory account.
  >3. The user's personal OneDrive (MDM/MAM only).
>
>Encryption will wait until one of these three locations backs up successfully.
<!--/Policy-->
<!--Policy-->
<a href="" id="allowstandarduserencryption"></a>**AllowStandardUserEncryption**
<!--Description-->
Allows Admin to enforce "RequireDeviceEncryption" policy for scenarios where policy is pushed while current logged on user is non-admin/standard user Azure AD account.
<!--/Description-->

> [!NOTE]
> This policy is only supported in Azure AD accounts.

"AllowStandardUserEncryption" policy is tied to "AllowWarningForOtherDiskEncryption" policy  being set to "0", i.e, silent encryption is enforced.

If "AllowWarningForOtherDiskEncryption" is not set, or is set to "1", "RequireDeviceEncryption" policy will not try to encrypt drive(s) if a standard user is the current logged on user in the system.
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->
<!--SupportedValues-->
The expected values for this policy are:

- 1 = "RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user.
- 0 = This is the default, when the policy is not set. If current logged on user is a standard user, "RequireDeviceEncryption" policy will not try to enable encryption on any drive.
<!--/SupportedValues-->
If you want to disable this policy use the following SyncML:

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
<!--/Policy-->

<!--Policy-->

<a href="" id="configurerecoverypasswordrotation"></a>**ConfigureRecoveryPasswordRotation**  

<!--Description-->
This setting initiates a client-driven recovery password refresh after an OS drive recovery (either by using bootmgr or WinRE) and recovery password unlock on a Fixed data drive. This setting will refresh the specific recovery password that was used, and other unused passwords on the volume will remain unchanged. If the initialization of the refresh fails, the device will retry the refresh during the next reboot. When password refresh is initiated, the client will generate a new recovery password. The client will use the existing API in Azure AD to upload the new recovery key and retry on failure. After the recovery password has been successfully backed up to Azure AD, the recovery key that was used locally will be removed. This setting refreshes only the used key and retains other unused keys. 

<!--/Description-->

<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->

Value type is int. Supported operations are Add, Delete, Get, and Replace.

<!--SupportedValues-->

Supported values are:
- 0 – Refresh off (default)
- 1 – Refresh on for Azure AD-joined devices 
- 2 – Refresh on for both Azure AD-joined and hybrid-joined devices 

<!--/SupportedValues-->
<!--/Policy-->

<!--Policy-->

<a href="" id="rotaterecoverypasswords"></a>**RotateRecoveryPasswords**  

<!--Description-->

This setting refreshes all recovery passwords for OS and fixed drives (removable drives are not included so they can be shared between users). All recovery passwords for all drives will be refreshed and only one password per volume is retained. In case of errors, an error code will be returned so that server can take appropriate action to remediate.
<!--/Description-->

The client will generate a new recovery password. The client will use the existing API in Azure AD to upload the new recovery key and retry on failure.  

Policy type is Execute. When “Execute Policy” is pushed, the client sets the status as Pending and initiates an asynchronous rotation operation. After refresh is complete, pass or fail status is updated. The client will not retry, but if needed, the server can re-issue the execute request. 

Server can call Get on the RotateRecoveryPasswordsRotationStatus node to query the status of the refresh. 

Recovery password refresh will only occur for devices that are joined to Azure AD or joined to both Azure AD and on-premises (hybrid Azure AD-joined) that run a Windows 10 edition with the BitLocker CSP (Pro/Enterprise). Devices cannot refresh recovery passwords if they are only registered in Azure AD (also known as workplace-joined) or signed in with a Microsoft account. 

Each server-side recovery key rotation is represented by a request ID. The server can query the following nodes to make sure it reads status/result for same rotation request.
- RotateRecoveryPasswordsRequestID: Returns request ID of last request processed.
- RotateRecoveryPasswordsRotationStatus: Returns status of last request processed.
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->

Value type is string. Supported operation is Execute. Request ID is expected as a parameter.

> [!TIP]
> Key rotation feature will only work when:
>
> - For Operating system drives:
>    - OSRequireActiveDirectoryBackup_Name is set to 1 ("Required")
>    - OSActiveDirectoryBackup_Name is set to true
> - For Fixed data drives:
>    - FDVRequireActiveDirectoryBackup_Name is set to 1 = ("Required")
>    - FDVActiveDirectoryBackup_Name is set to true

<a href="" id="status"></a>**Status**  
Interior node. Supported operation is Get.

<!--/Policy-->

<!--Policy-->
<a href="" id="status-deviceencryptionstatus"></a>**Status/DeviceEncryptionStatus** 
<!--Description-->
This node reports compliance state of device encryption on the system. 
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->

<!--SupportedValues-->
Value type is int. Supported operation is Get.

Supported values:  
- 0 - Indicates that the device is compliant.
- Any non-zero value - Indicates that the device is not compliant. This value represents a bitmask with each bit and the corresponding error code described in the following table:

| Bit | Error Code |
|-----|------------|
| 0 |The BitLocker policy requires user consent to launch the BitLocker Drive Encryption Wizard to start encryption of the OS volume but the user didn't consent.|
| 1 |The encryption method of the OS volume doesn't match the BitLocker policy.|
| 2 |The OS volume is unprotected.|
| 3 |The BitLocker policy requires a TPM-only protector for the OS volume, but TPM protection isn't used.|
| 4 |The BitLocker policy requires TPM+PIN protection for the OS volume, but a TPM+PIN protector isn't used.|
| 5 |The BitLocker policy requires TPM+startup key protection for the OS volume, but a TPM+startup key protector isn't used.|
| 6 |The BitLocker policy requires TPM+PIN+startup key protection for the OS volume, but a TPM+PIN+startup key protector isn't used.|
| 7 |The BitLocker policy requires a TPM protector to protect the OS volume, but a TPM isn't used.|
| 8 |Recovery key backup failed.|
| 9 |A fixed drive is unprotected.|
| 10 |The encryption method of the fixed drive doesn't match the BitLocker policy.|
| 11 |To encrypt drives, the BitLocker policy requires either the user to sign in as an Administrator or, if the device is joined to Azure AD, the AllowStandardUserEncryption policy must be set to 1.|
| 12 |Windows Recovery Environment (WinRE) isn't configured.|
| 13 |A TPM isn't available for BitLocker, either because it isn't present, it has been made unavailable in the Registry, or the OS is on a removable drive. |
| 14 |The TPM isn't ready for BitLocker.|
| 15 |The network isn't available, which is required for recovery key backup. |
| 16-31 |For future use.|

<!--/SupportedValues-->

<!--/Policy-->

<!--Policy-->

<a href="" id="status-rotaterecoverypasswordsstatus"></a>**Status/RotateRecoveryPasswordsStatus**  
<!--Description-->

This node reports the status of RotateRecoveryPasswords request. 
<!--/Description-->

Status code can be one of the following:  

- 2 – Not started
- 1 - Pending
- 0 - Pass
- Any other code - Failure HRESULT
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 
<!--/SupportedSKUs-->

Value type is int. Supported operation is Get.

<!--/Policy-->

<!--Policy-->

<a href="" id="status-rotaterecoverypasswordsrequestid"></a>**Status/RotateRecoveryPasswordsRequestID**  

<!--Description-->
This node reports the RequestID corresponding to RotateRecoveryPasswordsStatus. 
This node needs to be queried in synchronization with RotateRecoveryPasswordsStatus to ensure the status is correctly matched to the request ID.
<!--/Description-->
<!--SupportedSKUs-->
<table>
<tr>
    <th>Home</th>
    <th>Pro</th>
    <th>Business</th>
    <th>Enterprise</th>
    <th>Education</th>
    <th>Mobile</th>
    <th>Mobile Enterprise</th>
</tr>
<tr>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table> 

<!--/SupportedSKUs-->

Value type is string. Supported operation is Get.

### SyncML example

The following example is provided to show proper format and should not be taken as a recommendation.

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

<!--/Policy-->