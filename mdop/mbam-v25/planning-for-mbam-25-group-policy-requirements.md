---
title: Planning for MBAM 2.5 Group Policy Requirements
description: Planning for MBAM 2.5 Group Policy Requirements
author: dansimp
ms.assetid: 82d545dc-3fbf-4b46-b62f-47fe178a7c44
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning for MBAM 2.5 Group Policy Requirements


Use the following information to determine the types of BitLocker protectors that you can use to manage the Microsoft BitLocker Administration and Monitoring (MBAM) client computers in your enterprise.

## Types of BitLocker protectors that MBAM supports


MBAM supports the following types of BitLocker protectors.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Type of drive or volume</th>
<th align="left">Supported BitLocker protectors</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Operating system volumes</p></td>
<td align="left"><ul>
<li><p><strong>Trusted Platform Module (TPM)</strong></p></li>
<li><p><strong>TPM + PIN</strong></p></li>
<li><p><strong>TPM + USB key</strong> – supported only when the operating system volume is encrypted before MBAM is installed</p></li>
<li><p><strong>TPM + PIN + USB key</strong> - supported only when the operating system volume is encrypted before MBAM is installed</p></li>
<li><p><strong>Password</strong> - supported only for Windows To Go devices, fixed data drives, and Windows 8, Windows 8.1, and Windows 10 devices that do not have a TPM</p></li>
<li><p><strong>Numerical password</strong> - applied automatically as part of volume encryption and does not need to be configured except in FIPS mode on Windows 7</p></li>
<li><p><strong>Data recovery agent (DRA)</strong></p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Fixed data drives</p></td>
<td align="left"><ul>
<li><p><strong>Password</strong></p></li>
<li><p><strong>Auto-unlock</strong></p></li>
<li><p><strong>Numerical password</strong> - applied automatically as part of volume encryption and does not need to be configured except in FIPS mode on Windows 7</p></li>
<li><p><strong>Data recovery agent (DRA)</strong></p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Removable drives</p></td>
<td align="left"><ul>
<li><p><strong>Password</strong></p></li>
<li><p><strong>Auto-unlock</strong></p></li>
<li><p><strong>Numerical password</strong> - applied automatically as part of volume encryption and does not need to be configured</p></li>
<li><p><strong>Data recovery agent (DRA)</strong></p></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Support for the Used Space Encryption BitLocker policy

In MBAM 2.5 SP1, if you enable Used Space Encryption via BitLocker Group policy, the MBAM Client honors it.

This Group Policy setting is called **Enforce drive encryption type on operating system drives** and is located in the following GPO node: **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **BitLocker Drive Encryption** &gt; **Operating System Drives**. If you enable this policy and select the encryption type as **Used Space Only encryption**, MBAM will honor the policy and BitLocker will only encrypt disk space that is used on the volume.

## How to get the MBAM Group Policy Templates and edit the settings


