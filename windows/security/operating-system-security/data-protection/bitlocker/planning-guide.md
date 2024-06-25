---
title: BitLocker planning guide
description: Learn how to plan for a BitLocker deployment in your organization.
ms.topic: concept-article
ms.date: 06/18/2024
---

# BitLocker planning guide

A BitLocker deployment strategy includes defining the appropriate policies and configuration requirements based on your organization's security requirements. This article helps collecting the information to assist with a BitLocker deployment.

## Audit the environment

To plan a BitLocker deployment, understand the current environment. Perform an informal audit to define the current policies, procedures, and hardware environment. Review the existing disk encryption software and the organization's security policies. If the organization isn't using disk encryption software, then these policies might not exist. If disk encryption software is in use, then the policies might need to change to use certain BitLocker features.

To help document the organization's current disk encryption security policies, answer the following questions:

| :ballot_box_with_check: | **Question** |
|--|--|
| :black_square_button: | *Are there policies to determine which devices must use BitLocker and which don't?* |
| :black_square_button: | *What policies exist to control recovery password and recovery key storage?* |
| :black_square_button: | *What are the policies for validating the identity of users who need to perform BitLocker recovery?* |
| :black_square_button: | *What policies exist to control who in the organization has access to recovery data?* |
| :black_square_button: | *What policies exist to control the decommission or retirement of devices?* |
| :black_square_button: | *What encryption algorithm strength is in place?* |

## Encryption keys and authentication

A trusted platform module (TPM) is a hardware component installed in many Windows devices by the manufacturers. It works with BitLocker to help protect user data and to make sure a device hasn't been tampered with while the system was offline.

BitLocker can lock the normal startup process until the user supplies a personal identification number (PIN), or inserts a removable USB device that contains a startup key. These extra security measures provide multifactor authentication. They also make sure that the computer doesn't start or resume from hibernation until the correct PIN or startup key is presented.

On devices that don't have a TPM, BitLocker can still be used to encrypt the Windows operating system volume. However, this implementation doesn't provide the pre-startup system integrity verification offered by BitLocker working with a TPM.

An effective implementation of information protection, like most security controls, considers usability and security. Users typically prefer a simple security experience. In fact, the more transparent a security solution becomes, the more likely users are to conform to it.

It's crucial that organizations protect information on their devices regardless of the state of the device or the intent of users. This protection shouldn't be cumbersome to users. One undesirable and previously commonplace situation is when the user is prompted for input during preboot, and then again during Windows sign-in. Challenging users for input more than once should be avoided.

The TPM is able to securely protect the BitLocker encryption key while it is at rest, and it can securely unlock the operating system drive. When the key is in use, and thus in memory, a combination of hardware and Windows capabilities can secure the key and prevent unauthorized access through cold-boot attacks. Although other countermeasures like PIN-based unlock are available, they aren't as user-friendly; depending on the devices' configuration they may not offer more security when it comes to key protection. For more information, see [BitLocker countermeasures](countermeasures.md).

### BitLocker key protectors

To protect the BitLocker encryption key, BitLocker can use different types of *protectors*. When enabling BitLocker, each protector receives a copy of the *Volume Master Key*, which is then encrypted by using its own mechanism.

| Key protector | Description |
|--|--|
| **Auto-unlock** | Used to automatically unlock volumes that don't host an operating system. BitLocker uses encrypted information stored in the registry and volume metadata to unlock any data volumes that use automatic unlocking. |
| **Password** and **Password for OS drive**| To unlock a drive, the user must supply a password. When used for OS drives, the user is prompted for a password in the preboot screen. This method doesn't offer any lockout logic, therefore it doesn't protect against brute force attacks. |
| **Startup key** | An encryption key that can be stored on removable media, with a file name format of `<protector_id>.bek`. The user is prompted for the USB flash drive that has the recovery key and/or startup key, and then reboot the device. |
| **Smart card certificate** | Used to unlock volumes that don't host an operating system. To unlock a drive, the user must use a smart card. |
| **TPM** | A hardware device used to help establish a secure root-of-trust, validating early boot components. The TPM protector can only be used with the OS drive. |
| **TPM + PIN** | A user-entered numeric or alphanumeric key protector that can only be used with OS volumes and in addition to the TPM.The TPM validates early boot components. The user must enter the correct PIN before the start-up process can continue, and before the drive can be unlocked. The TPM enters lockout if the incorrect PIN is entered repeatedly, to protect the PIN from brute force attacks. The number of repeated attempts that trigger a lockout is variable. |
| **TPM + Startup key** | The TPM successfully validates early boot components. The user must insert a USB drive containing the startup key before the OS can boot. |
| **TPM + Startup key + PIN** | The TPM successfully validates early boot components. The user must enter the correct PIN and insert a USB drive containing the startup key before the OS can boot. |
| **Recovery password** | A 48-digit number used to unlock a volume when it is in *recovery mode*. Numbers can often be typed on a regular keyboard. If the numbers on the normal keyboard aren't responding, the function keys (F1-F10) can be used to input the numbers. |
| **TPM + Network Key** | The TPM successfully validates early boot components, and a valid encrypted network key has been provided from a WDS server. This authentication method provides automatic unlock of OS volumes while maintaining multifactor authentication. This key protector can only be used with OS volumes. |
| **Recovery key** | An encryption key stored on removable media that can be used for recovering data encrypted on a BitLocker volume. The file name has a format of `<protector_id>.bek`. |
| **Data Recovery Agent** | Data recovery agents (DRAs) are accounts that are able to decrypt BitLocker-protected drives by using their certificates. Recovery of a BitLocker-protected drive can be accomplished by a data recovery agent that is configured with the proper certificate. |
| **Active Directory user or group** | A protector that is based on an Active Directory user or group security identified (SID). Data drives are automatically unlocked when such users attempt to access them. |

