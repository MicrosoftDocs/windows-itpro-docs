---
title: Planning for MBAM 1.0 Group Policy Requirements
description: Planning for MBAM 1.0 Group Policy Requirements
author: msfttracyp
ms.assetid: 0fc9c509-7850-4a8e-bb82-b949025bcb02
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for MBAM 1.0 Group Policy Requirements


Microsoft BitLocker Administration and Monitoring (MBAM) Client management requires custom Group Policy settings to be applied. This topic describes the available policy options for Group Policy Object (GPO) when you use MBAM to manage BitLocker Drive Encryption in the enterprise.

**Important**  
MBAM does not use the default GPO settings for Windows BitLocker drive encryption. If the default settings are enabled, they can cause conflicting behavior. To enable MBAM to manage BitLocker, you must define the GPO policy settings after you install the MBAM Group Policy Template.



After you install the MBAM Group Policy template, you can view and modify the available custom MBAM GPO policy settings that enable MBAM to manage the enterprise BitLocker encryption. The MBAM Group Policy template must be installed on a computer that is capable of running the Group Policy Management Console (GPMC) or the Advanced Group Policy Management (AGPM) MDOP technology. Next, to edit the applicable GPO, open the GPMC or AGPM, and then navigate to the following GPO node: **Computer Configuration**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)**.

The MDOP MBAM (BitLocker Management) GPO node contains four global policy settings and four child GPO setting nodes, respectively. The four GPO global policy settings are: Client Management, Fixed Drive, Operating System Drive, and Removable Drive. The following sections provide policy definitions and suggested policy settings to help you plan for the MBAM GPO policy setting requirements.

**Note**  
For more information about configuring the minimum suggested GPO settings to enable MBAM to manage BitLocker encryption, see [How to Edit MBAM 1.0 GPO Settings](how-to-edit-mbam-10-gpo-settings.md).



## Global policy definitions


This section describes the MBAM Global policy definitions, which can be found at the following GPO node: **Computer Configuration**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)**.

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



## Client Management policy definitions


This section describes the Client Management policy definitions for MBAM, found at the following GPO node: **Computer Configuration**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)** \\ **Client Management**.

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
<li><p><strong>MBAM Recovery and Hardware service endpoint</strong>. This is the first policy setting that you must configure to enable the MBAM Client BitLocker encryption management. For this setting, enter the endpoint location similar to the following example: <strong>http://</strong><em>&lt;MBAM Administration and Monitoring Server Name&gt;</em><strong>:</strong><em>&lt;port the web service is bound to&gt;</em><strong>/MBAMRecoveryAndHardwareService/CoreService.svc</strong>.</p></li>
<li><p><strong>Select BitLocker recovery information to store</strong>. This policy setting lets you configure the key recovery service to back up the BitLocker recovery information. It also lets you configure the status reporting service for collecting compliance and audit reports. The policy provides an administrative method of recovering data encrypted by BitLocker to help prevent data loss due to the lack of key information. Status report and key recovery activity will automatically and silently be sent to the configured report server location.</p>
<p>If you do not configure or if you disable this policy setting, the key recovery information will not be saved, and status report and key recovery activity will not be reported to server. When this setting is set to <strong>Recovery Password and key package</strong>, the recovery password and key package will be automatically and silently backed up to the configured key recovery server location.</p></li>
<li><p><strong>Enter the client checking status frequency in minutes</strong>. This policy setting manages how frequently the client checks the BitLocker protection policies and the status on the client computer. This policy also manages how frequently the client compliance status is saved to the server. The client checks the BitLocker protection policies and status on the client computer, and it also backs up the client recovery key at the configured frequency.</p>
<p>Set this frequency based on the requirement established by your company on how frequently to check the compliance status of the computer, and how frequently to back up the client recovery key.</p></li>
<li><p><strong>MBAM Status reporting service endpoint</strong>. This is the second policy setting that you must configure to enable MBAM Client BitLocker encryption management. For this setting, enter the endpoint location by using the following example: <strong>http://</strong><em>&lt;MBAM Administration and Monitoring Server Name&gt;</em><strong>:</strong><em>&lt;port the web service is bound to&gt;</em><strong>/MBAMComplianceStatusService/StatusReportingService. svc</strong>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Allow hardware compatibility checking</p></td>
<td align="left"><p>Suggested Configuration: <strong>Enabled</strong></p>
<p>This policy setting lets you manage the verification of hardware compatibility before you enable BitLocker protection on drives of MBAM client computers.</p>
<p>You should enable this policy option if your enterprise has older computer hardware or computers that do not support Trusted Platform Module (TPM). If either of these criteria is true, enable the hardware compatibility verification to make sure that MBAM is applied only to computer models that support BitLocker. If all computers in your organization support BitLocker, you do not have to deploy the Hardware Compatibility, and you can set this policy to <strong>Not Configured</strong>.</p>
<p>If you enable this policy setting, the model of the computer is validated against the hardware compatibility list once every 24 hours, before the policy enables BitLocker protection on a computer drive.</p>
<div class="alert">
<strong>Note</strong><br/><p>Before enabling this policy setting, make sure that you have configured the <strong>MBAM Recovery and Hardware service endpoint</strong> setting in the <strong>Configure MBAM Services</strong> policy options.</p>
</div>
<div>

