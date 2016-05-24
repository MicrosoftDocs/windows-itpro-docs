---
title: TPM recommendations (Windows 10)
description: This topic provides recommendations for Trusted Platform Module (TPM) technology for Windows 10.
ms.assetid: E85F11F5-4E6A-43E7-8205-672F77706561
ms.pagetype: security
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
This topic provides recommendations for Trusted Platform Module (TPM) technology for Windows 10.
## Overview
Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. It has a security-related crypto-processor that is designed to carry out cryptographic operations in a variety of devices and form factors. It includes multiple physical security mechanisms to help prevent malicious software from tampering with the security functions of the TPM. Some of the key advantages of using TPM technology are that you can:
1.  Generate, store, use, and protected cryptographic keys,
2.  Use TPM technology for platform device authentication by using a unique endorsement key (EK), and
3.  Help enhance platform integrity by taking and storing security measurements.
The most common TPM functions are used for system integrity measurements and for key creation and use. During the boot process of a system, the boot code that is loaded (including firmware and the operating system components) can be measured and recorded in the TPM. The integrity measurements can be used as evidence for how a system started and to make sure that a TPM-based key was used only when the correct software was used to boot the system.
Traditionally, TPMs have been discrete chips soldered to a computer’s motherboard. Such implementations allow the computer’s original equipment manufacturer (OEM) to evaluate and certify the TPM separate from the rest of the system. Although discrete TPM implementations are still common, they can be problematic for integrated devices that are small or have low power consumption. Some newer TPM implementations integrate TPM functionality into the same chipset as other platform components while still providing logical separation similar to discrete TPM chips.
TPMs are passive: they receive commands and return responses. To realize the full benefit of a TPM, the OEM must carefully integrate system hardware and firmware with the TPM to send it commands and react to its responses. TPMs were originally designed to provide security and privacy benefits to a platform’s owner and users, but newer versions can provide security and privacy benefits to the system hardware itself. Before it can be used for advanced scenarios, however, a TPM must be provisioned. Windows 10 automatically provisions a TPM, but if the user reinstalls the operating system, he or she may need to tell the operating system to explicitly provision the TPM again before it can use all the TPM’s features.
The Trusted Computing Group (TCG) is the nonprofit organization that publishes and maintains the TPM specification. The TCG exists to develop, define, and promote vendor-neutral, global industry standards that support a hardware-based root of trust for interoperable trusted computing platforms. The TCG also publishes the TPM specification as the international standard ISO/IEC 11889, using the Publicly Available Specification Submission Process that the Joint Technical Committee 1 defines between the International Organization for Standardization (ISO) and the International Electrotechnical Commission (IEC).
OEMs implement the TPM as a component in a trusted computing platform, such as a PC, tablet, or phone. Trusted computing platforms use the TPM to support privacy and security scenarios that software alone cannot achieve. For example, software alone cannot reliably report whether malware is present during the system startup process. The close integration between TPM and platform increases the transparency of the startup process and supports evaluating device health by enabling reliable measuring and reporting of the software that starts the device. Implementation of a TPM as part of a trusted computing platform provides a hardware root of trust—that is, it behaves in a trusted way. For example, if a key stored in a TPM has properties that disallow exporting the key, that key truly cannot leave the TPM.
The TCG designed the TPM as a low-cost, mass-market security solution that addresses the requirements of different customer segments. There are variations in the security properties of different TPM implementations just as there are variations in customer and regulatory requirements for different sectors. In public-sector procurement, for example, some governments have clearly defined security requirements for TPMs whereas others do not.
**Note**  
Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.
 
## TPM 1.2 vs. 2.0 comparison
From an industry standard, Microsoft has been an industry leader in moving and standardizing on TPM 2.0, which has many key realized benefits across algorithms, crypto, hierarchy, root keys, authorization and NV RAM.
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
## Is there any importance for TPM for consumer?
For end consumers, TPM is behind the scenes but still very relevant for Hello, Passport and in the future, many other key features in Windows 10. It offers the best Passport experience, helps encrypt passwords, secures streaming high quality 4K content and builds on our overall Windows 10 experience story for security as a critical pillar.  Using Windows on a system with a TPM enables a deeper and broader level of security coverage.
## TPM 2.0 Compliance for Windows 10
### Windows 10 for desktop editions (Home, Pro, Enterprise, and Education)
- As of July 28, 2016, all new device models, lines or series (or if you are updating the hardware configuration of a existing model, line or series with a major update, such as CPU, graphic cards) must implement and enable by default TPM 2.0 (details in section 3.7, https://msdn.microsoft.com/library/windows/hardware/dn915086(v=vs.85).aspx)
 
## Two implementation options: 
•	Discrete TPM chip as a separate discrete component 
•	Firmware TPM solution using Intel PTT (platform trust technology) or AMD 
### Windows 10 Mobile
-   All devices shipping with Windows 10 Mobile must implement TPM 2.0 and ship with the TPM 2.0 enabled.
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
<td align="left">Measured Boot</td>
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
<td align="left">Required</td>
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
<td align="left">For Windows 10, version 1511, TPM 1.2 or 2.0 is highly recommended. If you don't have a TPM installed, Credential Guard will still be enabled, but the keys used to encrypt Credential Guard will not be protected by the TPM.</td>
</tr>
<tr class="even">
<td align="left">Device Health Attestation</td>
<td align="left">n/a</td>
<td align="left">Required</td>
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
<li>Atmel</li>
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
<li>Atom (CloverTrail)
<li>Baytrail</li>
<li>4th generation(Haswell)</li>
<li>5th generation(Broadwell)</li>
<li>Braswell</li>
<li>Skylake</li>
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
Government customers and enterprise customers in regulated industries may have acquisition standards that require use of common certified TPM parts. As a result, OEMs, who provide the devices, may be required to use only certified TPM components on their commercial class systems. Discrete TPM 2.0 vendors have completion certification.
### Windows 7 32-bit support
Even though Windows 7 shipped before the TPM 2.0 spec or products existed, Microsoft backported TPM 2.0 support to Windows 7 64-bit and released it in summer 2014 as a downloadable Windows hotfix for UEFI based Windows 7 systems. Microsoft is not currently planning to backport support to Windows 7 32-bit support.
 
 
