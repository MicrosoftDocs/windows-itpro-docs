---
title: FIPS 140 validated modules for Windows 11
description: This topic lists the completed FIPS 140 cryptographic module validations for Windows 11.
ms.date: 2/1/2024
ms.topic: reference
---

# FIPS 140 validated modules for Windows 11

The following tables list the completed FIPS 140 validations of cryptographic modules used in Windows 11, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows 11, version 21H2

Build: 10.0.22000. Validated Edition: Windows 11

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[Boot Manager][sp-4546]|[#4546][certificate-4546]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-4546]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4546

<!-- Security Policies -->

[sp-4546]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4546.pdf
