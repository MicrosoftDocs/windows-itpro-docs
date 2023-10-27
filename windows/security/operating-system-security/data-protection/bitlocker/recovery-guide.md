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
    **Recovery password**: a 48-digit number used to unlock a volume when it is in recovery mode. The recovery password may be saved as a text file, printed or stored in Microsoft Entra ID or Active Directory. The user can supply a *recovery password*, if available. A recovery password must be allowed by policy settings, so that users can print or save it.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery.png" alt-text="Screenshot of the default BitLocker recovery screen asking enter the recovery password." lightbox="images/preboot-recovery.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="2":::
    **Recovery key**: an encryption key stored on removable media that can be used for recovering data encrypted on a BitLocker volume. The file name has a format of <protector_id>.bek. For the OS drive, the recovery key can be used to gain access to the device if BitLocker detects a condition that prevents it from unlocking the drive when the device is starting up. A recovery key can also be used to gain access to fixed data drives and removable drives that are encrypted with BitLocker, if for some reason the password is forgotten or the device can't access the drive.
  :::column-end:::
  :::column span="2":::
  :::image type="content" source="images/preboot-recovery-key.png" alt-text="Screenshot of the BitLocker recovery screen asking to plug a USB drive with the recovery key." lightbox="images/preboot-recovery-key.png" border="false":::
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    **Key package**: decryption key that can be used with the BitLocker Repair tool to reconstruct critical parts of a drive and salvage recoverable data. With the key package and either the *recovery password* or *recovery key*, portions of a corrupted BitLocker-protected drive can be decrypted. Each key package works only for a drive that has the corresponding drive identifier. A key package is not generated automatically, and can be saved on a file or in AD DS.
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="4":::
    **Data Recovery Agent certificate**: a Data Recovery Agent (DRA) is a type of certificate that is associated with an Active Directory security principal and that can be used to access any BitLocker encrypted drives configured with the matching public key. DRAs can use their credentials to unlock the drive. If the drive is an OS drive, the drive must be mounted as a data drive on another device for the DRA to unlock it.
  :::column-end:::
:::row-end:::

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

When planning the BitLocker recovery process, first consult the organization's current best practices for recovering sensitive information. For example:

| :ballot_box_with_check: | **Question** |
|--|--|
| :black_square_button: | *How does the organization handle lost Windows passwords?* |
| :black_square_button: | *How does the organization perform smart card PIN resets?* |
| :black_square_button: | *Are users allowed to save or retrieve recovery information for the devices that they own?* |

Answering the questions helps to determine the best BitLocker recovery process for the organization, and to configure BitLocker policy settings accordingly. For example, if the organization has a process for resetting passwords, a similar process can be used for BitLocker recovery. If users aren't allowed to save or retrieve recovery information, the organization can use a data recovery agents (DRAs) or automatically back up recovery information to Microsoft Entra ID or Active Directory Domain Services (AD DS).

After a BitLocker recovery has been initiated, users can use a recovery password to unlock access to encrypted data. Consider both self-recovery and recovery password retrieval methods for the organization.

### User-initaited backup

In order to recover BitLocker, you need to have access to the recovery password. This means that all recovery scenarios start with the assumption that the recovery password is available. The BitLocker recovery password is unique to the computer it was created on and can be saved in various ways, such as on paper, on a USB startup device, in the Active Directory directory service, or in a file on a network. However, having access to this key allows the holder to unlock a BitLocker-protected volume and access all of its data. Therefore, it is crucial for your organization to establish procedures to control access to recovery passwords and ensure that they are stored securely, separate from the computers they protect.

#### OneDrive option

There's an option for storing the BitLocker recovery key using OneDrive. This option requires that computers aren't members of a domain and that the user is using a Microsoft Account. Local user accounts don't have the option to use OneDrive. Using the OneDrive option is the default recommended recovery key storage method for computers that aren't joined to a domain.

Users can verify whether the recovery key is saved properly by checking OneDrive for the *BitLocker* folder, which is created automatically during the save process. The folder contains two files, a `readme.txt` and the recovery key. For users storing more than one recovery password on their OneDrive, they can identify the required recovery key by looking at the file name. The recovery key ID is appended to the end of the file name.

## Centralized backup

The preferred backup methodology in an organization is to automatically store BitLocker recovery information in a central location. Depending on the organization's requirements, the recovery information can be stored in Microsoft Entra ID, AD DS, or file shares.

The recommendation is to use the following BitLocker backup methods:

- For Microsoft Entra joined devices, store the recovery key in Microsoft Entra ID
- For Active Directory joined devices, store the recovery key in AD DS

Backup of the recovery password doesn't happen automatically, but policy settings can be configured **before** BitLocker is enabled. The following policy settings define the recovery methods that can be used to restore access to a BitLocker-protected drive if an authentication method fails or is unable to be used.