#### Support for devices without TPM

Determine whether computers that don't have a TPM 1.2 or higher versions in the environment will be supported. If you decide to support devices without TPM, a user must use a USB startup key or a password to boot the system. The startup key requires extra support processes similar to multifactor authentication.

#### What areas of the organization need a baseline level of data protection?

The TPM-only authentication method provides the most transparent user experience for organizations that need a baseline level of data protection to meet security policies. It has the lowest total cost of ownership. TPM-only might also be more appropriate for devices that are unattended or that must reboot unattended.

However, TPM-only authentication method doesn't offer a high level of data protection. This authentication method protects against attacks that modify early boot components. But, the level of protection can be affected by potential weaknesses in hardware or in the early boot components. BitLocker's multifactor authentication methods significantly increase the overall level of data protection.

> [!TIP]
> An advantage of TPM-only authentication is that a device can boot Windows without any user interaction. In case of lost or stolen device, there may be an advantage of this configuration: if the device is connected to the Internet, it can be remotely wiped with a device management solution like Microsoft Intune.

#### What areas of the organization need a more secure level of data protection?

If there are devices with highly sensitive data, then deploy BitLocker with multifactor authentication on those systems. Requiring the user to input a PIN significantly increases the level of protection for the system. BitLocker Network Unlock can also be used to allow these devices to automatically unlock when connected to a trusted wired network that can provide the Network Unlock key.

#### What multifactor authentication method does the organization prefer?

The protection differences provided by multifactor authentication methods can't be easily quantified. Consider each authentication method's impact on Helpdesk support, user education, user productivity, and any automated systems management processes.

## Manage passwords and PINs

When BitLocker is enabled on a system drive and the device has a TPM, users can be required to enter a PIN before BitLocker unlocks the drive. Such a PIN requirement can prevent an attacker who has physical access to a device from even getting to the Windows sign-in, which makes it almost impossible for the attacker to access or modify user data and system files.

Requiring a PIN at startup is a useful security feature because it acts as a second authentication factor. However, this configuration comes with some costs, especially if you require to change the PIN regularly.

In addition, Modern Standby devices don't require a PIN for startup: they're designed to start infrequently and have other mitigations in place that further reduce the attack surface of the system.

