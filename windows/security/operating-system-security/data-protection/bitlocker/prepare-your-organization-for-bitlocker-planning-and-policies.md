---
title: Prepare the organization for BitLocker Planning and policies 
description: This article for the IT professional explains how can to plan for a BitLocker deployment.
ms.topic: conceptual
ms.date: 11/08/2022
---

# Prepare an organization for BitLocker: Planning and policies

This article for the IT professional explains how to plan BitLocker deployment.

When BitLocker deployment strategy is defined, define the appropriate policies and configuration requirements based on the business requirements of the organization. The following sections will help with collecting information. Use this information to help with the decision-making process about deploying and managing BitLocker systems.

## Audit the environment

To plan a BitLocker deployment, understand the current environment. Perform an informal audit to define the current policies, procedures, and hardware environment. Review the existing disk encryption software corporate security policies. If the organization isn't using disk encryption software, then none of these policies will exist. If disk encryption software is being used, then the organization's policies might need to be changed to use the BitLocker features.

To help document the organization's current disk encryption security policies, answer the following questions:

1. Are there policies to determine which computers will use BitLocker and which computers won't use BitLocker?

2. What policies exist to control recovery password and recovery key storage?

3. What are the policies for validating the identity of users who need to perform BitLocker recovery?

4. What policies exist to control who in the organization has access to recovery data?

5. What policies exist to control computer decommissioning or retirement?

## Encryption keys and authentication

BitLocker helps prevent unauthorized access to data on lost or stolen computers by:

- Encrypting the entire Windows operating system volume on the hard disk.
- Verifying the boot process integrity.

The trusted platform module (TPM) is a hardware component installed in many newer computers by the computer manufacturers. It works with BitLocker to help protect user data. And, help make sure a computer hasn't been tampered with while the system was offline.

Also, BitLocker can lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable USB device that contains a startup key. These extra security measures provide multifactor authentication. They also make sure that the computer won't start or resume from hibernation until the correct PIN or startup key is presented.

On computers that don't have a TPM version 1.2 or higher, BitLocker can still be used to encrypt the Windows operating system volume. However, this implementation requires the user to insert a USB startup key to start the computer or resume from hibernation. It doesn't provide the pre-startup system integrity verification offered by BitLocker working with a TPM.

### BitLocker key protectors

| Key protector | Description |
| - | - |
| *TPM* | A hardware device used to help establish a secure root-of-trust. BitLocker only supports TPM 1.2 or higher versions.|
| *PIN* | A user-entered numeric key protector that can only be used in addition to the TPM.|
| *Enhanced PIN* | A user-entered alphanumeric key protector that can only be used in addition to the TPM.|
| *Startup key* | An encryption key that can be stored on most removable media. This key protector can be used alone on non-TPM computers, or with a TPM for added security.|
| *Recovery password* | A 48-digit number used to unlock a volume when it is in recovery mode. Numbers can often be typed on a regular keyboard. If the numbers on the normal keyboard aren't responding, the function keys (F1-F10) can be used to input the numbers.|
| *Recovery key*| An encryption key stored on removable media that can be used for recovering data encrypted on a BitLocker volume.|

### BitLocker authentication methods

| Authentication method | Requires user interaction | Description |
| - | - | - |
| *TPM only*| No| TPM validates early boot components.|
| *TPM + PIN* | Yes| TPM validates early boot components. The user must enter the correct PIN before the start-up process can continue, and before the drive can be unlocked. The TPM enters lockout if the incorrect PIN is entered repeatedly, to protect the PIN from brute force attacks. The number of repeated attempts that will trigger a lockout is variable.|
| *TPM + Network key* | No | The TPM successfully validates early boot components, and a valid encrypted network key has been provided from the WDS server. This authentication method provides automatic unlock of operating system volumes at system reboot while still maintaining multifactor authentication. |
| *TPM + startup key* | Yes| The TPM successfully validates early boot components, and a USB flash drive containing the startup key has been inserted.|
| *Startup key only* | Yes| The user is prompted for the USB flash drive that has the recovery key and/or startup key, and then reboot the computer.|

