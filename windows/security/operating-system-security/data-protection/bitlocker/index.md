---
title: BitLocker overview
description: Learn about BitLocker practical applications and requirements.
ms.topic: overview
ms.date: 06/18/2024
---

# BitLocker overview

BitLocker is a Windows security feature that provides encryption for entire volumes, addressing the threats of data theft or exposure from lost, stolen, or inappropriately decommissioned devices.

## Practical applications

Data on a lost or stolen device is vulnerable to unauthorized access, either by running a software-attack tool against it, or by transferring the device's hard drive to a different device. BitLocker helps mitigate unauthorized data access by enhancing file and system protections, rendering data inaccessible when BitLocker-protected devices are decommissioned or recycled.

## BitLocker and TPM

BitLocker provides maximum protection when used with a Trusted Platform Module (TPM), which is a common hardware component installed on Windows devices. The TPM works with BitLocker to ensure that a device hasn't been tampered with while the system is offline.

In *addition* to the TPM, BitLocker can lock the normal startup process until the user supplies a personal identification number (PIN) or inserts a removable device  that contains a *startup key*. These security measures provide multifactor authentication and assurance that the device can't start or resume from hibernation until the correct PIN or startup key is presented.

On devices that don't have a TPM, BitLocker can still be used to encrypt the operating system drive. This implementation requires the user to either:

- use a startup key, which is a file stored on a removable drive that is used to start the device, or when resuming from hibernation
- use a password. This option isn't secure since it's subject to brute force attacks as there isn't a password lockout logic. As such, the password option is discouraged and disabled by default

Both options don't provide the preboot system integrity verification offered by BitLocker with a TPM.

:::row:::
  :::column span="1":::
    *BitLocker preboot screen with startup key:*
  :::column-end:::
  :::column span="1":::
    *BitLocker preboot screen with PIN:*
  :::column-end:::
  :::column span="1":::
    *BitLocker preboot screen with password:*
  :::column-end:::
:::row-end:::
:::row:::
  :::column span="1":::
    :::image type="content" source="images/preboot-startup-key.png" alt-text="Screenshot of the BitLocker preboot screen prompting to enter a startup key." lightbox="images/preboot-startup-key.png" border="false":::
  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/preboot-pin.png" alt-text="Screenshot of the BitLocker preboot screen prompting to enter a PIN." lightbox="images/preboot-pin.png" border="false":::
  :::column-end:::
  :::column span="1":::
    :::image type="content" source="images/preboot-password.png" alt-text="Screenshot of the BitLocker preboot screen prompting to enter a password." lightbox="images/preboot-password.png" border="false":::
  :::column-end:::
:::row-end:::

## System requirements

BitLocker has the following requirements:

- For BitLocker to use the system integrity check provided by a TPM, the device must have TPM 1.2 or later versions. If a device doesn't have a TPM, saving a startup key on a removable drive is mandatory when enabling BitLocker
- A device with a TPM must also have a *Trusted Computing Group* (TCG)-compliant BIOS or UEFI firmware. The BIOS or UEFI firmware establishes a chain of trust for the preboot startup, and it must include support for *TCG-specified Static Root of Trust Measurement*. A computer without a TPM doesn't require TCG-compliant firmware
- The system BIOS or UEFI firmware (for TPM and non-TPM devices) must support the USB mass storage device class, and reading files on a USB drive in the preboot environment

    > [!NOTE]
    > TPM 2.0 is not supported in *Legacy* and *Compatibility Support Module (CSM)* modes of the BIOS. Devices with TPM 2.0 must have their BIOS mode configured as native UEFI only. The Legacy and CSM options must be disabled. For added security, enable the *secure boot* feature.
    >
    > Installed operating system on hardware in Legacy mode stops the OS from booting when the BIOS mode is changed to UEFI. Use the tool [`mbr2gpt.exe`][WIN-1] before changing the BIOS mode, which prepares the OS and the disk to support UEFI.

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
    > If the drive was prepared as a single contiguous space, BitLocker requires a new volume to hold the boot files. `BdeHdCfg.exe` can create the volume. For more information about using the tool, see [Bdehdcfg][WIN-2] in the Command-Line Reference.

> [!NOTE]
> When installing the BitLocker optional component on a server, the *Enhanced Storage* feature must be installed. The feature is used to support hardware encrypted drives.

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-enablement.md)]

> [!NOTE]
> Licensing requirements for BitLocker enablement are different from the licensing requirements for BitLocker *management*. To learn more, review the how-to guide: [configure BitLocker](configure.md).

## Device encryption

*Device encryption* is a Windows feature that provides a simple way for some devices to enable BitLocker encryption automatically. Device encryption is available on all Windows versions, and it requires a device to meet either [Modern Standby][WIN-3] or HSTI security requirements. Device encryption can't have externally accessible ports that allow DMA access. Device encryption encrypts only the OS drive and fixed drives, it doesn't encrypt external/USB drives.

