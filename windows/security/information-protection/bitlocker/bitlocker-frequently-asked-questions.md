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



## <a href="" id="bkmk-btgsect"></a>BitLocker To Go

BitLocker To Go is BitLocker Drive Encryption on removable data drives. This includes the encryption of USB flash drives, SD cards, external hard disk drives, and other drives formatted by using the NTFS, FAT16, FAT32, or exFAT file systems.

## <a href="" id="bkmk-adds"></a>Active Directory Domain Services (AD DS)

### What if BitLocker is enabled on a computer before the computer has joined the domain?

If BitLocker is enabled on a drive before Group Policy has been applied to enforce backup, the recovery information will not be automatically backed up to AD DS when the computer joins the domain or when Group Policy is subsequently applied. However, you can use the **Choose how BitLocker-protected operating system drives can be recovered**, **Choose how BitLocker-protected fixed drives can be recovered** and **Choose how BitLocker-protected removable drives can be recovered** Group Policy settings to require that the computer be connected to a domain before BitLocker can be enabled to help ensure that recovery information for BitLocker-protected drives in your organization is backed up to AD DS.

For more info, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

The BitLocker Windows Management Instrumentation (WMI) interface does allow administrators to write a script to back up or synchronize an online client's existing recovery information; however, BitLocker does not automatically manage this process. The manage-bde command-line tool can also be used to manually back up recovery information to AD DS. For example, to back up all of the recovery information for the C: drive to AD DS, you would use the following command from an elevated command prompt: **manage-bde -protectors -adbackup C:**.

>**Important:**  Joining a computer to the domain should be the first step for new computers within an organization. After computers are joined to a domain, storing the BitLocker recovery key to AD DS is automatic (when enabled in Group Policy).
 
### <a href="" id="bkmk-addseventlog"></a>Is there an event log entry recorded on the client computer to indicate the success or failure of the Active Directory backup?

Yes, an event log entry that indicates the success or failure of an Active Directory backup is recorded on the client computer. However, even if an event log entry says "Success," the information could have been subsequently removed from AD DS, or BitLocker could have been reconfigured in such a way that the Active Directory information can no longer unlock the drive (such as by removing the recovery password key protector). In addition, it is also possible that the log entry could be spoofed.

Ultimately, determining whether a legitimate backup exists in AD DS requires querying AD DS with domain administrator credentials by using the BitLocker password viewer tool.

### <a href="" id="bkmk-refresh"></a>If I change the BitLocker recovery password on my computer and store the new password in AD DS, will AD DS overwrite the old password?

No. By design, BitLocker recovery password entries do not get deleted from AD DS; therefore, you might see multiple passwords for each drive. To identify the latest password, check the date on the object.

### <a href="" id="bkmk-adbackupfails"></a>What happens if the backup initially fails? Will BitLocker retry the backup?

If the backup initially fails, such as when a domain controller is unreachable at the time when the BitLocker setup wizard is run, BitLocker does not try again to back up the recovery information to AD DS.

When an administrator selects the **Require BitLocker backup to AD DS** check box of the **Store BitLocker recovery information in Active Directory Domain Service (Windows 2008 and Windows Vista)** policy setting, or the equivalent **Do not enable BitLocker until recovery information is stored in AD DS for (operating system | fixed data | removable data) drives** check box in any of the **Choose how BitLocker-protected operating system drives can be recovered**, **Choose how BitLocker-protected fixed data drives can be recovered**, **Choose how BitLocker-protected removable data drives can be recovered** policy settings, this prevents users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. With these settings configured if the backup fails, BitLocker cannot be enabled, ensuring that administrators will be able to recover BitLocker-protected drives in the organization.

For more info, see [BitLocker Group Policy settings](bitlocker-group-policy-settings.md).

When an administrator clears these check boxes, the administrator is allowing a drive to be BitLocker-protected without having the recovery information successfully backed up to AD DS; however, BitLocker will not automatically retry the backup if it fails. Instead, administrators can create a script for the backup, as described earlier in [What if BitLocker is enabled on a computer before the computer has joined the domain?](#what-if-bitlocker-is-enabled-on-a-computer-before-the-computer-has-joined-the-domain) to capture the information after connectivity is restored.

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