When you are ready to configure the MBAM Group Policy settings you want, do the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Steps to follow</th>
<th align="left">Where to get instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Copy the MBAM Group Policy Templates from [How to Get MDOP Group Policy (.admx) Templates](https://go.microsoft.com/fwlink/p/?LinkId=393941) and install them on a computer that is capable of running the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).</p></td>
<td align="left"><p>[Copying the MBAM 2.5 Group Policy Templates](copying-the-mbam-25-group-policy-templates.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the Group Policy settings that you want to use in your enterprise.</p></td>
<td align="left"><p>[Editing the MBAM 2.5 Group Policy Settings](editing-the-mbam-25-group-policy-settings.md)</p></td>
</tr>
</tbody>
</table>

 

## Descriptions of the MBAM Group Policy settings


The **MDOP MBAM (BitLocker Management)** GPO node contains four global policy settings and four child GPO nodes: **Client Management**, **Fixed Drive**, **Operating System Drive**, and **Removable Drive**. The following sections describe and suggest settings for the MBAM Group Policy settings.

**Important**  
Do not change the Group Policy settings in the **BitLocker Drive Encryption** node, or MBAM will not work correctly. MBAM automatically configures the settings in this node for you when you configure the settings in the **MDOP MBAM (BitLocker Management)** node.

 

### Global Group Policy definitions

This section describes MBAM Global Group Policy definitions at the following GPO node: **Computer Configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy name</th>
<th align="left">Overview and suggested Group Policy settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Choose drive encryption method and cipher strength</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>Configure this policy to use a specific encryption method and cipher strength.</p>
<p>When this policy is not configured, BitLocker uses the default encryption method: AES 128-bit with Diffuser.</p>
<div class="alert">
<strong>Note</strong>  
<p>An issue with the BitLocker Computer Compliance report causes it to display &quot;unknown&quot; for the cipher strength, even if you are using the default value. To work around this issue, make sure you enable this setting and set a value for cipher strength.</p>
</div>
<div>
 
</div>
<ul>
<li><p>AES 128-bit with Diffuser – for Windows 7 only</p></li>
<li><p>AES 128 for Windows 8, Windows 8.1, and Windows 10</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Prevent memory overwrite on restart</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to improve restart performance without overwriting BitLocker secrets in memory on restart.</p>
<p>When this policy is not configured, BitLocker secrets are removed from memory when the computer restarts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Validate smart card certificate usage rule</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to use smartcard certificate-based BitLocker protection.</p>
<p>When this policy is not configured, the default object identifier 1.3.6.1.4.1.311.67.1.1 is used to specify a certificate.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Provide the unique identifiers for your organization</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to use a certificate-based data recovery agent or the BitLocker To Go reader.</p>
<p>When this policy is not configured, the <strong>Identification</strong> field is not used.</p>
<p>If your company requires higher security measurements, you can configure the <strong>Identification</strong> field to make sure that all USB devices have this field set and that they are aligned with this Group Policy setting.</p></td>
</tr>
</tbody>
</table>

 

### Client Management Group Policy definitions

This section describes Client Management policy definitions for MBAM at the following GPO node: **Computer Configuration** &gt; **Policies** &gt;**Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)** &gt; **Client Management**.

You can set the same Group Policy settings for the Stand-alone and System Center Configuration Manager Integration topologies, with one exception: Disable the **Configure MBAM Services &gt; MBAM Status reporting service endpoint** setting if you are using the Configuration Manager Integration topology, as indicated in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy name</th>
<th align="left">Overview and suggested Group Policy settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configure MBAM Services</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<ul>
<li><p><strong>MBAM Recovery and Hardware service endpoint</strong>. Use this setting to enable MBAM Client BitLocker encryption management. Enter an endpoint location that is similar to the following example: <strong>http(s)://</strong><em>&lt;MBAM Administration and Monitoring Server Name&gt;</em><strong>:</strong><em>&lt;the port the web service is bound to&gt;</em><strong>/MBAMRecoveryAndHardwareService/CoreService.svc</strong>.</p></li>
<li><p><strong>Select BitLocker recovery information to store</strong>. This policy setting lets you configure the key recovery service to back up BitLocker recovery information. It also lets you configure a status reporting service for collecting reports. The policy provides an administrative method of recovering data encrypted by BitLocker to prevent data loss due to the lack of key information. The status report and key recovery activity are automatically and silently sent to the configured report server location.</p>
<p>If you do not configure this policy setting or if you disable it, the key recovery information is not saved, and the status report and key recovery activity are not reported to the server. When this setting is set to <strong>Recovery Password and key package</strong>, the recovery password and key package are automatically and silently backed up to the configured key recovery server location.</p></li>
<li><p><strong>Enter client checking status frequency in minutes</strong>. This policy setting manages how frequently the client checks the BitLocker protection policies and status on the client computer. This policy also manages how frequently the client compliance status is saved to the server. The client checks the BitLocker protection policies and status on the client computer and also backs up the client recovery key at the configured frequency.</p>
<p>Set this frequency based on the requirement set by your company on how frequently to check the compliance status of the computer and how frequently to back up the client recovery key.</p></li>
<li><p><strong>MBAM Status reporting service endpoint:</strong></p>
<p><strong>For MBAM in a Stand-alone topology</strong>: You must configure this setting to enable MBAM Client BitLocker encryption management.</p>
<p>Enter an endpoint location that is similar to the following example:</p>
<p><strong>http(s)://</strong><em>&lt;MBAM Administration and Monitoring Server Name&gt;</em><strong>:</strong><em>&lt;the port the web service is bound to&gt;</em><strong>/MBAMComplianceStatusService/StatusReportingService.svc</strong></p>
<p><strong>For MBAM in the Configuration Manager Integration topology</strong>: Disable this setting.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Configure user exemption policy</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>This policy setting lets you configure a website address, email address, or phone number that instructs a user to request an exemption from BitLocker encryption.</p>
<p>If you enable this policy setting and provide a website address, email address, or phone number, users see a dialog box with instructions on how to apply for an exemption from BitLocker protection. For more information about enabling BitLocker encryption exemptions for users, see [How to Manage User BitLocker Encryption Exemptions](how-to-manage-user-bitlocker-encryption-exemptions-mbam-25.md).</p>
<p>If you either disable or do not configure this policy setting, the exemption request instructions are not displayed to users.</p>
<div class="alert">
<strong>Note</strong>  
<p>User exemption is managed per user, not per computer. If multiple users log on to the same computer and any one user is not exempt, the computer is encrypted.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure customer experience improvement program</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy setting lets you configure how MBAM users can join the Customer Experience Improvement Program. This program collects information about computer hardware and how users use MBAM without interrupting their work. The information helps Microsoft to identify which MBAM features to improve. Microsoft does not use this information to identify or contact MBAM users.</p>
<p>If you enable this policy setting, users can join the Customer Experience Improvement Program.</p>
<p>If you disable this policy setting, users cannot join the Customer Experience Improvement Program.</p>
<p>If you do not configure this policy setting, users have the option to join the Customer Experience Improvement Program.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Provide the URL for the Security Policy link</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>Use this policy setting to specify a URL that is displayed to end users as a link named &quot;Company Security Policy.&quot; The link points to your company’s internal security policy and provides end users with information about encryption requirements. The link appears when users are prompted by MBAM to encrypt a drive.</p>
<p>If you enable this policy setting, you can configure the URL for the Security Policy link.</p>
<p>If you disable or do not configure this policy setting, the Security Policy link is not displayed to users.</p></td>
</tr>
</tbody>
</table>

 

### Fixed Drive Group Policy definitions

This section describes Fixed Drive policy definitions for Microsoft BitLocker Administration and Monitoring at the following GPO node: **Computer Configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)** &gt; **Fixed Drive**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy name</th>
<th align="left">Overview and suggested Group Policy settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Fixed data drive encryption settings</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy setting lets you manage whether fixed data drives must be encrypted.</p>
<p>If the operating system volume is required to be encrypted, click <strong>Enable auto-unlock fixed data drive</strong>.</p>
<p>When you enable this policy, you must not disable the <strong>Configure use of password for fixed data drives</strong> policy unless you are enabling or requiring the use of auto-unlock for fixed data drives.</p>
<p>If you have to use auto-unlock for fixed data drives, you must configure operating system volumes to be encrypted.</p>
<p>If you enable this policy setting, users are required to put all fixed data drives under BitLocker protection, and the data drives are then encrypted.</p>
<p>If you do not configure this policy setting, users are not required to put fixed data drives under BitLocker protection. If you apply this policy after fixed data drives are encrypted, the MBAM agent decrypts the encrypted fixed data drives.</p>
<p>If you disable this policy setting, users cannot put their fixed data drives under BitLocker protection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deny write access to fixed drives not protected by BitLocker</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer. This policy setting is applied when you turn on BitLocker.</p>
<p>When the policy is not configured, all fixed data drives on the computer are mounted with read/write permission.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow access to BitLocker-protected fixed drives from earlier versions of Windows</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy so that fixed drives with the FAT file system can be unlocked and viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p>
<p>When the policy is enabled or not configured, fixed drives that are formatted with the FAT file system can be unlocked and their content can be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2. These operating systems have read-only permission to BitLocker-protected drives.</p>
<p>When the policy is disabled, fixed drives that are formatted with the FAT file system cannot be unlocked and their content cannot be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure use of password for fixed drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Use this policy to specify whether a password is required to unlock BitLocker-protected fixed data drives.</p>
<p>If you enable this policy setting, users can configure a password that meets the requirements that you define. BitLocker enables users to unlock a drive with any of the protectors that are available on the drive.</p>
<p>These settings are enforced when you turn on BitLocker, not when you unlock a volume.</p>
<p>If you disable this policy setting, users are not allowed to use a password.</p>
<p>When the policy is not configured, passwords are supported with the default settings, which do not include password complexity requirements and which require only eight characters.</p>
<p>For higher security, enable this policy, and then select <strong>Require password for fixed data drive</strong>, click <strong>Require password complexity</strong>, and set the <strong>minimum password length</strong> that you want.</p>
<p>If you disable this policy setting, users are not allowed to use a password.</p>
<p>If you do not configure this policy setting, passwords are supported with the default settings, which do not include password complexity requirements and which require only eight characters.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected fixed drives can be recovered</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When the policy is not configured, the BitLocker data recovery agent is allowed, and recovery information is not backed up to AD DS. MBAM does not require recovery information to be backed up to AD DS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Encryption Policy Enforcement Settings</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>Use this policy setting to configure the number of days that fixed data drives can remain noncompliant until they are forced to comply with MBAM policies. Users cannot postpone the required action or request an exemption from it after the grace period. The grace period starts when the fixed data drive is determined to be noncompliant. However, the fixed data drive policy is not enforced until the operating system drive is compliant.</p>
<p>If the grace period expires and the fixed data drive is still not compliant, users do not have the option to postpone or to request an exemption. If the encryption process requires user input, a dialog box appears that users cannot close until they provide the required information.</p>
<p>Enter <strong>0</strong> in the <strong>Configure the number of noncompliance grace period days for fixed drives</strong> to force the encryption process to begin immediately after the grace period expires for the operating system drive.</p>
<p>If you disable or do not configure this setting, users are not forced to comply with MBAM policies.</p>
<p>If no user interaction is required to add a protector, encryption begins in the background after the grace period expires.</p></td>
</tr>
</tbody>
</table>

 

