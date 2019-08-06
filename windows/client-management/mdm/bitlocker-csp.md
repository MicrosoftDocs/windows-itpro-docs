---
title: BitLocker CSP
description: BitLocker CSP
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 08/05/2019
ms.reviewer: 
manager: dansimp
---
# BitLocker CSP

The BitLocker configuration service provider (CSP) is used by the enterprise to manage encryption of PCs and devices. This CSP was added in Windows 10, version 1703. Starting in Windows 10, version 1809, it is also supported in Windows 10 Pro.

> [!NOTE]
> Settings are enforced only at the time encryption is started. Encryption is not restarted with settings changes.  
> You must send all the settings together in a single SyncML to be effective.

A Get operation on any of the settings, except for RequireDeviceEncryption and RequireStorageCardEncryption, returns
the setting configured by the admin.

For RequireDeviceEncryption and RequireStorageCardEncryption, the Get operation returns the actual status of enforcement to the admin, such as if TPM protection is required and if encryption is required. And if the device has BitLocker enabled but with password protector, the status reported is 0. A Get operation on RequireDeviceEncryption does not verify that the a minimum PIN length is enforced (SystemDrivesMinimumPINLength).

The following diagram shows the BitLocker configuration service provider in tree format.

![bitlocker csp](images/provisioning-csp-bitlocker.png)

<a href="" id="--device-vendor-msft-bitlocker"></a>**./Device/Vendor/MSFT/BitLocker**  
Defines the root node for the BitLocker configuration service provider.

<a href="" id="requirestoragecardencryption"></a>**RequireStorageCardEncryption**  
Allows the administrator to require storage card encryption on the device. This policy is valid only for a mobile SKU.

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

Data type is integer. Sample value for this node to enable this policy: 1. Disabling this policy will not turn off the encryption on the storage card, but the user will no longer be prompted to turn it on.

- 0 (default) – Storage cards do not need to be encrypted.
- 1 – Require Storage cards to be encrypted.  

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

<a href="" id="requiredeviceencryption"></a>**RequireDeviceEncryption**  

Allows the administrator to require encryption to be turned on by using BitLocker\Device Encryption.

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

Data type is integer. Sample value for this node to enable this policy: 1.
Supported operations are Add, Get, Replace, and Delete.

Status of OS volumes and encryptable fixed data volumes are checked with a Get operation. Typically, BitLocker/Device Encryption will follow whichever value [EncryptionMethodByDriveType](#encryptionmethodbydrivetype) policy is set to. However, this policy setting will be ignored for self-encrypting fixed drives and self-encrypting OS drives.

Encryptable fixed data volumes are treated similarly to OS volumes. However, fixed data volumes must meet additional criteria to be considered encryptable:

* The fixed data volume must have supported firmware (BIOS or UEFI).
* It must not be a dynamic volume.
* It must not be a recovery partition.
* It must not be a hidden volume.
* It must not be a system partition.
* It must not be backed by virtual storage.
* It must not have a reference in the BCD store.

The following list shows the supported values:

-   0 (default) – Disable. If the policy setting is not set or is set to 0, the device's enforcement status will not be checked. In other words, the policy will not enforce encryption and it will not decrypt encrypted volumes.
-   1 – Enable. The device's enforcement status will be checked. Setting this policy to 1 will trigger encryption of all drives (silently or non-silently based on [AllowWarningForOtherDiskEncryption](#allowwarningforotherdiskencryption) policy).  

If you want to disable this policy use the following SyncML:

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

<a href="" id="encryptionmethodbydrivetype"></a>**EncryptionMethodByDriveType**

Allows you to set the default encrytion method for each of the different drive types: operating system drives, fixed data drives, and removable data drives. Hidden, system and recovery partitions are skipped from encryption. This setting is a direct mapping to the Bitlocker Group Policy &quot;Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later)&quot;. 
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
ADMX Info:
<ul>
<li>GP English name: <em>Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later)</em></li>
<li>GP name: <em>EncryptionMethodWithXts_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

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

 The possible values for &#39;xx&#39; are:

