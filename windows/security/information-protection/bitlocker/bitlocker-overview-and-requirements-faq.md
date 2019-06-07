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
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker Overview and Requirements FAQ

**Applies to**
-   Windows 10

## How does BitLocker work?

**How BitLocker works with operating system drives**

You can use BitLocker to mitigate unauthorized data access on lost or stolen computers by encrypting all user files and system files on the operating system drive, including the swap files and hibernation files, and checking the integrity of early boot components and boot configuration data.

**How BitLocker works with fixed and removable data drives**

You can use BitLocker to encrypt the entire contents of a data drive. You can use Group Policy to require that BitLocker be enabled on a drive before the computer can write data to the drive. BitLocker can be configured with a variety of unlock methods for data drives, and a data drive supports multiple unlock methods.

## Does BitLocker support multifactor authentication?

Yes, BitLocker supports multifactor authentication for operating system drives. If you enable BitLocker on a computer that has a TPM version 1.2 or later, you can use additional forms of authentication with the TPM protection.

## What are the BitLocker hardware and software requirements?

For requirements, see [System requirements](bitlocker-overview.md#system-requirements).

> [!NOTE]  
> Dynamic disks are not supported by BitLocker. Dynamic data volumes will not be displayed in the Control Panel. Although the operating system volume will always be displayed in the Control Panel, regardless of whether it is a Dynamic disk, if it is a dynamic disk it is cannot be protected by BitLocker.
 
## Why are two partitions required? Why does the system drive have to be so large?

Two partitions are required to run BitLocker because pre-startup authentication and system integrity verification must occur on a separate partition from the encrypted operating system drive. This configuration helps protect the operating system and the information in the encrypted drive.

## Which Trusted Platform Modules (TPMs) does BitLocker support?

BitLocker supports TPM version 1.2 or higher. BitLocker support for TPM 2.0 requires Unified Extensible Firmware Interface (UEFI) for the device. 

## How can I tell if a TPM is on my computer?

Beginning with Windows 10, version 1803, you can check TPM status in **Windows Defender Security Center** > **Device Security** > **Security processor details**. In previous versions of Windows, open the TPM MMC console (tpm.msc) and look under the **Status** heading.

## Can I use BitLocker on an operating system drive without a TPM?

Yes, you can enable BitLocker on an operating system drive without a TPM version 1.2 or higher, if the BIOS or UEFI firmware has the ability to read from a USB flash drive in the boot environment. This is because BitLocker will not unlock the protected drive until BitLocker's own volume master key is first released by either the computer's TPM or by a USB flash drive containing the BitLocker startup key for that computer. However, computers without TPMs will not be able to use the system integrity verification that BitLocker can also provide.
To help determine whether a computer can read from a USB device during the boot process, use the BitLocker system check as part of the BitLocker setup process. This system check performs tests to confirm that the computer can properly read from the USB devices at the appropriate time and that the computer meets other BitLocker requirements.

## How do I obtain BIOS support for the TPM on my computer?

Contact the computer manufacturer to request a Trusted Computing Group (TCG)-compliant BIOS or UEFI boot firmware that meets the following requirements:

-   It is compliant with the TCG standards for a client computer.
-   It has a secure update mechanism to help prevent a malicious BIOS or boot firmware from being installed on the computer.

## What credentials are required to use BitLocker?

To turn on, turn off, or change configurations of BitLocker on operating system and fixed data drives, membership in the local **Administrators** group is required. Standard users can turn on, turn off, or change configurations of BitLocker on removable data drives.

## What is the recommended boot order for computers that are going to be BitLocker-protected?

You should configure the startup options of your computer to have the hard disk drive first in the boot order, before any other drives such ach as CD/DVD drives or USB drives. If the hard disk is not first and you typically boot from hard disk, then a boot order change may be detected or assumed when removable media is found during boot. The boot order typically affects the system measurement that is verified by BitLocker and a change in boot order will cause you to be prompted for your BitLocker recovery key. For the same reason, if you have a laptop with a docking station, ensure that the hard disk drive is first in the boot order both when docked and undocked. 
