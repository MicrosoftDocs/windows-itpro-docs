---
title: Hardware security
description: Hardware security
ms.topic: overview
ms.date: 03/12/2024
---

# Hardware security

:::image type="content" source="image-1.png" alt-text="aas" lightbox="image-1.png" border="false":::

Windows 11 is the most secure Windows yet with extensive security measures in the operating system designed to help keep devices, identities, and information safe. These measures include built-in advanced encryption and data protection, robust network system security, and intelligent safeguards against ever-evolving viruses and threats.

## System security

### Trusted Boot (Secure Boot + Measured Boot)

Windows 11 requires all PCs to use Unified Extensible Firmware Interface (UEFI)'s Secure Boot feature. When a Windows 11 device starts, Secure Boot and Trusted Boot work together to prevent malware and corrupted components from loading. Secure Boot provides initial protection, then Trusted Boot picks up the process. Secure Boot makes a safe and trusted path from the Unified Extensible Firmware Interface (UEFI) through the Windows kernel's Trusted Boot sequence. Malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes throughout the boot sequence between the UEFI, bootloader, kernel, and application environments. To reduce the risk of firmware rootkits, the PC verifies that firmware is digitally signed as it begins the boot process. Then Secure Boot checks the OS bootloader's digital signature as well as all code that runs prior to the operating system starting to ensure the signature and code are uncompromised and trusted by the Secure Boot policy.

Trusted Boot picks up the process that begins with Secure Boot. The Windows bootloader verifies the digital signature of the Windows kernel before loading it. The Windows kernel, in turn, verifies every other component of the Windows startup process, including boot drivers, startup files, and any antimalware product's early-launch antimalware (ELAM) driver. If any of these files have been tampered with, the bootloader detects the problem and refuses to load the corrupted component. Often, Windows can automatically repair the corrupted component, restoring the integrity of Windows and allowing the PC to start normally. Tampering or malware attacks on the Windows boot sequence are blocked by the signature enforcement handshakes between the UEFI, bootloader, kernel, and application environments. For more information about these features and how they help prevent rootkits and bootkits from loading during the startup process, see Secure the Windows boot process.

Learn more: Secure Boot and Trusted Boot.

### Cryptography

Cryptography is designed to protect user and system data. The cryptography stack in Windows 11 extends from the chip to the cloud, enabling Windows, applications, and services to protect system and user secrets. For example, data can be encrypted so that only a specific reader with a unique key can read it. As a basis for data security, cryptography helps prevent anyone except the intended recipient from reading data, performs integrity checks to ensure data is free of tampering, and authenticates identity to ensure that communication is secure. Windows 11 cryptography is certified to meet the Federal Information Processing Standard (FIPS) 140. FIPS 140 certification ensures that US government-approved algorithms are correctly implemented.

Learn more: FIPS 140 validation