- 3 = AES-CBC 128
- 4 = AES-CBC 256
- 6 = XTS-AES 128
- 7 = XTS-AES 256

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="systemdrivesrequirestartupauthentication"></a>**SystemDrivesRequireStartupAuthentication**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Require additional authentication at startup&quot;.
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
ADMX Info:
<ul>
<li>GP English name: <em>Require additional authentication at startup</em></li>
<li>GP name: <em>ConfigureAdvancedStartup_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a Trusted Platform Module (TPM). This setting is applied when you turn on BitLocker.

> [!NOTE]
> Only one of the additional authentication options can be required at startup, otherwise an error occurs.

If you want to use BitLocker on a computer without a TPM, set the &quot;ConfigureNonTPMStartupKeyUsage_Name&quot; data. In this mode either a password or a USB drive is required for start-up. When using a startup key, the key information used to encrypt the drive is stored on the USB drive, creating a USB key. When the USB key is inserted the access to the drive is authenticated and the drive is accessible. If the USB key is lost or unavailable or if you have forgotten the password then you will need to use one of the BitLocker recovery options to access the drive.

On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require insertion of a USB flash drive containing a startup key, the entry of a 6-digit to 20-digit personal identification number (PIN), or both.

> [!NOTE]
> In Windows 10, version 1703 release B, you can use a minimum PIN of 4 digits. SystemDrivesMinimumPINLength policy must be set to allow PINs shorter than 6 digits.

If you enable this policy setting, users can configure advanced startup options in the BitLocker setup wizard.

If you disable or do not configure this setting, users can configure only basic options on computers with a TPM.

> [!NOTE]
> If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool manage-bde instead of the BitLocker Drive Encryption setup wizard.

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

The possible values for &#39;xx&#39; are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
</ul>

The possible values for &#39;yy&#39; are:
<ul>
<li>2 = Optional</li>
<li>1 = Required</li>
<li>0 = Disallowed</li>
</ul>

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```
Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="systemdrivesminimumpinlength"></a>**SystemDrivesMinimumPINLength**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Configure minimum PIN length for startup&quot;.
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
ADMX Info:
<ul>
<li>GP English name:<em>Configure minimum PIN length for startup</em></li>
<li>GP name: <em>MinimumPINLength_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="systemdrivesrecoverymessage"></a>**SystemDrivesRecoveryMessage**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Configure pre-boot recovery message and URL&quot; (PrebootRecoveryInfo_Name).
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
ADMX Info:
<ul>
<li>GP English name: <em>Configure pre-boot recovery message and URL</em></li>
<li>GP name: <em>PrebootRecoveryInfo_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked.


If you set the value to &quot;1&quot; (Use default recovery message and URL), the default BitLocker recovery message and URL will be displayed in the pre-boot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and set the value &quot;1&quot; (Use default recovery message and URL).</o>

If you set the value to &quot;2&quot; (Use custom recovery message), the message you set in the &quot;RecoveryMessage_Input&quot; data field will be displayed in the pre-boot key recovery screen. If a recovery URL is available, include it in the message.

If you set the value to &quot;3&quot; (Use custom recovery URL), the URL you type in the &quot;RecoveryUrl_Input&quot; data field will replace the default URL in the default recovery message, which will be displayed in the pre-boot key recovery screen.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="PrebootRecoveryInfoDropDown_Name" value="xx"/><data id="RecoveryMessage_Input" value="yy"/><data id="RecoveryUrl_Input" value="zz"/>
```
The possible values for &#39;xx&#39; are:

