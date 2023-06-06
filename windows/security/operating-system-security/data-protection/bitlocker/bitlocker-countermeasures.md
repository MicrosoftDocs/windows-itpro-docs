---
title: BitLocker Countermeasures
description: Windows uses technologies including TPM, Secure Boot, Trusted Boot, and Early Launch Anti-malware (ELAM) to protect against attacks on the BitLocker encryption key.
ms.topic: conceptual
ms.date: 11/08/2022
---

# BitLocker Countermeasures

Windows uses technologies including trusted platform module (TPM), secure boot, and measured boot to help protect BitLocker encryption keys against attacks. BitLocker is part of a strategic approach to securing data against offline attacks through encryption technology. Data on a lost or stolen computer is vulnerable. For example, there could be unauthorized access, either by running a software attack tool against the computer or by transferring the computer's hard disk to a different computer.

BitLocker helps mitigate unauthorized data access on lost or stolen computers before the authorized operating system is started. This mitigation is done by:

- **Encrypting volumes on a computer.** For example, BitLocker can be turned on for the operating system volume, a volume on a fixed drive. or removable data drive (such as a USB flash drive, SD card, etc.) Turning on BitLocker for the operating system volume encrypts all system files on the volume, including the paging files and hibernation files. The only exception is for the System partition, which includes the Windows Boot Manager and minimal boot collateral required for decryption of the operating system volume after the key is unsealed.

- **Ensuring the integrity of early boot components and boot configuration data.** On devices that have a TPM version 1.2 or higher, BitLocker uses the enhanced security capabilities of the TPM to make data accessible only if the computer's BIOS firmware code and configuration, original boot sequence, boot components, and BCD configuration all appear unaltered and the encrypted disk is located in the original computer. On systems that use TPM PCR[7], BCD setting changes deemed safe are permitted to improve usability.

The next sections provide more details about how Windows protects against various attacks on the BitLocker encryption keys in Windows 11, Windows 10, Windows 8.1, and Windows 8.

For more information about how to enable the best overall security configuration for devices beginning with Windows 10 version 1803, see [Standards for a highly secure Windows device](/windows-hardware/design/device-experiences/oem-highly-secure).

## Protection before startup

Before Windows starts, security features implemented as part of the device hardware and firmware must be relied on, including TPM and secure boot. Fortunately, many modern computers feature a TPM and secure boot.

### Trusted Platform Module

A trusted platform module (TPM) is a microchip designed to provide basic security-related functions, primarily involving encryption keys. On some platforms, TPM can alternatively be implemented as a part of secure firmware. BitLocker binds encryption keys with the TPM to ensure that a computer hasn't been tampered with while the system was offline. For more info about TPM, see [Trusted Platform Module](/windows/device-security/tpm/trusted-platform-module-overview).

### UEFI and secure boot

Unified Extensible Firmware Interface (UEFI) is a programmable boot environment that initializes devices and starts the operating system's bootloader.

The UEFI specification defines a firmware execution authentication process called [Secure Boot](../../../information-protection/secure-the-windows-10-boot-process.md). Secure Boot blocks untrusted firmware and bootloaders (signed or unsigned) from being able to start on the system.

By default, BitLocker provides integrity protection for Secure Boot by utilizing the TPM PCR[7] measurement. An unauthorized EFI firmware, EFI boot application, or bootloader can't run and acquire the BitLocker key.

### BitLocker and reset attacks

To defend against malicious reset attacks, BitLocker uses the TCG Reset Attack Mitigation, also known as MOR bit (Memory Overwrite Request), before extracting keys into memory.

>[!NOTE]
>This does not protect against physical attacks where an attacker opens the case and attacks the hardware.

## Security policies

The next sections cover pre-boot authentication and DMA policies that can provide additional protection for BitLocker.

### Pre-boot authentication

Pre-boot authentication with BitLocker is a policy setting that requires the use of either user input, such as a PIN, a startup key, or both to authenticate prior to making the contents of the system drive accessible. The Group Policy setting is [Require additional authentication at startup](bitlocker-group-policy-settings.md) and the corresponding setting in the [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) is SystemDrivesRequireStartupAuthentication.

BitLocker accesses and stores the encryption keys in memory only after pre-boot authentication is completed. If Windows can't access the encryption keys, the device can't read or edit the files on the system drive. The only option for bypassing pre-boot authentication is entering the recovery key.

Pre-boot authentication is designed to prevent the encryption keys from being loaded to system memory without the trusted user supplying another authentication factor such as a PIN or startup key. This feature helps mitigate DMA and memory remanence attacks.

On computers with a compatible TPM, operating system drives that are BitLocker-protected can be unlocked in four ways:

- **TPM-only.** Using TPM-only validation doesn't require any interaction with the user to unlock and provide access to the drive. If the TPM validation succeeds, the user sign-in experience is the same as a standard sign-in. If the TPM is missing or changed or if BitLocker detects changes to the BIOS or UEFI code or configuration, critical operating system startup files, or the boot configuration, BitLocker enters recovery mode, and the user must enter a recovery password to regain access to the data. This option is more convenient for sign-in but less secure than the other options, which require an additional authentication factor.

