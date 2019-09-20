---
title: Planning for MBAM 2.0 Group Policy Requirements
description: Planning for MBAM 2.0 Group Policy Requirements
author: dansimp
ms.assetid: f5e19dcb-eb15-4722-bb71-0734b3799eb8
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for MBAM 2.0 Group Policy Requirements


To manage Microsoft BitLocker Administration and Monitoring (MBAM) client computers, you need to consider the types of BitLocker protectors that you want to support in your organization, and then configure the corresponding Group Policy settings that you want to apply. This topic describes the Group Policy settings that are available for use when you are using Microsoft BitLocker Administration and Monitoring to manage BitLocker Drive Encryption in the enterprise.

MBAM supports the following types of BitLocker protectors for operating system drives: Trusted Platform Module (TPM), TPM + PIN, TPM + USB key, and TPM + PIN + USB key, password, numerical password, and Data Recovery Agent. The password protector is supported only for Windows To Go devices and for Windows 8 devices that do not have a TPM. MBAM supports the TPM + USB key and the TPM + PIN + USB key protectors only when the operating system volume is encrypted before MBAM is installed.

MBAM supports the following types of BitLocker protectors for fixed data drives: password, auto-unlock, numerical password, and Data Recovery Agent.

The numeric password protector is applied automatically as part of volume encryption and does not need to be configured.

**Important**  
The default Windows BitLocker drive encryption Group Policy Object (GPO) settings are not used by MBAM and can cause conflicting behavior if they are enabled. To enable MBAM to manage BitLocker, you must define the MBAM Group Policy settings only after installing the MBAM Group Policy template.



Enhanced startup PINs can contain characters, such as uppercase and lowercase letters, and numbers. Unlike BitLocker, MBAM does not support the use of symbols and spaces for enhanced PINs.

Install the MBAM Group Policy template on a computer that is capable of running the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) MDOP technology. To edit the GPO settings that enable MBAM functionality, you must first install the MBAM Group Policy template, open the GPMC or AGPM to edit the applicable GPO, and then navigate to the following GPO node: **Computer Configuration**\\**Policies**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management).**

The MDOP MBAM (BitLocker Management) GPO node contains four global policy settings and four child GPO settings nodes: Client Management, Fixed Drive, Operating System Drive, and Removable Drive. The following sections provide policy definitions and suggested policy settings to assist you in planning for MBAM GPO policy setting requirements.

**Note**  
For more information about configuring the minimum, recommended GPO settings to enable MBAM to manage BitLocker encryption, see [How to Edit MBAM 2.0 GPO Settings](how-to-edit-mbam-20-gpo-settings-mbam-2.md).



## Global Policy Definitions


This section describes MBAM Global policy definitions found at the following GPO node: **Computer Configuration**\\**Policies**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy Name</th>
<th align="left">Overview and Suggested Policy Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Choose drive encryption method and cipher strength</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to use a specific encryption method and cipher strength.</p>
<p>When this policy is not configured, BitLocker uses the default encryption method of AES 128-bit with Diffuser or the encryption method specified by the setup script.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Prevent memory overwrite on restart</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to improve restart performance without overwriting BitLocker secrets in memory on restart.</p>
<p>When this policy is not configured, BitLocker secrets are removed from memory when the computer restarts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Validate smart card certificate usage rule</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to use smartcard certificate-based BitLocker protection.</p>
<p>When this policy is not configured, a default object identifier 1.3.6.1.4.1.311.67.1.1 is used to specify a certificate.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Provide the unique identifiers for your organization</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to use a certificate-based data recovery agent or the BitLocker To Go reader.</p>
<p>When this policy is not configured, the <strong>Identification</strong> field is not used.</p>
<p>If your company requires higher security measurements, you may want to configure the <strong>Identification</strong> field to make sure that all USB devices have this field set and that they are aligned with this Group Policy setting.</p></td>
</tr>
</tbody>
</table>



## Client Management Policy Definitions


