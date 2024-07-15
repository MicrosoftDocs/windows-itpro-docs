---
title: Hardware root-of-trust
description: Windows 11 security book - Hardware root-of-trust.
ms.topic: overview
ms.date: 04/09/2024
---

# Hardware root-of-trust

:::image type="content" source="images/hardware.png" alt-text="Diagram of containing a list of security features." lightbox="images/hardware.png" border="false":::

## Trusted Platform Module (TPM)

Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. TPMs provide security and privacy benefits for system hardware, platform owners, and users. Windows Hello, BitLocker, System Guard (previously called Windows Defender System Guard), and other Windows features rely on the TPM for capabilities such as key generation, secure storage, encryption, boot integrity measurements, and attestation. These capabilities in turn help organizations strengthen the protection of their identities and data. The 2.0 version of TPM includes support for newer algorithms, which provides improvements like support for stronger cryptography. To upgrade to Windows 11, existing Windows 10 devices much meet minimum system requirements for CPU, RAM, storage, firmware, TPM, and more. All new Windows 11 devices come with TPM 2.0 built in. With Windows 11, both new and upgraded devices must have TPM 2.0. The requirement strengthens the security posture across all Windows 11 devices and helps ensure that these devices can benefit from future security capabilities that depend on a hardware root-of-trust.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Windows 11 TPM specifications](https://www.microsoft.com/windows/windows-11-specifications)
- [Enabling TPM 2.0 on your PC](https://support.microsoft.com/windows/enable-tpm-2-0-on-your-pc-1fd5a332-360d-4f46-a1e7-ae6b0c90645c)
- [Trusted Platform Module Technology Overview](../hardware-security/tpm/trusted-platform-module-overview.md)

## Microsoft Pluton security processor

The Microsoft Pluton security processor is the result of Microsoft's close partnership with silicon partners. Pluton enhances the protection of Windows 11 devices, including Secured-core PCs, with a hardware security processor that provides additional protection for cryptographic keys and other secrets. Pluton is designed to reduce the attack surface by integrating the security chip directly into the processor. It can be used as a TPM 2.0 or as a standalone security processor. When a security processor is located on a separate, discrete chip on the motherboard, the communication path between the hardware root-of-trust and the CPU can be vulnerable to physical attack. Embedding Pluton into the CPU makes it harder to exploit the communication path.

Pluton supports the TPM 2.0 industry standard, allowing customers to immediately benefit from enhanced security for Windows features that rely on TPMs, including BitLocker, Windows Hello, and System Guard. Pluton can also support other security functionality beyond what is possible with the TPM 2.0 specification. This extensibility allows for additional Pluton firmware and OS features to be delivered over time via Windows Update.

As with other TPMs, credentials, encryption keys, and other sensitive information cannot be easily extracted from Pluton even if an attacker has installed malware or has complete physical possession of the PC. Storing sensitive data like encryption keys securely within the Pluton processor, which is isolated from the rest of the system, helps ensure that attackers cannot access sensitive data - even if attackers use emerging techniques like speculative execution.

Pluton also solves the major security challenge of keeping its own security processor firmware up to date across the entire PC ecosystem. Today customers receive updates to their security firmware from a variety of different sources, which may make it difficult for customers to get alerts about security updates, keeping systems in a vulnerable state. Pluton provides a flexible, updateable platform for its firmware that implements end-to-end security functionality authored, maintained, and updated by Microsoft. Pluton is integrated with the Windows Update service, benefiting from over a decade of operational experience in reliably delivering updates across over a billion endpoint systems. Microsoft Pluton is available with select new Windows PCs.

:::image type="icon" source="images/learn-more.svg" border="false"::: **Learn more:**

- [Meet the Microsoft Pluton processor - The security chip designed for the future of Windows PCs](https://www.microsoft.com/security/blog/2020/11/17/meet-the-microsoft-pluton-processor-the-security-chip-designed-for-the-future-of-windows-pcs/)
- [Microsoft Pluton security processor](../hardware-security/pluton/microsoft-pluton-security-processor.md)
