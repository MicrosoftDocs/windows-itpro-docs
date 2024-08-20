---
title: FIPS 140 validated modules for Windows Server Semi-Annual Releases
description: This topic lists the completed FIPS 140 cryptographic module validations for Windows Server semi-annual releases.
ms.date: 2/1/2024
ms.topic: reference
---

# FIPS 140 validated modules in Windows Server semi-annual releases

The following tables list the completed FIPS 140 validations of cryptographic modules used in Windows Server semi-annual releases, organized by major release of the operating system. The linked Security Policy document for each module provides details on the module capabilities and the policies the operator must follow to use the module in its FIPS approved mode of operation. For information on using the overall operating system in its FIPS approved mode, see [Use Windows in a FIPS approved mode of operation](../fips-140-validation.md#use-windows-in-a-fips-approved-mode-of-operation). For details on the FIPS approved algorithms used by each module, including CAVP algorithm certificates, see the module's linked Security Policy document or CMVP module certificate.

## Windows Server, version 2004 (May 2020 Update)

Build: 10.0.19041. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows Server, version 1909 (November 2019 Update)

Build: 10.0.18363. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows Server, version 1903 (May 2019 Update)

Build: 10.0.18362. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-4538]|[#4538][certificate-4538]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3923]|[#3923][certificate-3923]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-4511]|[#4511][certificate-4511]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-4536]|[#4536][certificate-4536]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-4515]|[#4515][certificate-4515]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: NDRNG|
|[Secure Kernel Code Integrity][sp-4512]|[#4512][certificate-4512]|FIPS Approved: AES, RSA, and SHS|
|[Virtual TPM][sp-4537]|[#4537][certificate-4537]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-4339]|[#4339][certificate-4339]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows Server, version 1809

Build: 10.0.17763. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3644]|[#3644][certificate-3644]|FIPS Approved: RSA and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3651]|[#3651][certificate-3651]|FIPS Approved: RSA and SHS|
|[Virtual TPM][sp-3690]|[#3690][certificate-3690]|FIPS Approved: AES, CKG, CVL, DRBG, ECDSA, HMAC, KAS, KBKDF, KTS, RSA, and SHS; Other Allowed: NDRNG|
|[Windows OS Loader][sp-3615]|[#3615][certificate-3615]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows Server, version 1803

Build: 10.0.17134. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3195]|[#3195][certificate-3195]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096]|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3480]|[#3480][certificate-3480]|FIPS Approved: AES, CKG, DRBG, RSA, and SHS; Other Allowed: NDRNG|

## Windows Server, version 1709

Build: 10.0.16299. Validated Editions: Standard Core, Datacenter Core

|Cryptographic Module (linked to Security Policy document)|CMVP Certificate #|Validated Algorithms|
|--- |--- |--- |
|[BitLocker Dump Filter][sp-3092]|[#3092][certificate-3092]|FIPS Approved: AES, RSA, and SHS|
|[Boot Manager][sp-3089]|[#3089][certificate-3089]|FIPS Approved: AES, CKG, HMAC, PBKDF, RSA, and SHS|
|[Code Integrity][sp-3195]|[#3195][certificate-3195]|FIPS Approved: AES, RSA, and SHS|
|[Cryptographic Primitives Library][sp-3197]|[#3197][certificate-3197]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Kernel Mode Cryptographic Primitives Library][sp-3196]|[#3196][certificate-3196]|FIPS Approved: AES, CKG, CVL, DRBG, DSA, ECDSA, HMAC, KAS, KBKDF, KTS, PBKDF, RSA, SHS, and Triple-DES; Other Allowed: HMAC-MD5, MD5, and NDRNG|
|[Secure Kernel Code Integrity][sp-3096]|[#3096][certificate-3096]|FIPS Approved: AES, RSA, and SHS|
|[Windows OS Loader][sp-3194]|[#3194][certificate-3194]|FIPS Approved: AES, RSA, and SHS; Other Allowed: NDRNG|

---

<!-- Links -->

<!-- CMVP Certificates -->

[certificate-3089]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3089
[certificate-3092]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3092
[certificate-3096]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3096
[certificate-3194]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3194
[certificate-3195]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3195
[certificate-3196]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3196
[certificate-3197]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3197
[certificate-3480]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3480
[certificate-3615]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3615
[certificate-3644]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3644
[certificate-3651]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3651
[certificate-3690]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3690
[certificate-3923]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/3923
[certificate-4339]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4339
[certificate-4511]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4511
[certificate-4512]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4512
[certificate-4515]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4515
[certificate-4536]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4536
[certificate-4537]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4537
[certificate-4538]: https://csrc.nist.gov/projects/cryptographic-module-validation-program/certificate/4538

<!-- Security Policies -->

[sp-3089]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3089.pdf
[sp-3092]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3092.pdf
[sp-3096]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3096.pdf
[sp-3194]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3194.pdf
[sp-3195]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3195.pdf
[sp-3196]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3196.pdf
[sp-3197]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3197.pdf
[sp-3480]: https://csrc.nist.gov/csrc/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3480.pdf
[sp-3615]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3615.pdf
[sp-3644]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3644.pdf
[sp-3651]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3651.pdf
[sp-3690]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3690.pdf
[sp-3923]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp3923.pdf
[sp-4339]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4339.pdf
[sp-4511]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4511.pdf
[sp-4512]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4512.pdf
[sp-4515]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4515.pdf
[sp-4536]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4536.pdf
[sp-4537]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4537.pdf
[sp-4538]: https://csrc.nist.gov/CSRC/media/projects/cryptographic-module-validation-program/documents/security-policies/140sp4537.pdf
