---
title: Windows FIPS 140 validation
description: Learn how Microsoft products and cryptographic modules follow the U.S. Federal government standard FIPS 140.
ms.date: 2/1/2024
ms.topic: reference
---

# Windows FIPS 140 validation

The Federal Information Processing Standard (FIPS) Publication 140 is a U.S. government standard that defines the minimum-security requirements for cryptographic modules in IT products. This topic introduces FIPS 140 validation for the Windows cryptographic modules. The Windows cryptographic modules are used across different Microsoft products, including Windows client operating systems, Windows Server operating systems, and Azure cloud services.

Microsoft maintains an active commitment to meeting the requirements of the FIPS 140 standard, having validated cryptographic modules against it since it was first established in 2001. Windows cryptographic modules are validated under the [Cryptographic Module Validation Program (CMVP)][CMVP], a joint effort between the U.S. National Institute of Standards and Technology (NIST) and the Canadian Centre for Cyber Security (CCCS). The CMVP validates cryptographic modules against the Security Requirements for Cryptographic Modules (part of FIPS 140) and related FIPS cryptography standards. The NIST Information Technology Laboratory operates related programs that Microsoft also participates in: the [Cryptographic Algorithm Validation Program (CAVP)][CAVP] certifies FIPS-approved cryptographic algorithms and the [Entropy Validation program][ESV] certifies entropy sources to the NIST SP 800-90B standard.

## Windows client operating systems and cryptographic modules

The Windows client releases listed below include cryptographic modules that have completed FIPS 140 validation. Click on the release for details, including the CMVP certificate, Security Policy document, and algorithm scope for each module. When the CMVP certificate validation label includes the note *When operated in FIPS mode*, specific configuration and security rules outlined in the Security Policy must be followed.

#### Windows 11 releases

