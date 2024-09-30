---
title: BitLocker recovery overview
description: Learn about BitLocker recovery scenarios, recovery options, and how to determine root cause of failed automatic unlocks.
ms.topic: how-to
ms.date: 06/18/2024
---

# BitLocker recovery overview

BitLocker recovery is the process by which access to a BitLocker-protected drive can be restored if the drive doesn't unlock using its default unlock mechanism.

This article describes scenarios that trigger BitLocker recovery, how to configure devices to save recovery information, and the options to restore access to a locked drive.

## BitLocker recovery scenarios

The following list provides examples of common events that cause a device to enter BitLocker recovery mode when starting Windows:

- Entering the wrong PIN too many times
- Turning off the support for reading the USB device in the preboot environment from the BIOS or UEFI firmware if using USB-based keys instead of a TPM
- Having the CD or DVD drive before the hard drive in the BIOS boot order (common with virtual machines)
- Docking or undocking a portable computer
- Changes to the NTFS partition table on the disk
- Changes to the boot manager
- PXE booting, unless BitLocker uses the *Network Unlock* feature
- Turning off, disabling, deactivating, or clearing the TPM
- TPM self-test failure
- Upgrading the motherboard to a new one with a new TPM
- Upgrading critical early startup components, such as a BIOS or UEFI firmware upgrade
- Hiding the TPM from the operating system
- Modifying the Platform Configuration Registers (PCRs) used by the TPM validation profile
- Moving a BitLocker-protected drive into a new computer
- On devices with TPM 1.2, changing the BIOS or firmware boot device order
- Exceeding the maximum allowed number of failed sign-in attempts

    > [!NOTE]
    > To take advantage of this functionality, you must configure the policy setting **Interactive logon: Machine account lockout threshold** located in **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options**. Alternatively, use the [Exchange ActiveSync](/Exchange/clients/exchange-activesync/exchange-activesync) **MaxFailedPasswordAttempts** policy setting, or the [DeviceLock Configuration Service Provider (CSP)](/windows/client-management/mdm/policy-csp-devicelock#accountlockoutpolicy).

As part of the [BitLocker recovery process](recovery-process.md), it's recommended to determine what caused a device to enter in recovery mode. Root cause analysis might help to prevent the problem from occurring again in the future. For instance, if you determine that an attacker modified a device by obtaining physical access, you can implement new security policies for tracking who has physical presence.

For planned scenarios, such as a known hardware or firmware upgrades, initiating recovery can be avoided by temporarily suspending BitLocker protection. Suspending BitLocker leaves the drive fully encrypted, and the administrator can quickly resume BitLocker protection after the planned task is completed. Using *suspend* and *resume* also reseals the encryption key without requiring the entry of the recovery key.

> [!NOTE]
> If suspended, BitLocker automatically resumes protection when the device is rebooted, unless a reboot count is specified using PowerShell or the `manage-bde.exe` command line tool. For more information about suspending BitLocker, review the [BitLocker operations guide](operations-guide.md#suspend-and-resume).

> [!TIP]
> Recovery is described within the context of unplanned or undesired behavior. However, recovery can also be caused as an intended production scenario, for example in order to manage access control. When devices are redeployed to other departments or employees in the organization, BitLocker can be forced into recovery before the device is delivered to a new user.

## Windows RE and BitLocker recovery

Windows Recovery Environment (Windows RE) can be used to recover access to a drive protected by BitLocker. If a device is unable to boot after two failures, *Startup Repair* starts automatically.

When Startup Repair is launched automatically due to boot failures, it only executes operating system and driver file repairs, provided that the boot logs or any available crash dump point to a specific corrupted file. On devices that support specific TPM measurements for PCR[7], the TPM validates that Windows RE is a trusted operating environment and unlocks any BitLocker-protected drives if Windows RE has not been modified. If the Windows RE environment has been modified, for example the TPM is disabled, the drives stay locked until the BitLocker recovery key is provided. If Startup Repair can't run automatically, and instead Windows RE is manually started from a repair disk, then the BitLocker recovery key must be provided to unlock the BitLocker-protected drives.

Windows RE will also ask for your BitLocker recovery key when you start a *Remove everything* reset from Windows RE on a device that uses the **TPM + PIN** or **Password for OS drive** protector. If you start BitLocker recovery on a keyboardless device with TPM-only protection, Windows RE, not the boot manager, will ask for the BitLocker recovery key. After you enter the key, you can access Windows RE troubleshooting tools or start Windows normally.

The BitLocker recovery screen that's shown by Windows RE has the accessibility tools like narrator and on-screen keyboard to help you enter your BitLocker recovery key:

- To activate the narrator during BitLocker recovery in Windows RE, press <kbd>WIN</kbd> + <kbd>CTRL</kbd> + <kbd>Enter</kbd>
- To activate the on-screen keyboard, tap on a text input control

:::image type="content" source="images/bl-narrator.png" alt-text="Screenshot of Windows RE and narrator.":::

If the BitLocker recovery key is requested by the Windows boot manager, those tools might not be available.

## BitLocker recovery options

In a recovery scenario, the following options to restore access to the drive might be available, depending on the policy settings applied to the devices:

:::row:::
  :::column span="2":::
    - **Recovery password**: a 48-digit number used to unlock a volume when it is in recovery mode. The recovery password might be saved as a text file, printed or stored in Microsoft Entra ID or Active Directory. The user can supply a recovery password, if available
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery.png" alt-text="Screenshot of the default BitLocker recovery screen asking enter the recovery password." lightbox="images/preboot-recovery.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    - **Recovery key**: an encryption key stored on removable media that can be used for recovering data encrypted on a BitLocker volume. The file name has a format of `<protector_id>.bek`. For the OS drive, the recovery key can be used to gain access to the device if BitLocker detects a condition that prevents it from unlocking the drive when the device is starting up. A recovery key can also be used to gain access to fixed data drives and removable drives that are encrypted with BitLocker, if for some reason the password is forgotten or the device can't access the drive
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-key.png" alt-text="Screenshot of the BitLocker recovery screen asking to plug a USB drive with the recovery key." lightbox="images/preboot-recovery-key.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    - **Key package**: decryption key that can be used with the BitLocker Repair tool to reconstruct critical parts of a drive and salvage recoverable data. With the key package and either the *recovery password* or *recovery key*, portions of a corrupted BitLocker-protected drive can be decrypted. Each key package works only for a drive that has the corresponding drive identifier. A key package isn't generated automatically, and can be saved on a file or in Active Directory Domain Services. A key package can't be stored in Microsoft Entra ID
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    - **Data Recovery Agent certificate**: a Data Recovery Agent (DRA) is a type of certificate that is associated with an Active Directory security principal and that can be used to access any BitLocker encrypted drives configured with the matching public key. DRAs can use their credentials to unlock the drive. If the drive is an OS drive, the drive must be mounted as a data drive on another device for the DRA to unlock it
  :::column-end:::
:::row-end:::

> [!TIP]
> Both the *Recovery password* and *Recovery key* can be supplied by users in the Control Panel applet (for data and removable drives), or in the preboot recovery screen. It's recommended to configure policy settings to customize the preboot recovery screen, for example by adding a custom message, URL, and help desk contact information. For more information, review the article [BitLocker preboot recovery screen](preboot-recovery-screen.md).

When planning the BitLocker recovery process, first consult the organization's current best practices for recovering sensitive information. For example:

| :ballot_box_with_check: | Question |
|--|--|
| :black_square_button: | *How does the organization handle lost or forgotten passwords?* |
| :black_square_button: | *How does the organization perform smart card PIN resets?* |
| :black_square_button: | *Are users allowed to save or retrieve recovery information for the devices that they own?* |
| :black_square_button: | *How much do you want users to be involved in the BitLocker configuration process? Do you want users to interact with the process, be silent, or both?* |
| :black_square_button: | *Where do you want to store the BitLocker recovery keys?* |
| :black_square_button: | *Do you want to enable recovery password rotation?* |

Answering the questions helps to determine the best BitLocker recovery process for the organization, and to configure BitLocker policy settings accordingly. For example, if the organization has a process for resetting passwords, a similar process can be used for BitLocker recovery. If users aren't allowed to save or retrieve recovery information, the organization can use a data recovery agents (DRAs), or automatically back up recovery information.

The following policy settings define the recovery methods that can be used to restore access to a BitLocker-protected drive:

- [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
- [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
- [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

> [!TIP]
> In each of these policies, select **Save BitLocker recovery information to Active Directory Domain Services** and then choose which BitLocker recovery information to store in AD DS. Use the option **Do not enable BitLocker until recovery information is stored in AD DS** to prevent users from enabling BitLocker unless the backup of BitLocker recovery information for the drive to Microsoft Entra ID or AD DS succeeds.

### BitLocker recovery password

To recover BitLocker, a user can use a recovery password, if available. The BitLocker recovery password is unique to the device it was created on, and can be saved in different ways. Depending on the configured policy settings, the recovery password can be:

- Saved in Microsoft Entra ID, for Microsoft Entra joined
- Saved in AD DS, for devices that are joined to Active Directory
- Saved on text file
- Printed

Having access to the recovery password allows the holder to unlock a BitLocker-protected volume and access all of its data. Therefore, it's important for your organization to establish procedures to control access to recovery passwords and ensure that they're stored securely, separate from the devices they protect.

> [!NOTE]
> There's an option for storing the BitLocker recovery key in a user's Microsoft account. The option is available for devices that aren't members of a domain and that the user is using a Microsoft account. Storing the recovery password in a Microsoft account is the default recommended recovery key storage method for devices that aren't Microsoft Entra joined or Active Directory joined.

Backup of the recovery password should be configured before BitLocker is enabled, but can also be done after encryption, as described in the [BitLocker operations guide](operations-guide.md#reset-and-backup-a-recovery-password).\
The preferred backup methodology in an organization is to automatically store BitLocker recovery information in a central location. Depending on the organization's requirements, the recovery information can be stored in Microsoft Entra ID, AD DS, or file shares.

The recommendation is to use the following BitLocker backup methods:

- For Microsoft Entra joined devices, store the recovery key in Microsoft Entra ID
- For Active Directory joined devices, store the recovery key in AD DS

> [!NOTE]
> There's no automatic way to store the recovery key for removable storage devices in Microsoft Entra ID or AD DS. However, you can use PowerShell or the `manage.bde.exe` command to do so. For more information and examples, review the [BitLocker operations guide](operations-guide.md?tabs=powershell#reset-and-backup-a-recovery-password).

### Data Recovery Agents

DRAs can be used to recover OS drives, fixed data drives, and removable data drives. However, when used to recover OS drives, the operating system drive must be mounted on another device as a *data drive* for the DRA to be able to unlock the drive. Data recovery agents are added to the drive when it's encrypted, and can be updated after encryption occurs.

The benefit of using a DRA over password or key recovery is that the DRA acts as a *master key* for BitLocker. With a DRA you can recover any volume protected by the policy, without having to find a specific password or key for each individual volume.

To configure DRAs for devices that are joined to an Active Directory domain, the following steps are required:

1. Obtain a DRA certificate. The following key usage and enhanced key usage attributes are inspected by BitLocker before using the certificate.
    1. If a key usage attribute is present, it must be either:
        - `CERT_DATA_ENCIPHERMENT_KEY_USAGE`
        - `CERT_KEY_AGREEMENT_KEY_USAGE`
        - `CERT_KEY_ENCIPHERMENT_KEY_USAGE`
    1. If an enhanced key usage (EKU) attribute is present, it must be either:
        - As specified in the policy setting, or the default `1.3.6.1.4.1.311.67.1.1`
        - Any EKU object identifier supported by your certification authority (CA)
1. Add the DRA via group policy using the path: **Computer configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Public Key Policies** > **BitLocker Drive Encryption**
1. Configure the [Provide the unique identifiers for your organization](configure.md?tabs=common#provide-the-unique-identifiers-for-your-organization) policy setting to associate a unique identifier to a new drive that is enabled with BitLocker. An identification field is a string that is used to uniquely identify a business unit or organization. Identification fields are required for management of data recovery agents on BitLocker-protected drives. BitLocker only manages and updates DRAs when an identification field is present on a drive, and is identical to the value configured on the device
1. Configure the following policy settings to allow recovery using a DRA for each drive type:
    - [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
    - [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
    - [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

## BitLocker recovery information stored in Microsoft Entra ID

The BitLocker recovery information for Microsoft Entra joined devices can be stored in Microsoft Entra ID. The advantage of storing the BitLocker recovery passwords in Microsoft Entra ID, is that users can easily retrieve the passwords for the devices assigned to them from the web, without involving the help desk.

Access to recovery passwords can also be delegated to the help desk, to facilitate support scenarios.

The BitLocker recovery password information stored in Microsoft Entra ID is a `bitlockerRecoveryKey` resource type. The resource can be retrieved from the Microsoft Entra admin center, the Microsoft Intune admin center (for devices enrolled in Microsoft Intune), using PowerShell, or using Microsoft Graph. For more information, see [bitlockerRecoveryKey resource type](/graph/api/resources/bitlockerrecoverykey).

## BitLocker recovery information stored in AD DS

The BitLocker recovery information for a device joined to an Active Directory domain can be stored in AD DS. The information is stored in a child object of the computer object itself. Each BitLocker recovery object includes the recovery password and other recovery information. More than one BitLocker recovery object can exist under each computer object, because there can be more than one recovery password associated with a BitLocker-enabled volume.

The name of the BitLocker recovery object incorporates a globally unique identifier (GUID) and date and time information, for a fixed length of 63 characters. The syntax is `<Object Creation Date and Time><Recovery GUID>`.

> [!NOTE]
> Active Directory maintains history of all recovery passwords for a computer object. Old recovery keys are not removed automatically from AD DS, unless the computer object is deleted.

The common name (cn) for the BitLocker recovery object is `ms-FVE-RecoveryInformation`. Each `ms-FVE-RecoveryInformation` object has the following attributes:

|Attribute Name | Description|
|-|-|
|`ms-FVE-RecoveryPassword`| The 48-digit recovery password used to recover a BitLocker-encrypted disk volume.|
|`ms-FVE-RecoveryGuid`| GUID associated with a BitLocker recovery password. In BitLocker's recovery mode, the GUID is displayed to the user, so that the correct recovery password can be located to unlock the volume. The GUID is also included in the name of the recovery object.|
|`ms-FVE-VolumeGuid`| GUID associated with a BitLocker-supported disk volume. While the password (stored in `ms-FVE-RecoveryGuid`) is unique for each recovery password, the volume identifier is unique for each BitLocker-encrypted volume.|
|`ms-FVE-KeyPackage`| Volume's BitLocker encryption key secured by the corresponding recovery password. With this key package and the recovery password (stored in `ms-FVE-RecoveryPassword`), portions of a BitLocker-protected volume can be decrypted if the disk is corrupted. Each key package works only for a volume that has the corresponding volume identifier (stored in `ms-FVE-VolumeGuid`). The BitLocker Repair Tool can be used to make use of the key package.|

To learn more about the BitLocker attributes stored in AD DS, review the following articles:

- [ms-FVE-KeyPackage attribute](/windows/win32/adschema/a-msfve-keypackage)
- [ms-FVE-RecoveryPassword attribute](/windows/win32/adschema/a-msfve-recoverypassword)

The BitLocker key package isn't saved by default. To save the package along with the recovery password in AD DS, the **Backup recovery password and key package** policy setting must be selected in the policy that controls the recovery method. The key package can also be exported from a working volume.

If recovery information isn't backed up to AD DS, or if you want to save a key package in an alternative location, use the following command to generate a key package for a volume:

 ``` cmd
manage-bde.exe -KeyPackage C: -id <id> -path <path>
```

A file with a file name format of `BitLocker Key Package {<id>}.KPG` is created in the specified path.

> [!NOTE]
> To export a new key package from an unlocked, BitLocker-protected volume, local administrator access to the working volume is required before any damage occurrs to the volume.

## Next steps

> [!div class="nextstepaction"]
> Learn how to obtain BitLocker recovery information for Microsoft Entra joined, Microsoft Entra hybrid joined, and Active Directory joined devices, and how to restore access to a locked drive:
>
> [BitLocker recovery process >](recovery-process.md)