This section describes Client Management policy definitions for Microsoft BitLocker Administration and Monitoring found at the following GPO node: **Computer Configuration**\\**Policies**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)**\\**Client Management**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy Name</th>
<th align="left">Overview and Suggested Policy Settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configure MBAM Services</p></td>
<td align="left"><p>Suggested Configuration: <strong>Enabled</strong></p>
<ul>
<li><p><strong>MBAM Recovery and Hardware service endpoint</strong>. Use this setting to enable MBAM Client BitLocker encryption management. Enter an endpoint location that is similar to the following example: <strong>http://</strong><em>&lt;MBAM Administration and Monitoring Server Name&gt;</em><strong>:</strong><em>&lt;port the web service is bound to&gt;</em><strong>/MBAMRecoveryAndHardwareService/CoreService.svc</strong>.</p></li>
<li><p><strong>Select BitLocker recovery information to store</strong>. This policy setting lets you configure the key recovery service to back up BitLocker recovery information. It also lets you configure status reporting service for collecting compliance and audit reports. The policy provides an administrative method of recovering data encrypted by BitLocker to prevent data loss due to the lack of key information. Status report and key recovery activity will automatically and silently be sent to the configured report server location.</p>
<p>If you do not configure or if you disable this policy setting, the Key recovery information will not be saved, and status report and key recovery activity will not be reported to server. When this setting is set to <strong>Recovery Password and key package</strong>, the recovery password and key package will be automatically and silently backed up to the configured key recovery server location.</p></li>
<li><p><strong>Enter client checking status frequency in minutes</strong>. This policy setting manages how frequently the client checks the BitLocker protection policies and status on the client computer. This policy also manages how frequently the client compliance status is saved to the server. The client checks the BitLocker protection policies and status on the client computer and also backs up the client recovery key at the configured frequency.</p>
<p>Set this frequency based on the requirement set by your company on how frequently to check the compliance status of the computer, and how frequently to back up the client recovery key.</p></li>
<li><p><strong>MBAM Status reporting service endpoint</strong>. You must configure this setting to enable MBAM Client BitLocker encryption management. Enter an endpoint location that is similar to the following example: <strong>http://</strong><em>&lt;MBAM Administration and Monitoring Server Name&gt;</em><strong>:</strong><em>&lt;port the web service is bound to&gt;</em><strong>/MBAMComplianceStatusService/StatusReportingService.svc</strong>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Configure user exemption policy</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>This policy setting lets you configure a web site address, email address, or phone number that will instruct a user to request an exemption from BitLocker encryption.</p>
<p>If you enable this policy setting and provide a web site address, email address, or phone number, users will see a dialog that gives them instructions on how to apply for an exemption from BitLocker protection. For more information about enabling BitLocker encryption exemptions for users, see <a href="how-to-manage-user-bitlocker-encryption-exemptions-mbam-2.md" data-raw-source="[How to Manage User BitLocker Encryption Exemptions](how-to-manage-user-bitlocker-encryption-exemptions-mbam-2.md)">How to Manage User BitLocker Encryption Exemptions</a>.</p>
<p>If you either disable or do not configure this policy setting, the exemption request instructions will not be presented to users.</p>
<div class="alert">
<strong>Note</strong><br/><p>User exemption is managed per user, not per computer. If multiple users log on to the same computer and any one user is not exempt, the computer will be encrypted.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure customer experience improvement program</p></td>
<td align="left"><p>This policy setting lets you configure how MBAM users can join the Customer Experience Improvement Program. This program collects information about computer hardware and how users use MBAM without interrupting their work. The information helps Microsoft to identify which MBAM features to improve. Microsoft will not use this information to identify or contact MBAM users.</p>
<p>If you enable this policy setting, users will be able to join the Customer Experience Improvement Program.</p>
<p>If you disable this policy setting, users will not be able to join the Customer Experience Improvement Program.</p>
<p>If you do not configure this policy setting, users will have the option to join the Customer Experience Improvement Program.</p></td>
</tr>
</tbody>
</table>



## Fixed Drive Policy Definitions


This section describes Fixed Drive policy definitions for Microsoft BitLocker Administration and Monitoring found at the following GPO node: **Computer Configuration**\\**Policies**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)**\\**Fixed Drive**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy Name</th>
<th align="left">Overview and Suggested Policy Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Fixed data drive encryption settings</p></td>
<td align="left"><p>Suggested Configuration: <strong>Enabled</strong></p>
<p>This policy setting let you manage whether fixed drives must be encrypted.</p>
<p>If the operating system volume is required to be encrypted, select the <strong>Enable auto-unlock fixed data drive</strong> option.</p>
<p>When enabling this policy, you must not disable the <strong>Configure use of password for fixed data drives</strong> policy unless the use of Auto-Unlock for fixed data drives is allowed or required.</p>
<p>If you require the use of Auto-Unlock for fixed data drives, you must configure operating system volumes to be encrypted.</p>
<p>If you enable this policy setting, users are required to put all fixed drives under BitLocker protection, and the drives will be encrypted.</p>
<p>If you do not configure this policy setting, users are not required to put fixed drives under BitLocker protection. If you apply this policy after fixed data drives are encrypted, the MBAM agent decrypts the encrypted fixed drives.</p>
<p>If you disable this policy setting, users will not be able to put their fixed data drives under BitLocker protection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deny write access to fixed drives not protected by BitLocker</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>This policy setting determines whether BitLocker protection is required for fixed drives to be writable on a computer. This policy setting is applied when you turn on BitLocker.</p>
<p>When the policy is not configured, all fixed data drives on the computer are mounted with read and write access.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow access to BitLocker-protected fixed drives from earlier versions of Windows</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to let fixed drives with the FAT file system be unlocked and viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p>
<p>When the policy is enabled or not configured, fixed drives formatted with the FAT file system can be unlocked and their content can be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2. These operating systems have read-only access to BitLocker-protected drives.</p>
<p>When the policy is disabled, fixed drives formatted with the FAT file system cannot be unlocked and their content cannot be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure use of password for fixed drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Use this policy to specify whether a password is required to unlock BitLocker-protected fixed data drives.</p>
<p>If you enable this policy setting, users can configure a password that meets the requirements you define. BitLocker will allow users to unlock a drive with any of the protectors that are available on the drive.</p>
<p>These settings are enforced when turning on BitLocker, not when unlocking a volume.</p>
<p>If you disable this policy setting, users are not allowed to use a password.</p>
<p>When the policy is not configured, passwords are supported with the default settings, which do not include password complexity requirements and which require only eight characters.</p>
<p>For higher security, enable this policy and select <strong>Require password for fixed data drive</strong>, select <strong>Require password complexity</strong>, and set the desired <strong>minimum password length</strong>.</p>
<p>If you disable this policy setting, users are not allowed to use a password.</p>
<p>If you do not configure this policy setting, passwords will be supported with the default settings, which do not include password complexity requirements and which require only eight characters.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected fixed drives can be recovered</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When the policy is not configured, the BitLocker data recovery agent is allowed, and recovery information is not backed up to AD DS. MBAM does not require recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>



