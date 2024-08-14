---
title: FIPS 140 validated modules for other products
description: This topic lists the completed FIPS 140 cryptographic module validations for products other than Windows and Windows Server that leverage the Windows cryptographic modules.
ms.date: 2/1/2024
ms.topic: reference
---

# FIPS 140 validated modules in other products

The following tables list the completed FIPS 140 validations in products other than Windows and Windows Server that leverage the Windows cryptographic modules. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows Embedded Compact 7 and Windows Embedded Compact 8

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Cryptographic Primitives Library (bcrypt.dll)|[7.00.2872 and 8.00.6246][sp-2956]|[2956][certificate-2956]|
|Enhanced Cryptographic Provider|[7.00.2872 and 8.00.6246][sp-2957]|[2957][certificate-2957]|

## Windows CE 6.0 and Windows Embedded Compact 7

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Enhanced Cryptographic Provider|[6.00.1937 and 7.00.1687][sp-825]|[825][certificate-825]|

## Outlook Cryptographic Provider

|Cryptographic Module|Version (link to Security Policy)|CMVP Certificate #|
|--- |--- |--- |
|Outlook Cryptographic Provider (EXCHCSP)|[SR-1A (3821)][sp-110]|[110][certificate-110]|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-110]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/110
[certificate-825]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/825
[certificate-2956]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2956
[certificate-2957]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/2957

<!-- Security Policies -->

[sp-110]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp110.pdf
[sp-825]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp825.pdf
[sp-2956]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2956.pdf
[sp-2957]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp2957.pdf