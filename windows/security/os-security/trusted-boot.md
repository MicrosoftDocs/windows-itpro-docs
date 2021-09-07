---
title: Trusted Boot
description: Trusted Boot prevents corrupted components from loading during the boot-up process in Windows 11
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: conceptual
ms.date: 09/07/2021
ms.prod: w11
ms.localizationpriority: medium
ms.collection: 
ms.custom: 
ms.reviewer: jsuther
f1.keywords: NOCSH  
---

# Trusted Boot

This article describes Trusted Boot, a security measure built into Windows 11 to prevent malware and corrupted components from loading when a Windows 11 device is starting. Trusted Boot picks up where Secure Boot leaves off, helping to ensure your Windows 11 system boots up safely and securely.

## Secure Boot

The first step in protecting the operating system is to ensure that it boots securely after the initial hardware and firmware boot sequences have safely finished their early boot sequences. Secure Boot makes a safe and trusted path from the Unified Extensible Firmware Interface (UEFI) through the Windows kernel's Trusted Boot sequence. Malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes throughout the boot sequence between the UEFI, bootloader, kernel, and application environments.

As the PC begins the boot process, it will first verify that the firmware is digitally signed, reducing the risk of firmware rootkits. Secure Boot then checks all code that runs before the operating system and checks the OS bootloader’s digital signature to ensure that it is trusted by the Secure Boot policy and hasn’t been tampered with. 

## Trusted Boot

Trusted Boot takes over where Secure Boot leaves off. The Windows bootloader verifies the digital signature of the Windows kernel before loading it. The Windows kernel, in turn, verifies every other component of the Windows startup process, including boot drivers, startup files, and your antimalware product’s early-launch antimalware (ELAM) driver. If any of these files were tampered, the bootloader detects the problem and refuses to load the corrupted component. Tampering or malware attacks on the Windows boot sequence are blocked by the signature-enforcement handshakes between the UEFI, bootloader, kernel, and application environments.

Often, Windows can automatically repair the corrupted component, restoring the integrity of Windows and allowing the Windows 11 device to start normally.

## See also

[Secure the Windows boot process](../information-protection/secure-the-windows-10-boot-process.md)