- [Windows 11, version 21H2](validations/fips-140-windows11.md#windows-11-version-21h2)

#### Windows 10 releases

- [Windows 10, version 2004 (May 2020 Update)](validations/fips-140-windows10.md#windows-10-version-2004-may-2020-update)
- [Windows 10, version 1909 (November 2019 Update)](validations/fips-140-windows10.md#windows-10-version-1909-november-2019-update)
- [Windows 10, version 1903 (May 2019 Update)](validations/fips-140-windows10.md#windows-10-version-1903-may-2019-update)
- [Windows 10, version 1809 (October 2018 Update)](validations/fips-140-windows10.md#windows-10-version-1809-october-2018-update)
- [Windows 10, version 1803 (April 2018 Update)](validations/fips-140-windows10.md#windows-10-version-1803-april-2018-update)
- [Windows 10, version 1709 (Fall Creators Update)](validations/fips-140-windows10.md#windows-10-version-1709-fall-creators-update)
- [Windows 10, version 1703 (Creators Update)](validations/fips-140-windows10.md#windows-10-version-1703-creators-update)
- [Windows 10, version 1607 (Anniversary Update)](validations/fips-140-windows10.md#windows-10-version-1607-anniversary-update)
- [Windows 10, version 1511 (November Update)](validations/fips-140-windows10.md#windows-10-version-1511-november-update)
- [Windows 10, version 1507](validations/fips-140-windows10.md#windows-10-version-1507)

#### Previous Windows releases

- [Windows 8.1](validations/fips-140-windows-previous.md#windows-81)
- [Windows 8](validations/fips-140-windows-previous.md#windows-8)
- [Windows 7](validations/fips-140-windows-previous.md#windows-7)
- [Windows Vista SP1](validations/fips-140-windows-previous.md#windows-vista-sp1)
- [Windows Vista](validations/fips-140-windows-previous.md#windows-vista)
- [Windows XP SP3](validations/fips-140-windows-previous.md#windows-xp-sp3)
- [Windows XP SP2](validations/fips-140-windows-previous.md#windows-xp-sp2)
- [Windows XP SP1](validations/fips-140-windows-previous.md#windows-xp-sp1)
- [Windows XP](validations/fips-140-windows-previous.md#windows-xp)
- [Windows 2000 SP3](validations/fips-140-windows-previous.md#windows-2000-sp3)
- [Windows 2000 SP2](validations/fips-140-windows-previous.md#windows-2000-sp2)
- [Windows 2000 SP1](validations/fips-140-windows-previous.md#windows-2000-sp1)
- [Windows 2000](validations/fips-140-windows-previous.md#windows-2000)
- [Windows 95 and Windows 98](validations/fips-140-windows-previous.md#windows-95-and-windows-98)
- [Windows NT 4.0](validations/fips-140-windows-previous.md#windows-nt-40)

#### Related products

- [Windows Embedded Compact 7 and Windows Embedded Compact 8](validations/fips-140-other-products.md#windows-embedded-compact-7-and-windows-embedded-compact-8)
- [Windows CE 6.0 and Windows Embedded Compact 7](validations/fips-140-other-products.md#windows-ce-60-and-windows-embedded-compact-7)
- [Outlook Cryptographic Provider](validations/fips-140-other-products.md#outlook-cryptographic-provider)

## Windows Server operating systems and cryptographic modules

The Windows Server releases listed below include cryptographic modules that have completed FIPS 140 validation. Click on the release for details, including the CMVP certificate, Security Policy document, and algorithm scope for each module. When the CMVP certificate validation label includes the note *When operated in FIPS mode*, specific configuration and security rules outlined in the Security Policy must be followed.

#### Windows Server 2019 and 2016 releases

- [Windows Server 2019](validations/fips-140-windows-server-2019.md#windows-server-2019)
- [Windows Server 2016](validations/fips-140-windows-server-2016.md#windows-server-2016)

#### Windows Server semi-annual releases

- [Windows Server, version 2004](validations/fips-140-windows-server-semi-annual.md#windows-server-version-2004-may-2020-update)
- [Windows Server, version 1909](validations/fips-140-windows-server-semi-annual.md#windows-server-version-1909-november-2019-update)
- [Windows Server, version 1903](validations/fips-140-windows-server-semi-annual.md#windows-server-version-1903-may-2019-update)
- [Windows Server, version 1809](validations/fips-140-windows-server-semi-annual.md#windows-server-version-1809)
- [Windows Server, version 1803](validations/fips-140-windows-server-semi-annual.md#windows-server-version-1803)
- [Windows Server, version 1709](validations/fips-140-windows-server-semi-annual.md#windows-server-version-1709)

#### Previous Windows Server releases

- [Windows Server 2012 R2](validations/fips-140-windows-server-previous.md#windows-server-2012-r2)
- [Windows Server 2012](validations/fips-140-windows-server-previous.md#windows-server-2012)
- [Windows Server 2008 R2](validations/fips-140-windows-server-previous.md#windows-server-2008-r2)
- [Windows Server 2008](validations/fips-140-windows-server-previous.md#windows-server-2008)
- [Windows Server 2003 SP2](validations/fips-140-windows-server-previous.md#windows-server-2003-sp2)
- [Windows Server 2003 SP1](validations/fips-140-windows-server-previous.md#windows-server-2003-sp1)
- [Windows Server 2003](validations/fips-140-windows-server-previous.md#windows-server-2003)

## Use Windows in a FIPS approved mode of operation

To use Windows and Windows Server in a FIPS 140 approved mode of operation, all of the specific configuration and security rules outlined in the module Security Policy documents must be followed. To view or download the Security Policy documents for a given product release, navigate to the listing of FIPS 140 validated modules for the release in the sections above and select the links to the Security Policy documents.

As part of the configuration rules outlined in the Security Policy documents, Windows and Windows Server may be configured to run in a FIPS 140 approved mode of operation, commonly referred to as "FIPS mode." In current versions of Windows, when you enable the FIPS mode setting, the Cryptographic Primitives Library (bcryptprimitives.dll) and Kernel Mode Cryptographic Primitives Library (CNG.sys) modules will run self-tests before Windows runs cryptographic operations. These self-tests meet FIPS 140 requirements and ensure that the modules are functioning properly. The Cryptographic Primitives Library and the Kernel Mode Cryptographic Primitives Library are the only modules that use the FIPS mode configuration setting. FIPS mode does not control which cryptographic algorithms are used. The FIPS mode setting is intended for use only by the Cryptographic Primitives Library (bcryptprimitives.dll) and Kernel Mode Cryptographic Primitives Library (CNG.sys) components in Windows.

## Determine if a Windows service or application is FIPS 140 compliant

Microsoft validates the cryptographic modules used in Windows and other products, not individual Windows services or applications. Contact the vendor of the service or application for information on whether it calls a validated Windows cryptographic module (i.e., a module validated by the CMVP as meeting the FIPS 140 requirements and issued a certificate) in a FIPS compliant manner (i.e., by calling for FIPS 140 validated cryptography and configured according to a defined FIPS-approved mode of operation).

## FIPS 140 and the Commercial National Security Algorithm Suite

The *Commercial National Security Algorithm* (CNSA) suite is a set of cryptographic algorithms promulgated by the National Security Agency as a replacement for NSA Suite B cryptographic algorithms. Many CNSA cryptographic algorithms are also approved under the FIPS 140 standard. To determine whether a CNSA algorithm was included in the scope of CAVP validated algorithms used in a Microsoft product, navigate to the listing of FIPS 140 validated modules for the product in the sections above and reference the algorithm scope listed for each validated module. Further algorithm details are available in each module Security Policy document.

## FIPS 140 and Common Criteria certifications

FIPS 140 and *Common Criteria* are two complementary but different security standards. Whereas FIPS 140 validates cryptographic functionality, Common Criteria evaluates a broader selection of security functions in IT products. Common Criteria evaluations may rely on FIPS 140 validations to provide assurance that basic cryptographic functionality is implemented properly. For information about Microsoft's Common Criteria certification program, see [Common Criteria certifications](windows-platform-common-criteria.md).

## Contact

Contact [fips@microsoft.com](mailto:fips@microsoft.com) with questions or to provide feedback on this topic.

<!-- Links -->

<!-- Links for validation programs -->

[CMVP]: https://csrc.nist.gov/Projects/cryptographic-module-validation-program
[CAVP]: https://csrc.nist.gov/Projects/cryptographic-algorithm-validation-program
[ESV]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/entropy-validations
