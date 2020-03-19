---
title: Overview of BitLocker in Windows 10
description: This topic provides an overview of how BitLocker can help protect data on devices running Windows 10.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
ms.reviewer: 
---

# Overview of BitLocker in Windows 10

**Applies to**
-   Windows 10

This topic explains how BitLocker can help protect data on devices running Windows 10. 
For a general overview and list of topics about BitLocker, see [BitLocker and Device Encryption overview](DataEncryptionToolsOverview.md).

When users travel, their organization’s confidential data goes with them. Wherever confidential data is stored, it must be protected against unauthorized access. Windows has a long history of providing at-rest data-protection solutions that guard against nefarious attackers, beginning with the Encrypting File System in the Windows 2000 operating system. More recently, BitLocker has provided encryption for full drives and portable drives. Windows consistently improves data protection by improving existing options and by providing new strategies. For more information about what countermeasures BitLocker provides, see [BitLocker Countermeasures](bitlocker-countermeasures.md)

Table 2 lists specific data-protection concerns and how they are addressed in Windows 10 and Windows 7.

**Table 2. Data Protection in Windows 10 and Windows 7**

| Windows 7 | Windows 10 |
|---|---|
| When BitLocker is used with a PIN to protect startup, PCs such as kiosks cannot be restarted remotely. | Modern Windows devices are increasingly protected with BitLocker out of the box and support SSO to seamlessly protect the BitLocker encryption keys from cold boot attacks.<br><br>Network Unlock allows PCs to start automatically when connected to the internal network. |
| When BitLocker is enabled, the provisioning process can take several hours. | BitLocker pre-provisioning, encrypting hard drives, and Used Space Only encryption allow administrators to enable BitLocker quickly on new computers. |
| There is no support for using BitLocker with self-encrypting drives (SEDs). | BitLocker supports offloading encryption to encrypted hard drives. |
| Administrators have to use separate tools to manage encrypted hard drives. | BitLocker supports encrypted hard drives with onboard encryption hardware built in, which allows administrators to use the familiar BitLocker administrative tools to manage them. |
| Encrypting a new flash drive can take more than 20 minutes. | Used Space Only encryption in BitLocker To Go allows users to encrypt removable data drives in seconds. |
| BitLocker could require users to enter a recovery key when system configuration changes occur. | BitLocker requires the user to enter a recovery key only when disk corruption occurs or when he or she loses the PIN or password. |
| Users need to enter a PIN to start the PC, and then their password to sign in to Windows. | Modern Windows devices are increasingly protected with BitLocker out of the box and support SSO to help protect the BitLocker encryption keys from cold boot attacks. | 


BitLocker is a data protection feature, that is integrated into the Windows 10 editions Pro, Enterprise and Education. BitLocker offers encryption for three different types of data drives:

1. For a system drive
1. For an internal, but non-system drive
1. For a removable storage device (BitLocker To Go)

## Prepare for drive and file encryption

The best type of security measures are transparent to the user during implementation and use. Every time there is a possible delay or difficulty because of a security feature, there is strong likelihood that users will try to bypass security. This situation is especially true for data protection, and that’s a scenario that organizations need to avoid.
Whether you’re planning to encrypt entire volumes, removable devices, or individual files, Windows 10 meets your needs by providing streamlined, usable solutions. In fact, you can take several steps in advance to prepare for data encryption and make the deployment quick and smooth.

### TPM pre-provisioning

In Windows 7, preparing the TPM for use offered a couple of challenges:

* You can turn on the TPM in the BIOS, which requires someone to either go into the BIOS settings to turn it on or to install a driver to turn it on from within Windows.
* When you enable the TPM, it may require one or more restarts.

Basically, it was a big hassle. If IT staff were provisioning new PCs, they could handle all of this, but if you wanted to add BitLocker to devices that were already in users’ hands, those users would have struggled with the technical challenges and would either call IT for support or simply leave BitLocker disabled.

Microsoft includes instrumentation in Windows 10 that enables the operating system to fully manage the TPM. There is no need to go into the BIOS, and all scenarios that required a restart have been eliminated.