## Operating System Drive Policy Definitions


This section describes Operating System Drive policy definitions for Microsoft BitLocker Administration and Monitoring found at the following GPO node: **Computer Configuration**\\**Policies**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)**\\**Operating System Drive**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy Name</th>
<th align="left">Overview and Suggested Policy Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Operating system drive encryption settings</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy setting lets you manage whether the operating system drive must be encrypted.</p>
<p>For higher security, consider disabling the following policy settings in <strong>System/Power Management/Sleep Settings</strong> when you enable them with TPM + PIN protector:</p>
<ul>
<li><p>Allow Standby States (S1-S3) When Sleeping (Plugged In)</p></li>
<li><p>Allow Standby States (S1-S3) When Sleeping (On Battery)</p></li>
</ul>
<p>If you are running Microsoft Windows 8 or later, and you want to use BitLocker on a computer without a TPM, select the <strong>Allow BitLocker without a compatible TPM</strong> check box. In this mode, a password is required for startup. If you forget the password, you have to use one of the BitLocker recovery options to access the drive.</p>
<p>On a computer with a compatible TPM, two types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require the entry of a personal identification number (PIN).</p>
<p>If you enable this policy setting, users have to put the operating system drive under BitLocker protection, and the drive will be encrypted.</p>
<p>If you disable this policy, users will not be able to put the operating system drive under BitLocker protection. If you apply this policy after the operating system drive is encrypted, the drive will be decrypted.</p>
<p>If you do not configure this policy, the operating system drive is not required to be placed under BitLocker protection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure TPM platform validation profile</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>This policy setting lets you configure how the TPM security hardware on a computer secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection.</p>
<p>When this policy setting is not configured, the TPM uses the default platform validation profile or the platform validation profile that is specified by the setup script.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected operating system drives can be recovered</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When this policy is not configured, the data recovery agent is allowed, and recovery information is not backed up to AD DS.</p>
<p>MBAM operation does not require recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>



## Removable Drive Policy Definitions


This section describes Removable Drive Policy definitions for Microsoft BitLocker Administration and Monitoring found at the following GPO node: **Computer Configuration**\\**Policies**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)** \\ **Removable Drive**.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Policy Name</th>
<th align="left">Overview and Suggested Policy Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Control use of BitLocker on removable drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy controls the use of BitLocker on removable data drives.</p>
<p>Enable the <strong>Allow users to apply BitLocker protection on removable data drives</strong> option to allow users to run the BitLocker setup wizard on a removable data drive.</p>
<p>Enable the <strong>Allow users to suspend and decrypt BitLocker on removable data drives</strong> option to allow users to remove BitLocker drive encryption from the drive or to suspend the encryption while maintenance is performed.</p>
<p>When this policy is enabled and the <strong>Allow users to apply BitLocker protection on removable data drives</strong> option is selected, the MBAM Client saves the recovery information about removable drives to the MBAM key recovery server and allows users to recover the drive if the password is lost.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deny write access to removable drives not protected by BitLocker</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to allow only write access to BitLocker protected drives.</p>
<p>When this policy is enabled, all removable data drives on the computer require encryption before write access is allowed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow access to BitLocker-protected removable drives from earlier versions of Windows</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to allow fixed drives with the FAT file system to be unlocked and viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p>
<p>When this policy is not configured, removable data drives formatted with the FAT file system can be unlocked on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2, and their content can be viewed. These operating systems have read-only access to BitLocker-protected drives.</p>
<p>When the policy is disabled, removable drives formatted with the FAT file system cannot be unlocked and their content cannot be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure use of password for removable data drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to configure password protection on removable data drives.</p>
<p>When this policy is not configured, passwords are supported with the default settings, which do not include password complexity requirements and which require only eight characters.</p>
<p>For increased security, you may enable this policy and check <strong>Require password for removable data drive</strong>, select <strong>Require password complexity</strong>, and set the preferred <strong>minimum password length</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected removable drives can be recovered</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When set to <strong>Not Configured</strong>, the data recovery agent is allowed and recovery information is not backed up to AD DS.</p>
<p>MBAM operation does not require recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>



## Related topics


[MBAM 2.0 Deployment Prerequisites](mbam-20-deployment-prerequisites-mbam-2.md)