- **TPM with startup key.** In addition to the protection that the TPM-only provides, part of the encryption key is stored on a USB flash drive, referred to as a startup key. Data on the encrypted volume can't be accessed without the startup key.

- **TPM with PIN.** In addition to the protection that the TPM provides, BitLocker requires that the user enters a PIN. Data on the encrypted volume can't be accessed without entering the PIN. TPMs also have [anti-hammering protection](/windows/security/hardware-protection/tpm/tpm-fundamentals#anti-hammering) that is designed to prevent brute force attacks that attempt to determine the PIN.

- **TPM with startup key and PIN.** In addition to the core component protection that the TPM-only provides, part of the encryption key is stored on a USB flash drive, and a PIN is required to authenticate the user to the TPM. This configuration provides multifactor authentication so that if the USB key is lost or stolen, it can't be used for access to the drive, because the correct PIN is also required.

In the following group policy example, TPM + PIN is required to unlock an operating system drive:

![Pre-boot authentication setting in Group Policy.](images/pre-boot-authentication-group-policy.png)

Pre-boot authentication with a PIN can mitigate an attack vector for devices that use a bootable eDrive because an exposed eDrive bus can allow an attacker to capture the BitLocker encryption key during startup. Pre-boot authentication with a PIN can also mitigate DMA port attacks during the window of time between when BitLocker unlocks the drive and Windows boots to the point that Windows can set any port-related policies that have been configured.

On the other hand, Pre-boot authentication-prompts can be inconvenient to users. In addition, users who forget their PIN or lose their startup key are denied access to their data until they can contact their organization's support team to obtain a recovery key. Pre-boot authentication can also make it more difficult to update unattended desktops and remotely administered servers because a PIN needs to be entered when a computer reboots or resumes from hibernation.

To address these issues, [BitLocker Network Unlock](./bitlocker-how-to-enable-network-unlock.md) can be deployed. Network Unlock allows systems within the physical enterprise security perimeter that meet the hardware requirements and have BitLocker enabled with TPM+PIN to boot into Windows without user intervention. It requires direct ethernet connectivity to an enterprise Windows Deployment Services (WDS) server.

### Protecting Thunderbolt and other DMA ports

There are a few different options to protect DMA ports, such as Thunderbolt&trade;3. Beginning with Windows 10 version 1803, new Intel-based devices have kernel protection against DMA attacks via Thunderbolt&trade; 3 ports enabled by default. This Kernel DMA Protection is available only for new systems beginning with Windows 10 version 1803, as it requires changes in the system firmware and/or BIOS.

You can use the System Information desktop app `MSINFO32.exe` to check if a device has kernel DMA protection enabled:

![Kernel DMA protection.](images/kernel-dma-protection.png)

If kernel DMA protection isn't enabled, follow these steps to protect Thunderbolt&trade; 3 enabled ports:

1. Require a password for BIOS changes