# <a href="" id=“internal-drive-encryption”></a>Internal drive encryption
BitLocker is capable of encrypting entire hard drives, including both system and data drives. BitLocker pre-provisioning can drastically reduce the time required to provision new PCs with BitLocker enabled. With Windows 10, administrators can turn on BitLocker and the TPM from within the Windows Preinstallation Environment before they install Windows or as part of an automated deployment task sequence without any user interaction. Combined with Used Disk Space Only encryption and a mostly empty drive (because Windows is not yet installed), it takes only a few seconds to enable BitLocker.
With earlier versions of Windows, administrators had to enable BitLocker after Windows had been installed. Although this process could be automated, BitLocker would need to encrypt the entire drive, a process that could take anywhere from several hours to more than a day depending on drive size and performance, which significantly delayed deployment. Microsoft has improved this process through multiple features in Windows 10.

## Used Disk Space Only encryption

BitLocker in earlier Windows versions could take a long time to encrypt a drive, because it encrypted every byte on the volume (including parts that did not have data). That is still the most secure way to encrypt a drive, especially if a drive has previously contained confidential data that has since been moved or deleted. In that case, traces of the confidential data could remain on portions of the drive marked as unused.
But why encrypt a new drive when you can simply encrypt the data as it is being written? To reduce encryption time, BitLocker in Windows 10 lets users choose to encrypt their data while being written. Depending on the amount of data on the drive, this option can reduce encryption time by more than 99 percent.

Exercise caution when encrypting only used space on an existing volume on which confidential data may have already been stored in an unencrypted state, however, because those sectors can be recovered through disk-recovery tools until they are overwritten by new encrypted data. In contrast, encrypting only used space on a brand-new volume can significantly decrease deployment time without the security risk because all new data will be encrypted as it is written to the disk.

## Special features of the system drive encryption
When it comes to system drive encryption, BitLocker supports three different ways of unlocking the encrypted disk:

1. With a Trusted Platform Module (TPM)
1. With a password or PIN (A PIN does only contain numbers, while a password can contain letters and special characters as well)
1. With a removable storage device


### Preboot information protection

An effective implementation of information protection, like most security controls, considers usability as well as security. Users typically prefer a simple security experience. In fact, the more transparent a security solution becomes, the more likely users are to conform to it.
It is crucial that organizations protect information on their PCs regardless of the state of the computer or the intent of users. This protection should not be cumbersome to users. One undesirable and previously commonplace situation is when the user is prompted for input during preboot, and then again during Windows logon. Challenging users for input more than once should be avoided.
Windows 10 can enable a true SSO experience from the preboot environment on modern devices and in some cases even on older devices when robust information protection configurations are in place. The TPM in isolation is able to securely protect the BitLocker encryption key while it is at rest, and it can securely unlock the operating system drive. When the key is in use and thus in memory, a combination of hardware and Windows capabilities can secure the key and prevent unauthorized access through cold-boot attacks. Although other countermeasures like PIN-based unlock are available, they are not as user-friendly; depending on the devices’ configuration they may not offer additional security when it comes to key protection. For more information, see [BitLocker Countermeasures](bitlocker-countermeasures.md).

### Manage passwords and PINs

When BitLocker is enabled on a system drive and the PC has a TPM, you can choose to require that users type a PIN before BitLocker will unlock the drive instead or in addition to the unlock via TPM. Such a PIN requirement can prevent an attacker who has physical access to a PC from even getting to the Windows logon, which makes it virtually impossible for the attacker to access or modify user data and system files.

Requiring a PIN at startup is a useful security feature because it acts as a second authentication factor (a second “something you know”). This configuration comes with some costs, however. One of the most significant is the need to change the PIN regularly. In enterprises that used BitLocker with Windows 7 and the Windows Vista operating system, users had to contact systems administrators to update their BitLocker PIN or password. This requirement not only increased management costs but made users less willing to change their BitLocker PIN or password on a regular basis.
Windows 10 users can update their BitLocker PINs and passwords themselves, without administrator credentials. Not only will this feature reduce support costs, but it could improve security, too, because it encourages users to change their PINs and passwords more often. In addition, Modern Standby devices do not require a PIN for startup: They are designed to start infrequently and have other mitigations in place that further reduce the attack surface of the system.
For more information about how startup security works and the countermeasures that Windows 10 provides, see [Protect BitLocker from pre-boot attacks](protect-bitlocker-from-pre-boot-attacks.md).

