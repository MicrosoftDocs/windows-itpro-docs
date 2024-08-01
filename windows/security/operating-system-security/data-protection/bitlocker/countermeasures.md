---
title: BitLocker countermeasures
description: Learn about technologies and features to protect against attacks on the BitLocker encryption key.
ms.topic: concept-article
ms.date: 06/18/2024
---

# BitLocker countermeasures

Windows uses hardware solutions and security features that protect BitLocker encryption keys against attacks. These technologies include *Trusted Platform Module (TPM)*, *Secure Boot*, and *Measured Boot*.

## Protection before startup

Before Windows starts, security features implemented as part of the device hardware and firmware must be relied on, including TPM and secure boot:

- a *TPM* is a chip designed to provide basic security-related functions, primarily involving encryption keys. BitLocker binds encryption keys with the TPM to ensure that the device hasn't been tampered with while the system is offline. For more information about TPM, see [Trusted Platform Module][WIN-1]
- *Unified Extensible Firmware Interface (UEFI)* is a programmable boot environment that initializes devices and starts the operating system's bootloader. The UEFI specification defines a firmware execution authentication process called [Secure Boot](../../system-security/secure-the-windows-10-boot-process.md)
- *Secure Boot* blocks untrusted firmware and bootloaders (signed or unsigned) from being able to start on the system. By default, BitLocker provides integrity protection for Secure Boot by utilizing the TPM PCR[7] measurement. An unauthorized EFI firmware, EFI boot application, or bootloader can't run and acquire the BitLocker key

### BitLocker and reset attacks

To defend against malicious reset attacks, BitLocker uses the *TCG Reset Attack Mitigation*, also known as *MOR bit* (Memory Overwrite Request), before extracting keys into memory.

## Security policies

Preboot authentication and DMA policies provide extra protection for BitLocker.

### Preboot authentication

Preboot authentication with BitLocker can require the use of either user input, such as a PIN, a startup key, or both to authenticate prior to making the contents of the system drive accessible.

BitLocker accesses and stores the encryption keys in memory only after preboot authentication is completed. If Windows can't access the encryption keys, the device can't read or edit the files on the system drive. The only option for bypassing preboot authentication is entering the *recovery key*.

Preboot authentication is designed to prevent the encryption keys from being loaded to system memory without the trusted user supplying another authentication factor. This feature helps mitigate DMA and memory remanence attacks.

On devices with a compatible TPM, operating system drives that are BitLocker-protected can be unlocked in four ways:

- **TPM-only**: this option doesn't require any interaction with the user to unlock and provide access to the drive. If the TPM validation succeeds, the user sign-in experience is the same as a standard sign-in. If the TPM is missing or changed, or if BitLocker detects changes to the BIOS or UEFI configuration, critical operating system startup files, or the boot configuration, BitLocker enters recovery mode. The user must then enter a recovery password to regain access to the data. This option is more convenient for sign-in but less secure than the other options, which require an additional authentication factor
- **TPM with startup key**: in addition to the protection that the TPM-only provides, part of the encryption key is stored on a USB flash drive, referred to as a *startup key*. Data on the encrypted volume can't be accessed without the startup key
- **TPM with PIN**: in addition to the protection that the TPM provides, BitLocker requires that the user enters a PIN. Data on the encrypted volume can't be accessed without entering the PIN. TPMs also have [anti-hammering protection][WIN-2] that is designed to prevent brute force attacks that attempt to determine the PIN
- **TPM with startup key and PIN**: in addition to the protection that the TPM provides, part of the encryption key is stored on a USB flash drive, and a PIN is required to authenticate the user to the TPM. This configuration provides multifactor authentication so that if the USB key is lost or stolen, it can't be used for access to the drive, because the PIN is also required

Preboot authentication with a PIN can mitigate an attack vector for devices that use a bootable eDrive because an exposed eDrive bus can allow an attacker to capture the BitLocker encryption key during startup. Preboot authentication with a PIN can also mitigate DMA port attacks during the window of time between when BitLocker unlocks the drive and Windows boots to the point that Windows can set any port-related policies that have been configured.

On the other hand, Preboot authentication-prompts can be inconvenient to users. In addition, users who forget their PIN or lose their startup key are denied access to their data until they can contact their organization's support team to obtain a recovery key. Preboot authentication can also make it more difficult to update unattended or remotely administered devices because a PIN must be entered when a device reboots or resumes from hibernation.

To address these issues, [BitLocker Network Unlock](network-unlock.md) can be deployed. Network Unlock allows systems that meet the hardware requirements and have BitLocker enabled with TPM+PIN to boot into Windows without user intervention. It requires direct ethernet connectivity to a Windows Deployment Services (WDS) server.

