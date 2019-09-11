---
title: BitLocker frequently asked questions (FAQ) (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
ms.assetid: c40f87ac-17d3-47b2-afc6-6c641f72ecee
ms.reviewer: 
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 02/28/2019
---

# BitLocker frequently asked questions (FAQ)

**Applies to**
-   Windows 10

## Can BitLocker deployment be automated in an enterprise environment?

Yes, you can automate the deployment and configuration of BitLocker and the TPM using either WMI or Windows PowerShell scripts. How you choose to implement the scripts depends on your environment. You can also use Manage-bde.exe to locally or remotely configure BitLocker. For more info about writing scripts that use the BitLocker WMI providers, see [BitLocker Drive Encryption Provider](https://go.microsoft.com/fwlink/p/?LinkId=80600). For more info about using Windows PowerShell cmdlets with BitLocker Drive Encryption, see [BitLocker Cmdlets in Windows PowerShell](https://docs.microsoft.com/powershell/module/bitlocker/index?view=win10-ps).

## Can BitLocker encrypt more than just the operating system drive?

Yes.

## Is there a noticeable performance impact when BitLocker is enabled on a computer?

Generally it imposes a single-digit percentage performance overhead.

## How long will initial encryption take when BitLocker is turned on?

Although BitLocker encryption occurs in the background while you continue to work, and the system remains usable, encryption times vary depending on the type of drive that is being encrypted, the size of the drive, and the speed of the drive. If you are encrypting very large drives, you may want to set encryption to occur during times when you will not be using the drive.

You can also choose whether or not BitLocker should encrypt the entire drive or just the used space on the drive when you turn on BitLocker. On a new hard drive, encrypting just the used spaced can be considerably faster than encrypting the entire drive. When this encryption option is selected, BitLocker automatically encrypts data as it is saved, ensuring that no data is stored unencrypted.

## What happens if the computer is turned off during encryption or decryption?

If the computer is turned off or goes into hibernation, the BitLocker encryption and decryption process will resume where it stopped the next time Windows starts. This is true even if the power is suddenly unavailable.

## Does BitLocker encrypt and decrypt the entire drive all at once when reading and writing data?

No, BitLocker does not encrypt and decrypt the entire drive when reading and writing data. The encrypted sectors in the BitLocker-protected drive are decrypted only as they are requested from system read operations. Blocks that are written to the drive are encrypted before the system writes them to the physical disk. No unencrypted data is ever stored on a BitLocker-protected drive.

## How can I prevent users on a network from storing data on an unencrypted drive?

You can configure Group Policy settings to require that data drives be BitLocker-protected before a BitLocker-protected computer can write data to them. For more info, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).
When these policy settings are enabled, the BitLocker-protected operating system will mount any data drives that are not protected by BitLocker as read-only.

## What is Used Disk Space Only encryption?

BitLocker in Windows 10 lets users choose to encrypt just their data. Although it's not the most secure way to encrypt a drive, this option can reduce encryption time by more than 99 percent, depending on how much data that needs to be encrypted. For more information, see [Used Disk Space Only encryption](bitlocker-device-encryption-overview-windows-10.md#used-disk-space-only-encryption).

## What system changes would cause the integrity check on my operating system drive to fail?

The following types of system changes can cause an integrity check failure and prevent the TPM from releasing the BitLocker key to decrypt the protected operating system drive:

-   Moving the BitLocker-protected drive into a new computer.
-   Installing a new motherboard with a new TPM.
-   Turning off, disabling, or clearing the TPM.
-   Changing any boot configuration settings.
-   Changing the BIOS, UEFI firmware, master boot record, boot sector, boot manager, option ROM, or other early boot components or boot configuration data.

## What causes BitLocker to start into recovery mode when attempting to start the operating system drive?

Because BitLocker is designed to protect your computer from numerous attacks, there are numerous reasons why BitLocker could start in recovery mode. 
For example: 

- Changing the BIOS boot order to boot another drive in advance of the hard drive.
- Adding or removing hardware, such as inserting a new card in the computer, including some PCMIA wireless cards.
- Removing, inserting, or completely depleting the charge on a smart battery on a portable computer.

In BitLocker, recovery consists of decrypting a copy of the volume master key using either a recovery key stored on a USB flash drive or a cryptographic key derived from a recovery password. 
The TPM is not involved in any recovery scenarios, so recovery is still possible if the TPM fails boot component validation, malfunctions, or is removed.

## What can prevent BitLocker from binding to PCR 7?

This happens if a non-Windows OS booted prior to Windows, or if Secure Boot is not available to the device, either because it has been disabled or the hardware does not support it.

## Can I swap hard disks on the same computer if BitLocker is enabled on the operating system drive?

Yes, you can swap multiple hard disks on the same computer if BitLocker is enabled, but only if the hard disks were BitLocker-protected on the same computer. The BitLocker keys are unique to the TPM and operating system drive, so if you want to prepare a backup operating system or data drive for use in case of disk failure, you need to make sure that they were matched with the correct TPM. You can also configure different hard drives for different operating systems and then enable BitLocker on each one with different authentication methods (such as one with TPM-only and one with TPM+PIN) without any conflicts.

## Can I access my BitLocker-protected drive if I insert the hard disk into a different computer?

Yes, if the drive is a data drive, you can unlock it from the **BitLocker Drive Encryption** Control Panel item just as you would any other data drive by using a password or smart card. If the data drive was configured for automatic unlock only, you will have to unlock it by using the recovery key. The encrypted hard disk can be unlocked by a data recovery agent (if one was configured) or it can be unlocked by using the recovery key.

## Why is "Turn BitLocker on" not available when I right-click a drive?
Some drives cannot be encrypted with BitLocker. Reasons a drive cannot be encrypted include insufficient disk size, an incompatible file system, if the drive is a dynamic disk, or a drive is designated as the system partition. By default, the system drive (or system partition) is hidden from display. However, if it is not created as a hidden drive when the operating system was installed due to a custom installation process, that drive might be displayed but cannot be encrypted.

## What type of disk configurations are supported by BitLocker?
Any number of internal, fixed data drives can be protected with BitLocker. On some versions ATA and SATA-based, direct-attached storage devices are also supported.