### Operating System Drive Group Policy definitions

This section describes Operating System Drive policy definitions for Microsoft BitLocker Administration and Monitoring at the following GPO node: **Computer Configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)** &gt; **Operating System Drive**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy name</th>
<th align="left">Overview and suggested Group Policy settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Operating system drive encryption settings</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy setting lets you manage whether the operating system drive must be encrypted.</p>
<p>For higher security, consider disabling the following policy settings in <strong>System</strong> &gt; <strong>Power Management</strong> &gt; <strong>Sleep Settings</strong> when you enable them with TPM + PIN protector:</p>
<ul>
<li><p>Allow Standby States (S1-S3) When Sleeping (Plugged In)</p></li>
<li><p>Allow Standby States (S1-S3) When Sleeping (On Battery)</p></li>
</ul>
<p>If you are running Microsoft Windows 8 or later, and you want to use BitLocker on a computer without a TPM, select the <strong>Allow BitLocker without a compatible TPM</strong> check box. In this mode, a password is required for startup. If you forget the password, you have to use one of the BitLocker recovery options to access the drive.</p>
<p>On a computer with a compatible TPM, two types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require the entry of a personal identification number (PIN).</p>
<p>If you enable this policy setting, users have to put the operating system drive under BitLocker protection, and the drive is then encrypted.</p>
<p>If you disable this policy, users cannot put the operating system drive under BitLocker protection. If you apply this policy after the operating system drive is encrypted, the drive is then decrypted.</p>
<p>If you do not configure this policy, the operating system drive is not required to be placed under BitLocker protection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow enhanced PINs for startup</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Use this policy setting to configure whether enhanced startup PINs are used with BitLocker. Enhanced startup PINs permit the use of characters including uppercase and lowercase letters, symbols, numbers, and spaces. This policy setting is applied when you turn on BitLocker.</p>
<p>If you enable this policy setting, all new BitLocker startup PINs set will enable end user to create enhanced PINs. However, not all computers can support enhanced PINs in the pre-boot environment. We strongly recommend that administrators evaluate whether their systems are compatible with this feature before enabling its use.</p>
<p>Select the <strong>Require ASCII-only PINs</strong> check box to help make enhanced PINs more compatible with computers that limit the type or number of characters that can be entered in the pre-boot environment.</p>
<p>If you disable or do not configure this policy setting, enhanced PINs are not used.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected operating system drives can be recovered</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When this policy is not configured, the data recovery agent is allowed, and recovery information is not backed up to AD DS.</p>
<p>MBAM operation does not require recovery information to be backed up to AD DS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure use of passwords for operating system drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Use this policy setting to set the constraints for passwords that are used to unlock BitLocker-protected operating system drives. If non-TPM protectors are allowed on operating system drives, you can provision a password, enforce complexity requirements on the password, and configure a minimum length for the password. For the complexity requirement setting to be effective, you must also enable the Group Policy setting &quot;Password must meet complexity requirements&quot; located in Computer Configuration &gt; Windows Settings &gt; Security Settings &gt; Account Policies &gt; Password Policy.</p>
<div class="alert">
<strong>Note</strong>  
<p>These settings are enforced when you turn on BitLocker, not when you unlock a volume. BitLocker lets you unlock a drive with any of the protectors that are available on the drive.</p>
</div>
<div>
 
