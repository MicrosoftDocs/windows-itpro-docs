---
title: Using BitLocker with other programs FAQ (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
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

# Using BitLocker with other programs FAQ

**Applies to**
-   Windows 10

## Can I use EFS with BitLocker?

Yes, you can use Encrypting File System (EFS) to encrypt files on a BitLocker-protected drive. BitLocker helps protect the entire operating system drive against offline attacks, whereas EFS can provide additional user-based file level encryption for security separation between multiple users of the same computer. You can also use EFS in Windows to encrypt files on other drives that are not encrypted by BitLocker. The root secrets of EFS are stored by default on the operating system drive; therefore, if BitLocker is enabled for the operating system drive, data that is encrypted by EFS on other drives is also indirectly protected by BitLocker.

## Can I run a kernel debugger with BitLocker?

Yes. However, the debugger should be turned on before enabling BitLocker. Turning on the debugger ensures that the correct measurements are calculated when sealing to the TPM, allowing the computer to start properly. If you need to turn debugging on or off when using BitLocker, be sure to suspend BitLocker first to avoid putting your computer into recovery mode.

## How does BitLocker handle memory dumps?

BitLocker has a storage driver stack that ensures memory dumps are encrypted when BitLocker is enabled.

## Can BitLocker support smart cards for pre-boot authentication?

BitLocker does not support smart cards for pre-boot authentication. There is no single industry standard for smart card support in the firmware, and most computers either do not implement firmware support for smart cards, or only support specific smart cards and readers. This lack of standardization makes supporting them very difficult.

## Can I use a non-Microsoft TPM driver?

Microsoft does not support non-Microsoft TPM drivers and strongly recommends against using them with BitLocker. Attempting to use a non-Microsoft TPM driver with BitLocker may cause BitLocker to report that a TPM is not present on the computer and not allow the TPM to be used with BitLocker.

## Can other tools that manage or modify the master boot record work with BitLocker?

We do not recommend modifying the master boot record on computers whose operating system drives are BitLocker-protected for a number of security, reliability, and product support reasons. Changes to the master boot record (MBR) could change the security environment and prevent the computer from starting normally, as well as complicate any efforts to recover from a corrupted MBR. Changes made to the MBR by anything other than Windows might force the computer into recovery mode or prevent it from booting entirely.

## Why is the system check failing when I am encrypting my operating system drive?

The system check is designed to ensure your computer's BIOS or UEFI firmware is compatible with BitLocker and that the TPM is working correctly. The system check can fail for several reasons:

-   The computer's BIOS or UEFI firmware cannot read USB flash drives.
-   The computer's BIOS, uEFI firmware, or boot menu does not have reading USB flash drives enabled.
-   There are multiple USB flash drives inserted into the computer.
-   The PIN was not entered correctly.
-   The computer's BIOS or UEFI firmware only supports using the function keys (F1–F10) to enter numerals in the pre-boot environment.
-   The startup key was removed before the computer finished rebooting.
-   The TPM has malfunctioned and fails to unseal the keys.

## What can I do if the recovery key on my USB flash drive cannot be read?

Some computers cannot read USB flash drives in the pre-boot environment. First, check your BIOS or UEFI firmware and boot settings to ensure that the use of USB drives is enabled. If it is not enabled, enable the use of USB drives in the BIOS or UEFI firmware and boot settings and then try to read the recovery key from the USB flash drive again. If it still cannot be read, you will have to mount the hard drive as a data drive on another computer so that there is an operating system to attempt to read the recovery key from the USB flash drive. If the USB flash drive has been corrupted or damaged, you may need to supply a recovery password or use the recovery information that was backed up to AD DS. Also, if you are using the recovery key in the pre-boot environment, ensure that the drive is formatted by using the NTFS, FAT16, or FAT32 file system.

## Why am I unable to save my recovery key to my USB flash drive?

The **Save to USB** option is not shown by default for removable drives. If the option is unavailable, it means that a system administrator has disallowed the use of recovery keys.

## Why am I unable to automatically unlock my drive?

Automatic unlocking for fixed data drives requires that the operating system drive also be protected by BitLocker. If you are using a computer that does not have a BitLocker-protected operating system drive, the drive cannot be automatically unlocked. For removable data drives, you can add automatic unlocking by right-clicking the drive in Windows Explorer and clicking **Manage BitLocker**. You will still be able to use the password or smart card credentials you supplied when you turned on BitLocker to unlock the removable drive on other computers.

## Can I use BitLocker in Safe Mode?

Limited BitLocker functionality is available in Safe Mode. BitLocker-protected drives can be unlocked and decrypted by using the **BitLocker Drive Encryption** Control Panel item. Right-clicking to access BitLocker options from Windows Explorer is not available in Safe Mode.

## How do I "lock" a data drive?

Both fixed and removable data drives can be locked by using the Manage-bde command-line tool and the –lock command.

> [!NOTE]  
> Ensure all data is saved to the drive before locking it. Once locked, the drive will become inaccessible.
 
The syntax of this command is:

<code>manage-bde <i>driveletter</i> -lock</code>

Outside of using this command, data drives will be locked on shutdown and restart of the operating system. A removable data drive will also be locked automatically when the drive is removed from the computer.

## Can I use BitLocker with the Volume Shadow Copy Service?

Yes. However, shadow copies made prior to enabling BitLocker will be automatically deleted when BitLocker is enabled on software-encrypted drives. If you are using a hardware encrypted drive, the shadow copies are retained.

## Does BitLocker support virtual hard disks (VHDs)?

BitLocker should work like any specific physical machine within its hardware limitations as long as the environment (physical or virtual) meets Windows Operating System requirements to run.
- With TPM - Yes it is supported
- Without  TPM - Yes it is supported (with password protector)

BitLocker is also supported on data volume VHDs, such as those used by clusters, if you are running Windows 10, Windows 8.1, Windows 8, Windows Server 2016, Windows Server 2012 R2, or Windows Server 2012.

## Can I use BitLocker with virtual machines (VMs)?

Yes. Password protectors and virtual TPMs can be used with BitLocker to protect virtual machines. VMs can be domain joined, Azure AD-joined, or workplace-joined (via **Settings** > **Accounts** > **Access work or school** > **Connect**) to receive policy. You can enable encryption either while creating the VM or by using other existing management tools such as the BitLocker CSP, or even by using a startup script or logon script delivered by Group Policy. Windows Server 2016 also supports [Shielded VMs and guarded fabric](https://docs.microsoft.com/windows-server/virtualization/guarded-fabric-shielded-vm/guarded-fabric-and-shielded-vms-top-node) to protect VMs from malicious administrators.  

