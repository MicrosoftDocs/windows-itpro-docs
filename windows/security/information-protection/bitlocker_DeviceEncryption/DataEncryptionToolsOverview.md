---
title: BitLocker (Windows 10)
description: This topic provides a high-level overview of BitLocker, including a list of system requirements, practical applications, and deprecated features.
ms.assetid: 40526fcc-3e0d-4d75-90e0-c7d0615f33b2
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 01/26/2018
---

# BitLocker and Device Encryption Overview

**Applies to**
-   Windows 10

Microsoft provides two major tools for encrypting data on windows devices:

1. BitLocker
1. Device Encryption

While device encryption is primarily intended for consumers, BitLocker is aimed at professional users and companies.

This topic provides a high-level overview of the security features BitLocker and the Device encryption, including a list of system requirements, practical applications, and deprecated features.

## <a href="" id="introduction"></a>Introduction
Technical devices nowadys store and process more and more sensitve data. Therefore it becomes necessary to find a way protecting this information from being acceessed by unauthorized person. 
Since mobile devices nowadays store more and more sensitive data, it becomes necessary to protect this information from being accessed by unauthorized persons. 
It should be kept in mind that unwanted data access can occur not only through targeted attacks, but also through threat vectors such as the intentional transmission of data storage devices.

Since it is almost impossible to prevent third parties from finding a deliberate or accidental way to access stored data, it makes sense to establish software-based protection that makes it impossible to interpret the data even after it has been viewed.
This goal can be achieved by using encryption. Data is modified by mathematical algorithms in such a way that it can only be restored by an additional information, a so-called key. If third parties gain access to stored information and do not have the correct key, it is almost impossible for them to draw conclusions about the original data from the data received. Authorized persons, on the other hand, who have the required key, can access the original information.

So encryption does not protect data or hardware devices from being accessed in general, but it makes data uninterpretable for unauthorized persons.

The features BitLocker and Device encryption are able to encrypt stored data, so it is protected from unwanted access.

## <a href="" id="bkmk-over"></a>BitLocker overview
BitLocker is a data protection feature, that is integrated into the Windows 10 editions Pro, Enterprise and Education. BitLocker offers encryption for three different types of data drives:

1. For a system drive
1. For an internal, but non-system drive
1. For a removable storage device (BitLocker To Go)

The requirements and functionality of BitLocker vary greatly depending on the type of data drive, which is going to be encrypted. The following pages describe this information in more detail.

### <a href="" id="bkmk-app"></a>BitLocker Management
There are two additional tools in the Remote Server Administration Tools, which you can use to manage BitLocker.

- BitLocker Recovery Password Viewer. The BitLocker Recovery Password Viewer enables you to locate and view BitLocker Drive Encryption recovery passwords that have been backed up to Active Directory Domain Services (AD DS). You can use this tool to help recover data that is stored on a drive that has been encrypted by using BitLocker. The BitLocker Recovery Password Viewer tool is an extension for the Active Directory Users and Computers Microsoft Management Console (MMC) snap-in.
    By using this tool, you can examine a computer object's **Properties** dialog box to view the corresponding BitLocker recovery passwords. Additionally, you can right-click a domain container and then search for a BitLocker recovery password across all the domains in the Active Directory forest. To view recovery passwords, you must be a domain administrator, or you must have been delegated permissions by a domain administrator.

- BitLocker Drive Encryption Tools. BitLocker Drive Encryption Tools include the command-line tools, manage-bde and repair-bde, and the BitLocker cmdlets for Windows PowerShell. Both manage-bde and the BitLocker cmdlets can be used to perform any task that can be accomplished through the 
BitLocker control panel, and they are appropriate to use for automated deployments and other scripting scenarios. Repair-bde is provided for disaster recovery scenarios in which a BitLocker protected drive cannot be unlocked normally or by using the recovery console.

### <a href="" id="bkmk-new"></a>New and changed functionality in BitLocker

To find out what's new in BitLocker for Windows 10, such as support for the XTS-AES encryption algorithm, see the [BitLocker](https://technet.microsoft.com/itpro/windows/whats-new/whats-new-windows-10-version-1507-and-1511#bitlocker) section in "What's new in Windows 10."

### <a href="" id=“system-requirements-BitLocker”></a>System requirements BitLocker

BitLocker has the following hardware requirements:

For BitLocker to use the system integrity check provided by a Trusted Platform Module (TPM) in case of the system drive encryption, the computer must have TPM 1.2 or later. If your computer does not have a TPM, enabling BitLocker for a system disk requires that you save a startup key on a removable device, such as a USB flash drive.

A computer with a TPM must also have a Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware. The BIOS or UEFI firmware establishes a chain of trust for the pre-operating system startup, and it must include support for TCG-specified Static Root of Trust Measurement. A computer without a TPM does not require TCG-compliant firmware.

The system BIOS or UEFI firmware (for TPM and non-TPM computers) must support the USB mass storage device class, including reading small files on a USB flash drive in the pre-operating system environment.