</div>
<p>If you enable this policy setting, users can configure a password that meets the requirements that you define. To enforce complexity requirements on the password, click <strong>Require password complexity</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure TPM platform validation profile for BIOS-based firmware configurations</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>This policy setting allows you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection.</p>
<div class="alert">
<strong>Important</strong>  
<p>This Group Policy setting applies only to computers with BIOS configurations or to computers with UEFI firmware with a Compatibility Service Module (CSM) enabled. Computers that use a native UEFI firmware configuration store different values into the Platform Configuration Registers (PCRs). Use the &quot;Configure TPM platform validation profile for native UEFI firmware configurations&quot; Group Policy setting to configure the TPM PCR profile for computers that use native UEFI firmware.</p>
</div>
<div>
 
</div>
<p>If you enable this policy setting before you turn on BitLocker, you can configure the boot components that the TPM validates before you unlock access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM does not release the encryption key to unlock the drive and the computer instead displays the BitLocker Recovery console and requires that you provide either the recovery password or recovery key to unlock the drive.</p>
<p>If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile or the platform validation profile that is specified by the Setup script.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure TPM platform validation profile</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>This policy setting enables you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection.</p>
<p>If you enable this policy setting before you turn on BitLocker, you can configure the boot components that the TPM validates before you unlock access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM does not release the encryption key to unlock the drive and the computer instead displays the BitLocker Recovery console and requires that you provide either the recovery password or recovery key to unlock the drive.</p>
<p>If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile or the platform validation profile that is specified by the setup script.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure TPM platform validation profile for native UEFI firmware configurations</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>This policy setting allows you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection.</p>
<div class="alert">
<strong>Important</strong>  
<p>This Group Policy setting applies only to computers with a native UEFI firmware configuration.</p>
</div>
<div>
 
