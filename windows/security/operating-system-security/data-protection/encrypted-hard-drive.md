---
title: Encrypted Hard Drive 
description: Encrypted Hard Drive uses the rapid encryption that is provided by BitLocker Drive Encryption to enhance data security and management.
ms.date: 11/08/2022
ms.topic: conceptual
---

# Encrypted Hard Drive

Encrypted hard drive uses the rapid encryption that is provided by BitLocker drive encryption to enhance data security and management.

By offloading the cryptographic operations to hardware, Encrypted hard drives increase BitLocker performance and reduce CPU usage and power consumption. Because Encrypted hard drives encrypt data quickly, enterprise devices can expand BitLocker deployment with minimal impact on productivity.

Encrypted hard drives are a new class of hard drives that are self-encrypting at a hardware level and allow for full disk hardware encryption. You can install Windows to encrypted hard drives without additional modification, beginning with Windows 8 and Windows Server 2012.

Encrypted hard drives provide:

- **Better performance**: Encryption hardware, integrated into the drive controller, allows the drive to operate at full data rate with no performance degradation.
- **Strong security based in hardware**: Encryption is always "on" and the keys for encryption never leave the hard drive. User authentication is performed by the drive before it will unlock, independently of the operating system
- **Ease of use**: Encryption is transparent to the user, and the user doesn't need to enable it. Encrypted Hard Drives are easily erased using on-board encryption key; there's no need to re-encrypt data on the drive.
- **Lower cost of ownership**: There's no need for new infrastructure to manage encryption keys, since BitLocker uses your existing infrastructure to store recovery information. Your device operates more efficiently because processor cycles don't need to be used for the encryption process.

Encrypted hard drives are supported natively in the operating system through the following mechanisms:

- **Identification**: The operating system identifies that the drive is an Encrypted hard drive device type.
- **Activation**: The operating system disk management utility activates, creates and maps volumes to ranges/bands as appropriate.
- **Configuration**: The operating system creates and maps volumes to ranges/bands as appropriate.
- **API**: API support for applications to manage Encrypted hard drives independent of BitLocker drive encryption (BDE).
- **BitLocker support**: Integration with the BitLocker Control Panel provides a seamless BitLocker end-user experience.

>[!WARNING]
>Self-encrypting hard drives and encrypted hard drives for Windows are not the same type of devices. Encrypted hard drives for Windows require compliance for specific TCG protocols as well as IEEE 1667 compliance; Self-encrypting hard drives do not have these requirements. It is important to confirm that the device type is an encrypted hard drive for Windows when planning for deployment.

If you're a storage device vendor who is looking for more info on how to implement Encrypted Hard Drive, see the [Encrypted Hard Drive Device Guide](/previous-versions/windows/hardware/design/dn653989(v=vs.85)).

[!INCLUDE [encrypted-hard-drive](../../../../includes/licensing/encrypted-hard-drive.md)]

## System Requirements

To use encrypted hard drives, the following system requirements apply:

For an encrypted hard drive used as a **data drive**:

- The drive must be in an uninitialized state.
- The drive must be in a security inactive state.

For an encrypted hard drive used as a **startup drive**:

- The drive must be in an uninitialized state.
- The drive must be in a security inactive state.
- The computer must be UEFI 2.3.1 based and have the EFI\_STORAGE\_SECURITY\_COMMAND\_PROTOCOL defined. (This protocol is used to allow programs running in the EFI boot services environment to send security protocol commands to the drive).
- The computer must have the compatibility support module (CSM) disabled in UEFI.
- The computer must always boot natively from UEFI.

>[!WARNING]
>All encrypted hard drives must be attached to non-RAID controllers to function properly.

## Technical overview

Rapid encryption in BitLocker directly addresses the security needs of enterprises while offering improved performance. In versions of Windows earlier than Windows Server 2012, BitLocker required a two-step process to complete read/write requests. In Windows Server 2012, Windows 8, or later versions, encrypted hard drives offload the cryptographic operations to the drive controller for much greater efficiency. When the operating system identifies an encrypted hard drive, it activates the security mode. This activation lets the drive controller generate a media key for every volume that the host computer creates. This media key, which is never exposed outside the disk, is used to rapidly encrypt or decrypt every byte of data that is sent or received from the disk.

