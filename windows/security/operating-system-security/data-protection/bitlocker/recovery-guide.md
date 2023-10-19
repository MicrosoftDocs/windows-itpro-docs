---
title: BitLocker recovery guide
description: Learn about the BitLocker key recovery process, from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# BitLocker recovery guide

This article describes how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS). This article assumes that it's understood how to configure devices to automatically backup BitLocker recovery information, and what types of recovery information are saved to Microsoft Entra ID and AD DS.

## What is BitLocker recovery?

BitLocker recovery is the process by which access to a BitLocker-protected drive can be restored if the drive doesn't unlock using its default unlock mechanism.

In a recovery scenario, the following options to restore access to the drive may be available:

- The user can supply a *recovery password*, if available. A recovery password must be allowed by policy settings, so that users can print or save it. The recovery password is a 48-digit string
- *Data recovery agents* can use their credentials to unlock the drive, if configured.If the drive is an operating system drive, the drive must be mounted as a data drive on another device for the data recovery agent to unlock it
- An administrator can obtain the *recovery password* from Microsoft Entra ID or AD DS and use it to unlock the drive. Storing recovery passwords in Microsoft Entra ID or AD DS is recommended to provide a way to obtain recovery passwords for drives in an organization if needed. This method requires to enable the policy settings:
  - [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
  - [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
  - [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

## What causes BitLocker recovery?

The following list provides examples of common events that causes BitLocker to enter recovery mode when attempting to start the operating system drive:

- Changing the BIOS or firmware boot device order on devices with TPM 1.2
- Having the CD or DVD drive before the hard drive in the BIOS boot order and then inserting or removing a CD or DVD
- Failing to boot from a network drive before booting from the hard drive
- Docking or undocking a portable computer
- Changes to the NTFS partition table on the disk
- Entering the personal identification number (PIN) incorrectly too many times
- Turning off the support for reading the USB device in the pre-boot environment from the BIOS or UEFI firmware if using USB-based keys instead of a TPM
- Turning off, disabling, deactivating, or clearing the TPM
- Upgrading critical early startup components, such as a BIOS or UEFI firmware upgrade
- Forgetting the PIN when PIN authentication has been enabled
- Upgrading TPM firmware
- Adding or removing hardware
- Removing, inserting, or completely depleting the charge on a smart battery on a portable computer
- Changes to the boot manager on the disk
- Hiding the TPM from the operating system
- Modifying the Platform Configuration Registers (PCRs) used by the TPM validation profile
- Moving the BitLocker-protected drive into a new computer
- Upgrading the motherboard to a new one with a new TPM
- Failing the TPM self-test
- Changing the usage authorization for the storage root key of the TPM to a non-zero value

    > [!NOTE]
    > The BitLocker TPM initialization process sets the usage authorization value to zero, so another user or process must explicitly have changed this value.

- Disabling the code integrity check or enabling test signing on Windows Boot Manager (Bootmgr)
- Using a BIOS hot key during the boot process to change the boot order to something other than the hard drive

> [!NOTE]
> Before beginning recovery, it is recommend to determine what caused recovery. This might help prevent the problem from occurring again in the future. For instance, if it is determined that an attacker has modified the computer by obtaining physical access, new security policies can be created for tracking who has physical presence. After the recovery password has been used to recover access to the PC, BitLocker reseals the encryption key to the current values of the measured components.

For planned scenarios, such as a known hardware or firmware upgrades, initiating recovery can be avoided by temporarily suspending BitLocker protection. Because suspending BitLocker leaves the drive fully encrypted, the administrator can quickly resume BitLocker protection after the planned task has been completed. Using suspend and resume also reseals the encryption key without requiring the entry of the recovery key.

> [!NOTE]
> If suspended BitLocker will automatically resume protection when the PC is rebooted, unless a reboot count is specified using the manage-bde command line tool.

If software maintenance requires the computer to be restarted and two-factor authentication is being used, the BitLocker network unlock feature can be enabled to provide the secondary authentication factor when the computers don't have a user to provide the additional authentication method.

Recovery has been described within the context of unplanned or undesired behavior. However, recovery can also be caused as an intended production scenario, for example in order to manage access control. When desktop or laptop computers are redeployed to other departments or employees in the enterprise, BitLocker can be forced into recovery before the computer is given to a new user.

## BitLocker recovery process

When planning the BitLocker recovery process, first consult the organization's current best practices for recovering sensitive information. For example:

- how does the organization handle lost Windows passwords?
- how does the organization perform smart card PIN resets?

After a BitLocker recovery has been initiated, users can use a recovery password to unlock access to encrypted data. Consider both self-recovery and recovery password retrieval methods for the organization.

When the recovery process is determined:

- Become familiar with how a recovery password can be retrieved. See:
  - [Self-recovery](#self-recovery)
  - [Recovery password retrieval](#recovery-password-retrieval)
- Determine a series of steps for post-recovery, including analyzing why the recovery occurred and resetting the recovery password. See:
  - [Post-recovery analysis](#post-recovery-analysis)

## Self-recovery

In some cases, users might have the recovery password in a printout or a USB flash drive and can perform self-recovery. It's recommended that the organization creates a policy for self-recovery. If self-recovery includes using a password or recovery key stored on a USB flash drive, the users must be warned not to store the USB flash drive in the same place as the PC, especially during travel. For example, if both the PC and the recovery items are in the same bag it would be easy for access to be gained to the PC by an unauthorized user. Another policy to consider is having users contact the Helpdesk before or after performing self-recovery so that the root cause can be identified.

## Recovery password retrieval

If the user doesn't have a recovery password printed or on a USB flash drive, the user will need to be able to retrieve the recovery password from an online source. If the PC is a member of a domain, the recovery password can be backed up to AD DS. **However, back up of the recovery password to AD DS does not happen by default.** Backup of the recovery password to AD DS has to be configured via the appropriate group policy settings **before** BitLocker was enabled on the PC. BitLocker group policy settings can be found in the Local Group Policy Editor or the Group Policy Management Console (GPMC) under **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption**. The following policy settings define the recovery methods that can be used to restore access to a BitLocker-protected drive if an authentication method fails or is unable to be used.

This method requires to enable the policy settings:
  - [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
  - [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
  - [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

In each of these policies, select **Save BitLocker recovery information to Active Directory Domain Services** and then choose which BitLocker recovery information to store in AD DS. Check the **Do not enable BitLocker until recovery information is stored in AD
DS** check box if it's desired to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information for the drive to AD DS succeeds.

> [!NOTE]
> If the PCs are part of a workgroup, users are advised to save their BitLocker recovery password with their Microsoft account online. Having an online copy of the BitLocker recovery password is recommended to help ensure access to data is not lost in the event of a recovery being required.

The BitLocker Recovery Password Viewer for Active Directory Users and Computers tool allows domain administrators to view BitLocker recovery passwords for specific computer objects in Active Directory.

The following list can be used as a template for creating a recovery process for recovery password retrieval. This sample process uses the BitLocker Recovery Password Viewer for Active Directory Users and Computers tool.

- [Record the name of the user's computer](#record-the-name-of-the-users-computer)
- [Verify the user's identity](#verify-the-users-identity)
- [Locate the recovery password in AD DS](#locate-the-recovery-password-in-ad-ds)
- [Gather information to determine why recovery occurred](#gather-information-to-determine-why-recovery-occurred)
- [Give the user the recovery password](#give-the-user-the-recovery-password)

### Record the name of the user's computer

The name of the user's computer can be used to locate the recovery password in AD DS. If the user doesn't know the name of the computer, ask the user to read the first word of the **Drive Label** in the **BitLocker Drive Encryption Password Entry** user interface. This word is the computer name when BitLocker was enabled and is probably the current name of the computer.

### Verify the user's identity

The person who is asking for the recovery password should be verified as the authorized user of that computer. It should also be verified whether the computer for which the user provided the name belongs to the user.

### Locate the recovery password in AD DS

Locate the computer object with the matching name in AD DS. Because computer object names are listed in the AD DS global catalog, the object should be able to be located even if it's a multi-domain forest.

### Multiple recovery passwords

If multiple recovery passwords are stored under a computer object in AD DS, the name of the BitLocker recovery information object includes the date on which the password was created.

To make sure the correct password is provided and/or to prevent providing the incorrect password, ask the user to read the eight character password ID that is displayed in the recovery console.

Since the password ID is a unique value that is associated with each recovery password stored in AD DS, running a query using this ID finds the correct password to unlock the encrypted volume.

### Gather information to determine why recovery occurred

Before giving the user the recovery password, information should be gatherer that will help determine why the recovery was needed. This information can be used to analyze the root cause during the post-recovery analysis. For more information about post-recovery analysis, see [Post-recovery analysis](#post-recovery-analysis).

### Give the user the recovery password

Because the recovery password is 48 digits long, the user may need to record the password by writing it down or typing it on a different computer. If using MBAM or Configuration Manager BitLocker Management, the recovery password will be regenerated after it's recovered from the MBAM or Configuration Manager database to avoid the security risks associated with an uncontrolled password.

> [!NOTE]
> Because the 48-digit recovery password is long and contains a combination of digits, the user might mishear or mistype the password. The boot-time recovery console uses built-in checksum numbers to detect input errors in each 6-digit block of the 48-digit recovery password, and offers the user the opportunity to correct such errors.

### Post-recovery analysis

When a volume is unlocked using a recovery password, an event is written to the event log, and the platform validation measurements are reset in the TPM to match the current configuration. Unlocking the volume means that the encryption key has been released and is ready for on-the-fly encryption when data is written to the volume, and on-the-fly decryption when data is read from the volume. After the volume is unlocked, BitLocker behaves the same way, regardless of how the access was granted.

If it's noticed that a computer is having repeated recovery password unlocks, an administrator might want to perform post-recovery analysis to determine the root cause of the recovery, and refresh BitLocker platform validation so that the user no longer needs to enter a recovery password each time that the computer starts up. For more information, see:

- [Determine the root cause of the recovery](#determine-the-root-cause-of-the-recovery)
- [Resolve the root cause](#resolve-the-root-cause)

### Determine the root cause of the recovery

If a user needed to recover the drive, it's important to determine the root cause that initiated the recovery as soon as possible. Properly analyzing the state of the computer and detecting tampering may reveal threats that have broader implications for enterprise security.

While an administrator can remotely investigate the cause of recovery in some cases, the end user might need to bring the computer that contains the recovered drive on site to analyze the root cause further.

Review and answer the following questions for the organization:

1. Which BitLocker protection mode is in effect (TPM, TPM + PIN, TPM + startup key, startup key only)? Which PCR profile is in use on the PC?

2. Did the user merely forget the PIN or lose the startup key? If a token was lost, where might the token be?

3. If TPM mode was in effect, was recovery caused by a boot file change?

4. If recovery was caused by a boot file change, is the boot file change due to an intended user action (for example, BIOS upgrade), or a malicious software?

5. When was the user last able to start the computer successfully, and what might have happened to the computer since then?

6. Might the user have encountered malicious software or left the computer unattended since the last successful startup?

To help answer these questions, use the BitLocker command-line tool to view the current configuration and protection mode:

```cmd
manage-bde.exe -status
```

Scan the event log to find events that help indicate why recovery was initiated (for example, if a boot file change occurred). Both of these capabilities can be performed remotely.

### Resolve the root cause

After it has been identified what caused recovery, BitLocker protection can be reset to avoid recovery on every startup.

The details of this reset can vary according to the root cause of the recovery. If root cause can't be determined, or if a malicious software or a rootkit might have infected the computer, Helpdesk should apply best-practice virus policies to react appropriately.

> [!NOTE]
> BitLocker validation profile reset can be performed by suspending and resuming BitLocker.

- [Unknown PIN](#unknown-pin)
- [Lost startup key](#lost-startup-key)
- [Changes to boot files](#changes-to-boot-files)

## Unknown PIN

If a user has forgotten the PIN, the PIN must be reset while signed on to the computer in order to prevent BitLocker from initiating recovery each time the computer is restarted.

### To prevent continued recovery due to an unknown PIN

1. Unlock the computer using the recovery password.

2. Reset the PIN:

    1. Select and hold the drive and then select **Change PIN**

    2. In the BitLocker Drive Encryption dialog, select **Reset a forgotten PIN**. If the signed in account isn't an administrator account, administrative credentials must be provided at this time.

    3. In the PIN reset dialog, provide and confirm the new PIN to be used and then select **Finish**.

3. The new PIN can be used the next time the drive needs to be unlocked.

## Lost startup key

If the USB flash drive that contains the startup key has been lost, then drive must be unlocked by using the recovery key. A new startup can then be created.

### To prevent continued recovery due to a lost startup key

1. Sign in as an administrator to the computer that has its startup key lost.

2. Open Manage BitLocker.

3. Select **Duplicate start up key**, insert the clean USB drive where the key will be written, and then select **Save**.

## Changes to boot files

This error occurs if the firmware is updated. As a best practice, BitLocker should be suspended before making changes to the firmware. Protection should then be resumed after the firmware update has completed. Suspending BitLocker prevents the computer from going into recovery mode. However, if changes were made when BitLocker protection was on, the recovery password can be used to unlock the drive and the platform validation profile will be updated so that recovery won't occur the next time.

## Windows RE and device encryption

Windows Recovery Environment (RE) can be used to recover access to a drive protected by [device encryption](index.md#device-encryption). If a device is unable to boot after two failures, Startup Repair automatically starts. When Startup Repair is launched automatically due to boot failures, it executes only operating system and driver file repairs if the boot logs or any available crash dump points to a specific corrupted file. Devices that include firmware to support specific TPM measurements for *PCR 7*, the TPM can validate that Windows RE is a trusted operating environment and unlock any BitLocker-protected drives if Windows RE hasn't been modified. If the Windows RE environment has been modified, for example, the TPM has been disabled, the drives stay locked until the BitLocker recovery key is provided. If Startup Repair isn't able to run automatically from the PC and instead, Windows RE is manually started from a repair disk, the BitLocker recovery key must be provided to unlock the BitLocker-protected drives.

Windows RE will also ask for a BitLocker recovery key when a **Remove everything** reset from Windows RE is started on a device that uses **TPM + PIN** or **Password for OS drive** protectors. If BitLocker recovery is started on a keyboardless device with TPM-only protection, Windows RE, not the boot manager, will ask for the BitLocker recovery key. After the key is entered, Windows RE troubleshooting tools can be accessed, or Windows can be started normally.

The BitLocker recovery screen in Windows RE has the accessibility tools like narrator and on-screen keyboard to help enter the BitLocker recovery key. If the BitLocker recovery key is requested by the Windows boot manager, those tools might not be available.

To activate the narrator during BitLocker recovery in Windows RE, press <kbd>WIN</kbd>+<kbd>CTRL</kbd>+<kbd>ENTER</kbd>. To activate the on-screen keyboard, select a text input control.