#### Will computers without TPM 1.2 or higher versions be supported?

Determine whether computers that don't have a TPM 1.2 or higher versions in the environment will be supported. If it's decided to support computers with TPM 1.2 or higher versions, a user must use a USB startup key to boot the system. This startup key requires extra support processes similar to multifactor authentication.

#### What areas of the organization need a baseline level of data protection?

The TPM-only authentication method provides the most transparent user experience for organizations that need a baseline level of data protection to meet security policies. It has the lowest total cost of ownership. TPM-only might also be more appropriate for computers that are unattended or that must reboot unattended.

However, TPM-only authentication method offers the lowest level of data protection. This authentication method protects against attacks that modify early boot components. But, the level of protection can be affected by potential weaknesses in hardware or in the early boot components. BitLocker's multifactor authentication methods significantly increase the overall level of data protection.

#### What areas of the organization need a more secure level of data protection?

If there are user computers with highly sensitive data, then deploy BitLocker with multifactor authentication on those systems. Requiring the user to input a PIN significantly increases the level of protection for the system. BitLocker Network Unlock can also be used to allow these computers to automatically unlock when connected to a trusted wired network that can provide the Network Unlock key.

#### What multifactor authentication method does the organization prefer?

The protection differences provided by multifactor authentication methods can't be easily quantified. Consider each authentication method's impact on Helpdesk support, user education, user productivity, and any automated systems management processes.

## TPM hardware configurations

In the deployment plan, identify what TPM-based hardware platforms will be supported. Document the hardware models from an OEM(s) being used by the organization so that their configurations can be tested and supported. TPM hardware requires special consideration during all aspects of planning and deployment.

### TPM 1.2 states and initialization

For TPM 1.2, there are multiple possible states. Windows automatically initializes the TPM, which brings it to an enabled, activated, and owned state. This state is the state that BitLocker requires before it can use the TPM.

### Endorsement keys

For a TPM to be usable by BitLocker, it must contain an endorsement key, which is an RSA key pair. The private half of the key pair is held inside the TPM and is never revealed or accessible outside the TPM. If the TPM doesn't have an endorsement key, BitLocker will force the TPM to generate one automatically as part of BitLocker setup.

An endorsement key can be created at various points in the TPM's lifecycle, but needs to be created only once for the lifetime of the TPM. If an endorsement key doesn't exist for the TPM, it must be created before TPM ownership can be taken.

