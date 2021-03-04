---
title: BitLocker overview and requirements FAQ (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use BitLocker.
ms.assetid: c40f87ac-17d3-47b2-afc6-6c641f72ecee
ms.reviewer: 
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
ms.custom: bitlocker
---

# BitLocker Overview and Requirements FAQ

**Applies to**
-   Windows 10

## How does BitLocker work?

**How does BitLocker work with operating system drives**

You can use BitLocker to mitigate unauthorized data access on lost or stolen computers by:
- Encrypting all user files and system files (including the swap files and hibernation files) on the operating system drive.
- Checking the integrity of early boot components and Boot Configuration Data (BCD). 

For more information, see [BitLocker overview] (bitlocker-deviceencryption-overview.md#internal-drive-encryption).

**How does BitLocker work with fixed and removable data drives**

You can use BitLocker to encrypt the entire content of a data drive. You can use group policy to make it mandatory for BitLocker to be enabled on a drive before the computer can write data to the drive. BitLocker can be configured with a variety of unlock-methods for data drives, and a data drive supports multiple unlock-methods. For more information, see [BitLocker overview](bitlocker-overview.md).

## Does BitLocker support multifactor authentication?

Yes, BitLocker supports multifactor authentication for operating system drives. If you enable BitLocker on a computer that has a TPM version 1.2 or later versions, you can use additional forms of authentication with the TPM protection. This includes the use of a password, a PIN, or a removable storage device.

## What are the BitLocker hardware and software requirements?

For requirements, see [System requirements](bitlocker-overview.md#system-requirements).

> [!NOTE]
> Dynamic disks are not supported by BitLocker. Dynamic data volumes are not displayed in the Control Panel. Although the operating system volume is always displayed in the Control Panel, regardless of whether it is a dynamic disk, it cannot be protected by BitLocker if it is a dynamic disk.
 
## Why are two partitions required? Why does the system drive have to be so large?

Two partitions are required to run BitLocker because pre-startup authentication and system integrity verification must occur on a partition that is separate from the encrypted operating system drive. This configuration helps protect the operating system and the information in the encrypted drive.

## Which trusted platform modules (TPMs) does BitLocker support?

BitLocker supports TPM version 1.2 or higher. BitLocker's support for TPM 2.0 requires Unified Extensible Firmware Interface (UEFI) for the device. 

> [!NOTE]
> TPM 2.0 is not supported in Legacy and Compatibility Support Module (CSM) modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and CSM options must be disabled. For added security, enable the secure boot feature.

> Installed Operating System on hardware in Legacy mode stops the OS from booting when the BIOS mode is changed to UEFI. Use the tool [MBR2GPT](https://docs.microsoft.com/windows/deployment/mbr-to-gpt) before changing the BIOS mode which prepares the OS and the disk to support UEFI.

## How can I tell if a TPM is on my computer?

Beginning with Windows 10, version 1803, you can check TPM status in **Windows Defender Security Center** > **Device Security** > **Security processor details**. In previous versions of Windows, open the TPM MMC console (tpm.msc) and look under the **Status** heading.

## Can I use BitLocker on an operating system drive that does not have a TPM?

Yes, you can enable BitLocker on an operating system drive that does not have a TPM version 1.2 or higher, which can be done through the following options:
- If the BIOS or UEFI firmware has the ability to read from a USB flash drive in the boot environment, you can use a removable disk. To help determine whether a computer can read from a USB device during the boot process, use the BitLocker system check as part of the BitLocker setup process. This system check performs tests to confirm that the computer can properly read from the USB devices at the appropriate time and that the computer meets other BitLocker requirements.

- You can use a password or a PIN to unlock the encrypted disk. This is because BitLocker will not unlock the protected drive until BitLocker's own volume master key is first released by either the computer's TPM or a USB flash drive containing the BitLocker startup key for that computer. 

- In addition to the above two options, the volume master key can be encrypted with a password or a PIN so that it can be displayed in a decrypted version when the user keys in the password.

## How do I obtain BIOS support for the TPM on my computer?

Contact the computer manufacturer to request a trusted computing group (TCG)-compliant BIOS or UEFI boot firmware that meets the following requirements:

- It is compliant with the TCG standards for a client computer.
- It has a secure update mechanism to help prevent a malicious BIOS or boot firmware from being installed on the computer.

## What credentials are required to use BitLocker?

To turn on, turn off, or change configurations of BitLocker on operating system and fixed data drives, membership in the local **Administrators** group is required. Standard users can turn on, turn off, or change configurations of BitLocker on removable data drives.

## What is the recommended boot order for computers that are going to be BitLocker-protected?

You should configure the startup options of your computer to have the hard disk drive first in the boot order, before any other drives such as CD/DVD drives or USB drives. If the hard disk is not first in the order and you typically boot from hard disk, then a boot order change may be detected or assumed when removable media is found during boot. The boot order typically affects the system measurement that is verified by BitLocker and a change in boot order prompts you for your BitLocker recovery key. For the same reason, if you have a laptop with a docking station, ensure that the hard disk drive is first in the boot order both when docked and undocked. 
