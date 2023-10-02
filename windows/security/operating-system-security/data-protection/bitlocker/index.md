---
title: BitLocker overview
description: Learn about BitLocker practical applications and requirements.
ms.collection:
  - highpri
  - tier1
ms.topic: overview
ms.date: 09/25/2023
---

# BitLocker overview

BitLocker is a Windows security feature that provides encryption for entire volumes.\
BitLocker addresses the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned devices.

## Practical applications

Data on a lost or stolen device is vulnerable to unauthorized access, either by running a software-attack tool against it, or by transferring the computer's hard drive to a different computer. BitLocker helps mitigate unauthorized data access by enhancing file and system protections. BitLocker also helps render data inaccessible when BitLocker-protected devices are decommissioned or recycled.

## BitLocker and TPM

BitLocker provides maximum protection when used with a Trusted Platform Module (TPM). A TPM is a hardware component installed in many devices and it works with BitLocker to help protect user data and to ensure that a computer hasn't been tampered with while the system is offline.

On devices that don't have a TPM, BitLocker can still be used to encrypt the operating system drive. However, this implementation requires the user to insert a USB key to start the device or when resuming from hibernation. A password can also be used to protect the OS volume on a device without TPM. Both options don't provide the pre-startup system integrity verification offered by BitLocker with a TPM.

In addition to the TPM, BitLocker offers the option to lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable device (such as a USB drive) that contains a startup key. These additional security measures provide multifactor authentication and assurance that the device won't start or resume from hibernation until the correct PIN or startup key is presented.

## System requirements

BitLocker has the following requirements:

- For BitLocker to use the system integrity check provided by a TPM, the device must have TPM 1.2 or later versions. If a device doesn't have a TPM, saving a startup key on a removable drive is mandatory when enabling BitLocker
- A device with a TPM must also have a Trusted Computing Group (TCG)-compliant BIOS or UEFI firmware. The BIOS or UEFI firmware establishes a chain of trust for the pre-operating system startup, and it must include support for TCG-specified Static Root of Trust Measurement. A computer without a TPM doesn't require TCG-compliant firmware
- The system BIOS or UEFI firmware (for TPM and non-TPM devices) must support the USB mass storage device class, including reading small files on a USB drive in the pre-operating system environment

    > [!NOTE]
    > TPM 2.0 is not supported in *Legacy* and *Compatibility Support Module (CSM)* modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and CSM options must be disabled. For added security, enable the secure boot feature.
    >
    > Installed Operating System on hardware in Legacy mode stops the OS from booting when the BIOS mode is changed to UEFI. Use the tool [`mbr2gpt.exe`](/windows/deployment/mbr-to-gpt) before changing the BIOS mode, which prepares the OS and the disk to support UEFI.

- The hard disk must be partitioned with at least two drives:
  - The *operating system drive* (or boot drive) contains the OS and its support files. It must be formatted with the NTFS file system
  - The *system drive* contains the files that are needed to load Windows after the firmware has prepared the system hardware. BitLocker isn't enabled on this drive. For BitLocker to work, the system drive:
    - must not be encrypted
    - must differ from the operating system drive
    - must be formatted with the FAT32 file system on computers that use UEFI-based firmware, or with the NTFS file system on computers that use BIOS firmware
    - it's recommended that to be approximately 350 MB in size. After BitLocker is turned on, it should have approximately 250 MB of free space

> [!IMPORTANT]
> When installed on a new device, Windows automatically creates the partitions that are required for BitLocker.
>
> An encrypted partition can't be marked as active.

> [!NOTE]
> When installing the BitLocker optional component on a server, the *Enhanced Storage* feature must be installed. The feature is used to support hardware encrypted drives.

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-enablement.md)]

> [!NOTE]
> Licensing requirements for BitLocker enablement are different from the licensing requirements for BitLocker management. To learn more, see [Configure BitLocker](configure.md).

## Next steps

> [!div class="nextstepaction"]
> Learn about technologies and features to protect against attacks on the BitLocker encryption key:
> [BitLocker countermeasures >](countermeasures.md)