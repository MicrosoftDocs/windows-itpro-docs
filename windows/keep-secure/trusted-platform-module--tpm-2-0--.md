---
title: TPM recommendations (Windows 10)
description: This topic provides recommendations for Trusted Platform Module (TPM) technology for Windows 10.
ms.assetid: E85F11F5-4E6A-43E7-8205-672F77706561
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# TPM recommendations


**Applies to**

-   Windows 10
-   Windows 10 Mobile
-   Windows Server 2016 Technical Preview
-   Windows 10 IoT Core (IoT Core)

**In this article**

-   [Overview](#overview)
-   [TPM 1.2 vs. 2.0 comparison](#tpm_1.2_vs._2.0_comparison)
-   [Why TPM 2.0?](#why_tpm_2.0_)
-   [Discrete or firmware TPM?](#discrete_or_firmware_tpm_)
-   [TPM 2.0 Compliance for Windows 10 in the future](#tpm_2.0_compliance_for_windows_10_in_the_future)
-   [TPM and Windows Features](#tpm_and_windows_features)
-   [Chipset options for TPM 2.0](#chipset_options_for_tpm_2.0)
-   [OEM Feedback and Status on TPM 2.0 system availability](#oem_feedback_and_status_on_tpm_2.0_system_availability)

This topic provides recommendations for Trusted Platform Module (TPM) technology for Windows 10.

## Overview


Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. It has a security-related crypto-processor that is designed to carry out cryptographic operations in a variety of devices and form factors. It includes multiple physical security mechanisms to help prevent malicious software from tampering with the security functions of the TPM. Some of the key advantages of using TPM technology are that you can:

1.  Generate, store, use, and protected cryptographic keys,
2.  Use TPM technology for platform device authentication by using a unique endorsement key (EK), and
3.  Help enhance platform integrity by taking and storing security measurements.

The most common TPM functions are used for system integrity measurements and for key creation and use. During the boot process of a system, the boot code that is loaded (including firmware and the operating system components) can be measured and recorded in the TPM. The integrity measurements can be used as evidence for how a system started and to make sure that a TPM-based key was used only when the correct software was used to boot the system.

Different versions of the TPM are defined in specifications by the Trusted Computing Group (TCG).

**Note**  
Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

 

## TPM 1.2 vs. 2.0 comparison


From an industry standard, Microsoft has been an industry leader in moving and standardizing on TPM 2.0. As indicated in the table below, TPM 2.0 has many key realized benefits across algorithms, crypto, hierarchy, root keys, authorization and NV RAM.

## Why TPM 2.0?


TPM 2.0 products and systems have important security advantages over TPM 1.2, including:

-   The TPM 1.2 spec only allows for the use of RSA and the SHA-1 hashing algorithm.
-   For security reasons, some entities are moving away from SHA-1. Notably, NIST has required many federal agencies to move to SHA-256 as of 2014, and technology leaders, including Microsoft and Google have announced they will remove support for SHA-1 based signing or certificates in 2017.
-   TPM 2.0 **enables greater crypto agility** by being more flexible with respect to cryptographic algorithms.
    -   TPM 2.0 supports SHA-256 as well as ECC, the latter being critical to drive signing and key generation performance.
    -   TPM 2.0 achieved ISO standardization ([ISO/IEC 11889:2015](http://blogs.microsoft.com/cybertrust/2015/06/29/governments-recognize-the-importance-of-tpm-2-0-through-iso-adoption/)).
    -   Use of TPM 2.0 may help eliminate the need for OEMs to make exception to standard configurations for certain countries and regions.
-   TPM 2.0 offers a more **consistent experience** across different implementations.
    -   TPM 1.2 implementations across both discrete and firmware vary in policy settings. This may result in support issues as lockout policies vary.
    -   TPM 2.0 standardized policy requirement helps establish a consistent lockout experience across devices, as such, Windows can offer a better user experience end to end.
-   While TPM 1.2 parts were discrete silicon components typically soldered on the motherboard, TPM 2.0 is available both as a **discrete (dTPM)** silicon component and as a **firmware (fTPM)** based component running in a trusted execution environment (TEE) on the system’s main SoC:
    -   On Intel chips, it is the Intel Management Engine (ME) or Converged Security Engine (CSE).
    -   For AMD chips, it is the AMD Security Processor
    -   For ARM chips, it is a Trustzone Trusted Application (TA).
    -   In the case of firmware TPM for desktop Windows systems, the chip vendor provides the firmware TPM implementation along with the other chip firmware to OEMs.

## Discrete or firmware TPM?


Windows uses discrete and firmware TPM in the same way. Windows gains no functional advantage or disadvantage from either option.

From a security standpoint, discrete and firmware share the same characteristics;

-   Both use hardware based secure execution.
-   Both use firmware for portions of the TPM functionality.
-   Both are equipped with tamper resistance capabilities.
-   Both have unique security limitations/risks.

For more info, see [fTPM: A Firmware-based TPM 2.0 Implementation](http://research.microsoft.com/apps/pubs/?id=258236).

## TPM 2.0 Compliance for Windows 10 in the future


All shipping devices for Windows 10 across all SKU types must be using TPM 2.0 discrete or firmware from **July 28, 2016**. This requirement will be enforced through our Windows Hardware Certification program.

### Windows 10 for desktop editions (Home, Pro, Enterprise, and Education)

-   With Windows 10 as with Windows 8, all connected standby systems are required to include TPM 2.0 support.
-   For Windows 10 and later, if a SoC is chosen that includes an integrated fTPM2.0, the device must ship with the fTPM FW support or a discrete TPM 1.2 or 2.0.
-   Starting **July 28th, 2016** all devices shipping with Windows 10 desktop must implement TPM 2.0 and ship with the TPM enabled.

### Windows 10 Mobile

-   All devices shipping with Windows 10 Mobile must implement TPM 2.0 and ship with the TPM enabled.

### IoT Core

-   TPM is optional on IoT Core.

### Windows Server 2016 Technical Preview

-   TPM is optional for Windows Server SKUs unless the SKU meets the additional qualification (AQ) criteria for the Host Guardian Services scenario in which case TPM 2.0 is required.

## TPM and Windows Features


The following table defines which Windows features require TPM support. Some features are not applicable to Windows 7/8/8.1 and are noted accordingly.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows Features</th>
<th align="left">Windows 7/8/8.1 TPM 1.2</th>
<th align="left">Windows 10 TPM 1.2</th>
<th align="left">Windows 10 TPM 2.0</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Measure Boot</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left">Measured boot requires TPM 1.2 or 2.0 and UEFI Secure boot.</td>
</tr>
<tr class="even">
<td align="left">Bitlocker</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left">TPM 1.2 or later required or a removable USB memory device such as a flash drive.</td>
</tr>
<tr class="odd">
<td align="left">Passport: Domain AADJ Join</td>
<td align="left">n/a</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left">Supports both versions of TPM, but requires TPM with HMAC and EK certificate for key attestation support.</td>
</tr>
<tr class="even">
<td align="left">Passport: MSA or Local Account</td>
<td align="left">n/a</td>
<td align="left">Not Required</td>
<td align="left">Required</td>
<td align="left">TPM 2.0 is required with HMAC and EK certificate for key attestation support.</td>
</tr>
<tr class="odd">
<td align="left">Device Encryption</td>
<td align="left">n/a</td>
<td align="left">Not Required</td>
<td align="left">Required</td>
<td align="left">TPM 2.0 is required for all InstantGo devices.</td>
</tr>
<tr class="even">
<td align="left">Device Guard / Configurable Code Integrity</td>
<td align="left">n/a</td>
<td align="left">Optional</td>
<td align="left">Optional</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Credential Guard</td>
<td align="left">n/a</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left">For Windows 10, Version 1511, TPM 1.2 or 2.0 is highly recommended. If you don't have a TPM installed, Credential Guard will still be enabled, but the keys used to encrypt Credential Guard will not be protected by the TPM.</td>
</tr>
<tr class="even">
<td align="left">Device Health Attestation</td>
<td align="left">n/a</td>
<td align="left">Not Required</td>
<td align="left">Required</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Windows Hello</td>
<td align="left">n/a</td>
<td align="left">Not Required</td>
<td align="left">Not Required</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">UEFI Secure Boot</td>
<td align="left">Not Required</td>
<td align="left">Not Required</td>
<td align="left">Not Required</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Platform Key Storage provider</td>
<td align="left">n/a</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Virtual Smart Card</td>
<td align="left">n/a</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left"></td>
</tr>
<tr class="odd">
<td align="left">Certificate storage (TPM bound)</td>
<td align="left">n/a</td>
<td align="left">Required</td>
<td align="left">Required</td>
<td align="left"></td>
</tr>
</tbody>
</table>

 

## Chipset options for TPM 2.0


There are a variety of TPM manufacturers for both discrete and firmware.

### Discrete TPM

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Supplier</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li>Infineon</li>
<li>Nuvoton</li>
<li>NationZ</li>
<li>ST Micro</li>
</ul></td>
</tr>
</tbody>
</table>

 

### Firmware TPM

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Supplier</th>
<th align="left">Chipset</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">AMD</td>
<td align="left"><ul>
<li>Mullins</li>
<li>Beema</li>
<li>Carrizo</li>
</ul></td>
</tr>
<tr class="even">
<td align="left">Intel</td>
<td align="left"><ul>
<li>Clovertrail</li>
<li>Haswell</li>
<li>Broadwell</li>
<li>Skylake</li>
<li>Baytrail</li>
</ul></td>
</tr>
<tr class="odd">
<td align="left">Qualcomm</td>
<td align="left"><ul>
<li>MSM8994</li>
<li>MSM8992</li>
<li>MSM8952</li>
<li>MSM8909</li>
<li>MSM8208</li>
</ul></td>
</tr>
</tbody>
</table>

 

## OEM Feedback and Status on TPM 2.0 system availability


### Certified TPM parts

Government customers and enterprise customers in regulated industries may have acquisition standards that require use of common certified TPM parts. As a result, OEMs, who provide the devices, may be required to use only certified TPM components on their commercial class systems. Discrete TPM 2.0 vendors have targeted completion of certification by the end of 2015.

### Windows 7 32-bit support

Even though Windows 7 shipped before the TPM 2.0 spec or products existed, Microsoft backported TPM 2.0 support to Windows 7 64-bit and released it in summer 2014 as a downloadable Windows hotfix for UEFI based Windows 7 systems. Microsoft is not currently planning to backport support to Windows 7 32-bit support.

 

 





