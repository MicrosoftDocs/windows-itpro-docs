---
title: Encrypted Hard Drive (Windows 10)
description: Encrypted Hard Drive uses the rapid encryption that is provided by BitLocker Drive Encryption to enhance data security and management.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dulcemontemayor
ms.date: 04/02/2019
---

# Encrypted Hard Drive

**Applies to**
- Windows 10
- Windows Server 2019
- Windows Server 2016

Encrypted Hard Drive uses the rapid encryption that is provided by BitLocker Drive Encryption to enhance data security and management.

By offloading the cryptographic operations to hardware, Encrypted Hard Drives increase BitLocker performance and reduce CPU usage and power consumption. Because Encrypted Hard Drives encrypt data quickly, enterprise devices can expand BitLocker deployment with minimal impact on productivity.

Encrypted Hard Drives are a new class of hard drives that are self-encrypting at a hardware level and allow for full disk hardware encryption. You can install Windows to Encrypted Hard Drives without additional modification beginning with Windows 8 and Windows Server 2012.

Encrypted Hard Drives provide:

-   **Better performance**: Encryption hardware, integrated into the drive controller, allows the drive to operate at full data rate with no performance degradation.
-   **Strong security based in hardware**: Encryption is always "on" and the keys for encryption never leave the hard drive. User authentication is performed by the drive before it will unlock, independently of the operating system
-   **Ease of use**: Encryption is transparent to the user, and the user doesn't need to enable it. Encrypted Hard Drives are easily erased using on-board encryption key; there is no need to re-encrypt data on the drive.
-   **Lower cost of ownership**: There is no need for new infrastructure to manage encryption keys, since BitLocker leverages your existing infrastructure to store recovery information. Your device operates more efficiently because processor cycles do not need to be used for the encryption process.

Encrypted Hard Drives are supported natively in the operating system through the following mechanisms:

-   **Identification**: The operating system can identify that the drive is an Encrypted Hard Drive device type
-   **Activation**: The operating system disk management utility can activate, create and map volumes to ranges/bands as appropriate
-   **Configuration**: The operating system can create and map volumes to ranges/bands as appropriate
-   **API**: API support for applications to manage Encrypted Hard Drives independently of BitLocker Drive Encryption (BDE)
-   **BitLocker support**: Integration with the BitLocker Control Panel provides a seamless BitLocker end user experience.

>[!WARNING]  
>Self-Encrypting Hard Drives and Encrypted Hard Drives for Windows are not the same type of device. Encrypted Hard Drives for Windows require compliance for specific TCG protocols as well as IEEE 1667 compliance; Self-Encrypting Hard Drives do not have these requirements. It is important to confirm the device type is an Encrypted Hard Drive for Windows when planning for deployment.
 