> [!IMPORTANT]
> From Windows 7, you can encrypt an OS drive without a TPM and USB flash drive, but with a password. For this procedure, see [Tip of the Day: Bitlocker without TPM or USB](https://blogs.technet.microsoft.com/tip_of_the_day/2014/01/22/tip-of-the-day-bitlocker-without-tpm-or-usb/).

> [!NOTE]
> TPM 2.0 is not supported in Legacy and CSM Modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and Compatibility Support Module (CSM) options must be disabled. For added security Enable the Secure Boot feature.

> Installed operating system on hardware in legacy mode will stop the OS from booting when the BIOS mode is changed to UEFI. Use the tool [MBR2GPT](https://docs.microsoft.com/windows/deployment/mbr-to-gpt) before changing the BIOS mode which will prepare the OS and the disk to support UEFI.

The hard disk must be partitioned with at least two drives:

-   The operating system drive (or boot drive) contains the operating system and its support files. It must be formatted with the NTFS file system.
-   The system drive contains the files that are needed to load Windows after the firmware has prepared the system hardware. BitLocker is not enabled on this drive. For BitLocker to work, the system drive must not be encrypted, must differ from the operating system drive, and must be formatted with the FAT32 file system on computers that use UEFI-based firmware or with the NTFS file system on computers that use BIOS firmware. We recommend that system drive be approximately 350 MB in size. After BitLocker is turned on it should have approximately 250 MB of free space.

When installed on a new computer, Windows will automatically create the partitions that are required for BitLocker.

When installing the BitLocker optional component on a server you will also need to install the Enhanced Storage feature, which is used to support hardware encrypted drives.

## <a href="" id="de-over"></a>Device Encryption overview
Device Encryption is a data protection feature, that is integrated into all Windows editions since Windows version 8.1. The device encryption does only support the encryption of a system drive. The encrpytion of the Device Encryption is identical to the encryption performed with "new encryption mode" of BitLocker.

Further information about the functionality and requirements of the Device Encryption will be given on the next pages.

### System requirements Device Encryption
* The device contains a TPM (Trusted Platform Module), either TPM 1.2 or TPM 2.0.
* UEFI Secure Boot is enabled. See [Secure boot and BitLocker Device Encryption overview](https://docs.microsoft.com/windows-hardware/drivers/bringup/secure-boot-and-device-encryption-overview) for more information.
* Platform Secure Boot is enabled
* Direct memory access (DMA) protection is enabled
* The user has to be logged in with a Microsoft account or a Azure Active Directory account

## <a href="" id="bkmk-over"></a>Comparison between BitLocker and Device encryption
The following table compares the features and the requirements of BitLocker to those of the Device encryption.

| | BitLocker | Device Encryption |
|---|---| --- |
| **Supported Windowsn 10 editions** | Pro, Education, Enterprise | all |
| **Encryption of system drive** | available | available |
| **Encryption of non-system drive** | available | not available |
| **Encryption of remvoable storage devices** | available | not available |
| **System integrity check with TPM** | possible | possible |
| **Storage of the recovery key** | <ol><li>In a Microsoft account</li><li>In an Azure Active Directory account</li><li>In the Active Directory Domain Services (AD DS)</li><li>Print it on a sheet of paper</li><li>Store it in a file</li><li>Store it on a removable drive</li></ol> |  <ol><li>In a Microsoft account</li><li>In an Azure Active Directory account</li></ol> |
| **Pre-Boot authentication** | PIN, enhanced PIN or removable storage device. Password only if TPM is disabled. | not possible | 

## In this section

| Topic | Description |
| - | - |
| [Overview of BitLocker in Windows 10](bitlocker-overview-windows-10.md) | This topic for the IT professional provides an overview of the ways that BitLocker can help protect data on devices running Windows 10.  |
| [Overview of Device Encryption in Windows 10](device-encryption-overview-windows-10.md) | This topic for the IT professional provides an overview of the ways that Device Encryption can help protect data on devices running Windows 10.  |
| [BitLocker frequently asked questions (FAQ)](bitlocker-frequently-asked-questions.md) | This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.| 
| [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)| This topic for the IT professional explains how can you plan your BitLocker deployment. |
| [BitLocker basic deployment](bitlocker-basic-deployment.md) | This topic for the IT professional explains how BitLocker features can be used to protect your data through drive encryption. |
| [BitLocker: How to deploy on Windows Server](bitlocker-how-to-deploy-on-windows-server.md)| This topic for the IT professional explains how to deploy BitLocker on Windows Server.| 
| [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md) | This topic for the IT professional describes how BitLocker Network Unlock works and how to configure it. |
| [BitLocker: Use BitLocker Drive Encryption Tools to manage BitLocker](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md)| This topic for the IT professional describes how to use tools to manage BitLocker.| 
| [BitLocker: Use BitLocker Recovery Password Viewer](bitlocker-use-bitlocker-recovery-password-viewer.md) | This topic for the IT professional describes how to use the BitLocker Recovery Password Viewer. |
| [BitLocker Group Policy settings](bitlocker-group-policy-settings.md) | This topic for IT professionals describes the function, location, and effect of each Group Policy setting that is used to manage BitLocker. |
| [BCD settings and BitLocker](bcd-settings-and-bitlocker.md) | This topic for IT professionals describes the BCD settings that are used by BitLocker.| 
| [BitLocker Recovery Guide](bitlocker-recovery-guide-plan.md)| This topic for IT professionals describes how to recover BitLocker keys from AD DS. |
| [Protect BitLocker from pre-boot attacks](protect-bitlocker-from-pre-boot-attacks.md)| This detailed guide will help you understand the circumstances under which the use of pre-boot authentication is recommended for devices running Windows 10, Windows 8.1, Windows 8, or Windows 7; and when it can be safely omitted from a device’s configuration. |
| [Troubleshoot BitLocker](troubleshoot-bitlocker.md) | This guide describes the resources that can help you troubleshoot BitLocker issues, and provides solutions for several common BitLocker issues. |
| [Protecting cluster shared volumes and storage area networks with BitLocker](protecting-cluster-shared-volumes-and-storage-area-networks-with-bitlocker.md)| This topic for IT pros describes how to protect CSVs and SANs with BitLocker.| 
| [Enabling Secure Boot and BitLocker Device Encryption on Windows 10 IoT Core](https://developer.microsoft.com/windows/iot/docs/securebootandbitlocker) | This topic covers how to use BitLocker with Windows 10 IoT Core |


