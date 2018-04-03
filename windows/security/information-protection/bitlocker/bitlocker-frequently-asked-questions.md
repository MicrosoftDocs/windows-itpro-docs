---
title: BitLocker frequently asked questions (FAQ) (Windows 10)
description: This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.
ms.assetid: c40f87ac-17d3-47b2-afc6-6c641f72ecee
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
ms.date: 04/03/2018
---

# BitLocker frequently asked questions (FAQ)

**Applies to**
-   Windows 10

This topic for the IT professional answers frequently asked questions concerning the requirements to use, upgrade, deploy and administer, and key management policies for BitLocker.

BitLocker is a data protection feature that encrypts the hard drives on your computer to provide enhanced protection against data theft or exposure on computers and removable drives that are lost or stolen, and more secure data deletion when BitLocker-protected computers are decommissioned as it is much more difficult to recover deleted data from an encrypted drive than from a non-encrypted drive.

-   [Overview and requirements](bitlocker-overview-and-requirements-faq.md)
-   [Upgrading](bitlocker-upgrading-faq.md)
-   [Deployment and administration](bitlocker-deployment-and-administration-faq.md)
-   [Key management](#bkmk-keymanagement)
-   [BitLocker To Go](#bkmk-btgsect)
-   [Active Directory Domain Services (AD DS)](#bkmk-adds)
-   [Security](#bkmk-security)
-   [BitLocker Network Unlock](#bkmk-bnusect)
-   [Other questions](#bkmk-other)



## <a href="" id="bkmk-security"></a>Security

### <a href="" id="bkmk-form"></a>What form of encryption does BitLocker use? Is it configurable?

BitLocker uses Advanced Encryption Standard (AES) as its encryption algorithm with configurable key lengths of 128 or 256 bits. The default encryption setting is AES-128, but the options are configurable by using Group Policy.

### <a href="" id="bkmk-config"></a>What is the best practice for using BitLocker on an operating system drive?

The recommended practice for BitLocker configuration on an operating system drive is to implement BitLocker on a computer with a TPM version 1.2 or higher and a Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware implementation, plus a PIN. By requiring a PIN that was set by the user in addition to the TPM validation, a malicious user that has physical access to the computer cannot simply start the computer.

### <a href="" id="bkmk-sleep"></a>What are the implications of using the sleep or hibernate power management options?

BitLocker on operating system drives in its basic configuration (with a TPM but without advanced authentication) provides additional security for the hibernate mode. However, BitLocker provides greater security when it is configured to use an advanced authentication mode (TPM+PIN, TPM+USB, or TPM+PIN+USB) with the hibernate mode. This method is more secure because returning from hibernation requires BitLocker authentication. As a best practice, we recommend that sleep mode be disabled and that you use TPM+PIN for the authentication method.

### <a href="" id="bkmk-root"></a>What are the advantages of a TPM?

Most operating systems use a shared memory space and rely on the operating system to manage physical memory. A TPM is a hardware component that uses its own internal firmware and logic circuits for processing instructions, thus shielding it from external software vulnerabilities. Attacking the TPM requires physical access to the computer. Additionally, the tools and skills necessary to attack hardware are often more expensive, and usually are not as available as the ones used to attack software. And because each TPM is unique to the computer that contains it, attacking multiple TPM computers would be difficult and time-consuming.

>**Note:**  Configuring BitLocker with an additional factor of authentication provides even more protection against TPM hardware attacks.
 
## <a href="" id="bkmk-bnusect"></a>BitLocker Network Unlock

BitLocker Network Unlock enables easier management for BitLocker-enabled desktops and servers that use the TPM+PIN protection method in a domain environment. When a computer that is connected to a wired corporate network is rebooted, Network Unlock allows the PIN entry prompt to be bypassed. It automatically unlocks BitLocker-protected operating system volumes by using a trusted key that is provided by the Windows Deployment Services server as its secondary authentication method.

To use Network Unlock you must also have a PIN configured for your computer. When your computer is not connected to the network you will need to provide the PIN to unlock it.

BitLocker Network Unlock has software and hardware requirements for both client computers, Windows Deployment services, and domain controllers that must be met before you can use it.

Network Unlock uses two protectors, the TPM protector and the one provided by the network or by your PIN, whereas automatic unlock uses a single protector, the one stored in the TPM. If the computer is joined to a network without the key protector it will prompt you to enter your PIN. If the PIN is 
not available you will need to use the recovery key to unlock the computer if it can ot be connected to the network.

For more info, see [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md).

## <a href="" id="bkmk-other"></a>Other questions

### <a href="" id="bkmk-kernel"></a>Can I run a kernel debugger with BitLocker?

Yes. However, the debugger should be turned on before enabling BitLocker. Turning on the debugger ensures that the correct measurements are calculated when sealing to the TPM, allowing the computer to start properly. If you need to turn debugging on or off when using BitLocker, be sure to suspend BitLocker first to avoid putting your computer into recovery mode.

### <a href="" id="bkmk-errorreports"></a>How does BitLocker handle memory dumps?

BitLocker has a storage driver stack that ensures memory dumps are encrypted when BitLocker is enabled.

### <a href="" id="bkmk-smart"></a>Can BitLocker support smart cards for pre-boot authentication?

BitLocker does not support smart cards for pre-boot authentication. There is no single industry standard for smart card support in the firmware, and most computers either do not implement firmware support for smart cards, or only support specific smart cards and readers. This lack of standardization makes supporting them very difficult.

### <a href="" id="bkmk-driver"></a>Can I use a non-Microsoft TPM driver?

Microsoft does not support non-Microsoft TPM drivers and strongly recommends against using them with BitLocker. Attempting to use a non-Microsoft TPM driver with BitLocker may cause BitLocker to report that a TPM is not present on the computer and not allow the TPM to be used with BitLocker.

### <a href="" id="bkmk-mbr"></a>Can other tools that manage or modify the master boot record work with BitLocker?

We do not recommend modifying the master boot record on computers whose operating system drives are BitLocker-protected for a number of security, reliability, and product support reasons. Changes to the master boot record (MBR) could change the security environment and prevent the computer from starting normally, as well as complicate any efforts to recover from a corrupted MBR. Changes made to the MBR by anything other than Windows might force the computer into recovery mode or prevent it from booting entirely.

### <a href="" id="bkmk-syschkfail"></a>Why is the system check failing when I am encrypting my operating system drive?

The system check is designed to ensure your computer's BIOS or UEFI firmware is compatible with BitLocker and that the TPM is working correctly. The system check can fail for several reasons:

-   The computer's BIOS or UEFI firmware cannot read USB flash drives.
-   The computer's BIOS, uEFI firmware, or boot menu does not have reading USB flash drives enabled.
-   There are multiple USB flash drives inserted into the computer.
-   The PIN was not entered correctly.
-   The computer's BIOS or UEFI firmware only supports using the function keys (F1–F10) to enter numerals in the pre-boot environment.
-   The startup key was removed before the computer finished rebooting.
-   The TPM has malfunctioned and fails to unseal the keys.

### <a href="" id="bkmk-usbkeyfail"></a>What can I do if the recovery key on my USB flash drive cannot be read?

Some computers cannot read USB flash drives in the pre-boot environment. First, check your BIOS or UEFI firmware and boot settings to ensure that the use of USB drives is enabled. If it is not enabled, enable the use of USB drives in the BIOS or UEFI firmware and boot settings and then try to read the recovery key from the USB flash drive again. If it still cannot be read, you will have to mount the hard drive as a data drive on another computer so that there is an operating system to attempt to read the recovery key from the USB flash drive. If the USB flash drive has been corrupted or damaged, you may need to supply a recovery password or use the recovery information that was backed up to AD DS. Also, if you are using the recovery key in the pre-boot environment, ensure that the drive is formatted by using the NTFS, FAT16, or FAT32 file system.

### <a href="" id="bkmk-usbkeynosave"></a>Why am I unable to save my recovery key to my USB flash drive?

The **Save to USB** option is not shown by default for removable drives. If the option is unavailable, it means that a system administrator has disallowed the use of recovery keys.

### <a href="" id="bkmk-noautounlock"></a>Why am I unable to automatically unlock my drive?

Automatic unlocking for fixed data drives requires that the operating system drive also be protected by BitLocker. If you are using a computer that does not have a BitLocker-protected operating system drive, the drive cannot be automatically unlocked. For removable data drives, you can add automatic unlocking by right-clicking the drive in Windows Explorer and clicking **Manage BitLocker**. You will still be able to use the password or smart card credentials you supplied when you turned on BitLocker to unlock the removable drive on other computers.

### <a href="" id="bkmk-blsafemode"></a>Can I use BitLocker in Safe Mode?

Limited BitLocker functionality is available in Safe Mode. BitLocker-protected drives can be unlocked and decrypted by using the **BitLocker Drive Encryption** Control Panel item. Right-clicking to access BitLocker options from Windows Explorer is not available in Safe Mode.

### <a href="" id="bkmk-lockdata"></a>How do I "lock" a data drive?

Both fixed and removable data drives can be locked by using the Manage-bde command-line tool and the –lock command.

>**Note:**  Ensure all data is saved to the drive before locking it. Once locked, the drive will become inaccessible.
 
The syntax of this command is:

`manage-bde <driveletter> -lock`

Outside of using this command, data drives will be locked on shutdown and restart of the operating system. A removable data drive will also be locked automatically when the drive is removed from the computer.

### <a href="" id="bkmk-shadowcopy"></a>Can I use BitLocker with the Volume Shadow Copy Service?

Yes. However, shadow copies made prior to enabling BitLocker will be automatically deleted when BitLocker is enabled on software-encrypted drives. If you are using a hardware encrypted drive, the shadow copies are retained.

### <a href="" id="bkmk-vhd"></a>Does BitLocker support virtual hard disks (VHDs)?

BitLocker is not supported on bootable VHDs, but BitLocker is supported on data volume VHDs, such as those used by clusters, if you are running Windows 10, Windows 8.1, Windows 8, Windows Server 2012, or Windows Server 2012 R2.

### <a href="" id="bkmk-VM"></a> Can I use BitLocker with virtual machines (VMs)?

Yes. Password protectors and virtual TPMs can be used with BitLocker to protect virtual machines. VMs can be domain joined, Azure AD-joined, or workplace-joined (in **Settings** under **Accounts** > **Access work or school** > **Connect to work or school** to receive policy. You can enable encryption either while creating the VM or by using other existing management tools such as the BitLocker CSP, or even by using a startup script or logon script delivered by Group Policy. Windows Server 2016 also supports [Shielded VMs and guarded fabric](https://docs.microsoft.com/windows-server/virtualization/guarded-fabric-shielded-vm/guarded-fabric-and-shielded-vms-top-node) to protect VMs from malicious administrators.  


## More information

-   [Prepare your organization for BitLocker: Planning and Policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
-   [BitLocker Group Policy settings](bitlocker-group-policy-settings.md)
-   [BCD settings and BitLocker](bcd-settings-and-bitlocker.md)
-   [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md)
-   [BitLocker: How to deploy on Windows Server 2012](bitlocker-how-to-deploy-on-windows-server.md)
-   [BitLocker: Use BitLocker Drive Encryption Tools to manage BitLocker](bitlocker-use-bitlocker-drive-encryption-tools-to-manage-bitlocker.md)
-   [BitLocker: Use BitLocker Recovery Password Viewer](bitlocker-use-bitlocker-recovery-password-viewer.md)
-   [BitLocker Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/6f49f904-e04d-4b90-afbc-84bc45d4d30d)