</div>
<p>If you enable this policy setting before you turn on BitLocker, you can configure the boot components that the TPM validates before unlocking access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM does not release the encryption key to unlock the drive and the computer instead displays the BitLocker Recovery console and requires that you provide either the recovery password or recovery key to unlock the drive.</p>
<p>If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile or the platform validation profile that is specified by the setup script.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Reset platform validation data after BitLocker recovery</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Use this policy setting to control whether platform validation data is refreshed when Windows is started after BitLocker recovery.</p>
<p>If you enable this policy setting, platform validation data are refreshed when Windows is started after BitLocker recovery. If you disable this policy setting, platform validation data are not refreshed when Windows is started after BitLocker recovery. If you do not configure this policy setting, platform validation data are refreshed when Windows is started after BitLocker recovery.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Use enhanced Boot Configuration Data validation profile</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>This policy setting allows you to choose specific Boot Configuration Data (BCD) settings to verify during platform validation.</p>
<p>If you enable this policy setting, you can add additional settings, remove the default settings, or both. If you disable this policy setting, the computer reverts to a BCD profile similar to the default BCD profile that is used by Windows 7. If you do not configure this policy setting, the computer verifies the default Windows BCD settings.</p>
<div class="alert">
<strong>Note</strong>  
<p>When BitLocker uses Secure Boot for platform and Boot Configuration Data (BCD) integrity validation, as defined by the &quot;Allow Secure Boot for integrity validation&quot; policy, the &quot;Use enhanced Boot Configuration Data validation profile&quot; policy is ignored.</p>
</div>
<div>
 
