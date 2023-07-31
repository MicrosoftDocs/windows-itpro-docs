---
title: Microsoft Pluton as Trusted Platform Module (TPM 2.0)
description: Learn more about Microsoft Pluton security processor as Trusted Platform Module (TPM 2.0)
ms.topic: conceptual
ms.date: 09/15/2022
appliesto: 
  - ✅ <b>Windows 11, version 22H2</b>
---

# Microsoft Pluton as Trusted Platform Module

Microsoft Pluton is designed to provide the functionality of the Trusted Platform Module (TPM) thereby establishing the silicon root of trust. Microsoft Pluton supports the TPM 2.0 industry standard allowing customers to immediately benefit from the enhanced security in Windows features that rely on TPM including BitLocker, Windows Hello, and Windows Defender System Guard.

As with other TPMs, credentials, encryption keys, and other sensitive information cannot be easily extracted from Pluton even if an attacker has installed malware or has complete physical possession of the device. Storing sensitive data like encryption keys securely within the Pluton processor, which is isolated from the rest of the system, helps ensure that emerging attack techniques such as speculative execution cannot access key material.

Pluton also solves the major security challenge of keeping its own root-of-trust firmware up to date across the entire PC ecosystem, by delivering firmware updates from Windows Update. Today customers receive updates to their security firmware from a variety of different sources, which may make it difficult for them to apply these updates.

To learn more about the TPM related scenarios that benefit from Pluton, see [TPM and Windows Features](/windows/security/information-protection/tpm/tpm-recommendations#tpm-and-windows-features).

## Microsoft Pluton as a security processor alongside discrete TPM

Microsoft Pluton can be used as a TPM, or in conjunction with a TPM. Although Pluton builds security directly into the CPU, device manufacturers may choose to use discrete TPM as the default TPM, while having Pluton available to the system as a security processor for use cases beyond the TPM.

Pluton is integrated within the SoC subsystem, and provides a flexible, updatable platform for running firmware that implements end-to-end security functionality authored, maintained, and updated by Microsoft. We encourage users owning devices that are Pluton capable, to enable Microsoft Pluton as the default TPM.

## Enable Microsoft Pluton as TPM

Devices with Ryzen 6000 and Qualcomm Snapdragon&reg; 8cx Gen 3 series processors are Pluton Capable, however enabling and providing an option to enable Pluton is at the discretion of the device manufacturer. Pluton is supported on these devices and can be enabled from the Unified Extensible Firmware Interface (UEFI) setup options for the device.

UEFI setup options differ from product to product, visit the product website and check for guidance to enable Pluton as TPM.

> [!WARNING]
> If BitLocker is enabled, We recommend disabling BitLocker before changing the TPM configuration to prevent lockouts. After changing TPM configuration, re-enable BitLocker which will then bind the BitLocker keys with the Pluton TPM. Alternatively, save the BitLocker recovery key onto a USB drive.
>
> Windows Hello must be re-configured after switching the TPM. Setup alternate login methods before changing the TPM configuration to prevent any login issues.

> [!TIP]
> On most Lenovo devices, entering the UEFI options requires pressing Enter key at startup followed by pressing F1. In the UEFI Setup menu, select Security option, then on the Security page, select Security Chip option, to see the TPM configuration options. Under the drop-down list for Security Chip selection, select **MSFT Pluton** and click F10 to Save and Exit.

## Related topics

[Microsoft Pluton security processor](/windows/security/information-protection/pluton/microsoft-pluton-security-processor)
