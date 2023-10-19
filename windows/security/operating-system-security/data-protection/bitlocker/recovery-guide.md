---
title: BitLocker recovery overview
description: Learn about the BitLocker recovery process, how to determine root cause of failed automatic unlocks, and how to restore access to a locked drive.
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# BitLocker recovery overview

BitLocker recovery is the process by which access to a BitLocker-protected drive can be restored if the drive doesn't unlock using its default unlock mechanism.

In a recovery scenario, the following options to restore access to the drive may be available:

:::row:::
  :::column span="2":::
    **Recovery password**: A 48-digit number used to unlock a volume when it is in recovery mode. The recovery password may be saved as a text file, printed or stored in Microsoft Entra ID or Active Directory. The user can supply a *recovery password*, if available. A recovery password must be allowed by policy settings, so that users can print or save it.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery.png" alt-text="Screenshot of the default BitLocker recovery screen asking to plug a USB drive with the recovery key." lightbox="images/preboot-recovery.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    **Recovery key**: an encryption key stored on removable media that can be used for recovering data encrypted on a BitLocker volume. The file name has a format of <protector_id>.bek. For the OS drive, the recovery key can be used to gain access to the device if BitLocker detects a condition that prevents it from unlocking the drive when the device is starting up. A recovery key can also be used to gain access to fixed data drives and removable drives that are encrypted with BitLocker, if for some reason the password is forgotten or the device can't access the drive.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-key.png" alt-text="Screenshot of the default BitLocker recovery screen asking to plug a USB drive with the recovery key." lightbox="images/preboot-recovery-key.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    **Data Recovery Agent**: A Data Recovery Agent (DRA) is a type of certificate that is associated with an Active Directory security principal and that can be used to access any BitLocker encrypted drives configured with the matching public key protector. *Data recovery agents* can use their credentials to unlock the drive. If the drive is an OS drive, the drive must be mounted as a data drive on another device for the data recovery agent to unlock it
  :::column-end:::
:::row-end:::

## BitLocker key package

The BitLocker key package isn't saved by default. To save the package along with the recovery password in AD DS, the **Backup recovery password and key package** policy setting must be selected in the policy that controls the recovery method. The key package can also be exported from a working volume.

If recovery information is not backed up to AD DS, or if you want to save a key package in an alternative location, use the following command to generate a key package for a volume:

 ``` cmd
manage-bde.exe -KeyPackage C: -id <id> -path <path>
```

A file with a `.kpg` extension is created in the specified path.

> [!NOTE]
> To export a new key package from an unlocked, BitLocker-protected volume, local administrator access to the working volume is required before any damage occurrs to the volume.

## Common scenarios for BitLocker recovery

The following list provides some examples of common events that causes BitLocker to enter recovery mode when attempting to start the operating system:

- Changing the BIOS or firmware boot device order (on devices with TPM 1.2)
- Having the CD or DVD drive before the hard drive in the BIOS boot order and then inserting or removing a CD or DVD
- Docking or undocking a portable computer
- Losing the USB drive that contains the *startup key*
- Changes to the NTFS partition table on the disk
- Entering the wrong PIN too many times
- Turning off the support for reading the USB device in the pre-boot environment from the BIOS or UEFI firmware if using USB-based keys instead of a TPM
- Turning off, disabling, deactivating, or clearing the TPM
- Upgrading critical early startup components, such as a BIOS or UEFI firmware upgrade
- Removing, inserting, or completely depleting the charge on a smart battery on a portable computer
- Changes to the boot manager on the disk
- Hiding the TPM from the operating system
- Modifying the Platform Configuration Registers (PCRs) used by the TPM validation profile
- Moving the BitLocker-protected drive into a new computer
- Upgrading the motherboard to a new one with a new TPM
- Failing the TPM self-test

Before beginning recovery, it's recommend to determine what caused recovery. This might help to prevent the problem from occurring again in the future. For instance, if it is determined that an attacker has modified the computer by obtaining physical access, new security policies can be created for tracking who has physical presence. After the recovery password has been used to recover access to the device, BitLocker reseals the encryption key to the current values of the measured components.

For planned scenarios, such as a known hardware or firmware upgrades, initiating recovery can be avoided by temporarily suspending BitLocker protection. Because suspending BitLocker leaves the drive fully encrypted, the administrator can quickly resume BitLocker protection after the planned task has been completed. Using suspend and resume also reseals the encryption key without requiring the entry of the recovery key.

> [!NOTE]
> If suspended, BitLocker automatically resumes protection when the device is rebooted, unless a reboot count is specified using PowerShell or the `manage-bde.exe` command line tool. For more information about suspending BitLocker, review the [BitLocker operations guide](operations-guide.md#suspend-and-resume).

If software maintenance requires the computer to be restarted and two-factor authentication is used, the BitLocker [Network Unlock](network-unlock.md) feature can be enabled to provide the secondary authentication factor when the computers don't have a user to provide the additional authentication method.

> [!TIP]
> Recovery is described within the context of unplanned or undesired behavior. However, recovery can also be caused as an intended production scenario, for example in order to manage access control. When devices are redeployed to other departments or employees in the organization, BitLocker can be forced into recovery before the device is delivered to a new user.

## Plan for BitLocker recovery

When planning for BitLocker recovery, consider the following:

### Automatic backup of recovery information

### Data Recovery Agents

### User backup of recovery information

## BitLocker recovery guide

This article describes how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS). This article assumes that it's understood how to configure devices to automatically backup BitLocker recovery information, and what types of recovery information are saved to Microsoft Entra ID and AD DS.