2. Intel Thunderbolt Security must be set to User Authorization in BIOS settings. Refer to [Intel Thunderbolt&trade; 3 and Security on Microsoft Windows&reg; 10 Operating System documentation](https://thunderbolttechnology.net/security/Thunderbolt%203%20and%20Security.pdf)

3. Additional DMA security may be added by deploying policy (beginning with Windows 10 version 1607 or Windows 11):

    - MDM: [DataProtection/AllowDirectMemoryAccess](/windows/client-management/mdm/policy-csp-dataprotection#dataprotection-allowdirectmemoryaccess) policy

    - Group Policy: [Disable new DMA devices when this computer is locked](./bitlocker-group-policy-settings.md#disable-new-dma-devices-when-this-computer-is-locked) (This setting isn't configured by default.)

For Thunderbolt v1 and v2 (DisplayPort Connector), refer to the **Thunderbolt Mitigation** section in [Blocking the SBP-2 driver and Thunderbolt controllers to reduce 1394 DMA and Thunderbolt DMA threats to BitLocker](https://support.microsoft.com/help/2516445/blocking-the-sbp-2-driver-and-thunderbolt-controllers-to-reduce-1394-d). For SBP-2 and 1394 (also known as Firewire), refer to the **SBP-2 Mitigation** section in [Blocking the SBP-2 driver and Thunderbolt controllers to reduce 1394 DMA and Thunderbolt DMA threats to BitLocker](https://support.microsoft.com/help/2516445/blocking-the-sbp-2-driver-and-thunderbolt-controllers-to-reduce-1394-d).

## Attack countermeasures

This section covers countermeasures for specific types of attacks.

### Bootkits and rootkits

A physically present attacker might attempt to install a bootkit or rootkit-like piece of software into the boot chain in an attempt to steal the BitLocker keys. The TPM should observe this installation via PCR measurements, and the BitLocker key won't be released.

> [!NOTE]
> BitLocker protects against this attack by default.

A BIOS password is recommended for defense-in-depth in case a BIOS exposes settings that may weaken the BitLocker security promise. Intel Boot Guard and AMD Hardware Verified Boot support stronger implementations of Secure Boot that provide additional resilience against malware and physical attacks. Intel Boot Guard and AMD Hardware Verified Boot are part of platform boot verification [standards for a highly secure Windows device](/windows-hardware/design/device-experiences/oem-highly-secure).

### Brute force attacks against a PIN

Require TPM + PIN for anti-hammering protection.

### DMA attacks

See [Protecting Thunderbolt and other DMA ports](#protecting-thunderbolt-and-other-dma-ports) earlier in this article.

### Paging file, crash dump, and Hyberfil.sys attacks

These files are secured on an encrypted volume by default when BitLocker is enabled on OS drives. It also blocks automatic or manual attempts to move the paging file.

### Memory remanence

Enable secure boot and mandatorily prompt a password to change BIOS settings. For customers requiring protection against these advanced attacks, configure a TPM+PIN protector, disable Standby power management, and shut down or hibernate the device before it leaves the control of an authorized user.

### Tricking BitLocker to pass the key to a rogue operating system

An attacker might modify the boot manager configuration database (BCD) which is stored on a non-encrypted partition and add an entry point to a rogue operating system on a different partition. During the boot process, BitLocker code will make sure that the operating system that the encryption key obtained from the TPM is given to, is cryptographically verified to be the intended recipient. Because this strong cryptographic verification already exists, we don't recommend storing a hash of a disk partition table in Platform Configuration Register (PCR) 5.

An attacker might also replace the entire operating system disk while preserving the platform hardware and firmware and could then extract a protected BitLocker key blob from the metadata of the victim OS partition. The attacker could then attempt to unseal that BitLocker key blob by calling the TPM API from an operating system under their control. This will not succeed because when Windows seals the BitLocker key to the TPM, it does it with a PCR 11 value of 0, and to successfully unseal the blob, PCR 11 in the TPM must have a value of 0. However, when the boot manager passes the control to any boot loader (legitimate or rogue) it always changes PCR 11 to a value of 1. Since the PCR 11 value is guaranteed to be different after exiting the boot manager, the attacker can't unlock the BitLocker key.

## Attacker countermeasures

The following sections cover mitigations for different types of attackers.

### Attacker without much skill or with limited physical access

Physical access may be limited by a form factor that doesn't expose buses and memory. For example, there are no external DMA-capable ports, no exposed screws to open the chassis, and memory is soldered to the mainboard.

This attacker of opportunity doesn't use destructive methods or sophisticated forensics hardware/software.

Mitigation:

- Pre-boot authentication set to TPM only (the default)

### Attacker with skill and lengthy physical access

Targeted attack with plenty of time; this attacker will open the case, will solder, and will use sophisticated hardware or software.

Mitigation:

- Pre-boot authentication set to TPM with a PIN protector (with a sophisticated alphanumeric PIN [enhanced pin] to help the TPM anti-hammering mitigation).

  -And-

- Disable Standby power management and shut down or hibernate the device before it leaves the control of an authorized user. This configuration can be set using the following Group Policy:

  - *Computer Configuration* > *Policies* > *Administrative Templates* > *Windows Components* > *File Explorer* > **Show hibernate in the power options menu**

  - *Computer Configuration* > *Policies* > *Administrative Templates* > *Power Management* > *Sleep Settings* > **Allow standby states (S1-S3) when sleeping (plugged in)**

  - *Computer Configuration* > *Policies* > *Administrative Templates* > *Power Management* > *Sleep Settings* > **Allow standby states (S1-S3) when sleeping (on battery)**

> [!IMPORTANT]
> These settings are **not configured** by default.

For some systems, bypassing TPM-only may require opening the case, and may require soldering, but could possibly be done for a reasonable cost. Bypassing a TPM with a PIN protector would cost much more, and require brute forcing the PIN. With a sophisticated enhanced PIN, it could be nearly impossible. The Group Policy setting for [enhanced PIN](./bitlocker-group-policy-settings.md) is:

- *Computer Configuration* > *Policies* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives* > **Allow enhanced PINs for startup**

> [!IMPORTANT]
> This setting is **not configured** by default.

For secure administrative workstations, Microsoft recommends a TPM with PIN protector and to disable Standby power management and shut down or hibernate the device.

## Related articles

- [Blocking the SBP-2 driver and Thunderbolt controllers to reduce 1394 DMA and Thunderbolt DMA threats to BitLocker](https://support.microsoft.com/help/2516445/blocking-the-sbp-2-driver-and-thunderbolt-controllers-to-reduce-1394-d)
- [BitLocker Group Policy settings](./bitlocker-group-policy-settings.md)
- [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp)
- [Winlogon automatic restart sign-on (ARSO)](/windows-server/identity/ad-ds/manage/component-updates/winlogon-automatic-restart-sign-on--arso-)
