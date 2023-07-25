---
title: BitLocker overview
description: This article provides a high-level overview of BitLocker, including a list of system requirements, practical applications, and deprecated features.
ms.collection: 
  - highpri
  - tier1
ms.topic: conceptual
ms.date: 11/08/2022
---

# BitLocker overview

This article provides a high-level overview of BitLocker, including a list of system requirements, practical applications, and deprecated features.

BitLocker Drive Encryption is a data protection feature that integrates with the operating system and addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned computers.

BitLocker provides the maximum protection when used with a Trusted Platform Module (TPM) version 1.2 or later versions. The TPM is a hardware component installed in many newer computers by the computer manufacturers. It works with BitLocker to help protect user data and to ensure that a computer hasn't been tampered with while the system was offline.

On computers that don't have a TPM version 1.2 or later versions, BitLocker can still be used to encrypt the Windows operating system drive. However, this implementation requires the user to insert a USB startup key to start the computer or resume from hibernation. Starting with Windows 8, an operating system volume password can be used to protect the operating system volume on a computer without TPM. Both options don't provide the pre-startup system integrity verification offered by BitLocker with a TPM.

In addition to the TPM, BitLocker offers the option to lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable device (such as a USB flash drive) that contains a startup key. These additional security measures provide multifactor authentication and assurance that the computer won't start or resume from hibernation until the correct PIN or startup key is presented.

## Practical applications

Data on a lost or stolen computer is vulnerable to unauthorized access, either by running a software-attack tool against it or by transferring the computer's hard disk to a different computer. BitLocker helps mitigate unauthorized data access by enhancing file and system protections. BitLocker also helps render data inaccessible when BitLocker-protected computers are decommissioned or recycled.

There are two additional tools in the Remote Server Administration Tools that can be used to manage BitLocker.

- **BitLocker Recovery Password Viewer**. The BitLocker Recovery Password Viewer enables the BitLocker Drive Encryption recovery passwords that have been backed up to Active Directory Domain Services (AD DS) to be located and viewed. This tool can be used to help recover data that is stored on a drive that has been encrypted by using BitLocker. The BitLocker Recovery Password Viewer tool is an extension for the Active Directory Users and Computers Microsoft Management Console (MMC) snap-in.

    By using this tool, a computer object's **Properties** dialog box can be examined to view the corresponding BitLocker recovery passwords. Additionally, a domain container can be searched for a BitLocker recovery password across all the domains in the Active Directory forest by right clicking on the domain container. Viewing recovery passwords can only be viewed by domain administrator or having delegated permissions by a domain administrator.

- **BitLocker Drive Encryption Tools**. BitLocker Drive Encryption Tools include the command-line tools, manage-bde and repair-bde, and the BitLocker cmdlets for Windows PowerShell. Both manage-bde and the BitLocker cmdlets can be used to perform any task that can be accomplished through the
BitLocker control panel, and they're appropriate to be used for automated deployments and other scripting scenarios. Repair-bde is provided for disaster recovery scenarios in which a BitLocker-protected drive can't be unlocked normally or by using the recovery console.

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-enablement.md)]

## System requirements

BitLocker has the following hardware requirements:

For BitLocker to use the system integrity check provided by a TPM, the computer must have TPM 1.2 or later versions. If a computer doesn't have a TPM, saving a startup key on a removable drive, such as a USB flash drive, becomes mandatory when enabling BitLocker.

A computer with a TPM must also have a Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware. The BIOS or UEFI firmware establishes a chain of trust for the pre-operating system startup, and it must include support for TCG-specified Static Root of Trust Measurement. A computer without a TPM doesn't require TCG-compliant firmware.

The system BIOS or UEFI firmware (for TPM and non-TPM computers) must support the USB mass storage device class, including reading small files on a USB flash drive in the pre-operating system environment.

> [!IMPORTANT]
> From Windows 7, an OS drive can be encrypted without a TPM and USB flash drive. For this procedure, see [Tip of the Day: Bitlocker without TPM or USB](https://social.technet.microsoft.com/Forums/en-US/eac2cc67-8442-42db-abad-2ed173879751/bitlocker-without-tpm?forum=win10itprosetup).

> [!NOTE]
> TPM 2.0 is not supported in Legacy and Compatibility Support Module (CSM) modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and CSM options must be disabled. For added security, enable the secure boot feature.

> Installed Operating System on hardware in Legacy mode stops the OS from booting when the BIOS mode is changed to UEFI. Use the tool [MBR2GPT](/windows/deployment/mbr-to-gpt) before changing the BIOS mode, which prepares the OS and the disk to support UEFI.

The hard disk must be partitioned with at least two drives:

- The operating system drive (or boot drive) contains the operating system and its support files. It must be formatted with the NTFS file system.
- The system drive contains the files that are needed to load Windows after the firmware has prepared the system hardware. BitLocker isn't enabled on this drive. For BitLocker to work, the system drive must not be encrypted, must differ from the operating system drive, and must be formatted with the FAT32 file system on computers that use UEFI-based firmware or with the NTFS file system on computers that use BIOS firmware. It's recommended that the system drive be approximately 350 MB in size. After BitLocker is turned on, it should have approximately 250 MB of free space.

When installed on a new computer, Windows automatically creates the partitions that are required for BitLocker.

A partition subject to encryption can't be marked as an active partition. This requirement applies to the operating system drives, fixed data drives, and removable data drives.

When installing the BitLocker optional component on a server, the Enhanced Storage feature also needs to be installed. The Enhanced Storage feature is used to support hardware encrypted drives.

## Next steps