For more information about how startup security works and the countermeasures that Windows provides, see [Preboot authentication](countermeasures.md#preboot-authentication).

## TPM hardware configurations

In the deployment plan, identify what TPM-based hardware platforms are supported. Document the hardware models from an OEM(s) used by the organization so that their configurations can be tested and supported. TPM hardware requires special consideration during all aspects of planning and deployment.

### TPM 1.2 states and initialization

For TPM 1.2, there are multiple possible states. Windows automatically initializes the TPM, which brings it to an enabled, activated, and owned state. This state is the state that BitLocker requires before it can use the TPM.

### Endorsement keys

For a TPM to be usable by BitLocker, it must contain an endorsement key, which is an RSA key pair. The private half of the key pair is held inside the TPM and is never revealed or accessible outside the TPM. If the TPM doesn't have an endorsement key, BitLocker forces the TPM to generate one automatically as part of BitLocker setup.

An endorsement key can be created at various points in the TPM's lifecycle, but needs to be created only once for the lifetime of the TPM. If an endorsement key doesn't exist for the TPM, it must be created before you can take TPM ownership.

For more information about the TPM and the TCG, see the Trusted Computing Group: [Trusted Platform Module (TPM) Specifications][FWD-1].

## Non-TPM hardware configurations

Devices without a TPM can still be protected with drive encryption using a startup key.

Use the following questions to identify issues that might affect the deployment in a non-TPM configuration:

- Is there a budget for USB flash drives for each of these devices?
- Do existing non-TPM devices support USB drives at boot time?

Test the individual hardware platforms with the BitLocker system check option while enabling BitLocker. The system check makes sure that BitLocker can read the recovery information from a USB device and encryption keys correctly before it encrypts the volume.

## Disk configuration considerations

To function correctly, BitLocker requires a specific disk configuration. BitLocker requires two partitions that meet the following requirements:

- The operating system partition contains the operating system and its support files; it must be formatted with the NTFS file system
- The system partition (or boot partition) includes the files needed to load Windows after the BIOS or UEFI firmware has prepared the system hardware. BitLocker isn't enabled on this partition. For BitLocker to work, the system partition must not be encrypted, and must be on a different partition than the operating system. On UEFI platforms, the system partition must be formatted with the FAT 32-file system. On BIOS platforms, the system partition must be formatted with the NTFS file system. It should be at least 350 MB in size.

Windows setup automatically configures the disk drives of computers to support BitLocker encryption.

Windows Recovery Environment (Windows RE) is an extensible recovery platform that is based on Windows Pre-installation Environment (Windows PE). When the computer fails to start, Windows automatically transitions into this environment, and the Startup Repair tool in Windows RE automates the diagnosis and repair of an unbootable Windows installation. Windows RE also contains the drivers and tools that are needed to unlock a volume protected by BitLocker by providing a recovery key or recovery password. To use Windows RE with BitLocker, the Windows RE boot image must be on a volume that isn't protected by BitLocker.

Windows RE can also be used from boot media other than the local hard disk. If Windows RE isn't installed on the local hard disk of BitLocker-enabled computers, then different methods can be used to boot Windows RE. For example, Windows Deployment Services (WDS) or USB flash drive can be used for recovery.

## BitLocker provisioning

Administrators can enable BitLocker before to operating system deployment from the *Windows Pre-installation Environment* (WinPE). This step is done with a randomly generated clear key protector applied to the formatted volume. It encrypts the volume before running the Windows setup process. If the encryption uses the **Used Disk Space Only** option, then this step takes only a few seconds, and can be incorporated into existing deployment processes. Preprovisioning requires a TPM.

To check the BitLocker status of a particular volume, administrators can look at the drive status in the BitLocker Control Panel applet or Windows Explorer. The **Waiting For Activation** status means that the drive was preprovisioned for BitLocker, and there's only a clear protector used to encrypt the volume. In this case, the volume isn't protected, and needs to have a secure key added to the volume before the drive is considered fully protected. Administrators can use the Control Panel options, PowerShell cmdlets, the `manage-bde.exe` tool, or WMI APIs to add an appropriate key protector. The volume status then is updated.

When using the Control Panel options, administrators can choose to **Turn on BitLocker** and follow the steps in the wizard to add a protector, such as a PIN for an operating system volume (or a password if no TPM exists), or a password or smart card protector to a data volume. Then the drive security window is presented before changing the volume status.

## *Used Disk Space Only* encryption

The BitLocker Setup wizard provides administrators the ability to choose the *Used Disk Space Only* or *Full* encryption method when enabling BitLocker for a volume. Administrators can use BitLocker policy settings to enforce either Used Disk Space Only or Full disk encryption.

Launching the BitLocker Setup wizard prompts for the authentication method to be used (password and smart card are available for data volumes). Once the method is chosen and the recovery key is saved, the wizard asks to choose the drive encryption type. Select **Used Disk Space Only** or **Full** drive encryption.

With Used Disk Space Only, just the portion of the drive that contains data are encrypted. Unused space remains unencrypted. This behavior causes the encryption process to be faster, especially for new devices and data drives. When BitLocker is enabled with this method, as data is added to the drive, the portion of the drive used is encrypted. So, there's never unencrypted data stored on the drive.

With Full drive encryption, the entire drive is encrypted, whether data is stored on it or not. This option is useful for drives that have been repurposed, and might contain data remnants from their previous use.

> [!CAUTION]
> Exercise caution when encrypting only used space on an existing volume on which confidential data might have already been stored in an unencrypted state. When using used space encryption, sectors where previously unencrypted data are stored can be recovered through disk-recovery tools until they're overwritten by new encrypted data. In contrast, encrypting only used space on a brand-new volume can significantly decrease deployment time without the security risk because all new data will be encrypted as it's written to the disk.

## Encrypted hard drive support

Encrypted hard drives provide onboard cryptographic capabilities to encrypt data on drives. This feature improves both drive and system performance by offloading cryptographic calculations from the device's processor to the drive itself. Data is rapidly encrypted by the drive by using dedicated, purpose-built hardware. If planning to use whole-drive encryption with Windows, Microsoft recommends researching hard drive manufacturers and models to determine whether any of their encrypted hard drives meet the security and budget requirements.

For more information about encrypted hard drives, see [Encrypted hard drives](../encrypted-hard-drive.md).

## Microsoft Entra ID and Active Directory Domain Services considerations

BitLocker integrates with Microsoft Entra ID and Active Directory Domain Services (AD DS) to provide centralized key management. By default, no recovery information is backed up to Microsoft Entra ID or AD DS. Administrators can configure [policy setting](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered) for each drive type to enable backup of BitLocker recovery information.

The following recovery data is saved for each computer object:

- *Recovery password*: a 48-digit recovery password used to recover a BitLocker-protected volume. Users must enter this password to unlock a volume when BitLocker enters recovery mode
- *Key package*: with the key package and the recovery password, portions of a BitLocker-protected volume can be decrypted if the disk is severely damaged. Each key package works only with the volume it was created on, which is identified by the corresponding volume ID

## FIPS support for recovery password protector

Devices configured to operate in FIPS mode can create FIPS-compliant recovery password protectors, which use the *FIPS-140 NIST SP800-132* algorithm.

> [!NOTE]
> The United States Federal Information Processing Standard (FIPS) defines security and interoperability requirements for computer systems that are used by the U.S. Federal Government. The FIPS-140 standard defines approved cryptographic algorithms. The FIPS-140 standard also sets forth requirements for key generation and for key management. The National Institute of Standards and Technology (NIST) uses the Cryptographic Module Validation Program (CMVP) to determine whether a particular implementation of a cryptographic algorithm is compliant with the FIPS-140 standard. An implementation of a cryptographic algorithm is considered FIPS-140-compliant only if it has been submitted for and has passed NIST validation. An algorithm that has not been submitted cannot be considered FIPS-compliant even if the implementation produces identical data as a validated implementation of the same algorithm.

- FIPS-compliant recovery password protectors can be exported and stored in AD DS
- The BitLocker policy settings for recovery passwords work the same for all Windows versions that support BitLocker, whether in FIPS mode or not

## Network Unlock

Some organizations have location-specific data security requirements, especially in environments with high-value data. The network environment might provide crucial data protection and enforce mandatory authentication. Therefore, policy states that those devices shouldn't leave the building or be disconnected from the corporate network. Safeguards like physical security locks and geofencing might help enforce this policy as reactive controls. Beyond these safeguards, a proactive security control that grants data access only when the device is connected to the corporate network is necessary.

*Network Unlock* enables BitLocker-protected devices to start automatically when connected to a wired corporate network on which Windows Deployment Services runs. Anytime the device isn't connected to the corporate network, a user must enter a PIN to unlock the drive (if PIN-based unlock is enabled). Network Unlock requires the following infrastructure:

- Client devices that have Unified Extensible Firmware Interface (UEFI) firmware version 2.3.1 or later, which supports Dynamic Host Configuration Protocol (DHCP)
- A Windows Server running the Windows deployment services (WDS) role
- A DHCP server

For more information about how to configure Network unlock feature, see [Network Unlock](network-unlock.md).

## BitLocker recovery

Organizations should carefully plan a BitLocker recovery strategy as part of the overall BitLocker implementation plan. There are different options when implementing a BitLocker recovery model, which are described in [BitLocker recovery overview](recovery-overview.md).

## Monitor BitLocker

Organizations can use Microsoft Intune or Configuration Manager to monitor device encryption across multiple devices. For more information, see [Monitor device encryption with Intune][INT-1] and [View BitLocker reports in Configuration Manager][MCM-1].

## Next steps

> [!div class="nextstepaction"]
> Learn how to plan a BitLocker recovery strategy for your organization:
>
>
> [BitLocker recovery overview >](recovery-overview.md)

> [!div class="nextstepaction"]
> Learn about the available options to configure BitLocker and how to configure them via Configuration Service Providers (CSP) or group policy (GPO):
>
>
> [Configure BitLocker >](configure.md)

<!--links-->

[FWD-1]: https://go.microsoft.com/fwlink/p/?linkid=69584
[INT-1]: /mem/intune/protect/encryption-monitor
[MCM-1]: /mem/configmgr/protect/deploy-use/bitlocker/view-reports