> [!IMPORTANT]
> Starting in Windows 11, version 24H2, the prerequisites of DMA and HSTI/Modern Standby are removed. As a result, more devices are eligible for automatic and manual device encryption.
> For more information, see [BitLocker drive encryption in Windows 11 for OEMs](/windows-hardware/design/device-experiences/oem-bitlocker).

Unlike a standard BitLocker implementation, device encryption is enabled automatically so that the device is always protected. When a clean installation of Windows is completed and the out-of-box experience is finished, the device is prepared for first use. As part of this preparation, device encryption is initialized on the OS drive and fixed data drives on the computer with a clear key that is the equivalent of standard BitLocker suspended state. In this state, the drive is shown with a warning icon in Windows Explorer. The yellow warning icon is removed after the TPM protector is created and the recovery key is backed up.

- If the device is Microsoft Entra joined or Active Directory domain joined, the clear key is removed once the recovery key is successfully backed up to Microsoft Entra ID or Active Directory Domain Services (AD DS). The following policy settings must be enabled for the recovery key to be backed up: [Choose how BitLocker-protected operating system drives can be recovered](configure.md?tabs=os#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
  - For Microsoft Entra joined devices: the recovery password is created automatically when the user authenticates to Microsoft Entra ID, then the recovery key is backed up to Microsoft Entra ID, the TPM protector is created, and the clear key is removed
  - For AD DS joined devices: the recovery password is created automatically when the computer joins the domain. The recovery key is then backed up to AD DS, the TPM protector is created, and the clear key is removed
- If the device isn't Microsoft Entra joined or Active Directory domain joined, a Microsoft account with administrative privileges on the device is required. When the administrator uses a Microsoft account to sign in, the clear key is removed, a recovery key is uploaded to the online Microsoft account, and a TPM protector is created. Should a device require the recovery key, the user is guided to use an alternate device and navigate to a recovery key access URL to retrieve the recovery key by using their Microsoft account credentials
- If a device uses only local accounts, then it remains unprotected even though the data is encrypted

> [!IMPORTANT]
> Device encryption uses the `XTS-AES 128-bit` encryption method, by default. In case you configure a policy setting to use a different encryption method, you can use the Enrollment Status Page to avoid the device to begin encryption with the default method. BitLocker has a logic that doesn't start encrypting until the end of OOBE, after the Enrollment Status Page device configuration phase is complete. This logic gives a device enough time to receive the BitLocker policy settings before starting encryption.
>
> If a different encryption method and/or cipher strength is needed but the device is already encrypted, it must first be decrypted before the new encryption method and/or cipher strength can be applied. After the device is decrypted, you can apply different BitLocker settings.

If a device doesn't initially qualify for device encryption, but then a change is made that causes the device to qualify (for example, by turning on *Secure Boot*), device encryption enables BitLocker automatically as soon as it detects it.

You can check whether a device meets requirements for device encryption in the System Information app (`msinfo32.exe`). If the device meets the requirements, System Information shows a line that reads:

|Item|Value|
|-|-|
|Device Encryption Support | Meets prerequisites|

### Difference between BitLocker and device encryption

- Device encryption turns on BitLocker automatically on device encryption-qualifying devices, with the recovery key automatically backed up to Microsoft Entra ID, AD DS, or the user's Microsoft account
- Device encryption adds a device encryption setting in the Settings app, which can be used to turn device encryption on or off
  - The Settings UI doesn't show device encryption enabled until encryption is complete

:::image type="content" source="images/settings-device-encryption.png" alt-text="Screenshot of the Settings app showing the device encryption panel." border="False":::

> [!NOTE]
> If device encryption is turned off, it will no longer automatically enable itself in the future. The user must enable it manually in Settings

### Disable device encryption

It's recommended to keep device encryption on for any systems that support it. However, you can prevent the automatic device encryption process by changing the following registry setting:

| Path|Name|Type|Value|
|-|-|-|-|
| `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker`| `PreventDeviceEncryption`|REG_DWORD|0x1|

For more information about device encryption, see [BitLocker device encryption hardware requirements][WIN-4].

## Next steps

> [!div class="nextstepaction"]
> Learn about technologies and features to protect against attacks on the BitLocker encryption key:
>
>
> [BitLocker countermeasures >](countermeasures.md)

<!--links-->

[WIN-1]: /windows/deployment/mbr-to-gpt
[WIN-2]: /windows-server/administration/windows-commands/bdehdcfg
[WIN-3]: /windows-hardware/design/device-experiences/modern-standby
[WIN-4]: /windows-hardware/design/device-experiences/oem-bitlocker#bitlocker-automatic-device-encryption