To learn more, see the policy setting [Require additional authentication at startup](configure.md?tabs=os#require-additional-authentication-at-startup).

### Protect DMA ports

It's important to protect DMA ports, as external peripherals might gain unauthorized access to memory. Depending on the device capabilities, there are different options to protect DMA ports. To learn more, see the policy setting [Disable new DMA devices when this computer is locked](configure.md?tabs=common#disable-new-dma-devices-when-this-computer-is-locked).

## Attack countermeasures

This section covers countermeasures for specific types of attacks.

### Bootkits and rootkits

A physically present attacker might attempt to install a bootkit or rootkit-like piece of software into the boot chain in an attempt to steal the BitLocker keys. The TPM should observe this installation via PCR measurements, and the BitLocker key isn't released.

> [!NOTE]
> BitLocker protects against this attack by default.

A BIOS password is recommended for defense-in-depth in case a BIOS exposes settings that might weaken the BitLocker security promise. Intel Boot Guard and AMD Hardware Verified Boot support stronger implementations of Secure Boot that provide additional resilience against malware and physical attacks. Intel Boot Guard and AMD Hardware Verified Boot are part of platform boot verification [standards for a highly secure Windows device][WIN-3].

### Brute force attacks against a PIN

Require TPM + PIN for anti-hammering protection.

### DMA attacks

See [Protect DMA ports](#protect-dma-ports) earlier in this article.

### Paging file, crash dump, and Hyberfil.sys attacks

These files are secured on an encrypted volume by default when BitLocker is enabled on OS drives. It also blocks automatic or manual attempts to move the paging file.

### Memory remanence

Enable secure boot and mandatorily use a password to change BIOS settings. For scenarios requiring protection against these advanced attacks, configure a `TPM+PIN` protector, disable *standby* power management, and shut down or hibernate the device before it leaves the control of an authorized user.

The Windows default power settings cause devices to enter *sleep mode* when idle. When a device transitions to sleep, running programs and documents are persisted in memory. When a device resumes from sleep, users aren't required to reauthenticate with a PIN or USB startup key to access encrypted data. This scenario might lead to conditions where data security is compromised.

When a device *hibernates*, the drive is locked. When the device resumes from hibernation, the drive is unlocked, which means that users must provide a PIN or a startup key if using multifactor authentication with BitLocker.

Therefore, organizations that use BitLocker might want to use Hibernate instead of Sleep for improved security.

> [!NOTE]
> This setting doesn't have an impact on TPM-only mode, because it provides a transparent user experience at startup and when resuming from the Hibernate states.

### Tricking BitLocker to pass the key to a rogue operating system

An attacker might modify the boot manager configuration database (BCD), which is stored on a nonencrypted partition and add an entry point to a rogue operating system on a different partition. During the boot process, BitLocker code makes sure that the operating system that the encryption key obtained from the TPM is given to, is cryptographically verified to be the intended recipient. Because this strong cryptographic verification already exists, we don't recommend storing a hash of a disk partition table in PCR 5.

An attacker might also replace the entire operating system disk while preserving the platform hardware and firmware, and could then extract a protected BitLocker key blob from the metadata of the victim OS partition. The attacker could then attempt to unseal that BitLocker key blob by calling the TPM API from an operating system under their control. This can't succeed because when Windows seals the BitLocker key to the TPM, it does it with a PCR 11 value of 0. To successfully unseal the blob, PCR 11 in the TPM must have a value of 0. However, when the boot manager passes the control to any boot loader (legitimate or rogue), it always changes PCR 11 to a value of 1. Since the PCR 11 value is guaranteed to be different after exiting the boot manager, the attacker can't unlock the BitLocker key.

To prevent boot manger roll-back attacks, Windows updates released on and after July 2024 changed the default PCR Validation Profile for **UEFI with Secure Boot** from `7, 11` to `4, 7, 11`.

The PCR values map to:

- `PCR 4: Boot Manager`
- `PCR 7: Secure Boot State`
- `PCR 11: BitLocker access control`

> [!TIP]
> To check what PCRs are in use, execute the following command:
> ```cmd
> manage-bde.exe -protectors -get c:
> ```

## Attacker countermeasures

The following sections cover mitigations for different types of attackers.

### Attacker without much skill or with limited physical access

Physical access might be limited in a form factor that doesn't expose buses and memory. For example, there are no external DMA-capable ports, no exposed screws to open the chassis, and memory is soldered to the mainboard.

This attacker of opportunity doesn't use destructive methods or sophisticated forensics hardware/software.

Mitigation:

- Preboot authentication set to TPM only (the default)

### Attacker with skill and lengthy physical access

Targeted attack with plenty of time; the attacker opens the case, solder, and uses sophisticated hardware or software.

Mitigation:

- Preboot authentication set to TPM with a PIN protector (with a sophisticated alphanumeric PIN [enhanced pin] to help the TPM anti-hammering mitigation).

  -And-

- Disable Standby power management and shut down or hibernate the device before it leaves the control of an authorized user. This configuration can be set using the following policy settings:

  - **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **File Explorer** > **Show hibernate in the power options menu**
  - **Computer Configuration** > **Policies** > **Administrative Templates** > **Power Management** > **Sleep Settings** >
    - **Allow standby states (S1-S3) when sleeping (plugged in)**
    - **Allow standby states (S1-S3) when sleeping (on battery)**

> [!IMPORTANT]
> These settings are **not configured** by default.

For some systems, bypassing TPM-only might require opening the case and require soldering, but can be done for a reasonable cost. Bypassing a TPM with a PIN protector would cost more, and require brute forcing the PIN. With a sophisticated enhanced PIN, it could be nearly impossible. To learn more about the policy setting, see [Allow enhanced PINs for startup](configure.md?tabs=os#allow-enhanced-pins-for-startup).

For secure administrative workstations, it's recommended to:

- use a TPM with PIN protector
- disable standby power management
- shut down or hibernate the device before it leaves the control of an authorized user

## Next steps

> [!div class="nextstepaction"]
> Learn how to plan for a BitLocker deployment in your organization:
>
> [BitLocker planning guide >](planning-guide.md)

<!--links-->

[WIN-1]: /windows/device-security/tpm/trusted-platform-module-overview
[WIN-2]: /windows/security/hardware-protection/tpm/tpm-fundamentals#anti-hammering
[WIN-3]: /windows-hardware/design/device-experiences/oem-highly-secure