- [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
- [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
- [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

> [!IMPORTANT]
> The *BitLocker key package* can be stored in Active Directory Domain Services (AD DS), not in Microsoft Entra ID.

### Microsoft Entra ID

### Active Directory

The BitLocker recovery information for a device joined to Active Directory is stored in a child object of the computer object itself. Each BitLocker recovery object includes the recovery password and other recovery information. More than one BitLocker recovery object can exist under each Computer object, because there can be more than one recovery password associated with a BitLocker-enabled volume. The name of the BitLocker recovery object incorporates a globally unique identifier (GUID) and date and time information, for a fixed length of 63 characters. The syntax is `<Object Creation Date and Time><Recovery GUID>`.

> [!NOTE]
> Active Directory maintains history of all recovery passwords for a computer object. Old recovery keys are not removed automatically from AD DS, unless the computer object is deleted.

The common name (cn) for the BitLocker recovery object is `ms-FVE-RecoveryInformation`. Each `ms-FVE-RecoveryInformation` object has the following attributes:

|Attribute Name | Description|
|-|-|
|`ms-FVE-RecoveryPassword`| The 48-digit recovery password used to recover a BitLocker-encrypted disk volume.|
|`ms-FVE-RecoveryGuid`| GUID associated with a BitLocker recovery password. In BitLocker's recovery mode, the GUID is displayed to the user, so that the correct recovery password can be located to unlock the volume. The GUID is also included in the name of the recovery object.|
|`ms-FVE-VolumeGuid`| GUID associated with a BitLocker-supported disk volume. While the password (stored in `ms-FVE-RecoveryGuid`) is unique for each recovery password, the volume identifier is unique for each BitLocker-encrypted volume.|
|`ms-FVE-KeyPackage`| Volume's BitLocker encryption key secured by the corresponding recovery password. With this key package and the recovery password (stored in `ms-FVE-RecoveryPassword`), portions of a BitLocker-protected volume can be decrypted if the disk is corrupted. Each key package will work only for a volume that has the corresponding volume identifier (stored in `ms-FVE-VolumeGuid`). The BitLocker Repair Tool can be used to make use of the key package.|

To learn more about the BitLocker attributes stored in AD DS, review the following articles:

- [ms-FVE-KeyPackage attribute](/windows/win32/adschema/a-msfve-keypackage)
- [ms-FVE-RecoveryPassword attribute](/windows/win32/adschema/a-msfve-recoverypassword)

The BitLocker key package isn't saved by default. To save the package along with the recovery password in AD DS, the **Backup recovery password and key package** policy setting must be selected in the policy that controls the recovery method. The key package can also be exported from a working volume.

If recovery information is not backed up to AD DS, or if you want to save a key package in an alternative location, use the following command to generate a key package for a volume:

 ``` cmd
manage-bde.exe -KeyPackage C: -id <id> -path <path>
```

A file with a file name format of `BitLocker Key Package {<id>}.KPG` is created in the specified path.

> [!NOTE]
> To export a new key package from an unlocked, BitLocker-protected volume, local administrator access to the working volume is required before any damage occurrs to the volume.

### Multiple recovery passwords

If multiple recovery passwords are stored under a computer object in AD DS, the name of the BitLocker recovery information object includes the date on which the password was created.

To make sure the correct password is provided and/or to prevent providing the incorrect password, ask the user to read the eight character password ID that is displayed in the recovery console.

Since the password ID is a unique value that is associated with each recovery password stored in AD DS, running a query using this ID finds the correct password to unlock the encrypted volume.

### Data Recovery Agents

DRAs can be used to recover OS drives, fixed data drives, and removable data drives. However, when used to recover OS drives, the operating system drive must be mounted on another device as a *data drive* for the DRA to be able to unlock the drive. Data recovery agents are added to the drive when it's encrypted, and can be updated after encryption occurs.

The benefit of using a DRA over password or key recovery is that the DRA acts as a *master key* for BitLocker. With a DRA you can recover any volume protected by the policy, without having to find a specific password or key for each individual volume."

To configure DRAs for devices that are joined to an Active Directory domain, the following steps are required:

1. Obtain a DRA certificate. The following key usage and enhanced key usage attributes are inspected by BitLocker before using the certificate.
  1. If a key usage attribute is present, it must be one of the following:
    - `CERT_DATA_ENCIPHERMENT_KEY_USAGE`
    - `CERT_KEY_AGREEMENT_KEY_USAGE`
    -`CERT_KEY_ENCIPHERMENT_KEY_USAGE`
  1.  If an enhanced key usage (EKU) attribute is present, it must be one of the following:
    - As specified in the policy setting, or the default `1.3.6.1.4.1.311.67.1.1`
    - Any EKU object identifier supported by your certification authority (CA)
1. Add the DRA via group policy using the path: **Computer configuration** > **Policies** > **Windows Settings** > **Security Settings** > **Public Key Policies** > **BitLocker Drive Encryption**
1. Configure the [Provide the unique identifiers for your organization](configure.md?tabs=common#provide-the-unique-identifiers-for-your-organization) policy setting to associate a unique identifier to a new drive that is enabled with BitLocker. An identification field is a string that is used to uniquely identify a business unit or organization. Identification fields are required for management of data recovery agents on BitLocker-protected drives. BitLocker only manages and updates DRAs when an identification field is present on a drive, and is identical to the value configured on the device

1. Configure the following policy settings to allow recovery using a DRA for each drive type:

    - [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
    - [Choose how BitLocker-protected fixed drives can be recovered](configure.md?tabs=fixed#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
    - [Choose how BitLocker-protected removable drives can be recovered](configure.md?tabs=removable#choose-how-bitlocker-protected-removable-drives-can-be-recovered)

## Next steps

> [!div class="nextstepaction"]
> Learn about the process to unlock a BitLocker-protected volume, and suggested practices:
>
> [BitLocker recovery process >](operations-guide.md)
>
> Learn about the information displayed in the BitLocker preboot recovery screen, depending on configured policy settings and recovery keys status:
>
> [BitLocker recovery process >](operations-guide.md)