</div>
<p>If you either disable or do not configure this policy setting, the computer model is not validated against the hardware compatibility list.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure user exemption policy</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>This policy setting lets you configure a web site address, email address, or phone number that will instruct a user to request an exemption from BitLocker encryption.</p>
<p>If you enable this policy setting and provide a web site address, email address, or phone number, users will see a dialog with instructions on how to apply for an exemption from BitLocker protection. For more information about how to enable BitLocker encryption exemptions for users, see <a href="how-to-manage-user-bitlocker-encryption-exemptions-mbam-1.md" data-raw-source="[How to Manage User BitLocker Encryption Exemptions](how-to-manage-user-bitlocker-encryption-exemptions-mbam-1.md)">How to Manage User BitLocker Encryption Exemptions</a>.</p>
<p>If you either disable or do not configure this policy setting, the instructions about how to apply for an exemption request will not be presented to users.</p>
<div class="alert">
<strong>Note</strong><br/><p>User exemption is managed per user, not per computer. If multiple users log on to the same computer and one user is not exempt, the computer will be encrypted.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



## Fixed Drive policy definitions


This section describes the Fixed Drive policy definitions for MBAM, which can be found at the following GPO node: **Computer Configuration**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)** \\ **Fixed Drive**.

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
<td align="left"><p>Suggested Configuration: <strong>Enabled</strong>, and select the <strong>Enable auto-unlock fixed data drive</strong> check box if the operating system volume is required to be encrypted.</p>
<p>This policy setting lets you manage whether or not to encrypt the fixed drives.</p>
<p>When you enable this policy, do not disable the <strong>Configure use of password for fixed data drives</strong> policy.</p>
<p>If the <strong>Enable auto-unlock fixed data drive</strong> check box is selected, the operating system volume must be encrypted.</p>
<p>If you enable this policy setting, users are required to put all fixed drives under BitLocker protection, which will encrypt the drives.</p>
<p>If you do not configure this policy or if you disable this policy, users are not required to put fixed drives under BitLocker protection.</p>
<p>If you disable this policy, the MBAM agent decrypts any encrypted fixed drives.</p>
<p>If encrypting the operating system volume is not required, clear the <strong>Enable auto-unlock fixed data drive</strong> check box.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deny “write” permission to fixed drives that are not protected by BitLocker</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>This policy setting determines if BitLocker protection is required for fixed drives on a computer so that they are writable. This policy setting is applied when you turn on BitLocker.</p>
<p>When the policy is not configured, all fixed drives on the computer are mounted with read/write permissions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow access to BitLocker-protected fixed drives from earlier versions of Windows</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to unlock and view the fixed drives that are formatted with the file allocation table (FAT) file system on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p>
<p>These operating systems have read-only permissions to BitLocker-protected drives.</p>
<p>When the policy is disabled, fixed drives formatted with the FAT file system cannot be unlocked and their content cannot be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure use of password for fixed drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to configure password protection on fixed drives.</p>
<p>When the policy is not configured, passwords will be supported with the default settings, which do not include password complexity requirements and require only eight characters.</p>
<p>For higher security, enable this policy and select <strong>Require password for fixed data drive</strong>, select <strong>Require password complexity</strong>, and set the desired <strong>minimum password length</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected fixed drives can be recovered</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When this policy is not configured, the BitLocker data recovery agent is allowed, and recovery information is not backed up to AD DS. MBAM does not require the recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>



## Operating System Drive policy definitions


