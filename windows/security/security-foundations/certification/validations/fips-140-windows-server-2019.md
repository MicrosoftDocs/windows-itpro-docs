---
title: FIPS 140 validated modules for Windows Server 2019
description: This topic lists the completed FIPS 140 cryptographic module validations for Windows Server 2019.
ms.date: 4/5/2024
ms.topic: reference
---

# FIPS 140 validated modules in Windows Server 2019

The following tables list the completed FIPS 140 validations of cryptographic modules used in Windows Server 2019, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, see its linked Security Policy document or module certificate.

## Windows Server 2019

Builds: 10.0.17763.10021 and 10.0.17763.10127. Validated Edition: Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4688]|[#4688][certificate-4688]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-4484]|[#4484][certificate-4484]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4602]|[#4602][certificate-4602]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-4687]|[#4687][certificate-4687]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: ECDH and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4670]|[#4670][certificate-4670]|AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: ECDH|
|[Secure Kernel Code Integrity][sp-4640]|[#4640][certificate-4640]|FIPS Approved: RSA and SHS|
|[Virtual TPM][sp-4686]|[#4686][certificate-4686]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4545]|[#4545][certificate-4545]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|

Build: 10.0.17763.107. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|Version|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|10.0.17763|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|10.0.17763|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3644]|10.0.17763|[#3644][certificate-3644]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-3197]|10.0.17763|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|10.0.17763|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3651]|10.0.17763|[#3651][certificate-3651]|FIPS Approved: RSA and SHS|
|[Virtual TPM][sp-3690]|10.0.17763|[#3690][certificate-3690]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-3615]|10.0.17763|[#3615][certificate-3615]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-3089]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3089
[certificate-3092]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3092
[certificate-3196]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3196
[certificate-3197]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3197
[certificate-3615]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3615
[certificate-3644]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3644
[certificate-3651]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3651
[certificate-3690]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3690
[certificate-4484]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4484
[certificate-4545]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4545
[certificate-4602]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4602
[certificate-4640]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4640
[certificate-4670]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4670
[certificate-4686]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4686
[certificate-4687]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4687
[certificate-4688]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4688

<!-- Security Policies -->

[sp-3089]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3089.pdf
[sp-3092]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3092.pdf
[sp-3196]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3196.pdf
[sp-3197]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3197.pdf
[sp-3615]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3615.pdf
[sp-3644]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3644.pdf
[sp-3651]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3651.pdf
[sp-3690]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3690.pdf
[sp-4484]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4484.pdf
[sp-4545]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4545.pdf
[sp-4602]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4602.pdf
[sp-4640]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4640.pdf
[sp-4670]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4670.pdf
[sp-4686]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4686.pdf
[sp-4687]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4687.pdf
[sp-4688]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4688.pdf