</div>
<p>The setting that controls boot debugging (0x16000010) is always validated and has no effect if it is included in the provided fields.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Encryption Policy Enforcement Settings</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>Use this policy setting to configure the number of days that users can postpone complying with MBAM policies for their operating system drive. The grace period begins when the operating system is first detected as noncompliant. After this grace period expires, users cannot postpone the required action or request an exemption from it.</p>
<p>If the encryption process requires user input, a dialog box appears that users cannot close until they provide the required information.</p>
<p>If you disable or do not configure this setting, users are not forced to comply with MBAM policies.</p>
<p>If no user interaction is required to add a protector, encryption begins in the background after the grace period expires.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure pre-boot recovery message and URL</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy setting to configure a custom recovery message or to specify a URL that is then displayed on the pre-boot BitLocker recovery screen when the OS drive is locked. This setting is only available on client computers running Windows 10.</p>
<p>When this policy is enabled, you can select one of these options for the pre-boot recovery message:</p>
<ul>
<li><p><strong>Use custom recovery message</strong>: Select this option to include a custom message in the pre-boot BitLocker recovery screen. In the <strong>Custom recovery message option</strong> box, type the message that you want displayed. If you also want to specify a recovery URL, include it as part of your custom recovery message.</p></li>
<li><p><strong>Use custom recovery URL</strong>: Select this option to replace the default URL that is displayed in the pre-boot BitLocker recovery screen. In the <strong>Custom recovery URL option</strong> box, type the URL that you want displayed.</p></li>
<li><p><strong>Use default recovery message and URL</strong>: Select this option to display the default BitLocker recovery message and URL in the pre-boot BitLocker recovery screen. If you previously configured a custom recovery message or URL and want to revert to the default message, you must enable this policy and select the <strong>Use default recovery message and URL</strong> option.</p></li>
</ul>
<div class="alert">
<strong>Note</strong>  
<p>Not all characters and languages are supported in pre-boot. We recommend that you test that the characters you use for the custom message or URL appear correctly on the pre-boot BitLocker recovery screen.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

### Removable Drive Group Policy definitions

This section describes Removable Drive Group Policy definitions for Microsoft BitLocker Administration and Monitoring at the following GPO node: **Computer Configuration** &gt; **Policies** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM (BitLocker Management)** &gt; **Removable Drive**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy name</th>
<th align="left">Overview and suggested Group Policy settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Control use of BitLocker on removable drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy controls the use of BitLocker on removable data drives.</p>
<p>Click <strong>Allow users to apply BitLocker protection on removable data drives</strong> to allow users to run the BitLocker setup wizard on a removable data drive.</p>
<p>Click <strong>Allow users to suspend and decrypt BitLocker on removable data drives</strong> to enable users to remove BitLocker drive encryption from the drive or to suspend the encryption while maintenance is performed.</p>
<p>When this policy is enabled, and you click <strong>Allow users to apply BitLocker protection on removable data drives</strong>, the MBAM Client saves the recovery information about removable drives to the MBAM key recovery server and allows users to recover the drive if the password is lost.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deny write access to removable drives not protected by BitLocker</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to allow only write permission to BitLocker-protected drives.</p>
<p>When this policy is enabled, all removable data drives on the computer require encryption before write permission is allowed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow access to BitLocker-protected removable drives from earlier versions of Windows</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to allow fixed drives with the FAT file system to be unlocked and viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p>
<p>When this policy is not configured, removable drives that are formatted with the FAT file system can be unlocked on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2, and their content can be viewed. These operating systems have read-only permission to BitLocker-protected drives.</p>
<p>When the policy is disabled, removable drives formatted with the FAT file system cannot be unlocked and their content cannot be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure use of password for removable data drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to configure password protection on removable data drives.</p>
<p>When this policy is not configured, passwords are supported with the default settings, which do not include password complexity requirements and which require only eight characters.</p>
<p>For increased security, you can enable this policy and select <strong>Require password for removable data drive</strong>, click <strong>Require password complexity</strong>, and set the preferred <strong>minimum password length</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected removable drives can be recovered</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When set to <strong>Not Configured</strong>, the data recovery agent is allowed, and recovery information is not backed up to AD DS.</p>
<p>MBAM operation does not require recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>

 


## Related topics


[Preparing your Environment for MBAM 2.5](preparing-your-environment-for-mbam-25.md)

[MBAM 2.5 Deployment Prerequisites](mbam-25-deployment-prerequisites.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





