---
title: Plan for a BitLocker deployment 
description: Learn how to plan for a BitLocker deployment in your organization.
ms.topic: conceptual
ms.date: 11/08/2022
---

# Plan for a BitLocker deployment

This article for the IT professional explains how to plan BitLocker deployment.

When BitLocker deployment strategy is defined, define the appropriate policies and configuration requirements based on the business requirements of the organization. The following sections will help with collecting information. Use this information to help with the decision-making process about deploying and managing BitLocker systems.

## Audit the environment

To plan a BitLocker deployment, understand the current environment. Perform an informal audit to define the current policies, procedures, and hardware environment. Review the existing disk encryption software corporate security policies. If the organization isn't using disk encryption software, then none of these policies will exist. If disk encryption software is being used, then the organization's policies might need to be changed to use the BitLocker features.

To help document the organization's current disk encryption security policies, answer the following questions:

- Are there policies to determine which computers will use BitLocker and which computers won't use BitLocker?
- What policies exist to control recovery password and recovery key storage?
- What are the policies for validating the identity of users who need to perform BitLocker recovery?
- What policies exist to control who in the organization has access to recovery data?
- What policies exist to control computer decommissioning or retirement?

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

BitLocker can be provisioned before the operating system is installed. Preprovisioning requires the computer have a TPM.

To check the BitLocker status of a particular volume, administrators can look at the drive status in the BitLockerControl Panel applet or Windows Explorer. The "Waiting For Activation" status with a yellow exclamation icon means that the drive was preprovisioned for BitLocker. This status means that there was only a clear protector used when encrypting the volume. In this case, the volume isn't protected, and needs to have a secure key added to the volume before the drive is considered fully protected. Administrators can use theControl Panel options, the **manage-bde** tool, or WMI APIs to add an appropriate key protector. The volume status will be updated.

When using theControl Panel options, administrators can choose to **Turn on BitLocker** and follow the steps in the wizard to add a protector, such as a PIN for an operating system volume (or a password if no TPM exists), or a password or smart card protector to a data volume. Then the drive security window is presented before changing the volume status.

Administrators can enable BitLocker before to operating system deployment from the Windows Pre-installation Environment (WinPE). This step is done with a randomly generated clear key protector applied to the formatted volume. It encrypts the volume before running the Windows setup process. If the encryption uses the Used Disk Space Only option, then this step takes only a few seconds. And, it incorporates into the regular deployment processes.

## Used Disk Space Only encryption

The BitLocker Setup wizard provides administrators the ability to choose the Used Disk Space Only or Full encryption method when enabling BitLocker for a volume. Administrators can use the BitLocker policy setting to enforce either Used Disk Space Only or Full disk encryption.

Launching the BitLocker Setup wizard prompts for the authentication method to be used (password and smart card are available for data volumes). Once the method is chosen and the recovery key is saved, the wizard asks to choose the drive encryption type. Select Used Disk Space Only or Full drive encryption.

With Used Disk Space Only, just the portion of the drive that contains data will be encrypted. Unused space will remain unencrypted. This behavior causes the encryption process to be much faster, especially for new PCs and data drives. When BitLocker is enabled with this method, as data is added to the drive, the portion of the drive used is encrypted. So, there's never unencrypted data stored on the drive.

With Full drive encryption, the entire drive is encrypted, whether data is stored on it or not. This option is useful for drives that have been repurposed, and may contain data remnants from their previous use.

## Active Directory Domain Services considerations

BitLocker integrates with Microsoft Entra ID and Active Directory Domain Services (AD DS) to provide centralized key management. By default, no recovery information is backed up to Active Directory. Administrators can configure the following group policy setting for each drive type to enable backup of BitLocker recovery information:

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

## Provisioning BitLocker during operating system deployment

Administrators can enable BitLocker prior to operating system deployment from the Windows Pre-installation environment. Enabling BitLocker prior to the operating system deployment is done with a randomly generated clear key protector applied to the formatted volume and by encrypting the volume prior to running the Windows setup process. If the encryption uses the **Used Disk Space Only** option described later in this document, this step takes only a few seconds and incorporates well into regular deployment processes.

## Deploy hard drive encryption

