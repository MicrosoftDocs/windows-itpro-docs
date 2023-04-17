---
title: Overview of BitLocker Device Encryption in Windows
description: This article provides an overview of how BitLocker Device Encryption can help protect data on devices running Windows.
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.author: frankroj
manager: aaroncz
ms.collection: 
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 11/08/2022
ms.custom: bitlocker
ms.technology: itpro-security
---

# Overview of BitLocker Device Encryption in Windows

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

This article explains how BitLocker Device Encryption can help protect data on devices running Windows. See [BitLocker](bitlocker-overview.md) for a general overview and list of articles.

When users travel, their organization's confidential data goes with them. Wherever confidential data is stored, it must be protected against unauthorized access. Windows has a long history of providing at-rest data-protection solutions that guard against nefarious attackers, beginning with the Encrypting File System in the Windows 2000 operating system. More recently, BitLocker has provided encryption for full drives and portable drives. Windows consistently improves data protection by improving existing options and providing new strategies.

## Data Protection in Windows 11, Windows 10, and Windows 7

The below table lists specific data-protection concerns and how they're addressed in Windows 11, Windows 10, and Windows 7.


| Windows 7 | Windows 11 and Windows 10 |
|---|---|
| When BitLocker is used with a PIN to protect startup, PCs such as kiosks can't be restarted remotely. | Modern Windows devices are increasingly protected with BitLocker Device Encryption out of the box and support SSO to seamlessly protect the BitLocker encryption keys from cold boot attacks.<br><br>Network Unlock allows PCs to start automatically when connected to the internal network. |
| When BitLocker is enabled, the provisioning process can take several hours. | BitLocker pre-provisioning, encrypting hard drives, and Used Space Only encryption allow administrators to enable BitLocker quickly on new computers. |
| There's no support for using BitLocker with self-encrypting drives (SEDs). | BitLocker supports offloading encryption to encrypted hard drives. |
| Administrators have to use separate tools to manage encrypted hard drives. | BitLocker supports encrypted hard drives with onboard encryption hardware built in, which allows administrators to use the familiar BitLocker administrative tools to manage them. |
| Encrypting a new flash drive can take more than 20 minutes. | Used Space Only encryption in BitLocker To Go allows users to encrypt removable data drives in seconds. |
| BitLocker could require users to enter a recovery key when system configuration changes occur. | BitLocker requires the user to enter a recovery key only when disk corruption occurs or when the PIN or password is lost. |
| Users need to enter a PIN to start the PC, and then their password to sign in to Windows. | Modern Windows devices are increasingly protected with BitLocker Device Encryption out of the box and support SSO to help protect the BitLocker encryption keys from cold boot attacks. |

## Prepare for drive and file encryption

The best type of security measures is transparent to the user during implementation and use. Every time there's a possible delay or difficulty because of a security feature, there's a strong likelihood that users will try to bypass security. This situation is especially true for data protection, and that's a scenario that organizations need to avoid. Whether planning to encrypt entire volumes, removable devices, or individual files, Windows 11 and Windows 10 meet these needs by providing streamlined, usable solutions. In fact, several steps can be taken in advance to prepare for data encryption and make the deployment quick and smooth.

### TPM pre-provisioning

In Windows 7, preparing the TPM offered a few challenges:

- Turning on the TPM required going into the BIOS or UEFI firmware of the device. Turning on the TPM at the device requires someone to either physically go into the BIOS or UEFI firmware settings of the device to turn on the TPM, or to install a driver in Windows to turn on the TPM from within Windows.
- When the TPM is enabled, it may require one or more restarts.

This made preparing the TPM in Windows 7 problematic. If IT staff are provisioning new PCs, they can handle the required steps for preparing a TPM. However, if BitLocker needed to be enabled on devices that are already in users' hands, those users would probably struggle with the technical challenges. The user would then either call to IT for support or leave BitLocker disabled.

Microsoft includes instrumentation in Windows 11 and Windows 10 that enable the operating system to fully manage the TPM. There's no need to go into the BIOS, and all scenarios that required a restart have been eliminated.

## Deploy hard drive encryption

