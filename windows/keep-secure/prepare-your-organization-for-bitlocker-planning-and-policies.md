---
title: Prepare your organization for BitLocker Planning and policies (Windows 10)
description: This topic for the IT professional explains how can you plan your BitLocker deployment.
ms.assetid: 6e3593b5-4e8a-40ac-808a-3fdbc948059d
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Prepare your organization for BitLocker: Planning and policies


**Applies to**

-   Windows 10

This topic for the IT professional explains how can you plan your BitLocker deployment.

When you design your BitLocker deployment strategy, define the appropriate policies and configuration requirements based on the business requirements of your organization. The following topics will help you collect information that you can use to frame your decision-making process about deploying and managing BitLocker systems.

-   [Audit your environment](#bkmk-audit)

-   [Encryption keys and authentication](#bkk-encrypt)

-   [TPM hardware configurations](#bkmk-tpmconfigurations)

-   [Non-TPM hardware configurations](#bkmk-nontpm)

-   [Disk configuration considerations](#bkmk-disk)

-   [BitLocker provisioning](#bkmk-prov)

-   [Used Disk Space Only encryption](#bkk-used)

-   [Active Directory Domain Services considerations](#bkmk-addscons)

-   [FIPS support for recovery password protector](#bkmk-fipssupport)

-   [BitLocker Group Policy settings](bitlocker-group-policy-settings.md)

## <a href="" id="bkmk-audit"></a>Audit your environment


To plan your enterprise deployment of BitLocker, you must first understand your current environment. Conduct an informal audit to define your current policies, procedures, and hardware environment. Begin by reviewing your existing corporate security policies as they relate to disk encryption software. If your organization is not currently using disk encryption software, none of these policies will exist. If you are using disk encryption software, then you might need to modify your organization's policies to address the capabilities of BitLocker.

Use the following questions to help you document your organization's current disk encryption security policies:

1.  Are there policies to address which computers will use BitLocker and which computers will not use BitLocker?

2.  What policies exist to control recovery password and recovery key storage?

3.  What are the policies for validating the identity of users that need to perform BitLocker recovery?

4.  What policies exist to control who in the organization has access to recovery data?

5.  What policies exist to control computer decommissioning or retirement?

## <a href="" id="bkk-encrypt"></a>Encryption keys and authentication


BitLocker helps prevent unauthorized access to data on lost or stolen computers by:

-   Encrypting the entire Windows operating system volume on the hard disk.

-   Verifying the boot process integrity.

The trusted platform module (TPM)is a hardware component installed in many newer computers by the computer manufacturers. It works with BitLocker to help protect user data and to ensure that a computer has not been tampered with while the system was offline.

In addition, BitLocker offers the option to lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable USB device, such as a flash drive, that contains a startup key. These additional security measures provide multifactor authentication and assurance that the computer will not start or resume from hibernation until the correct PIN or startup key is presented.

On computers that do not have a TPM version 1.2 or higher, you can still use BitLocker to encrypt the Windows operating system volume. However, this implementation will require the user to insert a USB startup key to start the computer or resume from hibernation, and does not provide the pre-startup system integrity verification offered by BitLocker working with a TPM.

**BitLocker key protectors**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Key protector</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>TPM</p></td>
<td align="left"><p>A hardware device used to help establish a secure root-of-trust. BitLocker only supports TPM version 1.2 or higher.</p></td>
</tr>
<tr class="even">
<td align="left"><p>PIN</p></td>
<td align="left"><p>A user-entered numeric key protector that can only be used in addition to the TPM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Enhanced PIN</p></td>
<td align="left"><p>A user-entered alphanumeric key protector that can only be used in addition to the TPM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Startup key</p></td>
<td align="left"><p>An encryption key that can be stored on most removable media. This key protector can be used alone on non-TPM computers, or in conjunction with a TPM for added security.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Recovery password</p></td>
<td align="left"><p>A 48-digit number used to unlock a volume when it is in recovery mode. Numbers can often be typed on a regular keyboard, if the numbers on the normal keyboard are not responding you can always use the function keys (F1-F10) to input the numbers.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Recovery key</p></td>
<td align="left"><p>An encryption key stored on removable media that can be used for recovering data encrypted on a BitLocker volume.</p></td>
</tr>
</tbody>
</table>

 

**BitLocker authentication methods**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Authentication method</th>
<th align="left">Requires user interaction</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>TPM only</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>TPM validates early boot components.</p></td>
</tr>
<tr class="even">
<td align="left"><p>TPM + PIN</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>TPM validates early boot components. The user must enter the correct PIN before the start-up process can continue, and before the drive can be unlocked. The TPM will enter lockout if the incorrect PIN is entered repeatedly to protect the PIN from brute force attacks. The number of repeated attempts that will trigger a lockout is variable.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>TPM + Network key</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>The TPM successfully validates early boot components, and a valid encrypted network key has been provided from the WDS server. This authentication method provides automatic unlock of operating system volumes at system reboot while still maintaining multifactor authentication.</p></td>
</tr>
<tr class="even">
<td align="left"><p>TPM + startup key</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The TPM successfully validates early boot components, and a USB flash drive containing the startup key has been inserted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Startup key only</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>The user is prompted to insert the USB flash drive that holds the recovery key and/or startup key and reboot the computer.</p></td>
</tr>
</tbody>
</table>

 

**Will you support computers without TPM version 1.2 or higher?**

Determine whether you will support computers that do not have a TPM version 1.2 or higher in your environment. If you choose to support BitLocker on this type of computer, a user must use a USB startup key to boot the system. This requires additional support processes similar to multifactor authentication.

**What areas of your organization need a baseline level of data protection?**

The TPM-only authentication method will provide the most transparent user experience for organizations that need a baseline level of data protection to meet security policies. It has the lowest total cost of ownership. TPM-only might also be more appropriate for computers that are unattended or that must reboot unattended.

However, TPM-only authentication method offers the lowest level of data protection. This authentication method protects against attacks that modify early boot components, but the level of protection can be affected by potential weaknesses in hardware or in the early boot components. BitLocker’s multifactor authentication methods significantly increase the overall level of data protection.

**What areas of your organization need a more secure level of data protection?**

If there are areas of your organization where data residing on user computers is considered highly-sensitive, consider the best practice of deploying BitLocker with multifactor authentication on those systems. Requiring the user to input a PIN significantly increases the level of protection for the system. You can also use BitLocker Network Unlock to allow these computers to automatically unlock when connected to a trusted wired network that can provide the Network Unlock key.

**What multifactor authentication method does your organization prefer?**

The protection differences provided by multifactor authentication methods cannot be easily quantified. Consider each authentication method's impact on Helpdesk support, user education, user productivity, and automated systems management processes.

## <a href="" id="bkmk-tpmconfigurations"></a>TPM hardware configurations


In your deployment plan, identify what TPM-based hardware platforms will be supported. Document the hardware models from an OEM of your choice, so that their configurations can be tested and supported. TPM hardware requires special consideration during all aspects of planning and deployment.

### TPM states of existence

For each of the TPM states of existence, the TPM can transition into another state (for example, moving from disabled to enabled). The states are not exclusive.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">State</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enabled</p></td>
<td align="left"><p>Most features of the TPM are available.</p>
<p>The TPM may be enabled and disabled multiple times within a boot period, if ownership is taken.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Disabled</p></td>
<td align="left"><p>The TPM restricts most operations. Exceptions include the ability to report TPM capabilities, extend and reset Platform Configuration Register (PCR) functions, and to perform hashing and basic initialization.</p>
<p>The TPM may be enabled and disabled multiple times within a boot period.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Activated</p></td>
<td align="left"><p>Most features of the TPM are available. The TPM may be activated and deactivated only through physical presence which requires a reboot.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Deactivated</p></td>
<td align="left"><p>Similar to disabled, with the exception that ownership can be taken while deactivated and enabled. The TPM may be activated and deactivated only through physical presence which requires a reboot.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Owned</p></td>
<td align="left"><p>Most features of the TPM are available. The TPM has an endorsement key and storage root key, and the owner knows information about owner authorization data.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Un-owned</p></td>
<td align="left"><p>The TPM does not have a storage root key and may or may not have an endorsement key.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
BitLocker cannot use the TPM until it is in the following state: enabled, activated, and owned. When the TPM is in this state and only when it is in this state, all operations are available.

 

The state of the TPM exists independent of the computer’s operating system. Once the TPM is enabled, activated, and owned, the state of the TPM is preserved if the operating system is reinstalled.

### Endorsement keys

For a TPM to be usable by BitLocker, it must contain an endorsement key, which is an RSA key pair. The private half of the key pair is held inside the TPM and is never revealed or accessible outside the TPM. If the TPM does not contain an endorsement key, BitLocker will force the TPM to generate one automatically as part of BitLocker setup.

An endorsement key can be created at various points in the TPM’s lifecycle, but needs to be created only once for the lifetime of the TPM. If an endorsement key does not exist for the TPM, it must be created before TPM ownership can be taken.

For more information about the TPM and the TCG, see the Trusted Computing Group: Trusted Platform Module (TPM) Specifications (<http://go.microsoft.com/fwlink/p/?linkid=69584>).

## <a href="" id="bkmk-nontpm"></a>Non-TPM hardware configurations


Devices that do not include a TPM can still be protected by drive encryption. Windows To Go workspaces can be BitLocker protected using a startup password and PCs without a TPM can use a startup key.

Use the following questions to identify issues that might affect your deployment in a non-TPM configuration:

-   Are password complexity rules in place?

-   Do you have budget for USB flash drives for each of these computers?

-   Do your existing non-TPM devices support USB devices at boot time?

Test your individual hardware platforms with the BitLocker system check option while you are enabling BitLocker. The system check will ensure that BitLocker can read the recovery information from a USB device and encryption keys correctly before it encrypts the volume. CD and DVD drives cannot act as a block storage device and cannot be used to store the BitLocker recovery material.

## <a href="" id="bkmk-disk"></a>Disk configuration considerations


To function correctly, BitLocker requires a specific disk configuration. BitLocker requires two partitions that meet the following requirements:

-   The operating system partition contains the operating system and its support files; it must be formatted with the NTFS file system

-   The system partition (or boot partition) contains the files that are needed to load Windows after the BIOS or UEFI firware has prepared the system hardware. BitLocker is not enabled on this partition. For BitLocker to work, the system partition must not be encrypted and must be on a different partition than the operating system. On UEFI platforms the system partition must be formatted with the FAT 32 file system. On BIOS platforms the system partition must be formatted with the NTFS file system. It should be at least 350 MB in size

Windows setup will automatically configure the disk drives of your computer to support BitLocker encryption.

Windows Recovery Environment (Windows RE) is an extensible recovery platform that is based on Windows Pre-installation Environment (Windows PE). When the computer fails to start, Windows automatically transitions into this environment, and the Startup Repair tool in Windows RE automates the diagnosis and repair of an unbootable Windows installation. Windows RE also contains the drivers and tools that are needed to unlock a volume protected by BitLocker by providing a recovery key or recovery password. To use Windows RE in conjunction with BitLocker, the Windows RE boot image must reside on a volume that is not protected by BitLocker.

Windows RE can also be used from boot media other than the local hard disk. If you choose not to install Windows RE on the local hard disk of BitLocker-enabled computers, you can use alternate boot methods, such as Windows Deployment Services, CD-ROM, or USB flash drive, for recovery.

## <a href="" id="bkmk-prov"></a>BitLocker provisioning


In Windows Vista and Windows 7, BitLocker was provisioned post installation for system and data volumes through either the manage-bde command line interface or the Control Panel user interface. With newer operating systems, BitLocker can be easily provisioned before the operating system is installed. Preprovisioning requires that the computer have a TPM.

To check the BitLocker status of a particular volume, administrators can look at the status of the drive in the BitLocker control panel applet or Windows Explorer. A status of "Waiting For Activation" with a yellow exclamation icon means that the drive was preprovisioned for BitLocker. This status means that there was only a clear protector used when encrypting the volume. In this case, the volume is not protected and needs to have a secure key added to the volume before the drive is considered fully protected. Administrators can use the control panel options, manage-bde tool or WMI APIs to add an appropriate key protector and the volume status will be updated.

When using the control panel options, administrators can choose to **Turn on BitLocker** and follow the steps in the wizard to add a protector, such as a PIN for an operating system volume (or a password if no TPM exists), or a password or smart card protector to a data volume. Then the drive security window is presented prior to changing the volume status.

Administrators can enable BitLocker prior to operating system deployment from the Windows Pre-installation Environment (WinPE). This is done with a randomly generated clear key protector applied to the formatted volume and encrypting the volume prior to running the Windows setup process. If the encryption uses the Used Disk Space Only option this step takes only a few seconds and so incorporates well into regular deployment processes.

## <a href="" id="bkk-used"></a>Used Disk Space Only encryption


The BitLocker Setup wizard provides administrators the ability to choose the Used Disk Space Only or Full encryption method when enabling BitLocker for a volume. Administrators can use the new BitLocker Group Policy setting to enforce either Used Disk Space Only or Full disk encryption.

Launching the BitLocker Setup wizard prompts for the authentication method to be used (password and smart card are available for data volumes). Once the method is chosen and the recovery key is saved, you are asked to choose the drive encryption type, either Used Disk Space Only or Full drive encryption.

Used Disk Space Only means that only the portion of the drive that contains data will be encrypted, unused space will remain unencrypted. This causes the encryption process to be much faster, especially for new PCs and data drives. When BitLocker is enabled with this method as data is added to the drive the portion of the drive used will be encrypted, so there is never unencrypted data stored on the drive.

Full drive encryption means that the entire drive will be encrypted, regardless of whether data is stored on it or not. This is useful for drives that have been repurposed and may contain data remnants from their previous use.

## <a href="" id="bkmk-addscons"></a>Active Directory Domain Services considerations


BitLocker integrates with Active Directory Domain Services (AD DS) to provide centralized key management. By default, no recovery information is backed up to Active Directory. Administrators can configure Group Policy settings to enable backup of BitLocker or TPM recovery information. Before configuring these settings verify that access permissions have been granted to perform the backup.

By default, domain administrators are the only users that will have access to BitLocker recovery information. When you plan your support process, define what parts of your organization need access to BitLocker recovery information. Use this information to define how the appropriate rights will be delegated in your AD DS environment.

It is a best practice to require backup of recovery information for both the TPM and BitLocker to AD DS. You can implement this practice by configuring the Group Policy settings below for your BitLocker-protected computers.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">BitLocker Group Policy setting</th>
<th align="left">Configuration</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>BitLocker Drive Encryption: Turn on BitLocker backup to Active Directory Domain Services</p></td>
<td align="left"><p>Require BitLocker backup to AD DS (Passwords and key packages)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Trusted Platform Module Services: Turn on TPM backup to Active Directory Domain Services</p></td>
<td align="left"><p>Require TPM backup to AD DS</p></td>
</tr>
</tbody>
</table>

 

The following recovery data will be saved for each computer object:

-   **Recovery password**

    A 48-digit recovery password used to recover a BitLocker-protected volume. Users enter this password to unlock a volume when BitLocker enters recovery mode.

-   **Key package data**

    With this key package and the recovery password, you will be able decrypt portions of a BitLocker-protected volume if the disk is severely damaged. Each key package will only work with the volume it was created on, which can be identified by the corresponding volume ID.

-   **TPM owner authorization password hash**

    When ownership of the TPM is taken a hash of the ownership password can be taken and stored in AD DS. This information can then be used to reset ownership of the TPM.

Starting in Windows 8, a change to how the TPM owner authorization value is stored in AD DS was implemented in the AD DS schema. The TPM owner authorization value is now stored in a separate object which is linked to the Computer object. This value was stored as a property in the Computer object itself for the default Windows Server 2008 R2 and later schemas.

To take advantage of this integration, you must upgrade your domain controllers to Windows Server 2012 or extend the Active Directory schema and configure BitLocker-specific Group Policy objects.

**Note**  
The account that you use to update the Active Directory schema must be a member of the Schema Admins group.

 

Windows Server 2012 domain controllers have the default schema to backup TPM owner authorization information in the separate object. If you are not upgrading your domain controller to Windows Server 2012 you need to extend the schema to support this change.

**To support Windows 8 and later computers that are managed by a Windows Server 2003 or Windows 2008 domain controller**

There are two schema extensions that you can copy down and add to your AD DS schema:

-   **TpmSchemaExtension.ldf**

    This schema extension brings parity with the Windows Server 2012 schema. With this change, the TPM owner authorization information is stored in a separate TPM object linked to the corresponding computer object. Only the Computer object that has created the TPM object can update it. This means that any subsequent updates to the TPM objects will not succeed in dual boot scenarios or scenarios where the computer is reimaged resulting in a new AD computer object being created. To support such scenarios, an update to the schema was created.

-   **TpmSchemaExtensionACLChanges.ldf**

    This schema update modifies the ACLs on the TPM object to be less restrictive so that any subsequent operating system which takes ownership of the computer object can update the owner authorization value in AD DS. However, this is less secure as any computer in the domain can now update the OwnerAuth of the TPM object (although it cannot read the OwnerAuth) and DOS attacks can be made from within the enterprise. The recommended mitigation in such a scenario is to do regular backup of TPM objects and enable auditing to track changes for these objects.

To download the schema extensions, see [AD DS schema extensions to support TPM backup](schema-extensions-for-windows-server-2008-r2-to-support-ad-ds-backup-of-tpm-information-from-windows-8-clients.md).

If you have a Windows Server 2012 domain controller in your environment, the schema extensions are already in place and do not need to be updated.

**Caution**  
To configure Group Policy objects to backup TPM and BitLocker information in AD DS at least one of the domain controllers in your forest must be running at least Windows Server 2008 R2.

If Active Directory backup of the TPM owner authorization value is enabled in an environment without the required schema extensions, the TPM provisioning will fail and the TPM will remain in a Not Ready state for computers running Windows 8 and later.

 

**Setting the correct permissions in AD DS**

To initialize the TPM successfully so that you can turn on BitLocker requires that the correct permissions for the SELF account in be set in AD DS for the **ms-TPMOwnerInformation** attribute. The following steps detail setting these permissions as required by BitLocker:

1.  Open **Active Directory Users and Computers**.

2.  Select the organizational unit (OU) which contains the computer accounts that will have BitLocker turned on.

3.  Right-click the OU and click **Delegate Control** to open the **Delegation of Control** wizard.

4.  Click **Next** to go to the **Users or Groups** page and then click **Add**.

5.  In the **Select Users, Computers, or Groups** dialog box, type **SELF** as the object name and then click **OK** Once the object has been validated you will be returned to the **Users or Groups** wizard page and the SELF account will be listed. Click **Next**.

6.  On the **Tasks to Delegate** page, choose **Create a custom task to delegate** and then click **Next**.

7.  On the **Active Directory Object Type** page, choose **Only the following objects in the folder** and then check **Computer Objects** and then click **Next**.

8.  On the **Permissions** page, for **Show these permissions**, check **General**, **Property-specific**, and **Creation/deletion of specific child objects**. Scroll down the **Permissions** list and check both **Write msTPM-OwnerInformation** and **Write msTPM-TpmInformationForComputer** then click **Next**.

9.  Click **Finish** to apply the permissions settings.

## <a href="" id="bkmk-fipssupport"></a>FIPS support for recovery password protector


Functionality introduced in Windows Server 2012 R2 and Windows 8.1, allows BitLocker to be fully functional in FIPS mode.

**Note**  
The United States Federal Information Processing Standard (FIPS) defines security and interoperability requirements for computer systems that are used by the U.S. federal government. The FIPS 140 standard defines approved cryptographic algorithms. The FIPS 140 standard also sets forth requirements for key generation and for key management. The National Institute of Standards and Technology (NIST) uses the Cryptographic Module Validation Program (CMVP) to determine whether a particular implementation of a cryptographic algorithm is compliant with the FIPS 140 standard. An implementation of a cryptographic algorithm is considered FIPS 140-compliant only if it has been submitted for and has passed NIST validation. An algorithm that has not been submitted cannot be considered FIPS-compliant even if the implementation produces identical data as a validated implementation of the same algorithm. 

 

Prior to these supported versions of Windows, when Windows was in FIPS mode, BitLocker prevented the creation or use of recovery passwords and instead forced the user to use recovery keys. For more information about these issues, see the support article [kb947249](http://support.microsoft.com/kb/947249).

But on computers running these supported systems with BitLocker enabled:

-   FIPS-compliant recovery password protectors can be created when Windows is in FIPS mode. These protectors use the FIPS 140 NIST SP800-132 algorithm.

-   Recovery passwords created in FIPS mode on Windows 8.1 can be distinguished from recovery passwords created on other systems.

-   Recovery unlock using the FIPS-compliant algorithm based recovery password protector work in all cases that currently work for recovery passwords.

-   When FIPS-compliant recovery passwords unlock volumes, the volume is unlocked to allow read/write access even while in FIPS mode.

-   FIPS-compliant recovery password protectors can be exported and stored in AD a while in FIPS mode.

The BitLocker Group Policy settings for recovery passwords work the same for all Windows versions that support BitLocker, whether in FIPs mode or not.

However, you cannot use recovery passwords generated on a system in FIPS mode for systems earlier than Windows Server 2012 R2 and Windows 8.1. Recovery passwords created on Windows Server 2012 R2 and Windows 8.1 are incompatible with BitLocker on operating systems prior to Windows Server 2012 R2 and Windows 8.1; so recovery keys should be used instead.

## More information


[Trusted Platform Module](trusted-platform-module-technology-overview.md)

[TPM Group Policy settings](trusted-platform-module-services-group-policy-settings.md)

[BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions--faq-.md)

[BitLocker](bitlocker-overview-roletech-overview.md)

[BitLocker Group Policy settings](bitlocker-group-policy-settings.md)

[BitLocker basic deployment](bitlocker-basic-deployment.md)

 

 