## Configuring encrypted hard drives as startup drives

Configuration of encrypted hard drives as startup drives is done using the same methods as standard hard drives. These methods include:

- **Deploy from media**: Configuration of Encrypted Hard Drives happens automatically through the installation process.
- **Deploy from network**: This deployment method involves booting a Windows PE environment and using imaging tools to apply a Windows image from a network share. Using this method, the Enhanced Storage optional component needs to be included in the Windows PE image. You can enable this component using Server Manager, Windows PowerShell, or the DISM command line tool. If this component isn't present, configuration of Encrypted Hard Drives won't work.
- **Deploy from server**: This deployment method involves PXE booting a client with Encrypted Hard Drives present. Configuration of Encrypted Hard Drives happens automatically in this environment when the Enhanced Storage component is added to the PXE boot image. During deployment, the [TCGSecurityActivationDisabled](/windows-hardware/customize/desktop/unattend/microsoft-windows-enhancedstorage-adm-tcgsecurityactivationdisabled) setting in unattend.xml controls the encryption behavior of Encrypted Hard Drives.
- **Disk Duplication**: This deployment method involves use of a previously configured device and disk duplication tools to apply a Windows image to an Encrypted Hard Drive. Disks must be partitioned using at least Windows 8 or Windows Server 2012 for this configuration to work. Images made using disk duplicators won't work.

## Configuring hardware-based encryption with policy settings

There are three related policy settings that help you manage how BitLocker uses hardware-based encryption and which encryption algorithms to use. If these settings aren't configured or disabled on systems that are equipped with encrypted drives, BitLocker uses software-based encryption:

- [Configure use of hardware-based encryption for fixed data drives](bitlocker/policy-settings.md#configure-use-of-hardware-based-encryption-for-fixed-data-drives)  
- [Configure use of hardware-based encryption for removable data drives](bitlocker/policy-settings.md#configure-use-of-hardware-based-encryption-for-removable-data-drives)
- [Configure use of hardware-based encryption for operating system drives](bitlocker/policy-settings.md#configure-use-of-hardware-based-encryption-for-operating-system-drives)

## Encrypted hard drive architecture

Encrypted hard drives utilize two encryption keys on the device to control the locking and unlocking of data on the drive. These encryption keys are the data encryption key (DEK) and the authentication key (AK).

The Data Encryption Key is the key used to encrypt all of the data on the drive. The drive generates the DEK and it never leaves the device. It's stored in an encrypted format at a random location on the drive. If the DEK is changed or erased, data encrypted using the DEK is irrecoverable.

The AK is the key used to unlock data on the drive. A hash of the key is stored on the drive and requires confirmation to decrypt the DEK.

When a computer with an encrypted hard drive is in a powered-off state, the drive locks automatically. As a computer powers on, the device remains in a locked state and is only unlocked after the AK decrypts the DEK. Once the AK decrypts the DEK, read-write operations can take place on the device.

When writing data to the drive, it passes through an encryption engine before the write operation completes. Likewise, reading data from the drive requires the encryption engine to decrypt the data before passing that data back to the user. If the AK needs to be changed or erased, the data on the drive doesn't need to be re-encrypted. A new Authentication Key needs to be created and it will re-encrypt the DEK. Once completed, the DEK can now be unlocked using the new AK, and read-writes to the volume can continue.

## Reconfiguring encrypted hard drives

Many encrypted hard drive devices come pre-configured for use. If reconfiguration of the drive is required, use the following procedure after removing all available volumes and reverting the drive to an uninitialized state:

1. Open Disk Management (`diskmgmt.msc`)
2. Initialize the disk and select the appropriate partition style (MBR or GPT)
3. Create one or more volumes on the disk.
4. Use the BitLocker setup wizard to enable BitLocker on the volume.