-  0 = Empty
-  1 = Use default recovery message and URL (in this case you don't need to specify a value for "RecoveryMessage_Input" or "RecoveryUrl_Input").
-  2 = Custom recovery message is set.
-  3 = Custom recovery URL is set.
-  'yy' = string of max length 900.
-  'zz' = string of max length 500.

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

> [!NOTE]
> Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.

Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="systemdrivesrecoveryoptions"></a>**SystemDrivesRecoveryOptions**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Choose how BitLocker-protected operating system drives can be recovered&quot; (OSRecoveryUsage_Name).
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
ADMX Info:
<ul>
<li>GP English name: <em>Choose how BitLocker-protected operating system drives can be recovered</em></li>
<li>GP name: <em>OSRecoveryUsage_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Operating System Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. This setting is applied when you turn on BitLocker.

The &quot;OSAllowDRA_Name&quot; (Allow certificate-based data recovery agent) data field is used to specify whether a data recovery agent can be used with BitLocker-protected operating system drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.

In &quot;OSRecoveryPasswordUsageDropDown_Name&quot; and &quot;OSRecoveryKeyUsageDropDown_Name&quot; (Configure user storage of BitLocker recovery information) set whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Set &quot;OSHideRecoveryPage_Name&quot; (Omit recovery options from the BitLocker setup wizard) to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.

Set &quot;OSActiveDirectoryBackup_Name&quot; (Save BitLocker recovery information to Active Directory Domain Services), to choose which BitLocker recovery information to store in AD DS for operating system drives (OSActiveDirectoryBackupDropDown_Name). If you set &quot;1&quot; (Backup recovery password and key package), both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you set &quot;2&quot; (Backup recovery password only), only the recovery password is stored in AD DS.

Set the &quot;OSRequireActiveDirectoryBackup_Name&quot; (Do not enable BitLocker until recovery information is stored in AD DS for operating system drives) data field if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

&gt; [!Note]<br/>&gt; If the &quot;OSRequireActiveDirectoryBackup_Name&quot; (Do not enable BitLocker until recovery information is stored in AD DS for operating system drives) data field is set, a recovery password is automatically generated.

If you enable this setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives.

If this setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="OSAllowDRA_Name" value="xx"/><data id="OSRecoveryPasswordUsageDropDown_Name" value="yy"/><data id="OSRecoveryKeyUsageDropDown_Name" value="yy"/><data id="OSHideRecoveryPage_Name" value="xx"/><data id="OSActiveDirectoryBackup_Name" value="xx"/><data id="OSActiveDirectoryBackupDropDown_Name" value="zz"/><data id="OSRequireActiveDirectoryBackup_Name" value="xx"/>
```

The possible values for &#39;xx&#39; are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
<li></li>
</ul>

The possible values for &#39;yy&#39; are:
<ul>
<li>2 = Allowed</li>
<li>1 = Required</li>
<li>0 = Disallowed</li>
</ul>

The possible values for &#39;zz&#39; are:
<ul>
<li>2 = Store recovery passwords only</li>
<li>1 = Store recovery passwords and key packages</li>
<li></li>
</ul>

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="fixeddrivesrecoveryoptions"></a>**FixedDrivesRecoveryOptions**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Choose how BitLocker-protected fixed drives can be recovered&quot; ().
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
ADMX Info:
<ul>
<li>GP English name: <em>Choose how BitLocker-protected fixed drives can be recovered</em></li>
<li>GP name: <em>FDVRecoveryUsage_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Fixed Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This setting is applied when you turn on BitLocker.

The &quot;FDVAllowDRA_Name&quot; (Allow data recovery agent) data field is used to specify whether a data recovery agent can be used with BitLocker-protected fixed data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.

In &quot;FDVRecoveryPasswordUsageDropDown_Name&quot; (Configure user storage of BitLocker recovery information) set whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Set &quot;FDVHideRecoveryPage_Name&quot; (Omit recovery options from the BitLocker setup wizard) to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.

Set &quot;FDVActiveDirectoryBackup_Name&quot; (Save BitLocker recovery information to Active Directory Domain Services) to enable saving the recovery key to AD.

Set the &quot;FDVRequireActiveDirectoryBackup_Name&quot; (Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives) data field if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

Set the &quot;FDVActiveDirectoryBackupDropDown_Name&quot; (Configure storage of BitLocker recovery information to AD DS) to choose which BitLocker recovery information to store in AD DS for fixed data drives. If you select &quot;1&quot; (Backup recovery password and key package), both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select &quot;2&quot; (Backup recovery password only) only the recovery password is stored in AD DS.

&gt; [!Note]<br/>&gt; If the &quot;FDVRequireActiveDirectoryBackup_Name&quot; (Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives) data field is set, a recovery password is automatically generated.

If you enable this setting, you can control the methods available to users to recover data from BitLocker-protected fixed data drives.

If this setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.

Sample value for this node to enable this policy is:

```xml
<enabled/><data id="FDVAllowDRA_Name" value="xx"/><data id="FDVRecoveryPasswordUsageDropDown_Name" value="yy"/><data id="FDVRecoveryKeyUsageDropDown_Name" value="yy"/><data id="FDVHideRecoveryPage_Name" value="xx"/><data id="FDVActiveDirectoryBackup_Name" value="xx"/><data id="FDVActiveDirectoryBackupDropDown_Name" value="zz"/><data id="FDVRequireActiveDirectoryBackup_Name" value="xx"/>
```

The possible values for &#39;xx&#39; are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
</ul>

The possible values for &#39;yy&#39; are:
<ul>
<li>2 = Allowed</li>
<li>1 = Required</li>
<li>0 = Disallowed</li>

</ul>

The possible values for &#39;zz&#39; are:
<ul>
<li>2 = Store recovery passwords only</li>
<li>1 = Store recovery passwords and key packages</li>
</ul>

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="fixeddrivesrequireencryption"></a>**FixedDrivesRequireEncryption**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Deny write access to fixed drives not protected by BitLocker&quot; (FDVDenyWriteAccess_Name).
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
ADMX Info:
<ul>
<li>GP English name: <em>Deny write access to fixed drives not protected by BitLocker</em></li>
<li>GP name: <em>FDVDenyWriteAccess_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Fixed Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

Data type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="removabledrivesrequireencryption"></a>**RemovableDrivesRequireEncryption**  
This setting is a direct mapping to the Bitlocker Group Policy &quot;Deny write access to removable drives not protected by BitLocker&quot; (RDVDenyWriteAccess_Name).
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
ADMX Info:
<ul>
<li>GP English name: <em>Deny write access to removable drives not protected by BitLocker</em></li>
<li>GP name: <em>RDVDenyWriteAccess_Name</em></li>
<li>GP path: <em>Windows Components/Bitlocker Drive Encryption/Removeable Drives</em></li>
<li>GP ADMX file name: <em>VolumeEncryption.admx</em></li>
</ul>

> [!TIP]
> For a step-by-step guide to enable ADMX-backed policies, see [Enable ADMX-backed policies in MDM](enable-admx-backed-policies-in-mdm.md). For additional information, see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

This setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive.

If you enable this setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.

If the &quot;RDVCrossOrg&quot; (Deny write access to devices configured in another organization) option is set, only drives with identification fields matching the computer&#39;s identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the &quot;Provide the unique identifiers for your organization&quot; group policy setting.

If you disable or do not configure this policy setting, all removable data drives on the computer will be mounted with read and write access.

&gt; [!Note]<br/>&gt; This policy setting can be overridden by the group policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the &quot;Removable Disks: Deny write access&quot; group policy setting is enabled this policy setting will be ignored.

Sample value for this node to enable this policy is:

```xml
 <enabled/><data id="RDVCrossOrg" value="xx"/>
```

The possible values for &#39;xx&#39; are:
<ul>
<li>true = Explicitly allow</li>
<li>false = Policy not set</li>
</ul>

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
                             <Data>&lt;disabled/&gt;</Data>
                           </Item>
                         </Replace>
```

<a href="" id="allowwarningforotherdiskencryption"></a>**AllowWarningForOtherDiskEncryption**  

Allows the admin to disable the warning prompt for other disk encryption on the user machines that are targeted when the RequireDeviceEncryption policy is also set to 1.

> [!IMPORTANT]
> Starting in Windows 10, version 1803, the value 0 can only be set for Azure Active Directory joined devices. When RequireDeviceEncryption is set to 1 and AllowWarningForOtherDiskEncryption is set to 0, Windows will attempt to silently enable [BitLocker](https://docs.microsoft.com/windows/device-security/bitlocker/bitlocker-overview).

> [!Warning]
> When you enable BitLocker on a device with third-party encryption, it may render the device unusable and require you to reinstall Windows.

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

The following list shows the supported values:

-   0 – Disables the warning prompt. Starting in Windows 10, version 1803, the value 0 can only be set for Azure Active Directory joined devices.  Windows will attempt to silently enable BitLocker for value 0.
-   1 (default) – Warning prompt allowed.

```xml
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

<a href="" id="allowstandarduserencryption"></a>**AllowStandardUserEncryption**  
Allows Admin to enforce "RequireDeviceEncryption" policy for scenarios where policy is pushed while current logged on user is non-admin/standard user Azure AD account.

> [!NOTE]
> This policy is only supported in Azure AD accounts.

"AllowStandardUserEncryption" policy is tied to "AllowWarningForOtherDiskEncryption" policy  being set to "0", i.e, silent encryption is enforced.

If "AllowWarningForOtherDiskEncryption" is not set, or is set to "1", "RequireDeviceEncryption" policy will not try to encrypt drive(s) if a standard user is the current logged on user in the system.

The expected values for this policy are:

- 1 = "RequireDeviceEncryption" policy will try to enable encryption on all fixed drives even if a current logged in user is standard user.
- 0 = This is the default, when the policy is not set. If current logged on user is a standard user, "RequireDeviceEncryption" policy will not try to enable encryption on any drive.

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
            &lt;enabled/&gt;
            &lt;data id=&quot;EncryptionMethodWithXtsOsDropDown_Name&quot; value=&quot;4&quot;/&gt;
            &lt;data id=&quot;EncryptionMethodWithXtsFdvDropDown_Name&quot; value=&quot;7&quot;/&gt;
            &lt;data id=&quot;EncryptionMethodWithXtsRdvDropDown_Name&quot; value=&quot;4&quot;/&gt;
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
            &lt;enabled/&gt;
            &lt;data id=&quot;ConfigureNonTPMStartupKeyUsage_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;ConfigureTPMStartupKeyUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;ConfigurePINUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;ConfigureTPMPINKeyUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;ConfigureTPMUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
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
            &lt;enabled/&gt;
            &lt;data id=&quot;MinPINLength&quot; value=&quot;6&quot;/&gt;
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
            &lt;enabled/&gt;
            &lt;data id=&quot;RecoveryMessage_Input&quot; value=&quot;blablablabla&quot;/&gt;
            &lt;data id=&quot;PrebootRecoveryInfoDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;RecoveryUrl_Input&quot; value=&quot;blablabla&quot;/&gt;
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
            &lt;enabled/&gt;
            &lt;data id=&quot;OSAllowDRA_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;OSRecoveryPasswordUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;OSRecoveryKeyUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;OSHideRecoveryPage_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;OSActiveDirectoryBackup_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;OSActiveDirectoryBackupDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;OSRequireActiveDirectoryBackup_Name&quot; value=&quot;true&quot;/&gt;
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
            &lt;enabled/&gt;
            &lt;data id=&quot;FDVAllowDRA_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;FDVRecoveryPasswordUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;FDVRecoveryKeyUsageDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;FDVHideRecoveryPage_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;FDVActiveDirectoryBackup_Name&quot; value=&quot;true&quot;/&gt;
            &lt;data id=&quot;FDVActiveDirectoryBackupDropDown_Name&quot; value=&quot;2&quot;/&gt;
            &lt;data id=&quot;FDVRequireActiveDirectoryBackup_Name&quot; value=&quot;true&quot;/&gt;
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
            &lt;enabled/&gt;
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
            &lt;enabled/&gt;
            &lt;data id=&quot;RDVCrossOrg&quot; value=&quot;true&quot;/&gt;
          </Data>
        </Item>
      </Replace>

      <Final/>
    </SyncBody>
</SyncML>
```