For more information about the TPM and the TCG, see the Trusted Computing Group: Trusted Platform Module (TPM) Specifications (<https://go.microsoft.com/fwlink/p/?linkid=69584>).

## Non-TPM hardware configurations

Devices that don't include a TPM can still be protected by drive encryption. Windows To Go workspaces can be BitLocker protected using a startup password and PCs without a TPM can use a startup key.

Use the following questions to identify issues that might affect the deployment in a non-TPM configuration:

- Are password complexity rules in place?
- Is there a budget for USB flash drives for each of these computers?
- Do existing non-TPM devices support USB devices at boot time?

Test the individual hardware platforms with the BitLocker system check option while enabling BitLocker. The system check makes sure that BitLocker can read the recovery information from a USB device and encryption keys correctly before it encrypts the volume. CD and DVD drives can't act as a block storage device and can't be used to store the BitLocker recovery material.

## Disk configuration considerations

To function correctly, BitLocker requires a specific disk configuration. BitLocker requires two partitions that meet the following requirements:

- The operating system partition contains the operating system and its support files; it must be formatted with the NTFS file system
- The system partition (or boot partition) includes the files needed to load Windows after the BIOS or UEFI firmware has prepared the system hardware. BitLocker isn't enabled on this partition. For BitLocker to work, the system partition must not be encrypted, and must be on a different partition than the operating system. On UEFI platforms, the system partition must be formatted with the FAT 32-file system. On BIOS platforms, the system partition must be formatted with the NTFS file system. It should be at least 350 MB in size.

Windows setup automatically configures the disk drives of computers to support BitLocker encryption.

Windows Recovery Environment (Windows RE) is an extensible recovery platform that is based on Windows Pre-installation Environment (Windows PE). When the computer fails to start, Windows automatically transitions into this environment, and the Startup Repair tool in Windows RE automates the diagnosis and repair of an unbootable Windows installation. Windows RE also contains the drivers and tools that are needed to unlock a volume protected by BitLocker by providing a recovery key or recovery password. To use Windows RE with BitLocker, the Windows RE boot image must be on a volume that isn't protected by BitLocker.

Windows RE can also be used from boot media other than the local hard disk. If Windows RE isn't installed on the local hard disk of BitLocker-enabled computers, then different methods can be used to boot Windows RE. For example, Windows Deployment Services (WDS), CD-ROM, or USB flash drive can be used for recovery.

## BitLocker provisioning

In Windows Vista and Windows 7, BitLocker was provisioned after the installation for system and data volumes. It used the `manage-bde` command line interface or the Control Panel user interface. With newer operating systems, BitLocker can be provisioned before the operating system is installed. Preprovisioning requires the computer have a TPM.

To check the BitLocker status of a particular volume, administrators can look at the drive status in the BitLocker control panel applet or Windows Explorer. The "Waiting For Activation" status with a yellow exclamation icon means that the drive was preprovisioned for BitLocker. This status means that there was only a clear protector used when encrypting the volume. In this case, the volume isn't protected, and needs to have a secure key added to the volume before the drive is considered fully protected. Administrators can use the control panel options, the **manage-bde** tool, or WMI APIs to add an appropriate key protector. The volume status will be updated.

When using the control panel options, administrators can choose to **Turn on BitLocker** and follow the steps in the wizard to add a protector, such as a PIN for an operating system volume (or a password if no TPM exists), or a password or smart card protector to a data volume. Then the drive security window is presented before changing the volume status.

Administrators can enable BitLocker before to operating system deployment from the Windows Pre-installation Environment (WinPE). This step is done with a randomly generated clear key protector applied to the formatted volume. It encrypts the volume before running the Windows setup process. If the encryption uses the Used Disk Space Only option, then this step takes only a few seconds. And, it incorporates into the regular deployment processes.

## Used Disk Space Only encryption

The BitLocker Setup wizard provides administrators the ability to choose the Used Disk Space Only or Full encryption method when enabling BitLocker for a volume. Administrators can use the new BitLocker group policy setting to enforce either Used Disk Space Only or Full disk encryption.

Launching the BitLocker Setup wizard prompts for the authentication method to be used (password and smart card are available for data volumes). Once the method is chosen and the recovery key is saved, the wizard asks to choose the drive encryption type. Select Used Disk Space Only or Full drive encryption.

With Used Disk Space Only, just the portion of the drive that contains data will be encrypted. Unused space will remain unencrypted. This behavior causes the encryption process to be much faster, especially for new PCs and data drives. When BitLocker is enabled with this method, as data is added to the drive, the portion of the drive used is encrypted. So, there's never unencrypted data stored on the drive.

With Full drive encryption, the entire drive is encrypted, whether data is stored on it or not. This option is useful for drives that have been repurposed, and may contain data remnants from their previous use.

## Active Directory Domain Services considerations

BitLocker integrates with Active Directory Domain Services (AD DS) to provide centralized key management. By default, no recovery information is backed up to Active Directory. Administrators can configure the following group policy setting for each drive type to enable backup of BitLocker recovery information:

**Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > ***drive type*** > **Choose how BitLocker-protected drives can be recovered**.

By default, only Domain Admins have access to BitLocker recovery information, but [access can be delegated to others](/archive/blogs/craigf/delegating-access-in-ad-to-bitlocker-recovery-information).

The following recovery data is saved for each computer object:

- **Recovery password**

    A 48-digit recovery password used to recover a BitLocker-protected volume. Users enter this password to unlock a volume when BitLocker enters recovery mode.

- **Key package data**

    With this key package and the recovery password, portions of a BitLocker-protected volume can be decrypted if the disk is severely damaged. Each key package works only with the volume it was created on, which is identified by the corresponding volume ID.

## FIPS support for recovery password protector

Functionality introduced in Windows Server 2012 R2 and Windows 8.1 allows BitLocker to be fully functional in FIPS mode.

> [!NOTE]
> The United States Federal Information Processing Standard (FIPS) defines security and interoperability requirements for computer systems that are used by the U.S. Federal Government. The FIPS-140 standard defines approved cryptographic algorithms. The FIPS-140 standard also sets forth requirements for key generation and for key management. The National Institute of Standards and Technology (NIST) uses the Cryptographic Module Validation Program (CMVP) to determine whether a particular implementation of a cryptographic algorithm is compliant with the FIPS-140 standard. An implementation of a cryptographic algorithm is considered FIPS-140-compliant only if it has been submitted for and has passed NIST validation. An algorithm that has not been submitted cannot be considered FIPS-compliant even if the implementation produces identical data as a validated implementation of the same algorithm.

Before these supported versions of Windows, when Windows was in FIPS mode, BitLocker prevented the creation or use of recovery passwords and instead forced the user to use recovery keys. For more information about these issues, see the support article [The recovery password for Windows BitLocker isn't available when FIPS compliant policy is set in Windows](/troubleshoot/windows-client/windows-security/bitlocker-recovery-password-not-fips-compliant).

However, on computers running these supported systems with BitLocker enabled:

- FIPS-compliant recovery password protectors can be created when Windows is in FIPS mode. These protectors use the FIPS-140 NIST SP800-132 algorithm.

- Recovery passwords created in FIPS mode on Windows 8.1 can be distinguished from recovery passwords created on other systems.

- Recovery unlock using the FIPS-compliant, algorithm-based recovery password protector works in all cases that currently work for recovery passwords.

- When FIPS-compliant recovery passwords unlock volumes, the volume is unlocked to allow read/write access even while in FIPS mode.

- FIPS-compliant recovery password protectors can be exported and stored in AD a while in FIPS mode.

The BitLocker Group Policy settings for recovery passwords work the same for all Windows versions that support BitLocker, whether in FIPS mode or not.

On Windows Server 2012 R2 and Windows 8.1 and older, recovery passwords generated on a system in FIPS mode can't be used. Recovery passwords created on Windows Server 2012 R2 and Windows 8.1 are incompatible with BitLocker on operating systems older than Windows Server 2012 R2 and Windows 8.1. So, recovery keys should be used instead.

<!--
## FIPS setting and BitLocker

The Federal Information Processing Standard (FIPS) setting for FIPS compliance can be configured. As an effect of FIPS compliance, users can't create or save a BitLocker password for recovery or as a key protector. The use of a recovery key is permitted.

|  Item  | Info |
|:---|:---|
|**Policy path**|*Local Policies* > *Security Options* > *System cryptography*: **Use FIPS compliant algorithms for encryption, hashing, and signing**|
|**When enabled**|Users will be unable to save a recovery password to any location. This policy setting includes AD DS and network folders. Also, WMI or the BitLocker Drive Encryption Setup wizard can't be used to create a recovery password.|
|**When disabled or not configured**|No BitLocker encryption key is generated|

### Reference: FIPS setting

This policy must be enabled before any encryption key is generated for BitLocker. When this policy is enabled, BitLocker prevents creating or using recovery passwords, so recovery keys should be used instead.

The optional recovery key can be saved to a USB drive. Because recovery passwords can't be saved to AD DS when FIPS is enabled, an error is caused if AD DS backup is required by Group Policy.

The FIPS setting can be edited by using the Security Policy Editor (`Secpol.msc`) or by editing the Windows registry. Only administrators can perform these procedures.

For more information about setting this policy, see [System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing](../../../threat-protection/security-policy-settings/system-cryptography-use-fips-compliant-algorithms-for-encryption-hashing-and-signing.md).


-->


## Related articles

- [BitLocker frequently asked questions (FAQ)](faq.yml)
- [BitLocker](index.md)
- [BitLocker policy settings](policy-settings.md)
- [BitLocker basic deployment](bitlocker-basic-deployment.md)