BitLocker is capable of encrypting entire hard drives, including both system and data drives. BitLocker pre-provisioning can drastically reduce the time required to provision new PCs with BitLocker enabled. With Windows 11 and Windows 10, administrators can turn on BitLocker and the TPM from within the Windows Pre-installation Environment before they install Windows or as part of an automated deployment task sequence without any user interaction. Combined with Used Disk Space Only encryption and a mostly empty drive (because Windows isn't yet installed), it takes only a few seconds to enable BitLocker.

With earlier versions of Windows, administrators had to enable BitLocker after Windows had been installed. Although this process could be automated, BitLocker would need to encrypt the entire drive, a process that could take anywhere from several hours to more than a day depending on drive size and performance, which delayed deployment. Microsoft has improved this process through multiple features in Windows 11 and Windows 10.

## BitLocker Device Encryption

Beginning in Windows 8.1, Windows automatically enables BitLocker Device Encryption on devices that support Modern Standby. With Windows 11 and Windows 10, Microsoft offers BitLocker Device Encryption support on a much broader range of devices, including those devices that are Modern Standby, and devices that run Home edition of Windows 10 or Windows 11.

Microsoft expects that most devices in the future will pass the requirements for BitLocker Device Encryption that will make BitLocker Device Encryption pervasive across modern Windows devices. BitLocker Device Encryption further protects the system by transparently implementing device-wide data encryption.

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

Administrators can manage domain-joined devices that have BitLocker Device Encryption enabled through Microsoft BitLocker Administration and Monitoring (MBAM). In this case, BitLocker Device Encryption automatically makes additional BitLocker options available. No conversion or encryption is required, and MBAM can manage the full BitLocker policy set if any configuration changes are required.

> [!NOTE]
> BitLocker Device Encryption uses the XTS-AES 128-bit encryption method. If a different encryption method and/or cipher strength is needed but the device is already encrypted, it must first be decrypted before the new encryption method and/or cipher strength can be applied. After the device has been decrypted, different BitLocker settings can be applied.

## Used Disk Space Only encryption

BitLocker in earlier Windows versions could take a long time to encrypt a drive because it encrypted every byte on the volume including areas that didn't have data. Encrypting every byte on the volume including areas that didn't have data is known as full disk encryption. Full disk encryption is still the most secure way to encrypt a drive, especially if a drive has previously contained confidential data that has since been moved or deleted. If a drive previously had confidential data that has been moved or deleted, traces of the confidential data could remain on portions of the drive marked as unused.

To reduce encryption time, BitLocker in Windows 11 and Windows 10 let users choose to encrypt just the areas of the disk that contain data. Areas of the disk that don't contain data and are empty won't be encrypted. Any new data is encrypted as it's created. Depending on the amount of data on the drive, this option can reduce the initial encryption time by more than 99 percent.

Exercise caution when encrypting only used space on an existing volume on which confidential data may have already been stored in an unencrypted state. When using used space encryption, sectors where previously unencrypted data are stored can be recovered through disk-recovery tools until they're overwritten by new encrypted data. In contrast, encrypting only used space on a brand-new volume can significantly decrease deployment time without the security risk because all new data will be encrypted as it's written to the disk.

## Encrypted hard drive support

SEDs have been available for years, but Microsoft couldn't support their use with some earlier versions of Windows because the drives lacked important key management features. Microsoft worked with storage vendors to improve the hardware capabilities, and now BitLocker supports the next generation of SEDs, which are called encrypted hard drives.

Encrypted hard drives provide onboard cryptographic capabilities to encrypt data on drives. This feature improves both drive and system performance by offloading cryptographic calculations from the PC's processor to the drive itself. Data is rapidly encrypted by the drive by using dedicated, purpose-built hardware. If planning to use whole-drive encryption with Windows 11 or Windows 10, Microsoft recommends researching hard drive manufacturers and models to determine whether any of their encrypted hard drives meet the security and budget requirements.

For more information about encrypted hard drives, see [Encrypted hard drive](../encrypted-hard-drive.md).

## Preboot information protection

An effective implementation of information protection, like most security controls, considers usability and security. Users typically prefer a simple security experience. In fact, the more transparent a security solution becomes, the more likely users are to conform to it.

It's crucial that organizations protect information on their PCs regardless of the state of the computer or the intent of users. This protection shouldn't be cumbersome to users. One undesirable and previously commonplace situation is when the user is prompted for input during preboot, and then again during Windows sign-in. Challenging users for input more than once should be avoided.

Windows 11 and Windows 10 can enable a true SSO experience from the preboot environment on modern devices and in some cases even on older devices when robust information protection configurations are in place. The TPM in isolation is able to securely protect the BitLocker encryption key while it is at rest, and it can securely unlock the operating system drive. When the key is in use and thus in memory, a combination of hardware and Windows capabilities can secure the key and prevent unauthorized access through cold-boot attacks. Although other countermeasures like PIN-based unlock are available, they aren't as user-friendly; depending on the devices' configuration they may not offer additional security when it comes to key protection. For more information, see [BitLocker Countermeasures](bitlocker-countermeasures.md).

## Manage passwords and PINs

When BitLocker is enabled on a system drive and the PC has a TPM, users can be required to type a PIN before BitLocker will unlock the drive. Such a PIN requirement can prevent an attacker who has physical access to a PC from even getting to the Windows sign-in, which makes it almost impossible for the attacker to access or modify user data and system files.

Requiring a PIN at startup is a useful security feature because it acts as a second authentication factor. However, this configuration comes with some costs. One of the most significant costs is the need to change the PIN regularly. In enterprises that used BitLocker with Windows 7 and the Windows Vista operating system, users had to contact systems administrators to update their BitLocker PIN or password. This requirement not only increased management costs but made users less willing to change their BitLocker PIN or password regularly.

Windows 11 and Windows 10 users can update their BitLocker PINs and passwords themselves, without administrator credentials. Not only will this feature reduce support costs, but it could improve security, too, because it encourages users to change their PINs and passwords more often. In addition, Modern Standby devices don't require a PIN for startup: They're designed to start infrequently and have other mitigations in place that further reduce the attack surface of the system.

For more information about how startup security works and the countermeasures that Windows 11 and Windows 10 provide, see [Protect BitLocker from pre-boot attacks](./bitlocker-countermeasures.md).

## Configure Network Unlock

Some organizations have location specific data security requirements. Location specific data security requirements are most common in environments where high-value data is stored on PCs. The network environment may provide crucial data protection and enforce mandatory authentication. Therefore, policy states that those PCs shouldn't leave the building or be disconnected from the corporate network. Safeguards like physical security locks and geofencing may help enforce this policy as reactive controls. Beyond these safeguards, a proactive security control that grants data access only when the PC is connected to the corporate network is necessary.

Network Unlock enables BitLocker-protected PCs to start automatically when connected to a wired corporate network on which Windows Deployment Services runs. Anytime the PC isn't connected to the corporate network, a user must type a PIN to unlock the drive (if PIN-based unlock is enabled).
Network Unlock requires the following infrastructure:

- Client PCs that have Unified Extensible Firmware Interface (UEFI) firmware version 2.3.1 or later, which supports Dynamic Host Configuration Protocol (DHCP)

- A server running at least Windows Server 2012 with the Windows deployment services (WDS) role

- A server with the DHCP server role installed

For more information about how to configure Network unlock feature, see [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md).

## Microsoft BitLocker administration and monitoring

Part of the Microsoft Desktop Optimization Pack, Microsoft BitLocker Administration and Monitoring (MBAM) makes it easier to manage and support BitLocker and BitLocker To Go. MBAM 2.5 with Service Pack 1, the latest version, has the following key features:

- Enables administrators to automate the process of encrypting volumes on client computers across the enterprise.

- Enables security officers to quickly determine the compliance state of individual computers or even of the enterprise itself.

- Provides centralized reporting and hardware management with Microsoft Configuration Manager.

- Reduces the workload on the help desk to assist end users with BitLocker recovery requests.

- Enables end users to recover encrypted devices independently by using the Self-Service Portal.

- Enables security officers to easily audit access to recovery key information.

- Empowers Windows Enterprise users to continue working anywhere with the assurance that their corporate data is protected.

- Enforces the BitLocker encryption policy options that are set for the enterprise.

- Integrates with existing management tools, such as Microsoft Configuration Manager.

- Offers an IT-customizable recovery user experience.

- Supports Windows 11 and Windows 10.

> [!IMPORTANT]
> Enterprises could use MBAM to manage client computers with BitLocker that are domain-joined on-premises until mainstream support ended in July 2019, or they could receive extended support until April 2026.

Going forward, the functionality of MBAM will be incorporated into Configuration Manager. For more information, see [Plan for BitLocker management](/mem/configmgr/protect/plan-design/bitlocker-management).

Enterprises not using Configuration Manager can use the built-in features of Azure AD and Microsoft Intune for administration and monitoring. For more information, see [Monitor device encryption with Intune](/mem/intune/protect/encryption-monitor).
