---
title: Secure Boot and Trusted Boot
description: Trusted Boot prevents corrupted components from loading during the boot-up process in Windows 11
ms.topic: conceptual
ms.date: 07/10/2024
ms.reviewer: jsuther
appliesto:
  - "✅ <a href=\"https://learn.microsoft.com/windows/release-health/supported-versions-windows-client\" target=\"_blank\">Windows 11</a>"
---

# Secure Boot and Trusted Boot

This article describes Secure Boot and Trusted Boot, security measures built into Windows 11.

Secure Boot and Trusted Boot help prevent malware and corrupted components from loading when a Windows 11 device is starting. Secure Boot starts with initial boot-up protection, and then Trusted Boot picks up the process. Together, Secure Boot and Trusted Boot help to ensure your Windows 11 system boots up safely and securely.

## Secure Boot

The first step in protecting the operating system is to ensure that it boots securely after the initial hardware and firmware boot sequences safely finish their early boot sequences. Secure Boot makes a safe and trusted path from the Unified Extensible Firmware Interface (UEFI) through the Windows kernel's Trusted Boot sequence. Malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes throughout the boot sequence between the UEFI, bootloader, kernel, and application environments.

As the PC begins the boot process, it first verifies that the firmware is digitally signed, reducing the risk of firmware rootkits. Secure Boot then checks all code that runs before the operating system, and checks the OS bootloader's digital signature to ensure that it's trusted by the Secure Boot policy and hasn't been tampered with.

## Trusted Boot

Trusted Boot picks up the process that started with Secure Boot. The Windows bootloader verifies the digital signature of the Windows kernel before loading it. The Windows kernel, in turn, verifies every other component of the Windows startup process, including boot drivers, startup files, and your anti-malware product's early-launch anti-malware (ELAM) driver. If any of these files were tampered, the bootloader detects the problem and refuses to load the corrupted component. Tampering or malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes between the UEFI, bootloader, kernel, and application environments.

Often, Windows can automatically repair the corrupted component, restoring the integrity of Windows and allowing the Windows 11 device to start normally.

[!INCLUDE [secure-boot-and-trusted-boot](../../../../includes/licensing/secure-boot-and-trusted-boot.md)]

## See also

[Secure the Windows boot process](secure-the-windows-10-boot-process.md)
