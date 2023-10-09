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

BitLocker is a Windows security feature that provides encryption for entire volumes, addressing the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned devices.

## Practical applications

Data on a lost or stolen device is vulnerable to unauthorized access, either by running a software-attack tool against it, or by transferring the devices's hard drive to a different device. BitLocker helps mitigate unauthorized data access by enhancing file and system protections, rendering data inaccessible when BitLocker-protected devices are decommissioned or recycled.

## BitLocker and TPM

BitLocker provides maximum protection when used with a Trusted Platform Module (TPM). A TPM is a common hardware component installed on Windows devices, and it works with BitLocker to ensure that a device hasn't been tampered with while the system is offline.

On devices that don't have a TPM, BitLocker can still be used to encrypt the operating system drive. However, this implementation requires the user to insert a USB key to start the device, or when resuming from hibernation. A password can also be used to protect the OS volume on a device without TPM. Both options don't provide the pre-startup system integrity verification offered by BitLocker with a TPM.

In addition to the TPM, BitLocker has the option to lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable device (such as a USB drive) that contains a *startup key*. These security measures provide multifactor authentication and assurance that the device can't start or resume from hibernation until the correct PIN or startup key is presented.

## System requirements

BitLocker has the following requirements:

- For BitLocker to use the system integrity check provided by a TPM, the device must have TPM 1.2 or later versions. If a device doesn't have a TPM, saving a startup key on a removable drive is mandatory when enabling BitLocker
- A device with a TPM must also have a *Trusted Computing Group* (TCG)-compliant BIOS or UEFI firmware. The BIOS or UEFI firmware establishes a chain of trust for the pre-operating system startup, and it must include support for *TCG-specified Static Root of Trust Measurement*. A computer without a TPM doesn't require TCG-compliant firmware
- The system BIOS or UEFI firmware (for TPM and non-TPM devices) must support the USB mass storage device class, and reading files on a USB drive in the pre-operating system environment

    > [!NOTE]
    > TPM 2.0 is not supported in *Legacy* and *Compatibility Support Module (CSM)* modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and CSM options must be disabled. For added security, enable the *secure boot* feature.
    >
    > Installed operating system on hardware in Legacy mode stops the OS from booting when the BIOS mode is changed to UEFI. Use the tool [`mbr2gpt.exe`](/windows/deployment/mbr-to-gpt) before changing the BIOS mode, which prepares the OS and the disk to support UEFI.

- The hard disk must be partitioned with at least two drives:
  - The *operating system drive* (or boot drive) contains the OS and its support files. It must be formatted with the NTFS file system
  - The *system drive* contains files required to boot, decrypt, and load the operating system. BitLocker isn't enabled on this drive. For BitLocker to work, the system drive:
    - must not be encrypted
    - must differ from the operating system drive
    - must be formatted with the FAT32 file system on computers that use UEFI-based firmware, or with the NTFS file system on computers that use BIOS firmware
    - it's recommended that to be approximately 350 MB in size. After BitLocker is turned on, it should have approximately 250 MB of free space

    > [!IMPORTANT]
    > When installed on a new device, Windows automatically creates the partitions that are required for BitLocker.
    >
    > If the drive was prepared as a single contiguous space, BitLocker requires a new volume to hold the boot files. `BdeHdCfg.exe` can create the volume. For more information about using the tool, see [Bdehdcfg](/windows-server/administration/windows-commands/bdehdcfg) in the Command-Line Reference.

> [!NOTE]
> When installing the BitLocker optional component on a server, the *Enhanced Storage* feature must be installed. The feature is used to support hardware encrypted drives.

## Device Encryption

*Device Encryption* is a security feature that provides a simple way for some devices to enable BitLocker encryption automatically. Device Encryption requires a device to meet either [Modern Standby](/windows-hardware/design/device-experiences/modern-standby) or HSTI security requirements, and have no externally accessible ports that allow DMA access.

To learn more about Device Encryption, review the [Device Encryption](device-encryption.md) documentation.

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-enablement.md)]

> [!NOTE]
> Licensing requirements for BitLocker enablement are different from the licensing requirements for BitLocker *management*. To learn more, review the how-to guide: [configure BitLocker](configure.md).

## Next steps

> [!div class="nextstepaction"]
> Learn about technologies and features to protect against attacks on the BitLocker encryption key:
>
>
> [BitLocker countermeasures >](countermeasures.md)