If you are a storage device vendor who is looking for more info on how to implement Encrypted Hard Drive, see the [Encrypted Hard Drive Device Guide](https://msdn.microsoft.com/library/windows/hardware/dn653989.aspx).

## System Requirements

To use Encrypted Hard Drives, the following system requirements apply:

For an Encrypted Hard Drive used as a **data drive**:

-   The drive must be in an uninitialized state.
-   The drive must be in a security inactive state.

For an Encrypted Hard Drive used as a **startup drive**:

-   The drive must be in an uninitialized state.
-   The drive must be in a security inactive state.
-   The computer must be UEFI 2.3.1 based and have the EFI\_STORAGE\_SECURITY\_COMMAND\_PROTOCOL defined. (This protocol is used to allow programs running in the EFI boot services environment to send security protocol commands to the drive).
-   The computer must have the Compatibility Support Module (CSM) disabled in UEFI.
-   The computer must always boot natively from UEFI.

>[!WARNING]  
>All Encrypted Hard Drives must be attached to non-RAID controllers to function properly.
 
## Technical overview

Rapid encryption in BitLocker directly addresses the security needs of enterprises while offering significantly improved performance. In versions of Windows earlier than Windows Server 2012, BitLocker required a two-step process to complete read/write requests. In Windows Server 2012, Windows 8, or later, Encrypted Hard Drives offload the cryptographic operations to the drive controller for much greater efficiency. When the operating system identifies an Encrypted Hard Drive, it activates the security mode. This activation lets the drive controller generate a media key for every volume that the host computer creates. This media key, which is never exposed outside the disk, is used to rapidly encrypt or decrypt every byte of data that is sent or received from the disk.

## Configuring Encrypted Hard Drives as Startup drives

Configuration of Encrypted Hard Drives as startup drives is done using the same methods as standard hard drives. These methods include:

-   **Deploy from media**: Configuration of Encrypted Hard Drives happens automatically through the installation process.
-   **Deploy from network**: This deployment method involves booting a Windows PE environment and using imaging tools to apply a Windows image from a network share. Using this method, the Enhanced Storage optional component needs to be included in the Windows PE image. You can enable this component using Server Manager, Windows PowerShell, or the DISM command line tool. If this component is not present, configuration of Encrypted Hard Drives will not work.
-   **Deploy from server**: This deployment method involves PXE booting a client with Encrypted Hard Drives present. Configuration of Encrypted Hard Drives happens automatically in this environment when the Enhanced Storage component is added to the PXE boot image. During deployment, the [TCGSecurityActivationDisabled](https://msdn.microsoft.com/library/windows/hardware/dn923247.aspx) setting in unattend.xml controls the encryption behavior of Encrypted Hard Drives.
-   **Disk Duplication**: This deployment method involves use of a previously configured device and disk duplication tools to apply a Windows image to an Encrypted Hard Drive. Disks must be partitioned using at least Windows 8 or Windows Server 2012 for this configuration to work. Images made using disk duplicators will not work.

## Configuring hardware-based encryption with Group Policy

There are three related Group Policy settings that help you manage how BitLocker uses hardware-based envryption and which encryption algorithms to use. If these settings are not configured or disabled on systems that are equipped with encrypted drives, BitLocker uses software-based encryption: 

- [Configure use of hardware-based encryption for fixed data drives](bitlocker/bitlocker-group-policy-settings.md#a-href-idbkmk-hdefxdaconfigure-use-of-hardware-based-encryption-for-fixed-data-drives)  
- [Configure use of hardware-based encryption for removable data drives](bitlocker/bitlocker-group-policy-settings.md#a-href-idbkmk-hderddaconfigure-use-of-hardware-based-encryption-for-removable-data-drives)
- [Configure use of hardware-based encryption for operating system drives](bitlocker/bitlocker-group-policy-settings.md#a-href-idbkmk-hdeosdaconfigure-use-of-hardware-based-encryption-for-operating-system-drives)

## Encrypted Hard Drive Architecture

Encrypted Hard Drives utilize two encryption keys on the device to control the locking and unlocking of data on the drive. These are the Data Encryption Key (DEK) and the Authentication Key (AK).

The Data Encryption Key is the key used to encrypt all of the data on the drive. The drive generates the DEK and it never leaves the device. It is stored in an encrypted format at a random location on the drive. If the DEK is changed or erased, data encrypted using the DEK is irrecoverable.

The Authentication Key is the key used to unlock data on the drive. A hash of the key is stored on drive and requires confirmation to decrypt the DEK.

When a computer with an Encrypted Hard Drive is in a powered off state, the drive locks automatically. As a computer powers on, the device remains in a locked state and is only unlocked after the Authentication Key decrypts the Data Encryption Key. Once the Authentication Key decrypts the Data
Encryption Key, read-write operations can take place on the device.

When writing data to the drive, it passes through an encryption engine before the write operation completes. Likewise, reading data from the drive requires the encryption engine to decrypt the data before passing that data back to the user. In the event that the DEK needs to be changed or erased, the data on the drive does not need to be re-encrypted. A new Authentication Key needs to be created and it will re-encrypt the DEK. Once completed, the DEK can now be unlocked using the new AK and read-writes to the volume can continue.

## Re-configuring Encrypted Hard Drives

Many Encrypted Hard Drive devices come pre-configured for use. If reconfiguration of the drive is required, use the following procedure after removing all available volumes and reverting the drive to an uninitialized state:

1.  Open Disk Management (diskmgmt.msc)
2.  Initialize the disk and select the appropriate partition style (MBR or GPT)
3.  Create one or more volumes on the disk.
4.  Use the BitLocker setup wizard to enable BitLocker on the volume.
