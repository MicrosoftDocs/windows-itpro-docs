---
title: BitLocker recovery guide
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# BitLocker recovery guide

Organizations can use BitLocker recovery information saved in Microsoft Entra ID and Active Directory Domain Services (AD DS) to access BitLocker-protected drives. It's recommended to create a recovery model for BitLocker while planning your BitLocker deployment.

This article describes how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS). This article assumes that it's understood how to configure devices to automatically backup BitLocker recovery information, and what types of recovery information are saved to Microsoft Entra ID and AD DS.

## What is BitLocker recovery?

BitLocker recovery is the process by which access to a BitLocker-protected drive can be restored if the drive can't be unlocked normally. In a recovery scenario, the following options to restore access to the drive are available:

- The user can supply a *recovery password*: if the organization allows users to print or store recovery passwords, the users can enter the 48-digit recovery password
- *Data recovery agents* can use their credentials to unlock the drive: if the drive is an operating system drive, the drive must be mounted as a data drive on another device for the data recovery agent to unlock it
- An administrator can obtain the *recovery password* from Microsoft Entra ID or AD DS and use it to unlock the drive. Storing recovery passwords in Microsoft Entra ID or AD DS is recommended to provide a way to obtain recovery passwords for drives in an organization if needed. This method requires to enable the policy settings:
  - [Choose how BitLocker-protected operating system drives can be recovered](policy-settings.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
  - [Choose how BitLocker-protected fixed drives can be recovered](policy-settings.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
  - [Choose how BitLocker-protected removable drives can be recovered](policy-settings.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

## What causes BitLocker recovery?

The following list provides some examples of specific events that causes BitLocker to enter recovery mode when attempting to start the operating system drive:

- On devices with TPM 1.2, changing the BIOS or firmware boot device order causes BitLocker recovery. However, devices with TPM 2.0 don't start BitLocker recovery in this case. TPM 2.0 doesn't consider a firmware change of boot device order as a security threat because the OS Boot Loader isn't compromised
- Having the CD or DVD drive before the hard drive in the BIOS boot order and then inserting or removing a CD or DVD
- Failing to boot from a network drive before booting from the hard drive
- Docking or undocking a portable computer. In some instances (depending on the computer manufacturer and the BIOS), the docking condition of the portable computer is part of the system measurement and must be consistent to validate the system status and unlock BitLocker. So if a portable computer is connected to its docking station when BitLocker is turned on, then it might also need to be connected to the docking station when it's unlocked. Conversely, if a portable computer isn't connected to its docking station when BitLocker is turned on, then it might need to be disconnected from the docking station when it's unlocked
- Changes to the NTFS partition table on the disk including creating, deleting, or resizing a primary partition
- Entering the personal identification number (PIN) incorrectly too many times so that the anti-hammering logic of the TPM is activated. Anti-hammering logic is software or hardware methods that increase the difficulty and cost of a brute force attack on a PIN by not accepting PIN entries until after a certain amount of time has passed
- Turning off the support for reading the USB device in the pre-boot environment from the BIOS or UEFI firmware if using USB-based keys instead of a TPM
- Turning off, disabling, deactivating, or clearing the TPM
- Upgrading critical early startup components, such as a BIOS or UEFI firmware upgrade, causing the related boot measurements to change
- Forgetting the PIN when PIN authentication has been enabled
- Updating option ROM firmware
- Upgrading TPM firmware
- Adding or removing hardware; for example, inserting a new card in the computer, including some PCMIA wireless cards
- Removing, inserting, or completely depleting the charge on a smart battery on a portable computer
- Changes to the master boot record on the disk
- Changes to the boot manager on the disk
- Hiding the TPM from the operating system. Some BIOS or UEFI settings can be used to prevent the enumeration of the TPM to the operating system. When implemented, this option can make the TPM hidden from the operating system. When the TPM is hidden, BIOS and UEFI secure startup are disabled, and the TPM doesn't respond to commands from any software
- Using a different keyboard that doesn't correctly enter the PIN or whose keyboard map doesn't match the keyboard map assumed by the pre-boot environment. This problem can prevent the entry of enhanced PINs
- Modifying the Platform Configuration Registers (PCRs) used by the TPM validation profile. For example, including **PCR\[1\]** would result in BitLocker measuring most changes to BIOS settings, causing BitLocker to enter recovery mode even when non-boot critical BIOS settings change

    > [!NOTE]
    > Some computers have BIOS settings that skip measurements to certain PCRs, such as **PCR\[2\]**. Changing this setting in the BIOS would cause BitLocker to enter recovery mode because the PCR measurement will be different.

- Moving the BitLocker-protected drive into a new computer
- Upgrading the motherboard to a new one with a new TPM
- Losing the USB flash drive containing the startup key when startup key authentication has been enabled
- Failing the TPM self-test
- Having a BIOS, UEFI firmware, or an option ROM component that isn't compliant with the relevant Trusted Computing Group standards for a client computer. For example, a non-compliant implementation may record volatile data (such as time) in the TPM measurements, causing different measurements on each startup and causing BitLocker to start in recovery mode
- Changing the usage authorization for the storage root key of the TPM to a non-zero value

    > [!NOTE]
    > The BitLocker TPM initialization process sets the usage authorization value to zero, so another user or process must explicitly have changed this value.

- Disabling the code integrity check or enabling test signing on Windows Boot Manager (Bootmgr)
- Pressing the F8 or F10 key during the boot process
- Adding or removing add-in cards (such as video or network cards), or upgrading firmware on add-in cards
- Using a BIOS hot key during the boot process to change the boot order to something other than the hard drive

> [!NOTE]
> Before beginning recovery, it is recommend to determine what caused recovery. This might help prevent the problem from occurring again in the future. For instance, if it is determined that an attacker has modified the computer by obtaining physical access, new security policies can be created for tracking who has physical presence. After the recovery password has been used to recover access to the PC, BitLocker reseals the encryption key to the current values of the measured components.

For planned scenarios, such as a known hardware or firmware upgrades, initiating recovery can be avoided by temporarily suspending BitLocker protection. Because suspending BitLocker leaves the drive fully encrypted, the administrator can quickly resume BitLocker protection after the planned task has been completed. Using suspend and resume also reseals the encryption key without requiring the entry of the recovery key.

> [!NOTE]
> If suspended BitLocker will automatically resume protection when the PC is rebooted, unless a reboot count is specified using the manage-bde command line tool.

If software maintenance requires the computer to be restarted and two-factor authentication is being used, the BitLocker network unlock feature can be enabled to provide the secondary authentication factor when the computers don't have a user to provide the additional authentication method.

Recovery has been described within the context of unplanned or undesired behavior. However, recovery can also be caused as an intended production scenario, for example in order to manage access control. When desktop or laptop computers are redeployed to other departments or employees in the enterprise, BitLocker can be forced into recovery before the computer is given to a new user.