### Configure Network Unlock

Some organizations have location-specific data security requirements. This is most common in environments where high-value data is stored on PCs. The network environment may provide crucial data protection and enforce mandatory authentication; therefore, policy states that those PCs should not leave the building or be disconnected from the corporate network. Safeguards like physical security locks and geofencing may help enforce this policy as reactive controls. Beyond these, a proactive security control that grants data access only when the PC is connected to the corporate network is necessary.

Network Unlock enables BitLocker-protected PCs to start automatically when connected to a wired corporate network on which Windows Deployment Services runs. Anytime the PC is not connected to the corporate network, a user must type a PIN to unlock the drive (if PIN-based unlock is enabled).
Network Unlock requires the following infrastructure:

* Client PCs that have Unified Extensible Firmware Interface (UEFI) firmware version 2.3.1 or later, which supports Dynamic Host Configuration Protocol (DHCP)
* A server running at least Windows Server 2012 with the Windows Deployment Services role
* A server with the DHCP server role installed

For more information about how to configure Network Unlock, see [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md).


## Special features of the non-system drive encryption
When it comes to non-system drive encryption, BitLocker supports only two ways of unlocking the encrypted disk:

1. With a password
1. With a removable storage device

Unlocking the disk with a key stored in the TPM is not supported.

# Removable storage encryption (BitLocker To Go)
In addition to the encryption of a internal drive, BitLocker does also supports the encryption of a removable storage device like a USB-Drive. This feature is called BitLocker To Go.

# Support of other technologies
This section describes if and how BitLocker supports other technologies.

## Encrypted hard drive support

SEDs have been available for years, but Microsoft couldn’t support their use with some earlier versions of Windows because the drives lacked important key management features. Microsoft worked with storage vendors to improve the hardware capabilities, and now BitLocker supports the next generation of SEDs, which are called encrypted hard drives.
Encrypted hard drives provide onboard cryptographic capabilities to encrypt data on drives, which improves both drive and system performance by offloading cryptographic calculations from the PC’s processor to the drive itself and rapidly encrypting the drive by using dedicated, purpose-built hardware. If you plan to use whole-drive encryption with Windows 10, Microsoft recommends that you investigate hard drive manufacturers and models to determine whether any of their encrypted hard drives meet your security and budget requirements.
For more information about encrypted hard drives, see [Encrypted Hard Drive](../encrypted-hard-drive.md).

# Microsoft BitLocker Administration and Monitoring

Part of the Microsoft Desktop Optimization Pack, MBAM makes it easier to manage and support BitLocker and BitLocker To Go. MBAM 2.5 with Service Pack 1, the latest version, has the following key features:

* Enables administrators to automate the process of encrypting volumes on client computers across the enterprise.
* Enables security officers to quickly determine the compliance state of individual computers or even of the enterprise itself.
* Provides centralized reporting and hardware management with Microsoft System Center Configuration Manager.
* Reduces the workload on the help desk to assist end users with BitLocker recovery requests.
* Enables end users to recover encrypted devices independently by using the Self-Service Portal.
* Enables security officers to easily audit access to recovery key information.
* Empowers Windows Enterprise users to continue working anywhere with the assurance that their corporate data is protected.
* Enforces the BitLocker encryption policy options that you set for your enterprise.
* Integrates with existing management tools, such as System Center Configuration Manager.
* Offers an IT-customizable recovery user experience.
* Supports Windows 10.

For more information about MBAM, including how to obtain it, see [Microsoft BitLocker Administration and Monitoring](https://technet.microsoft.com/windows/hh826072.aspx) on the MDOP TechCenter.
