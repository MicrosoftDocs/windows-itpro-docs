---
title: Windows FIPS 140 validations
description: Learn how Microsoft products and cryptographic modules follow the U.S. Federal government standard FIPS 140.
ms.date: 1/2/2024
ms.topic: reference
ms.author: v-rodurff
author: msrobertd
ms.reviewer: paoloma
ms.collection: tier3
---

# Windows FIPS 140 validations

The Federal Information Processing Standard (FIPS) Publication 140 is a U.S. government standard that defines the minimum-security requirements for cryptographic modules in IT products. This topic introduces the FIPS 140 validation process for the Windows cryptographic modules, algorithms, and entropy source.

The Windows cryptographic modules are used across different Microsoft products, including Windows client operating systems, Windows Server operating systems, and Azure cloud services. For a current listing of FIPS 140 validated cryptographic modules, select a product from the drop-down menus below.

[!INCLUDE [validation-selector](./includes/validation-selector.md)]

## Understand the Windows FIPS 140 validation process

Microsoft currently certifies Windows FIPS 140 compliance under the three validation programs listed below, each of which is a joint effort between the U.S. National Institute of Standards and Technology (NIST) and the Canadian Centre for Cyber Security (CCCS). Testing is carried out by a NIST-accredited lab.

- **Module validation:** Windows cryptographic modules are validated under the [Cryptographic Module Validation Program (CMVP)](https://csrc.nist.gov/Projects/cryptographic-module-validation-program)
- **Algorithm validation:** The set of FIPS-Approved cryptographic algorithms used by the modules are validated under the [Cryptographic Algorithm Validation Program (CAVP)](https://csrc.nist.gov/Projects/cryptographic-algorithm-validation-program)
- **Entropy source validation:** Starting in 2023, the Windows entropy source used by the modules is validated under the CMVP [Entropy Validation program](https://csrc.nist.gov/projects/cryptographic-module-validation-program/entropy-validations)

Microsoft begins validation of cryptographic modules after each major feature release of Windows and Windows Server. The duration of each evaluation varies and depends on many factors. In between major releases, Microsoft seeks to minimize the changes to the cryptographic modules. After completing validation, the module, algorithm, or entropy source is added to the NIST validation list published at the program websites above, which identifies the following:

- Vendor and implementation details
- Operational environment
- Validation date
- Module, algorithm, or entropy source details

When a module validation label includes the note *When operated in FIPS mode*, specific configuration and security rules must be followed for the module to operate in its FIPS mode. For more information, see [Use Windows in a FIPS 140 Approved Mode of Operation](use-windows-in-fips-approved-mode.md).

## Determine if a Windows service or application is FIPS 140 compliant

Microsoft validates the cryptographic modules used in Windows and other products, not individual Windows services or applications. Contact the vendor of the service or application for information on whether it calls a validated Windows cryptographic module in a FIPS compliant manner. *FIPS 140 validated* signifies that the cryptographic module, or a product that embeds the module, has been validated by the CMVP as meeting the FIPS 140 requirements. *FIPS 140 compliant* is a different industry term for IT products that rely on FIPS 140 validated modules for cryptographic functionality. A compliant solution calls FIPS 140 validated cryptography, and is configured according to the defined FIPS approved mode of operation.

## FIPS 140 and the Commercial National Security Algorithm Suite

The *Commercial National Security Algorithm* (CNSA) suite is a set of cryptographic algorithms promulgated by the National Security Agency as a replacement for NSA Suite B cryptographic algorithms. Many CNSA cryptographic algorithms are also approved under the FIPS 140 standard. To determine whether a CNSA algorithm was included in the scope of CAVP validated algorithms used in a Microsoft product, choose a product from the drop-down menus at the top of this topic and reference the algorithm scope listed for each validated module.

## FIPS 140 and Common Criteria certifications

FIPS 140 and *Common Criteria* are two complementary but different security standards. Whereas FIPS 140 validates cryptographic functionality, Common Criteria evaluates a broader selection of security functions in IT products. Common Criteria evaluations often rely on FIPS 140 validations to provide assurance that basic cryptographic functionality is implemented properly. For information about Microsoft's Common Criteria certification program, see [Common Criteria certifications](windows-platform-common-criteria.md).

## Contact

Contact [fips@microsoft.com](mailto:fips@microsoft.com) with questions or to provide feedback on this topic.