BitLocker is capable of encrypting entire hard drives, including both system and data drives. BitLocker pre-provisioning can drastically reduce the time required to provision new PCs with BitLocker enabled. Administrators can turn on BitLocker and the TPM from within the Windows Pre-installation Environment before they install Windows or as part of an automated deployment task sequence without any user interaction. Combined with Used Disk Space Only encryption and a mostly empty drive (because Windows isn't yet installed), it takes only a few seconds to enable BitLocker.

## Used Disk Space Only encryption

To reduce encryption time, BitLocker lets users choose to encrypt just the areas of the disk that contain data. Areas of the disk that don't contain data and are empty aren't be encrypted. Any new data is encrypted as it's created. Depending on the amount of data on the drive, this option can reduce the initial encryption time by more than 99 percent.

Exercise caution when encrypting only used space on an existing volume on which confidential data may have already been stored in an unencrypted state. When using used space encryption, sectors where previously unencrypted data are stored can be recovered through disk-recovery tools until they're overwritten by new encrypted data. In contrast, encrypting only used space on a brand-new volume can significantly decrease deployment time without the security risk because all new data will be encrypted as it's written to the disk.

## Encrypted hard drive support

Encrypted hard drives provide onboard cryptographic capabilities to encrypt data on drives. This feature improves both drive and system performance by offloading cryptographic calculations from the device's processor to the drive itself. Data is rapidly encrypted by the drive by using dedicated, purpose-built hardware. If planning to use whole-drive encryption with Windows, Microsoft recommends researching hard drive manufacturers and models to determine whether any of their encrypted hard drives meet the security and budget requirements.

For more information about encrypted hard drives, see [Encrypted hard drive](../encrypted-hard-drive.md).

## Preboot information protection

An effective implementation of information protection, like most security controls, considers usability and security. Users typically prefer a simple security experience. In fact, the more transparent a security solution becomes, the more likely users are to conform to it.

It's crucial that organizations protect information on their PCs regardless of the state of the computer or the intent of users. This protection shouldn't be cumbersome to users. One undesirable and previously commonplace situation is when the user is prompted for input during preboot, and then again during Windows sign-in. Challenging users for input more than once should be avoided.

Windows 11 and Windows 10 can enable a true SSO experience from the preboot environment on modern devices and in some cases even on older devices when robust information protection configurations are in place. The TPM in isolation is able to securely protect the BitLocker encryption key while it is at rest, and it can securely unlock the operating system drive. When the key is in use and thus in memory, a combination of hardware and Windows capabilities can secure the key and prevent unauthorized access through cold-boot attacks. Although other countermeasures like PIN-based unlock are available, they aren't as user-friendly; depending on the devices' configuration they may not offer additional security when it comes to key protection. For more information, see [BitLocker Countermeasures](bitlocker-countermeasures.md).

## Manage passwords and PINs

When BitLocker is enabled on a system drive and the PC has a TPM, users can be required to type a PIN before BitLocker will unlock the drive. Such a PIN requirement can prevent an attacker who has physical access to a PC from even getting to the Windows sign-in, which makes it almost impossible for the attacker to access or modify user data and system files.

Requiring a PIN at startup is a useful security feature because it acts as a second authentication factor. However, this configuration comes with some costs. One of the most significant costs is the need to change the PIN regularly. In enterprises that used BitLocker with Windows 7 and the Windows Vista operating system, users had to contact systems administrators to update their BitLocker PIN or password. This requirement not only increased management costs but made users less willing to change their BitLocker PIN or password regularly.

Windows 11 and Windows 10 users can update their BitLocker PINs and passwords themselves, without administrator credentials. Not only will this feature reduce support costs, but it could improve security, too, because it encourages users to change their PINs and passwords more often. In addition, Modern Standby devices don't require a PIN for startup: They're designed to start infrequently and have other mitigations in place that further reduce the attack surface of the system.

For more information about how startup security works and the countermeasures that Windows 11 and Windows 10 provide, see [Protect BitLocker from pre-boot attacks](bitlocker-countermeasures.md).

## Configure Network Unlock

Some organizations have location specific data security requirements. Location specific data security requirements are most common in environments where high-value data is stored on PCs. The network environment may provide crucial data protection and enforce mandatory authentication. Therefore, policy states that those PCs shouldn't leave the building or be disconnected from the corporate network. Safeguards like physical security locks and geofencing may help enforce this policy as reactive controls. Beyond these safeguards, a proactive security control that grants data access only when the PC is connected to the corporate network is necessary.

Network Unlock enables BitLocker-protected PCs to start automatically when connected to a wired corporate network on which Windows Deployment Services runs. Anytime the PC isn't connected to the corporate network, a user must type a PIN to unlock the drive (if PIN-based unlock is enabled).
Network Unlock requires the following infrastructure:

- Client PCs that have Unified Extensible Firmware Interface (UEFI) firmware version 2.3.1 or later, which supports Dynamic Host Configuration Protocol (DHCP)

- A server running at least Windows Server 2012 with the Windows deployment services (WDS) role

- A server with the DHCP server role installed

For more information about how to configure Network unlock feature, see [BitLocker: How to enable Network Unlock](network-unlock.md).

## Microsoft BitLocker administration and monitoring

Enterprises can use Microsoft Entra ID, Microsoft Intune and Configuration Manager for BitLocker administration and monitoring. For more information, see [Monitor device encryption with Intune](/mem/intune/protect/encryption-monitor).

-->

## BitLocker Device Encryption

Windows automatically enables BitLocker Device Encryption on devices that support Modern Standby.

Unlike a standard BitLocker implementation, BitLocker Device Encryption is enabled automatically so that the device is always protected. The following list outlines how BitLocker Device Encryption is enabled automatically:

- When a clean installation of Windows 11 or Windows 10 is completed and the out-of-box experience is finished, the computer is prepared for first use. As part of this preparation, BitLocker Device Encryption is initialized on the operating system drive and fixed data drives on the computer with a clear key that is the equivalent of standard BitLocker suspended state. In this state, the drive is shown with a warning icon in Windows Explorer.  The yellow warning icon is removed after the TPM protector is created and the recovery key is backed up, as explained in the following bullet points.

- If the device isn't domain joined, a Microsoft account that has been granted administrative privileges on the device is required. When the administrator uses a Microsoft account to sign in, the clear key is removed, a recovery key is uploaded to the online Microsoft account, and a TPM protector is created. Should a device require the recovery key, the user will be guided to use an alternate device and navigate to a recovery key access URL to retrieve the recovery key by using their Microsoft account credentials.

- If the user uses a domain account to sign in, the clear key isn't removed until the user joins the device to a domain, and the recovery key is successfully backed up to Active Directory Domain Services (AD DS). The following Group Policy settings must be enabled for the recovery key to be backed up to AD DS:

  *Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives* > **Do not enable BitLocker until recovery information is stored in AD DS for operating system drives**
  
  With this configuration, the recovery password is created automatically when the computer joins the domain, and then the recovery key is backed up to AD DS, the TPM protector is created, and the clear key is removed.

- Similar to signing in with a domain account, the clear key is removed when the user signs in to an Azure AD account on the device. As described in the bullet point above, the recovery password is created automatically when the user authenticates to Azure AD. Then, the recovery key is backed up to Azure AD, the TPM protector is created, and the clear key is removed.

Microsoft recommends automatically enabling BitLocker Device Encryption on any systems that support it. However, the automatic BitLocker Device Encryption process can be prevented by changing the following registry setting:

- **Subkey**: `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker`
- **Type**: `REG_DWORD`
- **Value**: `PreventDeviceEncryption` equal to `1` (True)

> [!NOTE]
> BitLocker Device Encryption uses the XTS-AES 128-bit encryption method. If a different encryption method and/or cipher strength is needed but the device is already encrypted, it must first be decrypted before the new encryption method and/or cipher strength can be applied. After the device has been decrypted, different BitLocker settings can be applied.

*Device Encryption* is a Windows feature that provides a simple way for some devices to enable BitLocker encryption automatically. Device Encryption is available on all Windows versions, including Home edition, but requires a device to meet either [Modern Standby](/windows-hardware/design/device-experiences/modern-standby) or HSTI security requirements, and have no externally accessible ports that allow DMA access.

Device Encryption encrypts the data on a device immediately, but doesn't enable protection until the key is safely backed up to the user's Microsoft account. The encrypted device is left in a *clear key* state, where the encryption key is stored in plain text on the volume to allow free access to the data. Even though the data is encrypted, the device is completely unprotected in this state. In this *clear key* state, `manage-bde.exe` will show data as encrypted, but **Protection Off**, and no protectors yet added. Device encription-capable devices are in this state if no Microsoft account user signs in as an administrator of the device. Connecting to a Microsoft account and the internet causes the recovery key to back up, protector to be added (using the device's TPM), and protection to be enabled.

Difference between BitLocker and Device Encryption (DE):

- Device Encryption turn BitLocker on automatically on Device Encryption-qualifying devices, with the recovery key automatically backed up to the user's Microsoft account
- Device Encryption adds a Device Encryption setting in the Settings app

Device Encryption facts:

- Device Encryption enables BitLocker automatically once a Microsoft Account is signed in to the device and the recovery key gets successfully backed up to the user's account
  - On Windows Home edition, Device Encryption enables BitLocker with limited management capabilities (via the BitLocker Control Panel applet only)
  - On other Windows versions where *full* BitLocker is present, Device Encryption's effect is to turn BitLocker on automatically instead of waiting for manual activation

- If a device uses only local accounts, then it remains unprotected even though the data is encrypted
- Device Encryption has a UI in the Settings app to turn it on/off
- If Device Encryption is turned off, it will no longer automatically enable itself in the future. The user must enable it manually in Settings
- If a device doesn't initially qualify for Device Encryption, but then a change is made that causes the device to qualify (for example, turn Secure Boot on), Device Encryption will enable BitLocker automatically as soon as it detects it (if Device Encryption wasn't previously turned off)
- Device Encryption is enabled as soon as the device completes OOBE, but the work to encrypt all existing data waits for both AC power and idle time to start the actual encryption, therefore full protection may not be complete immediately. In most cases, encryption takes only minutes to complete

- The Settings UI will not show Device Encryption enabled until encryption is complete
- manage-bde.exe is available and has all capabilities on all versions of Windows
- Device Encryption encrypts only fixed drives, will not encrypt external/USB drives

You can check whether a device meets requirements for Device Encryption in the System Information app (msinfo32.exe). (see below for more)
