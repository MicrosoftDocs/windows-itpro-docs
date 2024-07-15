---
title: Microsoft Pluton as Trusted Platform Module (TPM 2.0)
description: Learn more about Microsoft Pluton security processor as Trusted Platform Module (TPM 2.0)
ms.topic: conceptual
ms.date: 07/10/2024
---

# Microsoft Pluton as Trusted Platform Module

Microsoft Pluton is designed to provide the functionality of the Trusted Platform Module (TPM) thereby establishing the silicon root of trust. Microsoft Pluton supports the TPM 2.0 industry standard allowing customers to immediately benefit from the enhanced security in Windows features that rely on TPM including BitLocker, Windows Hello, and System Guard.

As with other TPMs, credentials, encryption keys, and other sensitive information can't be easily extracted from Pluton even if an attacker installs malware or has complete physical possession of the device. Storing sensitive data like encryption keys securely within the Pluton processor, which is isolated from the rest of the system, helps ensure that emerging attack techniques such as speculative execution can't access key material.

Pluton also solves the major security challenge of keeping its own root-of-trust firmware up to date across the entire PC ecosystem, by delivering firmware updates from Windows Update. Today customers receive updates to their security firmware from various sources, which can make it difficult for them to apply these updates.

To learn more about the TPM related scenarios that benefit from Pluton, see [TPM and Windows Features](/windows/security/information-protection/tpm/tpm-recommendations#tpm-and-windows-features).

## Microsoft Pluton as a security processor alongside discrete TPM

Microsoft Pluton can be used as a TPM, or with a TPM. Although Pluton builds security directly into the CPU, device manufacturers might choose to use discrete TPM as the default TPM, while having Pluton available to the system as a security processor for use cases beyond the TPM.

Pluton is integrated within the SoC subsystem, and provides a flexible, updatable platform for running firmware that implements end-to-end security functionality authored, maintained, and updated by Microsoft.

## Related articles

[Microsoft Pluton security processor](/windows/security/information-protection/pluton/microsoft-pluton-security-processor)