This section describes the Operating System Drive policy definitions for MBAM, found at the following GPO node: **Computer Configuration**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)** \\ **Operating System Drive**.

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
<p>This policy setting determines if the operating system drive will be encrypted.</p>
<p>Configure this policy to do the following:</p>
<ul>
<li><p>Enforce BitLocker protection for the operating system drive.</p></li>
<li><p>Configure PIN usage to use a Trusted Platform Module (TPM) PIN for operating system protection.</p></li>
<li><p>Configure enhanced startup PINs to permit characters such as uppercase and lowercase letters, and numbers. MBAM does not support the use of symbols and spaces for enhanced PINs, even though BitLocker supports symbols and spaces.</p></li>
</ul>
<p>If you enable this policy setting, users are required to secure the operating system drive by using BitLocker.</p>
<p>If you do not configure or if you disable the setting, users are not required to secure the operating system drive by using BitLocker.</p>
<p>If you disable this policy, the MBAM agent decrypts the operating system volume if it is encrypted.</p>
<p>When it is enabled, this policy setting requires users to secure the operating system by using BitLocker protection, and the drive is encrypted. Based on your encryption requirements, you may select the method of protection for the operating system drive.</p>
<p>For higher security requirements, use TPM + PIN, allow enhanced PINs, and set the minimum PIN length to eight characters.</p>
<p>When this policy is enabled with the TPM + PIN protector, you can consider disabling the following policies under <strong>System</strong> / <strong>Power Management</strong> / <strong>Sleep Settings</strong>:</p>
<ul>
<li><p>Allow Standby States (S1-S3) When Sleeping (Plugged In)</p></li>
<li><p>Allow Standby States (S1-S3) When Sleeping (On Battery)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Configure TPM platform validation profile</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>This policy setting lets you configure how the TPM security hardware on a computer secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker already has TPM protection enabled.</p>
<p>When this policy is not configured, the TPM uses the default platform validation profile or the platform validation profile specified by the setup script.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how to recover BitLocker-protected operating system drives</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When this policy is not configured, the data recovery agent is allowed, and the recovery information is not backed up to AD DS.</p>
<p>MBAM operation does not require the recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>



## Removable Drive policy definitions


This section describes the Removable Drive Policy definitions for MBAM, found at the following GPO node: **Computer Configuration**\\**Administrative Templates**\\**Windows Components**\\**MDOP MBAM (BitLocker Management)** \\ **Removable Drive**.

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
<td align="left"><p>Control the use of BitLocker on removable drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Enabled</strong></p>
<p>This policy controls the use of BitLocker on removable data drives.</p>
<p>Enable the <strong>Allow users to apply BitLocker protection on removable data drives</strong> option, to allow users to run the BitLocker setup wizard on a removable data drive.</p>
<p>Enable the <strong>Allow users to suspend and decrypt BitLocker on removable data drives</strong> option to allow users to remove BitLocker drive encryption from the drive or to suspend the encryption while maintenance is performed.</p>
<p>When this policy is enabled and the <strong>Allow users to apply BitLocker protection on removable data drives</strong> option is selected, the MBAM Client saves the recovery information about removable drives to the MBAM key recovery server, and it allows users to recover the drive if the password is lost.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deny the “write” permissions to removable drives that are not protected by BitLocker</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to allow write-only permissions to BitLocker protected drives.</p>
<p>When this policy is enabled, all removable data drives on the computer require encryption before write permissions are allowed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow access to BitLocker-protected removable drives from earlier versions of Windows</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to unlock and view the fixed drives that are formatted with the (FAT) file system on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p>
<p>These operating systems have read-only permissions to BitLocker-protected drives.</p>
<p>When the policy is disabled, removable drives formatted with the FAT file system cannot be unlocked and their content cannot be viewed on computers that are running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the use of password for removable data drives</p></td>
<td align="left"><p>Suggested configuration: <strong>Not Configured</strong></p>
<p>Enable this policy to configure password protection on removable data drives.</p>
<p>When this policy is not configured, passwords are supported with the default settings, which do not include password complexity requirements and require only eight characters.</p>
<p>For increased security, you can enable this policy and select <strong>Require password for removable data drive</strong>, select <strong>Require password complexity</strong>, and then set the preferred <strong>minimum password length</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Choose how BitLocker-protected removable drives can be recovered</p></td>
<td align="left"><p>Suggested Configuration: <strong>Not Configured</strong></p>
<p>You can configure this policy to enable the BitLocker data recovery agent or to save BitLocker recovery information to Active Directory Domain Services (AD DS).</p>
<p>When the policy is set to <strong>Not Configured</strong>, the data recovery agent is allowed and recovery information is not backed up to AD DS.</p>
<p>MBAM operation does not require the recovery information to be backed up to AD DS.</p></td>
</tr>
</tbody>
</table>



## Related topics


[Preparing your Environment for MBAM 1.0](preparing-your-environment-for-mbam-10.md)









