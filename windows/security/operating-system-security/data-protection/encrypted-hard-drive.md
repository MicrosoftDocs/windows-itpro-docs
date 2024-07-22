---
title: Encrypted hard drives
description: Learn how encrypted hard drives use the rapid encryption that is provided by BitLocker to enhance data security and management.
ms.date: 07/22/2024
ms.topic: concept-article
---

# Encrypted hard drives

## Overview

Encrypted hard drives are a class of hard drives that are self-encrypted at the hardware level and allow for full disk hardware encryption while being transparent to the user. These drives combine the security and management benefits provided by BitLocker Drive Encryption with the power of self-encrypting drives.

By offloading the cryptographic operations to hardware, encrypted hard drives increase BitLocker performance and reduce CPU usage and power consumption. Because encrypted hard drives encrypt data quickly, BitLocker deployment can be expanded across enterprise devices with little to no impact on productivity.

Encrypted hard drives provide:

- **Better performance**: Encryption hardware, integrated into the drive controller, allows the drive to operate at full data rate with no performance degradation
- **Strong security based in hardware**: Encryption is always *on* and the keys for encryption never leave the hard drive. User authentication is performed by the drive before it unlocks, independently of the operating system
- **Ease of use**: Encryption is transparent to the user, and the user doesn't need to enable it. Encrypted hard drives are easily erased using on-board encryption key; there's no need to re-encrypt data on the drive
- **Lower cost of ownership**: There's no need for new infrastructure to manage encryption keys, since BitLocker uses your existing infrastructure to store recovery information. Your device operates more efficiently because processor cycles don't need to be used for the encryption process

Encrypted hard drives are supported natively in the operating system through the following mechanisms:

- **Identification**: The operating system identifies that the drive is an *encrypted hard drive* device-type
- **Activation**: The operating system disk management utility activates, creates and maps volumes to ranges/bands as appropriate
- **Configuration**: The operating system creates and maps volumes to ranges/bands as appropriate
- **API**: API support for applications to manage encrypted hard drives independent of BitLocker drive encryption
- **BitLocker support**: Integration with the BitLocker Control Panel provides a seamless BitLocker user experience

>[!WARNING]
>*Self-encrypting hard drives* and *encrypted hard drives* for Windows are not the same type of devices:
>
> - encrypted hard drives for Windows require compliance for specific TCG protocols as well as IEEE 1667 compliance
> - self-encrypting hard drives don't have these requirements
>
>It's important to confirm that the device type is an encrypted hard drive for Windows when planning for deployment.

When the operating system identifies an encrypted hard drive, it activates the *security mode*. This activation lets the drive controller generate a *media key* for every volume that the host computer creates. The media key, which is never exposed outside the disk, is used to rapidly encrypt or decrypt every byte of data that is sent or received from the disk.

If you're a storage device vendor who is looking for more info on how to implement encrypted hard drive, see the [encrypted hard drive device guide](/previous-versions/windows/hardware/design/dn653989(v=vs.85)).

## System Requirements

To use encrypted hard drives, the following system requirements apply:

For an encrypted hard drive used as a **data drive**:

- The drive must be in an uninitialized state
- The drive must be in a security inactive state

For an encrypted hard drive used as a **startup drive**:

- The drive must be in an uninitialized state
- The drive must be in a security inactive state
- The computer must be UEFI 2.3.1 based and have the `EFI\_STORAGE\_SECURITY\_COMMAND\_PROTOCOL` defined. This protocol is used to allow programs running in the EFI boot services environment to send security protocol commands to the drive
- The computer must have the compatibility support module (CSM) disabled in UEFI
- The computer must always boot natively from UEFI

>[!WARNING]
>All encrypted hard drives must be attached to non-RAID controllers to function properly.

[!INCLUDE [encrypted-hard-drive](../../../../includes/licensing/encrypted-hard-drive.md)]

## Configure encrypted hard drives as startup drives

To configure encrypted hard drives as startup drives, use the same methods as standard hard drives:

- **Deploy from media**: configuration of encrypted hard drives happens automatically through the installation process
- **Deploy from network**: this deployment method involves booting a Windows PE environment and using imaging tools to apply a Windows image from a network share. With this method, the Enhanced Storage optional component needs to be included in the Windows PE image. Enable this component using Server Manager, Windows PowerShell, or the DISM command line tool. If the component isn't present, configuration of encrypted hard drives doesn't work
- **Deploy from server**: this deployment method involves PXE booting a client with encrypted hard drives present. Configuration of encrypted hard drives happens automatically in this environment when the Enhanced Storage component is added to the PXE boot image. During deployment, the [TCGSecurityActivationDisabled](/windows-hardware/customize/desktop/unattend/microsoft-windows-enhancedstorage-adm-tcgsecurityactivationdisabled) setting in `unattend.xml` controls the encryption behavior of encrypted hard drives
- **Disk duplication**: this deployment method involves use of a previously configured device and disk duplication tools to apply a Windows image to an encrypted hard drive. Images made using disk duplicators don't work

## Configure hardware-based encryption with policy settings

There are three policy settings to manage how BitLocker uses hardware-based encryption and which encryption algorithms to use. If these settings aren't configured or disabled on systems that are equipped with encrypted drives, BitLocker uses software-based encryption:

- [Configure use of hardware-based encryption for fixed data drives](bitlocker/configure.md?tabs=fixed#configure-use-of-hardware-based-encryption-for-fixed-data-drives)
- [Configure use of hardware-based encryption for removable data drives](bitlocker/configure.md?tabs=removable#configure-use-of-hardware-based-encryption-for-removable-data-drives)
- [Configure use of hardware-based encryption for operating system drives](bitlocker/configure.md?tabs=os#configure-use-of-hardware-based-encryption-for-operating-system-drives)

## Encrypted hard drive architecture

Encrypted hard drives utilize two encryption keys on the device to control the locking and unlocking of data on the drive. These encryption keys are the *Data Encryption Key* (DEK) and the *Authentication Key* (AK):

- the Data Encryption Key is used to encrypt all the data on the drive. The drive generates the DEK and it never leaves the device. It's stored in an encrypted format at a random location on the drive. If the DEK is changed or erased, data encrypted using the DEK is irrecoverable.
- the AK is the key used to unlock data on the drive. A hash of the key is stored on the drive and requires confirmation to decrypt the DEK

When a device with an encrypted hard drive is in a powered-off state, the drive locks automatically. As a device powers on, the device remains in a locked state and is only unlocked after the AK decrypts the DEK. Once the AK decrypts the DEK, read-write operations can take place on the device.

When data is written to the drive, it passes through an encryption engine before the write operation completes. Likewise, reading data from the drive requires the encryption engine to decrypt the data before passing that data back to the user. If the AK needs to be changed or erased, the data on the drive doesn't need to be re-encrypted. A new Authentication Key needs to be created and it re-encrypts the DEK. Once completed, the DEK can now be unlocked using the new AK, and read-writes to the volume can continue.

## Reconfigure encrypted hard drives

Many encrypted hard drive devices come preconfigured for use. If reconfiguration of the drive is required, use the following procedure after removing all available volumes and reverting the drive to an uninitialized state:

1. Open Disk Management (`diskmgmt.msc`)
1. Initialize the disk and select the appropriate partition style (MBR or GPT)
1. Create one or more volumes on the disk.
1. Use the BitLocker setup wizard to enable BitLocker on the volume.
